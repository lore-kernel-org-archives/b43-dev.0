From: Octavian Voicu <octavian.voicu@gmail.com>
Date: Wed, 24 Aug 2011 19:33:09 +0300
Subject: BCM4321 support
Message-ID: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I just replaced my WLAN card on my Dell laptop. The old one, a BCM4311
that came with the laptop, stopped working at some point -- I was
getting?FOUND UNSUPPORTED PHY?(Analog 0, Type 0, Revision 0).

The new one is a BCM4321 pcmcia mini-card. It looks identical to [1]
(I bought it 2nd hand though): BCM94321MCP3 P3, REV 0A, ver 6.7 r.

I got it to work after upgrading to a newer kernel / b43 driver
(3.0.3-030003-generic from .deb), but there are a few problems:


1) All networks show as having maximum link quality. Signal level is
always 0 dBm.

I have many wifi networks around, and most don't have a strong signal.
Also, there is no noise level in the iwconfig output:
? ? ? ? ? Link Quality=70/70 ?Signal level=0 dBm

Same goes for iwlist scan. I also tried the Linux STA driver, which
correctly shows the link quality (including a Noise level), but for
some reason it cannot connect authenticate to my WPA access point
(didn't try without encryption).

How can I fix this?

I also see some invalid misc packets. Any concerns about that?


2) I understand this chip should also support 802.11n, but it doesn't
look like b43 supports it:

wlan0     IEEE 802.11bg  ESSID:"swn"

This AP doesn't support 802.11n, but the Linux STA driver would also
show the n suffix.

Can I use 802.11n with b43?


3) Tried latest firmware (version 666.2) from [2], but it didn't work.
It was loaded successfully, but iwlist scan wouldn't show any
networks.

After that I switched to 508.1084, as recommended on that page, and it
works as described above. My system is Ubuntu 11.04 (natty) which has
an older firmware, so I extracted those manually using latest
fwcutter.

Which firmware do you recommend?


I attached a file with more info about my system, and dmesg logs after
inserting the module.
I have some kernel dev experience, and I'm willing to help improve the
driver, but I need a few pointers on what's broken or not implemented,
and on the way to approach it (reverse engineer the STA driver? any
other tools?).

Thanks,
Octavian


[1]?http://www.pchub.com/uph/laptop/279-31135-1906/HP-Common-Item-HP--Wireless-LAN-Card.html
[2] http://wireless.kernel.org/en/users/Drivers/b43
-------------- next part --------------
octav at cake:~$ uname -a
Linux cake 3.0.3-030003-generic #201108180913 SMP Thu Aug 18 09:15:59 UTC 2011 x86_64 x86_64 x86_64 GNU/Linux
octav at cake:~$ lspci -vnn
... 

0c:00.0 Network controller [0280]: Broadcom Corporation BCM4321 802.11a/b/g/n [14e4:4328] (rev 03)
        Subsystem: Hewlett-Packard Company BCM4321 802.11a/b/g/n Wireless LAN Controller [103c:1367]
        Flags: bus master, fast devsel, latency 0, IRQ 17
        Memory at f9ffc000 (64-bit, non-prefetchable) [size=16K]
        Memory at f0000000 (64-bit, prefetchable) [size=1M]
        Capabilities: <access denied>
        Kernel driver in use: b43-pci-bridge
        Kernel modules: ssb

octav at cake:~$ sudo modprobe -v b43 verbose=2
insmod /lib/modules/3.0.3-030003-generic/kernel/drivers/net/wireless/b43/b43.ko verbose=2
octav at cake:~$ dmesg 
[ 2199.346395] b43-phy1: Broadcom 4321 WLAN found (core revision 12)
[ 2199.500263] cfg80211: Updating information on frequency 2412 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500268] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500271] cfg80211: Updating information on frequency 2417 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500274] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500276] cfg80211: Updating information on frequency 2422 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500279] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500282] cfg80211: Updating information on frequency 2427 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500284] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500292] cfg80211: Updating information on frequency 2432 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500295] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500303] cfg80211: Updating information on frequency 2437 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500306] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500308] cfg80211: Updating information on frequency 2442 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500311] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500314] cfg80211: Updating information on frequency 2447 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500317] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500319] cfg80211: Updating information on frequency 2452 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500322] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500324] cfg80211: Updating information on frequency 2457 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500327] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500330] cfg80211: Updating information on frequency 2462 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500333] cfg80211: 2402000 KHz - 2472000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500335] cfg80211: Updating information on frequency 2467 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500338] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500340] cfg80211: Updating information on frequency 2472 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500343] cfg80211: 2457000 KHz - 2482000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500346] cfg80211: Updating information on frequency 2484 MHz for a 20 MHz width channel with regulatory rule:
[ 2199.500349] cfg80211: 2474000 KHz - 2494000 KHz @  KHz), (300 mBi, 2000 mBm)
[ 2199.500492] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
[ 2199.501905] Registered led device: b43-phy1::tx
[ 2199.501933] Registered led device: b43-phy1::rx
[ 2199.501956] Registered led device: b43-phy1::radio
[ 2199.501978] Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]
[ 2199.760263] b43-phy1: Loading firmware version 508.1084 (2009-01-14 01:32:01)
[ 2199.964454] ADDRCONF(NETDEV_UP): wlan0: link is not ready
octav at cake:~$ sudo iwconfig wlan0
wlan0     IEEE 802.11bg  ESSID:"swn"                                                                                                                                             
          Mode:Managed  Frequency:2.412 GHz  Access Point: 00:1B:11:A5:13:9A   
          Bit Rate=18 Mb/s   Tx-Power=20 dBm   
          Retry  long limit:7   RTS thr:off   Fragment thr:off
          Encryption key:off
          Power Management:off
          Link Quality=70/70  Signal level=0 dBm  
          Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
          Tx excessive retries:0  Invalid misc:46   Missed beacon:0
