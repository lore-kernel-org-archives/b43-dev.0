From: ikorot at earthlink.net <ikorot@earthlink.net>
Date: Mon, 14 Mar 2011 00:41:15 -0700 (GMT-07:00)
Subject: Strange problem with b43
Message-ID: <29643925.1300088475878.JavaMail.root@elwamui-lapwing.atl.sa.earthlink.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi, ALL,
I have very strange problem that I would like to address.

First about my system:

IgorsGentooOnNetwork igor # uname -a
Linux IgorsGentooOnNetwork 2.6.30-gentoo-r6 #9 SMP Wed Jun 2 14:02:23 PDT 2010 i686 Genuine Intel(R) CPU T1350 @ 1.86GHz GenuineIntel GNU/Linux

IgorsGentooOnNetwork igor # emerge -pv dhcpcd wpa_supplicant
These are the packages that would be merged, in order:

Calculating dependencies... done!
[ebuild     U ] net-misc/dhcpcd-5.2.8 [4.0.13] USE="zeroconf (-compat%*)" 69 kB
[ebuild     U ] net-wireless/wpa_supplicant-0.7.2-r3 [0.6.9] USE="readline ssl -dbus -debug -eap-sim -fasteap% -gnutls -madwifi (-ps3) -qt4 -wps (-qt3%)" 1,597 kB

IgorsGentooOnNetwork igor # lspci           
00:00.0 Host bridge: Intel Corporation Mobile 945GM/PM/GMS, 943/940GML and 945GT Express Memory Controller Hub (rev 03)
00:02.0 VGA compatible controller: Intel Corporation Mobile 945GM/GMS, 943/940GML Express Integrated Graphics Controller (rev 03)
00:02.1 Display controller: Intel Corporation Mobile 945GM/GMS/GME, 943/940GML Express Integrated Graphics Controller (rev 03)
00:1b.0 Audio device: Intel Corporation 82801G (ICH7 Family) High Definition Audio Controller (rev 01)
00:1c.0 PCI bridge: Intel Corporation 82801G (ICH7 Family) PCI Express Port 1 (rev 01)
00:1c.3 PCI bridge: Intel Corporation 82801G (ICH7 Family) PCI Express Port 4 (rev 01)
00:1d.0 USB Controller: Intel Corporation 82801G (ICH7 Family) USB UHCI Controller #1 (rev 01)
00:1d.1 USB Controller: Intel Corporation 82801G (ICH7 Family) USB UHCI Controller #2 (rev 01)
00:1d.2 USB Controller: Intel Corporation 82801G (ICH7 Family) USB UHCI Controller #3 (rev 01)
00:1d.3 USB Controller: Intel Corporation 82801G (ICH7 Family) USB UHCI Controller #4 (rev 01)
00:1d.7 USB Controller: Intel Corporation 82801G (ICH7 Family) USB2 EHCI Controller (rev 01)
00:1e.0 PCI bridge: Intel Corporation 82801 Mobile PCI Bridge (rev e1)
00:1f.0 ISA bridge: Intel Corporation 82801GBM (ICH7-M) LPC Interface Bridge (rev 01)
00:1f.2 IDE interface: Intel Corporation 82801GBM/GHM (ICH7 Family) SATA IDE Controller (rev 01)
00:1f.3 SMBus: Intel Corporation 82801G (ICH7 Family) SMBus Controller (rev 01)
03:00.0 Ethernet controller: Broadcom Corporation BCM4401-B0 100Base-TX (rev 02)
03:01.0 FireWire (IEEE 1394): Ricoh Co Ltd R5C832 IEEE 1394 Controller
03:01.1 SD Host controller: Ricoh Co Ltd R5C822 SD/SDIO/MMC/MS/MSPro Host Adapter (rev 19)
03:01.2 System peripheral: Ricoh Co Ltd R5C843 MMC Host Controller (rev 01)
03:01.3 System peripheral: Ricoh Co Ltd R5C592 Memory Stick Bus Host Adapter (rev 0a)
03:01.4 System peripheral: Ricoh Co Ltd xD-Picture Card Controller (rev 05)
0b:00.0 Network controller: Broadcom Corporation BCM4311 802.11b/g WLAN (rev 01)

IgorsGentooOnNetwork igor # dmesg | grep b43
[    0.164260] b43-pci-bridge 0000:0b:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
[    0.164280] b43-pci-bridge 0000:0b:00.0: setting latency timer to 64
[    4.048785] b43-phy0: Broadcom 4311 WLAN found (core revision 10)
[    4.065927] b43-phy0 debug: Found PHY: Analog 4, Type 2, Revision 8
[    4.065955] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 2
[   98.027122] b43 ssb0:0: firmware: requesting b43/ucode5.fw
[   98.090329] b43 ssb0:0: firmware: requesting b43/pcm5.fw
[   98.100037] b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
[   98.122736] b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
[   98.239075] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
[   98.280131] b43-phy0 debug: Chip initialized
[   98.280340] b43-phy0 debug: 32-bit DMA initialized
[   98.289255] b43-phy0 debug: Wireless interface started
[   98.292566] b43-phy0 debug: Adding Interface type 2
[   98.295050] b43-phy0: Radio turned on by software
[   99.560554] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 00:22:3f:7d:63:6a
[   99.560615] b43-phy0 debug: Using hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
[  812.496128] b43-phy0 debug: Using hardware based encryption for keyidx: 2, mac: ff:ff:ff:ff:ff:ff
[ 1430.108269] b43-phy0 debug: Disabling hardware based encryption for keyidx: 0, mac: 00:22:3f:7d:63:6a
[ 1430.110089] b43-phy0 debug: Disabling hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
[ 1430.110109] b43-phy0 debug: Disabling hardware based encryption for keyidx: 2, mac: ff:ff:ff:ff:ff:ff
[ 1432.117592] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 00:22:3f:7d:63:6a
[ 1432.117654] b43-phy0 debug: Using hardware based encryption for keyidx: 2, mac: ff:ff:ff:ff:ff:ff

Now to the problem.
I boot my laptop, then execute following commands:
IgorsGentooOnNetwork igor # cat ./setup_wireless
ifconfig wlan0 up
wpa_supplicant -c/etc/wpa_supplicant/wpa_supplicant.conf -iwlan0 -B
dhcpcd wlan0 -d

I am getting an IP without any problems. I can browse web without any problems.
However if I leave the laptop for some time and then come back and refresh the page on the browser
I see that I'm not connected to my AP. Instead it connects to the AP that is located in the office
and it asks for the AP credentials.
The laptop is running an "ivman" - daemon to do memory swap.

What strucks me is that this problem occurs once for about 100 successful runs.

However, if I close the lid of the laptop and then after some time open it the same problem appears. But
in this scenario it appears  more often.

What might be the cause?

If you need an additional info, I will be happy to provide it.
Also I understand that I'm on outdated kernel, but if you guys tell me to upgrade and this problem
will go away, I will do that.

Thank you for any help you can provide.
