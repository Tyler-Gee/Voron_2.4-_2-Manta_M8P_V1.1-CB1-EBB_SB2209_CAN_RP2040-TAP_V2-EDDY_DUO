cd printer_data
ls
sudo dfu-util -d ,0483:df11 -R -a 0 -s 0x8000000:leave -D ./M8P_bootloader.bin
lsusb
sudo dfu-util -d ,0483:df11 -R -a 0 -s 0x8000000:leave -D ./M8P_bootloader.bin
lsusb
reboot
ls /dev/serial/by-id/
ls /dev/serial/by-id/*
sudo ls /dev/serial/by-id/*
sudo apt -y update && sudo apt -y upgrade
clear
ls
sudo ls /dev/serial/by-id/*
lsusb
cd klipper
make menuconfig
make
lsusb
make flash FLASH_DEVICE=0483:df11
cd ..
ls
git clone https://github.com/Arksine/katapult
cd Katapult
ls
cd katapult
ls
python3 lib/canboot/flash_can.py -q
cd ~
cd klipper
python3 lib/canboot/flash_can.py -q
~
cd ~
sudo nano /etc/network/interfaces.d/can0
reboot
cd klipper
python3 lib/canboot/flash_can.py -q
python3 lib/katapult/flash_can.py -q
ls
make menuconfig
make
lsusb
make flash FLASH_DEVICE=0483:df11
ls
python3 lib/katapult/flash_can.py -q
cd ~/Katapult/scripts
cd ~/katapult/scripts
python3 flash_can.py -i can0 -q
sudo ls /dev/serial/by-id/*
cd ~ ls /dev/serial/by-id/*
cd ~
cd ~ ls /dev/serial/by-id/*
ls /dev/serial/by-id/*
cd klipper
ls /dev/serial/by-id/*
cd ~/katapult
make menuconfig
make
cd ~
lsusb
cd katapult
make flash FLASH_DEVICE=2e8a:0003
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
cd ~
make menuconfig
cd klipper
make menuconfig
ls /dev/serial/by-id/*
cd ~
ls /dev/serial/by-id/
cd ~
reboot
ls /dev/serial/by-id/
reboot
ls /dev/serial/by-id/
cd klipper
make menuconfig
make
make menuconfig
ls
cd klipper
exit
cd kliupper
cd klipper
ls
make menuconfig
/etc/init.d/sshd start
sudo systemctl start sshd.service
exit
ls
cd klipper
make menuconfig
exit
cd klipper
make menuconfig
exit
ls
cd klipper
make menuconfig
make
lsusb
make flash FLASH_DEVICE=0483:df11
make menuconfig
canbus_query.py
cd ~
canbus_query.py
cd katapult
canbus_query.py
cd scripts
canbus_query.py
ls
cd klipper
make menuconfig
make clean
make
cd ~
cd katapult
make menuconfig
make clean
make
make menuconfig
cd klipper
cd ~/klipper
make menuconfig
make clean
make menuconfig
make clean
make
cd ~
cd katapult
lsusb
make clean
make menuconfig
make clean
make
make menuconfig
make clean
make
cd ~/klipper
make meanuconfig
make menuconfig
make clean
make
lsusb
sudo dfu-util -a 0 -D ~/katapult/out/katapult.bin --dfuse-address 0x08000000:force:leave -d 0483:df11
lsusb
sudo dfu-util -a 0 -d 0483:df11 --dfuse-address 0x08002000 -D ~/klipper/out/klipper.bin
lsusb
sudo nano /etc/network/interfaces.d/can0
sudo nano /etc/systemd/network/10-can.link
sudo ifup can0
python3 ~/katapult/scripts/flash_can.py -q
cd katapult
cd ~/katapult
make menuconfig
make clean
make
cd ~/klipper
make menuconfig
make clean
make
cd ~
lsusb
cd ~/katapult
make flash FLASH_DEVICE=2e8a:0003
ls
sudo shutdown now
ls
python3 ~/katapult/scripts/flashtool.py -i can0 -q
cd klipper
make menuconfig
make
sudo service klipper stop
python3 ~/katapult/scripts/flashtool.py -i can0 -q
lsusb
python3 ~/katapult/scripts/flashtool.py -i can0 -q
cd ~
python3 ~/katapult/scripts/flashtool.py -i can0 -q
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
cd klipper
ls /dev/serial/by-id/
python3 flash_can.py -i can0 -f ~/klipper/out/klipper.bin -u 5a2de1007cc7
cd ~/Katapult/scripts
cd ~
python3 ~/katapult/scripts/flashtool.py -i can0 -q
cd ~/klipper
	make menuconfig
make clean
make
python3 flash_can.py -i can0 -f ~/klipper/out/klipper.bin -u 5a2de1007cc7
cd ~/Katapult/scripts
cd ~/katapult/scripts
python3 flash_can.py -i can0 -q
python3 ~/katapult/scripts/flashtool.py -i can0 -q
python3 ~/katapult/scripts/flashtool.py -i can0 -u 5a2de1007cc7 -f ~/klipper/out/klipper.bin
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
sudo service klipper start
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
cd ~
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
sudo reboot
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
cd klipper
make menuconfig
make clean
make
lsusb
make flash FLASH_DEVICE=0483:df11
python3 lib/canboot/flash_can.py -q
lsusb
cd ~/katapult && make menuconfig
make clean
make
clear
make clean
make menuconfig
make
lsusb
sudo dfu-util -a 0 -D ~/katapult/out/katapult.bin --dfuse-address 0x08000000:force:leave -d 0483:df11
cd ~/klipper
make menuconfig
make clean
make
lsusb
sudo dfu-util -a 0 -d 0483:df11 --dfuse-address 0x08002000 -D ~/klipper/out/klipper.bin
reboot
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
python3 ~/katapult/scripts/flash_can.py -q
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
cd katapult
make menuconfig
exit
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
lsusb
cd katapult
ls
make menuconfig
make
make menuconfig
make clean
make
lsusb
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
make flash FLASH_DEVICE=2e8a:0003
lsusb
python3 ~/katapult/scripts/flashtool.py -i can0 -q
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
cd ~
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
python3 ~/katapult/scripts/flashtool.py -i can0 -q
cd katapult
make menuconfig
cd ~/klipper
make menuconfig
make clean
make
make flash FLASH_DEVICE=2e8a:0003
lsusb
make flash FLASH_DEVICE=2e8a:0003
lsusb
python3 ~/katapult/scripts/flashtool.py -i can0 -q
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
lsusb
cd ~/katapult
make menuconfig
make clean
make
lsusb
make flash FLASH_DEVICE=2e8a:0003
cd klipper
cd ~/klipper
ls
clean
clear
make menuconfig
make clean
make
cd ~/Katapult/scripts
cd ~/katapult/scripts
python3 flash_can.py -i can0 -q
python3 flash_can.py -i can0 -f ~/klipper/out/klipper.bin -u 5a2de1007cc7
python3 flash_can.py -i can0 -q
sudo reboot
clear
cd katapult
make menuconfig
make clean
make
lsusb
make flash FLASH_DEVICE=2e8a:0003
cd ~/klipper
make menuconfig
make
cd ~/Katapult/scripts
cd ~/katapult/scripts
python3 flash_can.py -i can0 -q
python3 flash_can.py -i can0 -f ~/klipper/out/klipper.bin -u 5a2de1007cc7
python3 flash_can.py -i can0 -q
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
sudo nano /etc/network/interfaces.d/can0
sudo reboot
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
csudo service klipper stop
sudo service klipper stop
python3 ~/katapult/scripts/flashtool.py -i can0 -q
cd klipper
make menuconfig
make clean
make
lsusb
make flash FLASH_DEVICE=0483:df11
lsusb
python3 lib/canboot/flash_can.py -q
cd katapult
cd ~/katapult
make menuconfig
make clean
make
lsusb
make flash FLASH_DEVICE=2e8a:0003
cd klipper
cd ~/klipper
make menuconfig
cd ~/katapult/scripts/
cd ~/klipper
make menuconfig
make clean
make
cd ~/katapult/scripts
python3 flash_can.py -i can0 -q
python3 flash_can.py -i can0 -f ~/klipper/out/klipper.bin -u 5a2de1007cc7
python3 flash_can.py -i can0 -q
python3 ~/katapult/scripts/flashtool.py -i can0 -q
reboot
cd ~/moonraker/scripts
./fetch-apikey.sh
aca64b7a57024cb29b63ff1ff9609767cd ~
cd ~
ls
cd klipperscreen
cd KlipperScreen
ls
cd config
ls
nano defaults.conf
cd ~
ls
cd ~/.config
cd ~/.config/
cd .config/
cd /.config/
reboot
cd klipper
sudo service klipper stop
sudo service klipper start
cd klipperscreeen
cd KlipperCcreeen
ls
cd KlipperScreen
ls
cd config
ls
nano splash_menu.conf
nano defaults.conf
nano main_menu.conf
cd KlipperScreen
ls
cd config
ls
cd print_menu.conf
ls
cd kiauh
ls
nano README.md 
~cd ~/klipper~
cd ~/klipper~
cd ..
ls
cd ~/klipper
git checkout master
