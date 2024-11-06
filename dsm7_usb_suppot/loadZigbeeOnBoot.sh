modprobe usbserial
modprobe ftdi_sio
modprobe cdc-acm

insmod /lib/modules/ch341.ko
insmod /lib/modules/cp210x.ko
insmod /lib/modules/pl2303.ko
insmod /lib/modules/ti_usb_3410_5052.ko





insmod /lib/modules/cdc-acm.ko
chmod 666 /dev/ttyUSB0
