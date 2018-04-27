#!/bin/sh

sudo dmesg -c > /dev/null
cd src
make -j8 KBUILD_EXTRA_SYMBOLS=../pphc_module/Module.symvers
sudo make install
sudo modprobe -r ixgbe
sudo modprobe ixgbe
