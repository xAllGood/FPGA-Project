#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <array>
#include <cstddef>
#include <cstdio>
#include <tuple>
#include <tuple>


// hls-fpga-machine-learning insert numbers

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<16,6>, 28*1> input_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer10_t;
typedef ap_fixed<16,6> conv2d_conv_0_accum_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer27_t;
typedef ap_fixed<16,6> conv2d_conv_0_weight_t;
typedef ap_fixed<16,6> conv2d_conv_0_bias_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer12_t;
typedef ap_fixed<18,8> Relu_0_table_t;
typedef ap_fixed<16,6> maxpool_0_accum_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer13_t;
typedef ap_fixed<16,6> conv2d_conv_1_accum_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer28_t;
typedef ap_fixed<16,6> conv2d_conv_1_weight_t;
typedef ap_fixed<16,6> conv2d_conv_1_bias_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer15_t;
typedef ap_fixed<18,8> Relu_1_table_t;
typedef ap_fixed<16,6> maxpool_1_accum_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer16_t;
typedef ap_fixed<16,6> dense_matmul_0_accum_t;
typedef nnet::array<ap_fixed<16,6>, 24*1> layer25_t;
typedef ap_fixed<16,6> dense_matmul_0_weight_t;
typedef ap_fixed<16,6> dense_matmul_0_bias_t;
typedef ap_uint<1> layer25_index;
typedef ap_uint<1> bn_Add_0_scale_precision;
typedef nnet::array<ap_fixed<16,6>, 24*1> layer23_t;
typedef ap_uint<1> scale23_t;
typedef ap_fixed<16,6> bn_add_0_bias_t;
typedef nnet::array<ap_fixed<16,6>, 24*1> layer20_t;
typedef ap_fixed<18,8> Relu_2_table_t;
typedef ap_fixed<16,6> dense_matmul_1_accum_t;
typedef nnet::array<ap_fixed<16,6>, 47*1> layer26_t;
typedef ap_fixed<16,6> dense_matmul_1_weight_t;
typedef ap_fixed<16,6> dense_matmul_1_bias_t;
typedef ap_uint<1> layer26_index;
typedef ap_uint<1> bn_Add_1_scale_precision;
typedef nnet::array<ap_fixed<16,6>, 47*1> result_t;
typedef ap_uint<1> scale24_t;
typedef ap_fixed<16,6> bn_add_1_bias_t;

// hls-fpga-machine-learning insert emulator-defines


#endif
