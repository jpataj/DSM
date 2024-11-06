# Website
https://web.archive.org/web/20211027124225/http://www.jadahl.com/iperf-arp-scan/DSM_7.0/

# Youtube
https://www.youtube.com/watch?v=A2WmzU8N-38&t=93s

#How to enable USB0 for DS423+
## SSH to DSM and compiled USB Modules

sudo su

modprobe usbserial
modprobe ftdi_sio
modprobe cdc-acm

cd /lib/modules/

sudo wget https://github.com/robertklep/dsm7-usb-serial-drivers/raw/refs/heads/main/modules/geminilake/dsm-7.2/ch341.ko
sudo insmod /lib/modules/ch341.ko

sudo wget https://github.com/robertklep/dsm7-usb-serial-drivers/raw/refs/heads/main/modules/geminilake/dsm-7.2/cp210x.ko
sudo insmod /lib/modules/cp210x.ko

sudo wget https://github.com/robertklep/dsm7-usb-serial-drivers/raw/refs/heads/main/modules/geminilake/dsm-7.2/pl2303.ko
sudo insmod /lib/modules/pl2303.ko

sudo wget https://github.com/robertklep/dsm7-usb-serial-drivers/raw/refs/heads/main/modules/geminilake/dsm-7.2/ti_usb_3410_5052.ko
sudo insmod /lib/modules/ti_usb_3410_5052.ko


## Run loadzigbeeonboot script 

#loadzigbeeonboot script - https://github.com/jpataj/DSM/blob/main/dsm7_usb_suppot/loadZigbeeOnBoot.sh


modprobe usbserial
modprobe ftdi_sio
modprobe cdc-acm

insmod /lib/modules/ch341.ko
insmod /lib/modules/cp210x.ko
insmod /lib/modules/pl2303.ko
insmod /lib/modules/ti_usb_3410_5052.ko

insmod /lib/modules/cdc-acm.ko
chmod 666 /dev/ttyUSB0
