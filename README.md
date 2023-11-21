# A Scalable, Efficient, and Robust Dynamic Memory Management Library for HLS-based FPGAs

## Introduction

GraDMM is a novel graph analytics powered dynamic memory manager, which can comprehensively improve the scalability, efficiency, and robustness of HLS-compatible dynamic memory management. We implement GraDMM on a Xilinx Alveo U250 FPGA accelerator card.

## Prerequisites

### Hardware

This project works on [Xilinx Alveo U250 Data Center Accelerator Card](https://www.xilinx.com/products/boards-and-kits/alveo/u250.html).

### Operating System

Ubuntu 18.04 LTS

### Software

[Vitis Core Development Kit 2020.2](https://www.xilinx.com/products/design-tools/vitis/vitis-platform.html)

[Alveo U250 Package File on Vitis 2020.2](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/alveo/u250.html)

## Run the code

1. Install the software development environment according to [Xilinx documentation](https://www.xilinx.com/support/documentation/boards_and_kits/accelerator-cards/1_9/ug1301-getting-started-guide-alveo-accelerator-cards.pdf). After installation, you can use commands

```
sudo /opt/xilinx/xrt/bin/xbmgmt flash --scan
/opt/xilinx/xrt/bin/xbutil validate
```

to make sure that the runtime environment and the alveo card is ready.

2. Add the xrt and deployment environment to your PATH. Typically you can run

``` sh
source /opt/xilinx/xrt/setup.sh
```

3. Clone rtl files.

``` sh
$ git clone https://github.com/GraDMM/Library.git
```

4. Package the RTL IP into a Xilinx Object file. 

5. Use the Vitis IDE to program the RTL kernel on the FPGA and run it. 



## Benchmark

The benchmarks come from the following source:

* [Dynamic Memory Benchmarks for HLS (dmbenchhls)](https://github.com/ngiambla/dmbenchhls)