#include <iostream>
#include "hls_stream.h"
#include "hls_directio.h"

using namespace std;

struct __cosim_T_56__ {char data[56];};
extern "C" void fpga_fifo_push_56(__cosim_T_56__* val, hls::stream<__cosim_T_56__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_56(__cosim_T_56__* val, hls::stream<__cosim_T_56__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_56(hls::stream<__cosim_T_56__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_56(hls::stream<__cosim_T_56__>* fifo) {
  return fifo->exist();
}
extern "C" bool fpga_direct_valid_56(hls::directio<__cosim_T_56__, 0>* direct) {
  return direct->valid();
}
extern "C" void fpga_direct_load_56(__cosim_T_56__* val, hls::directio<__cosim_T_56__, 0>* direct) {
  *val = direct->read();
}
extern "C" void fpga_direct_store_56(__cosim_T_56__* val, hls::directio<__cosim_T_56__, 0>* direct) {
  direct->write(*val);
}
struct __cosim_T_94__ {char data[94];};
extern "C" void fpga_fifo_push_94(__cosim_T_94__* val, hls::stream<__cosim_T_94__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_94(__cosim_T_94__* val, hls::stream<__cosim_T_94__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_94(hls::stream<__cosim_T_94__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_94(hls::stream<__cosim_T_94__>* fifo) {
  return fifo->exist();
}
extern "C" bool fpga_direct_valid_94(hls::directio<__cosim_T_94__, 0>* direct) {
  return direct->valid();
}
extern "C" void fpga_direct_load_94(__cosim_T_94__* val, hls::directio<__cosim_T_94__, 0>* direct) {
  *val = direct->read();
}
extern "C" void fpga_direct_store_94(__cosim_T_94__* val, hls::directio<__cosim_T_94__, 0>* direct) {
  direct->write(*val);
}
