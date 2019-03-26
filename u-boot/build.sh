#!/bin/bash

cd ../u-boot-2017.11/

if [ ! -f .config ]
then
	make itop4412_defconfig
fi

make -j4

cp u-boot.bin ../u-boot/
echo "copy u-boot.bin done."

cd spl/
if [ ! -f itop4412-spl.bin ] ; then
	echo "notice: not found itop4412-spl.bin !"
	exit 0
else
	echo "copying itop4412-spl.bin..."
fi

cp itop4412-spl.bin ../../u-boot/
echo "copy u-boot-spl.bin done."

cd ../../u-boot/

echo "fusing u-boot-iTOP-4412.bin......"

################ for sd MMC boot ##################
#cat E4412_N.bl1.bin itop4412-spl.bin env.bin u-boot.bin > u-boot-iTOP-4412.bin
################# for eMMC boot ####################
cat E4412_N.bl1.bin itop4412-spl.bin u-boot.bin > u-boot-iTOP-4412.bin
####################################################

echo "build success !!!"

rm -rf ~/Desktop/u-boot-iTOP-4412.bin && cp u-boot-iTOP-4412.bin ~/Desktop/
