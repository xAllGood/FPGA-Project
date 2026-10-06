import onnx
import onnx.helper
import hls4ml
import qonnx.util.cleanup
from qonnx.core.modelwrapper import ModelWrapper
from qonnx.transformation.gemm_to_matmul import GemmToMatMul
from qonnx.transformation.channels_last import ConvertToChannelsLastAndClean

# Monkey-patch ONNX to default to IR version 13 for QONNX compatibility
onnx.IR_VERSION = 13
onnx.helper.IR_VERSION = 13

# 1. Load the raw ONNX model (Updated to the new Micro-CNN)
onnx_model = onnx.load('emnist_cnn_model.onnx') 
onnx_model.ir_version = 13 

# 2. Wrap model in QONNX ModelWrapper
model = ModelWrapper(onnx_model)

# 3. Transform ONNX graph for hls4ml compatibility
model = qonnx.util.cleanup.cleanup_model(model)
model = model.transform(ConvertToChannelsLastAndClean())
model = model.transform(GemmToMatMul())
model = qonnx.util.cleanup.cleanup_model(model)

# 4. Generate hls4ml configuration
config = hls4ml.utils.config_from_onnx_model(
    model, 
    granularity='name', 
    default_precision='ap_fixed<16,6>',
    backend='Vitis'
)
config['Model']['Strategy'] = 'Resource'
config['Model']['Precision'] = 'ap_fixed<16,6>'

print("\n--- DETECTED ONNX LAYERS ---")
for layer in config['LayerName'].keys():
    print(layer)

print("\n--- CONFIGURING PRECISION & REUSE FACTORS ---")
for layer in config['LayerName'].keys():
    config['LayerName'][layer]['Strategy'] = 'Resource'
    
    # === RESTORED 16-BIT PRECISION ===
    config['LayerName'][layer]['Precision'] = {
        'default': 'ap_fixed<16,6>',
        'result':  'ap_fixed<16,6>',
        'accum':   'ap_fixed<16,6>',
        'weight':  'ap_fixed<16,6>',
        'bias':    'ap_fixed<16,6>'
    }
    
    # === MICRO-CNN EXACT REUSE FACTORS ===
    if 'Conv_0' in layer:
        config['LayerName'][layer]['ReuseFactor'] = 36     # (1 * 3 * 3 * 4)
    elif 'Conv_1' in layer:
        config['LayerName'][layer]['ReuseFactor'] = 288    # (4 * 3 * 3 * 8)
    elif 'MatMul_0' in layer:
        config['LayerName'][layer]['ReuseFactor'] = 4800   # (200 * 24)
    elif 'MatMul_1' in layer:
        config['LayerName'][layer]['ReuseFactor'] = 1128   # (24 * 47)
print("---------------------------------\n")
# 5. Convert with io_stream enabled
hls_model = hls4ml.converters.convert_from_onnx_model(
    model,
    hls_config=config,
    output_dir='emnist_hls_ip',
    part='xc7a35tftg256-1',
    io_type='io_stream',
    backend='Vitis' 
)

# 6. Clean build and export Vivado IP
print("\nSynthesizing and exporting HLS IP...")
hls_model.build(
    reset=True, 
    csim=False, 
    synth=True, 
    cosim=False, 
    validation=False, 
    export=True, 
    vsynth=False
)