#!/bin/bas
sudo apt-get install dkms blueman sysfsutils

sudo bluetoothctl connect 94:F6:D6:B6:0E:B3
cd ./scripts
cd chmod u+x install.sh
sudo ./install.sh
cd ..
cd ./linux/drivers/hid
make clean
make
sudo modprobe hid_magicmouse emulate_3button=1 scroll_acceleration=1 scroll_speed=55
sudo rmmod hid_magicmouse
sudo insmod ./hid-magicmouse.ko middle_click_3finger=1

sudo rm .hid-magicmouse.ko.cmd
sudo rm .hid-magicmouse.mod.cmd
sudo rm .hid-magicmouse.mod.o.cmd
sudo rm .hid-magicmouse.o.cmd
sudo rm hid-magicmouse.ko
sudo rm hid-magicmouse.o
sudo rm Module.symvers
sudo rm modules.order
sudo rm hid-magicmouse.mod
sudo rm hid-magicmouse.mod.o
sudo rm hid-magicmouse.mod.c
exit 0

