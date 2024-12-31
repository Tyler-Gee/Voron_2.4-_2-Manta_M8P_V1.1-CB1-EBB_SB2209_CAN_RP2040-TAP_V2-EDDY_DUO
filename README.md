---
created: 2024-12-19T14:11
updated: 2024-12-22T21:22
---
# TODO
1. Create pdf Manual Chapters files for ever step. These files will follow relative path so they can be opened from within the REAMME.md file

# Formbot Voron 2.4 V2.4 R2 Pro+ Kit
- Store Link: https://www.aliexpress.com/item/1005003385349518.html?spm=a2g0o.order_list.order_list_main.59.318318027IHoca
- Github: Github: https://github.com/FORMBOT/Voron-2.4
- Review and Guide: https://www.youtube.com/watch?v=7x-eafpESLc
![](../BOM-00.avif)
![](../BOM-01.avif)
![](../BOM-02.avif)
![](../BOM-03.avif)
![](../BOM-04.avif)
![](../BOM-05.avif)
![](../BOM-06.avif)
![](../BOM-07.avif)
![](../BOM-08.avif)
![](../BOM-09.avif)
![](../BOM-10.avif)
![](../BOM-11.avif)
![](../BOM-12.avif)
![](../BOM-13.avif)
![](../BOM-14.avif)
![](../BOM-15.avif)

# Components
## VoronDesigns:
github: https://github.com/VoronDesign/Voron-2

## TAP V2
Github:  https://github.com/VoronDesign/Voron-Tap

## Stealthburner
Github: https://github.com/VoronDesign/Voron-Stealthburner

## EBB SB2209 CAN (RP2040)
Github: https://github.com/bigtreetech/EBB

## MANTA M8P V1.0 & V1.1:
Github:  https://github.com/bigtreetech/Manta-M8P

## CB1
Github: https://github.com/bigtreetech/CB1

## Eddy Duo
- Store Link: https://www.aliexpress.com/item/1005006344907714.html?spm=a2g0o.order_list.order_list_main.23.318318027IHoca
- Github: https://github.com/bigtreetech/Eddy

![](../BOM-00%204.avif)
![](../BOM-01.avif)
![](../BOM-02.avif)
![](../BOM-03.avif)
![](../BOM-04.avif)

## Belter
Store Link: https://www.aliexpress.com/item/1005007144698835.html?spm=a2g0o.order_list.order_list_main.17.318318027IHoca
Github: https://github.com/bigtreetech/Belter-belt-tension-Tool/tree/master

# Build Guide
## Part 0.0: Introduction
Manual: VORON2 2.4R2 Build Guide
- Pages: 0 - 11

## Part 1.0: Frame
Manual: VORON2 2.4R2 Build Guide
- Pages: 12 - 21

## Part 2.0: Z Drives
Manual: VORON2 2.4R2 Build Guide
- Pages: 22 - 51

## Part 3.0: Print Bed
Manual: VORON2 2.4R2 Build Guide
- Pages: 52 - 61

## Part 4.0: A/B Drives And Idlers
Manual: VORON2 2.4R2 Build Guide
- Pages: 62 - 81

## Part 5.0: Gantry
Manual: VORON2 2.4R2 Build Guide
- Pages: 82 - 107

## Part 6.0: Z Axis
Manual: VORON2 2.4R2 Build Guide
- Pages: 108 - 123

## Part 7.0: A/B Belts
Manual: VORON2 2.4R2 Build Guide
- Pages: 124 - 128
- Pages: 132 - 138

## Part 8.0: Tool head - Stealthburner
### Part 8.1: ClockWork2 Extruder
Manual: VORON STEALTHBURNER
- Pages: 0 - 40

### Part 8.2: Tool Cartridge
Manual: VORON STEALTHBURNER
- Pages: 41 - 43

### Part 8.3: Stealthburner
Manual: VORON STEALTHBURNER
- Pages: 44 - 57

### Part 8.4: Tap V2
Manual: VORON TAP

### Part 8.5: EBB SB2209 CAN (RP2040)
Manual: SB2240\2209 CAN V1.0
- Pages: 0 - 24

## Part 9.0: Check A/B Belt Run Inspection
Manual: VORON2 2.4R2 Build Guide
- Page: 142
Manual: Belter User Manual

## Part 10.0: Electronics
Manual: VORON2 2.4R2 Build Guide
- Pages: 148 - 173

## Part 11.0: Wiring
Manual: VORON2 2.4R2 Build Guide
- Pages: 0 - 11
Manual: Wiring Instructions for Voron 2.4 Pro
- Pages: 0 - 11
Manual: Instruction of V2.4 R2 Pro+
Manual: BIGTREETECH MANTA M8P V1.0&V1.1 User Manual
- Page: 11
Manual: EBB SB2209 CAN V1.0（RP2040）Build Guide_20240219
- Page: 7

![](Resources/Manuals/Wireing/Wiring%20Overview%20of%20V2.4%20R2%20Pro+.jpg)
![](Resources/Manuals/Wireing/Instruction%20of%20V2.4%20R2%20Pro+.pdf)

## Part 12.0: Manta M8P V1.1 + CB1
Manual: BIGTREETECH MANTA M8P V1.0&V1.1 User Manual
- Pages: 0 - 23

## Part 13.0: Skirts
Manual: VORON2 2.4R2 Build Guide
- Pages: 212 - 239

## Part 14.0: Panels
Manual: VORON2 2.4R2 Build Guide
- Pages: 240 - 259

## Part 16: Eddy Duo
Manual: BIGTRRETECH Eddy Series User Manual 20241210

# Flashing
## Overview
1. Put device into DFU Mode
2. Flash Katapult onto device
	- All devices of the same architecture flash the same way
	- Example: rp2040, stm, ect 
1. Put device into Katapult Mode
	- All devices of the same architecture flash the same way
	- Example: rp2040, stm, ect 
3. Flash klipper to device
4. Get UUID of canbus node




## OS Install
Manual: BIGTREETECH CB1 User Manual
- Pages: 13 - 18
Image: https://github.com/bigtreetech/CB1/releases

## MANTA M8P
Manual: BIGTREETECH MANTA M8P V1.0&V1.1 User Manual
- Pages: 33 - 39
Guides: 
1. @ [MAIN GUIDE]https://canbus.esoterical.online/mainboard_flashing.html
2. @ [MAIN RESOURCE]https://canbus.esoterical.online/mainboard_flashing/common_hardware/BigTreeTech%20Manta%20M8P%20v1.1/README.html
3. https://3dpandme.com/2022/10/02/tutorial-btt-manta-m8p-cb1-klipper-guide/
4. https://mpx.wiki/Firmware-Flash/flash-m8p-v1-ebb
5. https://gist.github.com/fredrikasberg/c14f08eb8617bf8981f77dbc01b00602
Github: https://github.com/bigtreetech/Manta-M8P

### DFU Mode
- Hold Boot0, Press Reset, Wait 5s, Release Boot0
### Flash Katapult
```bash
cd ~/katapult
make menuconfig
#	Micro-controller Architecture (STMicroelectronics STM32)  --->
#    Processor model (STM32G0B1)  --->
#    Build Katapult deployment application (8KiB bootloader)  --->
#    Clock Reference (8 MHz crystal)  --->
#    Communication interface (USB (on PA11/PA12))  --->
#    Application start offset (8KiB offset)  --->
#    USB ids  --->
#()  GPIO pins to set on bootloader entry
#[*] Support bootloader entry on rapid double click of reset button
#[ ] Enable bootloader entry on button (or gpio) state
#[*] Enable Status LED
#(PA13)  Status LED GPIO Pin

make clean
make

lsusb
## ID of STMicroelectronics STM DEvice in DFU Mode
## ID 0483:df11
sudo dfu-util -R -a 0 -s 0x08000000:leave -D ~/katapult/out/katapult.bin -d 0483:df11
```

### ### Enter Katapult Mode
- & double press reset button, red light indicates Katapult mode

### Flash Klipper
```bash
cd ~/klipper
make menuconfig
#[*] Enable extra low-level configuration options
#    Micro-controller Architecture (STMicroelectronics STM32)  --->
#    Processor model (STM32G0B1)  --->
#    Bootloader offset (8KiB bootloader)  --->
#    Clock Reference (8 MHz crystal)  --->
#    Communication interface (USB to CAN bus bridge (USB on PA11/PA12))  --->
#    CAN bus interface (CAN bus (on PD12/PD13))  --->
#    USB ids  --->
#(1000000) CAN bus speed
#()  GPIO pins to set at micro-controller startup
make clean
make
 
sudo service klipper stop
ls /dev/serial/by-id/
## usb-katapult_stm32g0b1xx_460041000A504B4633373520-if00
python3 ~/katapult/scripts/flashtool.py -f ~/klipper/out/klipper.bin -d /dev/serial/by-id/usb-katapult_your_board_id

ip -s -d link show can0
## Show bitrate is set to 1000000?

~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
## Found canbus_uuid=702c161f28a9, Application: Klipper
sudo service klipper start
```



## EBB SB2209C CAN RP2040 
Manual: EBB SB2209 CAN V1.0（RP2040）Build Guide_20240219
- Guides:
	1. @ [MAIN GUIDE]https://canbus.esoterical.online/toolhead_flashing
	2. @ [MAIN RESOURCE]https://canbus.esoterical.online/toolhead_flashing/common_hardware/BigTreeTech%20SB2209%20(RP2040)/README.html
	4. https://www.drklipper.de/doku.php?id=klipper_faq%3Aflash_guide%3Arp2040%3Aebb_sb2209_can
	5. https://www.youtube.com/watch?v=AYnoJCH7JJc&t=257s&ab_channel=Dr.Klipper
Github: https://github.com/bigtreetech/EBB/tree/master/EBB%20SB2209%20CAN%20(RP2040)

### Install Python
``` bash
sudo apt update
sudo apt upgrade
sudo apt install python3 python3-serial
```

### Enter DFU Mode
- Unplug CAN Cable
- Put jumper on 5v
- Connect USB power from the Manta M8P
- Hold Boot0, press Reset, Wait 5s, Release Boot0

### Flash Katapult
```bash
cd ~/katapult
make menuconfig
	Micro-controller Architecture (Raspberry Pi RP2040/RP235x) ->
	Processor model (rp2040)  --->
	Flash chip (W25Q080 with CLKDIV 2)  --->
	Build Katapult deployment application (16KiB bootloader)  ->
    Communication Interface (CAN bus)  --->
(4) CAN RX gpio number (NEW)
(5) CAN TX gpio number (NEW)
(250000) CAN bus speed
()  GPIO pins to set on bootloader entry
[*] Support bootloader entry on rapid double click of reset button
[ ] Enable bootloader entry on button (or gpio) state
[*] Enable Status LED
(gpio26) Status LED GPIO Pin
make clean
make 

lsusb
## ID of rp2040 in boot mode
make flash FLASH_DEVICE=2e8a:0003
```

### !IMPORTANT! Remove Jumper BEFORE Continuing
- ! REMOVE Jumper or board will be fried

### Connect to 24 V
- ! DOUBLE CHECK, Jumper has been Removed
- Plug in Can Cable

### Enter Katapult Mode
- & double press reset button, red light indicates Katapult mode

### Flash Klipper
```bash
cd ~/klilpper
make menuconfig
	[*] Enable extra low-level configuration options
    Micro-controller Architecture (Raspberry Pi RP2040/RP235x)  --->
    Processor model (rp2040)  --->
    Bootloader offset (16KiB bootloader)  --->
    Communication Interface (CAN bus)  --->
(4) CAN RX gpio number (NEW)
(5) CAN TX gpio number (NEW)
(1000000) CAN bus speed
(gpio26)  GPIO pins to set at micro-controller startup
make clean
make

sudo service klipper stop
# Grab UUID from Katapult Node.
python3 ~/katapult/scripts/flashtool.py -i can0 -q
python3 ~/katapult/scripts/flashtool.py -i can0 -u <~youruuid~~> -f ~/klipper/out/klipper.bin
##Katapult Node should now be Klipper
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
sudo service klipper start
## Detected UUID: 5a2de1007cc7, Application: Klipper
```


## Eddy
Manual: EBB SB2209 CAN V1.0（RP2040）Build Guide_20240219
- Guides:
Github: https://github.com/bigtreetech/Eddy

### Enter DFU Mode
- & Ensure Eddy Duo is Set to USB Mode
- Plug USB Cable into Manta M8P
- Hold down Boot Button, Plug in Eddy

### Flash Katapult
```bash
cd ~/katapult
make menuconfig
Micro-controller Architecture (Raspberry Pi RP2040/RP235x)  --->
    Processor model (rp2040)  --->
    Flash chip (W25Q080 with CLKDIV 2)  --->
    Build Katapult deployment application (16KiB bootloader)  --->
    Communication Interface (CAN bus)  --->
(4) CAN RX gpio number
(5) CAN TX gpio number
(1000000) CAN bus speed
()  GPIO pins to set on bootloader entry
[*] Support bootloader entry on rapid double click of reset button
[ ] Enable bootloader entry on button (or gpio) state
[*] Enable Status LED
(gpio26) Status LED GPIO Pin
make clean
make

lsusb
## Bus 002 Device 005: ID 2e8a:0003 Raspberry Pi RP2 Boot
make flash FLASH_DEVICE=2e8a:0003
```

### Toggle CAN Mode
- & On Back of Eddy, Switch USB to CAN
- Plug Eddy into Tool Head Harness
- & NO DFU Mode Needed

### Flash Klipper
```bash
sudo service klipper stop
cd ~/klipper
make menuconfig
[*] Enable extra low-level configuration options
    Micro-controller Architecture (Raspberry Pi RP2040/RP235x)  --->
    Processor model (rp2040)  --->
    Bootloader offset (16KiB bootloader)  --->
    Communication Interface (CAN bus)  --->
(4) CAN RX gpio number
(5) CAN TX gpio number
(1000000) CAN bus speed
(gpio26) GPIO pins to set at micro-controller startup
make clean
make

sudo service klipper stop
# Grab UUID from Katapult Node.
## Detected UUID: 21c888bd553a, Application: Katapult
python3 ~/katapult/scripts/flashtool.py -i can0 -q
python3 ~/katapult/scripts/flashtool.py -i can0 -u <~youruuid~~> -f ~/klipper/out/klipper.bin
##Katapult Node should now be Klipper
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
sudo service klipper start
## Detected UUID: 5a2de1007cc7, Application: Klipper

# Manta M8P
##Detected UUID: 702c161f28a9, Application: Klipper
# Eddy
##Detected UUID: 21c888bd553a, Application: Klipper
# Toolhead
##Detected UUID: 5a2de1007cc7, Application: Klipper
```

## KAIUH
Github: https://github.com/dw-0/kiauh
```bash
cd ~/kiauh
./kiauh.sh
## Install Fluid and Fluid Client-Config
## Update everything
```
