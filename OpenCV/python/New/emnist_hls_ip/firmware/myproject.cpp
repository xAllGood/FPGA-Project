#include <iostream>

#include "myproject.h"
#include "parameters.h"


void myproject(
    hls::stream<input_t> &global_in,
    hls::stream<result_t> &layer24_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=global_in,layer24_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<conv2d_conv_0_weight_t, 36>(w27, "w27.txt");
        nnet::load_weights_from_txt<conv2d_conv_0_bias_t, 4>(b27, "b27.txt");
        nnet::load_weights_from_txt<conv2d_conv_1_weight_t, 288>(w28, "w28.txt");
        nnet::load_weights_from_txt<conv2d_conv_1_bias_t, 8>(b28, "b28.txt");
        nnet::load_weights_from_txt<dense_matmul_0_weight_t, 4800>(w25, "w25.txt");
        nnet::load_weights_from_txt<dense_matmul_0_bias_t, 24>(b25, "b25.txt");
        nnet::load_weights_from_txt<scale23_t, 24>(s23, "s23.txt");
        nnet::load_weights_from_txt<bn_add_0_bias_t, 24>(b23, "b23.txt");
        nnet::load_weights_from_txt<dense_matmul_1_weight_t, 1128>(w26, "w26.txt");
        nnet::load_weights_from_txt<dense_matmul_1_bias_t, 47>(b26, "b26.txt");
        nnet::load_weights_from_txt<scale24_t, 47>(s24, "s24.txt");
        nnet::load_weights_from_txt<bn_add_1_bias_t, 47>(b24, "b24.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer10_t> layer10_out("layer10_out");
    #pragma HLS STREAM variable=layer10_out depth=784

    hls::stream<layer27_t> layer27_out("layer27_out");
    #pragma HLS STREAM variable=layer27_out depth=676

    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=676

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=169

    hls::stream<layer28_t> layer28_out("layer28_out");
    #pragma HLS STREAM variable=layer28_out depth=121

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=121

    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=25

    auto& layer17_out = layer16_out;
    hls::stream<layer25_t> layer25_out("layer25_out");
    #pragma HLS STREAM variable=layer25_out depth=1

    hls::stream<layer23_t> layer23_out("layer23_out");
    #pragma HLS STREAM variable=layer23_out depth=1

    hls::stream<layer20_t> layer20_out("layer20_out");
    #pragma HLS STREAM variable=layer20_out depth=1

    hls::stream<layer26_t> layer26_out("layer26_out");
    #pragma HLS STREAM variable=layer26_out depth=1

    nnet::transpose<input_t, layer10_t, config10>(global_in, layer10_out); // Transpose_0

    nnet::conv_2d_cl<layer10_t, layer27_t, config27>(layer10_out, layer27_out, w27, b27); // Conv2D_Conv_0

    nnet::relu<layer27_t, layer12_t, ReLU_config12>(layer27_out, layer12_out); // Relu_0

    nnet::pooling2d_cl<layer12_t, layer13_t, config13>(layer12_out, layer13_out); // MaxPool_0

    nnet::conv_2d_cl<layer13_t, layer28_t, config28>(layer13_out, layer28_out, w28, b28); // Conv2D_Conv_1

    nnet::relu<layer28_t, layer15_t, ReLU_config15>(layer28_out, layer15_out); // Relu_1

    nnet::pooling2d_cl<layer15_t, layer16_t, config16>(layer15_out, layer16_out); // MaxPool_1

    nnet::dense<layer16_t, layer25_t, config25>(layer17_out, layer25_out, w25, b25); // Dense_MatMul_0

    nnet::normalize<layer25_t, layer23_t, config23>(layer25_out, layer23_out, s23, b23); // bn_Add_0

    nnet::relu<layer23_t, layer20_t, ReLU_config20>(layer23_out, layer20_out); // Relu_2

    nnet::dense<layer20_t, layer26_t, config26>(layer20_out, layer26_out, w26, b26); // Dense_MatMul_1

    nnet::normalize<layer26_t, result_t, config24>(layer26_out, layer24_out, s24, b24); // bn_Add_1

}

