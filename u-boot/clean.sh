#!/bin/bash

if [ -f itop4412-spl.bin ] ; then
	rm -rf itop4412-spl.bin
fi

echo "itop4412-spl.bin deleted !!!"

if [ -f u-boot-iTOP-4412.bin ] ; then
	rm -rf u-boot-iTOP-4412.bin
fi

echo "u-boot-iTOP-4412.bin deleted !!!"

if [ -f u-boot.bin ] ; then
	rm -rf u-boot.bin
fi

echo "u-boot.bin deleted !!!"

cd ../u-boot-2017.11/

if [ -f u-boot.bin ] ; then
	make distclean
fi

cd  ../u-boot/

echo "clean success !!!"
