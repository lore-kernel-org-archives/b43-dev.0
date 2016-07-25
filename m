From: Brian Candler <b.candler@pobox.com>
Date: Mon, 25 Jul 2016 08:40:54 +0100
Subject: Problem with b43 monitor mode (14e4:4331)
Message-ID: <3b213f43-85ae-6863-ad6c-8442bc4d83b0@pobox.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I am trying to get monitor mode working on a Macmini6,2 (late 2012 
server) running Linux. This device has built-in Broadcom wifi which 
works with the b43 driver. However in monitor mode I can only see Beacon 
and Probe frames, not user traffic.

OS: Ubuntu 14.04, but with the linux-generic-lts-xenial kernel (4.4.0). 
The server is connected to wired ethernet at the moment, so the wifi 
interface is unused apart from this attempt to monitor other wireless 
traffic.

The broadcom device has PCI ID *14e4:4331* which I see listed as 
supported at 
<https://wireless.wiki.kernel.org/en/users/Drivers/b43#Known_PCI_devices>

Here is how I'm trying to set it up, following 
<http://sandilands.info/sgordon/capturing-wireless-lan-with-ubuntu-tcpdump-kismet> 


# ifconfig wlan0 down
# iwconfig wlan0 mode monitor
# iwconfig wlan0
wlan0     IEEE 802.11bg  Mode:Monitor  Tx-Power=0 dBm
           Retry short limit:7   RTS thr:off   Fragment thr:off
           Power Management:on
# ifconfig wlan0 up
# iwconfig wlan0 chan 6
# tcpdump -i wlan0 -n -s0 -c 10000 -w file.pcap
tcpdump: WARNING: wlan0: no IPv4 address assigned
tcpdump: listening on wlan0, link-type IEEE802_11_RADIO (802.11 plus 
radiotap header), capture size 65535 bytes

Then I try generating some wireless traffic on the same channel from a 
different device. But the results only show frames which are "Beacon", 
"Probe Request" or "Probe Response":

# tcpdump -r file.pcap | wc -l
reading from file file.pcap, link-type IEEE802_11_RADIO (802.11 plus 
radiotap header)
1913

# tcpdump -r file.pcap  | egrep -v 'Beacon|Probe Request|Probe Response'
reading from file file.pcap, link-type IEEE802_11_RADIO (802.11 plus 
radiotap header)
#

I did notice "Power Management:on" in the iwconfig output, but I can't 
turn it off:

# ifconfig wlan0 down
# iwconfig wlan0 power off
Error for wireless request "Set Power Management" (8B2C) :
     SET failed on device wlan0 ; Invalid argument.

Any ideas what I'm missing? According to 
<https://www.aircrack-ng.org/doku.php?id=b43> b43 should have quite good 
support for monitor mode.

Many thanks,

Brian Candler.

P.S. Additional chipset/module information

# lsmod | grep b43
b43                   413696  0
mac80211              733184  1 b43
cfg80211              557056  2 b43,mac80211
ssb                    65536  1 b43
bcma                   53248  1 b43

# lspci -vnn | grep 14e4
01:00.0 Ethernet controller [0200]: Broadcom Corporation NetXtreme 
BCM57766 Gigabit Ethernet PCIe [14e4:1686] (rev 01)
     Subsystem: Broadcom Corporation NetXtreme BCM57766 Gigabit Ethernet 
PCIe [14e4:1686]
01:00.1 SD Host controller [0805]: Broadcom Corporation BCM57765/57785 
SDXC/MMC Card Reader [14e4:16bc] (rev 01) (prog-if 01)
     Subsystem: Broadcom Corporation Device [14e4:0000]
02:00.0 Network controller [0280]: Broadcom Corporation BCM4331 
802.11a/b/g/n [14e4:4331] (rev 02)

# modinfo b43
filename: 
/lib/modules/4.4.0-28-generic/kernel/drivers/net/wireless/b43/b43.ko
firmware:       b43/ucode9.fw
firmware:       b43/ucode5.fw
firmware:       b43/ucode16_mimo.fw
firmware:       b43/ucode15.fw
firmware:       b43/ucode14.fw
firmware:       b43/ucode13.fw
firmware:       b43/ucode11.fw
license:        GPL
author:         Rafa? Mi?ecki
author:         G?bor Stefanik
author:         Michael Buesch
author:         Stefano Brivio
author:         Martin Langer
description:    Broadcom B43 wireless driver
srcversion:     6046FCC9190ABD5D296D2D2
alias:          ssb:v4243id0812rev10*
alias:          ssb:v4243id0812rev0F*
alias:          ssb:v4243id0812rev0D*
alias:          ssb:v4243id0812rev0C*
alias:          ssb:v4243id0812rev0B*
alias:          ssb:v4243id0812rev0A*
alias:          ssb:v4243id0812rev09*
alias:          ssb:v4243id0812rev07*
alias:          ssb:v4243id0812rev06*
alias:          ssb:v4243id0812rev05*
alias:          bcma:m04BFid0812rev2Acl*
alias:          bcma:m04BFid0812rev28cl*
alias:          bcma:m04BFid0812rev1Ecl*
alias:          bcma:m04BFid0812rev1Dcl*
alias:          bcma:m04BFid0812rev1Ccl*
alias:          bcma:m04BFid0812rev18cl*
alias:          bcma:m04BFid0812rev17cl*
alias:          bcma:m04BFid0812rev15cl*
alias:          bcma:m04BFid0812rev11cl*
depends:        mac80211,ssb,bcma,cfg80211
intree:         Y
vermagic:       4.4.0-28-generic SMP mod_unload modversions
parm:           bad_frames_preempt:enable(1) / disable(0) Bad Frames 
Preemption (int)
parm:           fwpostfix:Postfix for the .fw files to load. (string)
parm:           hwpctl:Enable hardware-side power control (default off) 
(int)
parm:           nohwcrypt:Disable hardware encryption. (int)
parm:           hwtkip:Enable hardware tkip. (int)
parm:           qos:Enable QOS support (default on) (int)
parm:           btcoex:Enable Bluetooth coexistence (default on) (int)
parm:           verbose:Log message verbosity: 0=error, 1=warn, 
2=info(default), 3=debug (int)
parm:           pio:Use PIO accesses by default: 0=DMA, 1=PIO (int)
parm:           allhwsupport:Enable support for all hardware (even it if 
overlaps with the brcmsmac driver) (int)
# modinfo b43legacy
filename: 
/lib/modules/4.4.0-28-generic/kernel/drivers/net/wireless/b43legacy/b43legacy.ko
firmware:       b43legacy/ucode4.fw
firmware:       b43legacy/ucode2.fw
license:        GPL
author:         Michael Buesch
author:         Stefano Brivio
author:         Martin Langer
description:    Broadcom B43legacy wireless driver
srcversion:     8AD21A1A794B063800B1A08
alias:          ssb:v4243id0812rev04*
alias:          ssb:v4243id0812rev02*
depends:        mac80211,ssb,cfg80211
intree:         Y
vermagic:       4.4.0-28-generic SMP mod_unload modversions
parm:           pio:enable(1) / disable(0) PIO mode (int)
parm:           bad_frames_preempt:enable(1) / disable(0) Bad Frames 
Preemption (int)
parm:           fwpostfix:Postfix for the firmware files to load. (string)

# head /sys/module/b43/parameters/*
==> /sys/module/b43/parameters/allhwsupport <==
0

==> /sys/module/b43/parameters/bad_frames_preempt <==
0

==> /sys/module/b43/parameters/btcoex <==
1

==> /sys/module/b43/parameters/fwpostfix <==

==> /sys/module/b43/parameters/hwpctl <==
0

==> /sys/module/b43/parameters/hwtkip <==
0

==> /sys/module/b43/parameters/nohwcrypt <==
0

==> /sys/module/b43/parameters/pio <==
0

==> /sys/module/b43/parameters/qos <==
1

==> /sys/module/b43/parameters/verbose <==
2

# dmesg | egrep 'b43|wlan0'
[    3.994522] b43-phy0: Broadcom 4331 WLAN found (core revision 29)
[    3.994897] b43-phy0: Found PHY: Analog 9, Type 7 (HT), Revision 1
[    3.994906] b43-phy0: Found Radio: Manuf 0x17F, ID 0x2059, Revision 
0, Version 1
[    3.994907] b43-phy0 warning: 5 GHz band is unsupported on this PHY
[488620.730061] b43-phy0: Loading firmware version 666.2 (2011-02-23 
01:15:07)
[488629.221640] device wlan0 entered promiscuous mode
[488695.406184] device wlan0 left promiscuous mode
