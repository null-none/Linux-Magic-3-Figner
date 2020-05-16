#sudo bluetoothctl connect {94:F6:D6:B6:0E:B3} bluetooth device
sudo apt-get install dkms
cd ./linux/drivers/hid
make clean
make
sudo rmmod hid-magicmouse
sudo insmod ./hid-magicmouse.ko middle_click_3finger=1
