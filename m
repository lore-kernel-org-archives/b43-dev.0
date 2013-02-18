From: Thomas D. Dean <tomdean@speakeasy.org>
Date: Mon, 18 Feb 2013 11:48:51 -0800
Subject: Debian 6 b43 not working
Message-ID: <512285A3.40209@speakeasy.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I have a HP ZD7000 laptop with a BCM4306.  I see no errors, but, nothing 
seems to happen when I try to bring wlan0 up.

 >  uname -a
Linux zd7000 2.6.32-5-686 #1 SMP Sun Sep 23 09:49:36 UTC 2012 i686 GNU/Linux

 > lspci -vnn
02:03.0 Network controller [0280]: Broadcom Corporation BCM4306 
802.11b/g Wireless LAN Controller [14e4:4320] (rev 03)
  Subsystem: Hewlett-Packard Company Broadcom 802.11b/g WLAN [103c:12f4]
  Flags: fast devsel, IRQ 21
  Memory at d2004000 (32-bit, non-prefetchable) [size=8K]

 > cat b43install.log
wget http://bues.ch/b43/fwcutter/b43-fwcutter-017.tar.bz2
tar xjf b43-fwcutter-017.tar.bz2
cd b43-fwcutter-017
make
sudo make install
cd ..
export FIRMWARE_INSTALL_DIR="/lib/firmware"
wget http://www.lwfinger.com/b43-firmware/broadcom-wl-5.100.138.tar.bz2
tar xjf broadcom-wl-5.100.138.tar.bz2
sudo b43-fwcutter -w "$FIRMWARE_INSTALL_DIR" \
     broadcom-wl-5.100.138/linux/wl_apsta.o
sudo modprobe -r b43
sudo modprobe b43

 > sudo cat /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

## wlan
auto wlan0

iface wlan0 inet dhcp
   wpa-ssid "tddhome"
   wpa-psk "xxxxxxxx"

# The primary network interface
allow-hotplug eth0
#NetworkManager#iface eth0 inet dhcp

 > sudo ifup wlan0
Internet Systems Consortium DHCP Client 4.1.1-P1
Copyright 2004-2010 Internet Systems Consortium.
All rights reserved.
For info, please visit https://www.isc.org/software/dhcp/

Listening on LPF/wlan0/00:90:4b:52:82:8a
Sending on   LPF/wlan0/00:90:4b:52:82:8a
Sending on   Socket/fallback
DHCPDISCOVER on wlan0 to 255.255.255.255 port 67 interval 3
DHCPDISCOVER on wlan0 to 255.255.255.255 port 67 interval 6
DHCPDISCOVER on wlan0 to 255.255.255.255 port 67 interval 7
DHCPDISCOVER on wlan0 to 255.255.255.255 port 67 interval 12
DHCPDISCOVER on wlan0 to 255.255.255.255 port 67 interval 11
DHCPDISCOVER on wlan0 to 255.255.255.255 port 67 interval 15
DHCPDISCOVER on wlan0 to 255.255.255.255 port 67 interval 7
No DHCPOFFERS received.
No working leases in persistent database - sleeping.

 > sudo iwconfig wlan0
wlan0   IEEE 802.11bg  ESSID:off/any
         Mode:Managed  Access Point: Not-Associated   Tx-Power=27 dBm
         Retry  long limit:7   RTS thr:off   Fragment thr:off
         Encryption key:off
         Power Management:off

 > sudo ifconfig
eth0     Link encap:Ethernet  HWaddr 00:c0:9f:41:f9:a1
          inet addr:192.168.2.4  Bcast:192.168.2.255  Mask:255.255.255.0
          inet6 addr: fe80::2c0:9fff:fe41:f9a1/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:64005 errors:0 dropped:0 overruns:0 frame:0
          TX packets:16332 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:14999473 (14.3 MiB)  TX bytes:2583343 (2.4 MiB)
          Interrupt:20 Base address:0x3000

lo       Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:25 errors:0 dropped:0 overruns:0 frame:0
          TX packets:25 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:2398 (2.3 KiB)  TX bytes:2398 (2.3 KiB)

wlan0 Link encap:Ethernet  HWaddr 00:90:4b:52:82:8a
       UP BROADCAST MULTICAST  MTU:1500  Metric:1
       RX packets:0 errors:0 dropped:0 overruns:0 frame:0
       TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
       collisions:0 txqueuelen:1000
       RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

wlan0:avahi Link encap:Ethernet  HWaddr 00:90:4b:52:82:8a
       inet addr:169.254.7.215  Bcast:169.254.255.255  Mask:255.255.0.0
       UP BROADCAST MULTICAST  MTU:1500  Metric:1


What additional information may I provide?

Did I install the correct b43 version?

Tom Dean
