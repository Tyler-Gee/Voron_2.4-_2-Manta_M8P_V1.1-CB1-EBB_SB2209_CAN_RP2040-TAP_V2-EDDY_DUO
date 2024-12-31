# BTT Manta M8P v1.1 + BTT EBB 2209 Canbus setup

Since documentation has been somewhat lacking... here is a quick write-up to get started!

Sources:

* https://github.com/Esoterical/voron_canbus/tree/main/toolhead_flashing/common_hardware/BigTreeTech%20SB2209%20and%20SB2240
* https://github.com/bigtreetech/EBB/blob/master/EBB%20SB2240_2209%20CAN/sample-bigtreetech-ebb-sb-canbus-v1.0.cfg

Boards:
* [Manta M8P](https://github.com/bigtreetech/Manta-M8P)
* [EBB2209](https://github.com/bigtreetech/EBB/tree/master/EBB%20SB2240_2209%20CAN)


**NOTE** This guide assumes that you are running Mainsail (Raspbian Buster). While the firmware compilation/flashing is more or less the same on all systems there will probably be differences in configuring the canbus interface if you are running a newer version of Raspbian (Bookworm or later). 

Systemd configuration by [@yzheka](https://github.com/yzheka) in the [comments](https://gist.github.com/fredrikasberg/c14f08eb8617bf8981f77dbc01b00602?permalink_comment_id=5291968#gistcomment-5291968).

## Manta M8P

**NOTE** Do not forget the `120R` jumper just above the canbus connector!

[Board overview](https://github.com/bigtreetech/Manta-M8P/blob/master/Hardware/BIGTREETECH%20MANTA%20M8P%20V1.1%20PinOut.png)

### Katapult (previously CanBoot)

As [julianschweizer](https://gist.github.com/fredrikasberg/c14f08eb8617bf8981f77dbc01b00602?permalink_comment_id=4771896#gistcomment-4771896) pointed out, the **CanBoot** project has been renamed **Katapult**

First, ssh into your system and from the home directory pull the latest version of katapult

```git clone https://github.com/Arksine/katapult.git```

Enter directory and compile Katapult

```
cd ~/katapult
make menuconfig
```

Use the following config

```
Micro-controller Architecture (STMicroelectronics STM32)  --->
Processor model (STM32G0B1)  --->
Build CanBoot deployment application (Do not build)  --->
Clock Reference (8 MHz crystal)  --->
Communication interface (CAN bus (on PD12/PD13))  --->
Application start offset (8KiB offset)  --->
(250000) CAN bus speed
() GPIO pins to set on bootloader entry
[*] Support bootloader entry on rapid double click of reset button
[ ] Enable bootloader entry on button (or gpio) state
[ ] Enable Status LED
```

Now build Katapult

```
make clean
make
```

### Klipper

Enter klipper directory and compile klipper

```
cd ~/klipper
make menuconfig
```

Use the following configuration

```
[*] Enable extra low-level configuration options
Micro-controller Architecture (STMicroelectronics STM32) --->
Processor model (STM32G0B1) --->
Bootloader offset (8KiB bootloader) --->
Clock Reference (8 MHz crystal) --->
Communication interface (USB to CAN bus bridge (USB on PA11/PA12)) --->
CAN bus interface (CAN bus (on PD12/PD13)) --->
USB ids --->
(250000) CAN bus speed
() GPIO pins to set at micro-controller startup
```

Now build klipper

```
make clean
make
```

### Flashing Katapult and Klipper

First flash your Manta M8P by entering DFU mode

1. Hold down `Boot0` AND `Reset`
2. Release Reset and then `Boot0`

Make sure that your board is in DFU mode by running

```lsusb```

This should show you the Manta M8P as `Bus 001 Device 008: ID 0483:df11 STMicroelectronics STM Device in DFU Mode`.

When you have validated that the Manta M8P is ready, flash Katapult.

```sudo dfu-util -a 0 -D ~/katapult/out/katapult.bin --dfuse-address 0x08000000:force:leave -d 0483:df11```

Then reset the board by pressing `Reset` and then put the board in DFU mode once again to flash Klipper.

```sudo dfu-util -a 0 -d 0483:df11 --dfuse-address 0x08002000 -D ~/klipper/out/klipper.bin```

Now the board should be running Katapult with Klipper. Verify by pressing `Reset` once again and then run `lsusb`.
The board should be identified by `Bus 001 Device 011: ID 1d50:606f OpenMoko, Inc. Geschwister Schneider CAN adapter`.

### Enable Canbus on the Raspberry Pi

To enable the canbus on the raspberry pi you need to create the interface file

```
sudo nano /etc/network/interfaces.d/can0
```

Paste the following content
```
allow-hotplug can0
iface can0 can static
 bitrate 250000
 up ifconfig $IFACE txqueuelen 1024
```

To bring the canbus interface `can0` up simply run `sudo ifup can0`. If everything worked you should now be able to query your Manta board using `python3 ~/katapult/scripts/flash_can.py -q`.
This command will present you with the UUID of the Manta board which you need to reference in your `printer.cfg`.

```
[mcu]
canbus_uuid: <your uuid goes here>
canbus_interface: can0
```

## BTT EBB2209

The procedure is more or less the same for the EBB2209 board.

**NOTE** I don't know with 100% certainty that the heater won't turn on when the board is in DFU mode so keep the heater cartridge disconnected just to be safe!

**NOTE** Do not forget the `120R` jumper on the bottom of the board (beside BL-Touch connector)!

### Katapult

Just enter the `katapult` folder from the last step and re-run `menuconfig`.

```
cd ~/katapult
make menuconfig
```

Use the followin config

```
[*] Enable extra low-level conﬁguration options
Micro-controller Architecture (STMicroelectronics STM32) --->
Processor model (STM32G0B1) --->
Bootloader oﬀset (8KiB bootloader) --->
Clock Reference (8 MHz crystal) --->
Communication interface (CAN bus (on PB0/PB1)) --->
(250000) CAN bus speed
```

Now compile Katapult

```
make clean
make
```

### Klipper

Enter klipper directory and compile klipper

```
cd ~/klipper
make menuconfig
```

Use the following config

```
[*] Enable extra low-level conﬁguration options
Micro-controller Architecture (STMicroelectronics STM32) --->
Processor model (STM32G0B1) --->
Bootloader oﬀset (8KiB bootloader) --->
Clock Reference (8 MHz crystal) --->
Communication interface (CAN bus (on PB0/PB1)) --->
(250000) CAN bus speed
```

### Flashing Katapult and Klipper

[Board overview](https://github.com/bigtreetech/EBB/blob/master/EBB%20SB2240_2209%20CAN/SB2209/Hardware/BIGTREETECHEBB%20SB2209%20CAN%20V1.0_IO.pdf)

First flash your EBB2209 by entering DFU mode

1. Hold down `Boot` AND `Rst`
2. Release Reset and then `Boot`

Make sure that your board is in DFU mode by running

```lsusb```

This should show you the EBB22009 as `Bus 001 Device 008: ID 0483:df11 STMicroelectronics STM Device in DFU Mode`.

When you have validated that the board is ready, flash Katapult.

```sudo dfu-util -a 0 -D ~/katapult/out/katapult.bin --dfuse-address 0x08000000:force:leave -d 0483:df11```

Then reset the board by pressing `Rst` and then put the board in DFU mode once again to flash Klipper.

```sudo dfu-util -a 0 -d 0483:df11 --dfuse-address 0x08002000 -D ~/klipper/out/klipper.bin```

Now the board should be running Katapult with Klipper. Verify by pressing `Reset` once again and then run `lsusb`.
The board should be identified by `Bus 001 Device 011: ID 1d50:606f OpenMoko, Inc. Geschwister Schneider CAN adapter`.

Since you already have a canbus network up and running, simply run `python3 ~/katapult/scripts/flash_can.py -q` to get the UUID for the EBB2209 board.

Using the UUID from that command you should reference the board the same way you did your Manta board but this time with a identifier.

```
[mcu EBBCan]
canbus_uuid: <your uuid goes here>
canbus_interface: can0
```

Now you need to update your printer configuration to use the appropriate pins and if you named your mcu `EBBCan` you can more or less copy the [example configuration](https://github.com/bigtreetech/EBB/blob/master/EBB%20SB2240_2209%20CAN/sample-bigtreetech-ebb-sb-canbus-v1.0.cfg)!

Happy printing!