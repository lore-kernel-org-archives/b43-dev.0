From: Wifi User <mywifiismycastle@gmail.com>
Date: Thu, 24 Sep 2015 20:00:03 +0200
Subject: b43 with Kernel 4.1?
In-Reply-To: <55F75EE9.6070304@lwfinger.net>
References: <CABC5CqK2A7N5MN8in00953LfTOB=21NW0sJF2bWpG92c+ypXYw@mail.gmail.com>
 <55F75EE9.6070304@lwfinger.net>
Message-ID: <CABC5Cq+ecoDYz2kq9rF9_XNRDP1bKT=TcnqQvMQAd4WbPxUgmw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

2015-09-15 1:57 GMT+02:00 Larry Finger <Larry.Finger@lwfinger.net>:
> Driver b43 works with kernel 4.1. Have you checked the output of dmesg to
> see if there are any clues there?

Thanks, I finally got it working by not compiling the b43 into the
kernel but compiled it as module.

But at the moment iwconfig doesn't recognize the card as a wifi one:
###
root at device:~# iwconfig wlan0
wlan0     no wireless extensions.
###

But with iw I'm able to scan for other wifi networks (iw dev wlan0
scan) and get them listed, too.
rfkill is installed and the

lspci -vnn
###
09:00.0 Network controller [0280]: Broadcom Corporation BCM4322
802.11a/b/g/n Wireless LAN Controller [14e4:432b] (rev 01)
Subsystem: Broadcom Corporation Device [14e4:04a4]
Flags: bus master, fast devsel, latency 0, IRQ 18
Memory at dfcfc000 (64-bit, non-prefetchable) [size=16K]
Capabilities: [40] Power Management version 3
Capabilities: [58] Vendor Specific Information: Len=78 <?>
Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
Capabilities: [d0] Express Endpoint, MSI 00
Kernel driver in use: b43-pci-bridge
###

lsmod
###
Module                  Size  Used by
b43                   332450  0
mac80211              283414  1 b43
video                  10633  0
ata_generic             2270  0
pata_sch                1553  0
ide_pci_generic         1964  0
###

root at device:~# uname -a
Linux device 4.1.0 #3 SMP PREEMPT Thu Sep 24 15:49:42 CEST 2015 i686 GNU/Linux

root at device:~# dmesg | grep b43
[   11.321316] bus: 'bcma': add driver b43
[   11.321451] bus: 'ssb': add driver b43
[   11.321480] bus: 'ssb': driver_probe_device: matched device ssb0:0
with driver b43
[   11.321491] bus: 'ssb': really_probe: probing driver b43 with device ssb0:0
[   11.321513] b43 ssb0:0: no default pinctrl state
[   11.321622] b43-phy0: Broadcom 4322 WLAN found (core revision 16)
[   11.337966] b43-phy0: Found PHY: Analog 8, Type 4 (N), Revision 4
[   11.338287] b43-phy0: Found Radio: Manuf 0x17F, ID 0x2056, Revision
3, Version 0
[   11.346149] driver: 'b43': driver_bound: bound to device 'ssb0:0'
[   11.346235] __allocate_fw_buf: fw-b43/ucode16_mimo.fw buf=de2f7f00
[   11.346494] bus: 'ssb': really_probe: bound device ssb0:0 to driver b43
[   11.364982] b43 ssb0:0: firmware: direct-loading firmware b43/ucode16_mimo.fw
[   11.365002] fw_set_page_data: fw-b43/ucode16_mimo.fw buf=de2f7f00
data=e0324000 size=39296
[   11.365129] __allocate_fw_buf: fw-b43/n0initvals16.fw buf=dd058b80
[   11.367428] b43 ssb0:0: firmware: direct-loading firmware b43/n0initvals16.fw
[   11.367448] fw_set_page_data: fw-b43/n0initvals16.fw buf=dd058b80
data=e00fd000 size=2738
[   11.367469] __allocate_fw_buf: fw-b43/n0bsinitvals16.fw buf=dd743640
[   11.369810] b43 ssb0:0: firmware: direct-loading firmware
b43/n0bsinitvals16.fw
[   11.369830] fw_set_page_data: fw-b43/n0bsinitvals16.fw buf=dd743640
data=e032f000 size=178
[   11.372400] device: 'b43-phy0::tx': device_add
[   11.372605] device: 'b43-phy0::rx': device_add
[   11.372822] device: 'b43-phy0::radio': device_add

root at device:~# ip link set link dev wlan0 up
[   69.884173] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)

root at device:~# iwconfig wlan0
wlan0     no wireless extensions.

Do you happen to have a clue where I'm doing something wrong?

Thanks and kind Regards
