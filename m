From: Ben Prescott <ben.prescott@thewatertower.org>
Date: Wed, 28 Mar 2012 20:44:13 +0100 (BST)
Subject: b43: system hangs during kernel initialisation [14e4:4318]
In-Reply-To: <4F7335FC.5090501@lwfinger.net>
References: <4F72181C.3030903@thewatertower.org>
 <4F723155.1080104@lwfinger.net> <4F72AE46.1050805@thewatertower.org>
 <4F7335FC.5090501@lwfinger.net>
Message-ID: <43470.80.0.47.200.1332963853.squirrel@server27.ukservers.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


>
> If you copy any existing firmware files in /lib/firmware/b43/ on your
> working
> system, either from a USB stick, or from mounting a hard drive partition,
> could
> you then load b43? If not, perhaps we can get some better diagnostics from
> a
> running kernel.
>

Not a problem at all;  the b43.blacklist=yes kernel param causes the
module to bail out;  I used that to get 12.04 installed.

That said, I rebuilt to 11.10 to test older kernels, and that's where the
system is at the moment.

I've installed Ubuntu's b43 firmware package and rebooted into the
3.2.0-rc2 kernel.

that works, now.

regards, Ben

ben at tecumseh:~$ uname -a
Linux tecumseh 3.2.0-030200rc2-generic #201111151435 SMP Tue Nov 15
19:43:49 UTC 2011 i686 i686 i386 GNU/Linux
ben at tecumseh:~$ iwconfig wlan0
wlan0     IEEE 802.11bg  ESSID:"foo"
          Mode:Managed  Frequency:2.422 GHz  Access Point: 00:1A:xx:xx:xx:xx
          Bit Rate=48 Mb/s   Tx-Power=20 dBm
          Retry  long limit:7   RTS thr:off   Fragment thr:off
          Power Management:off
          Link Quality=65/70  Signal level=-45 dBm
          Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
          Tx excessive retries:0  Invalid misc:54   Missed beacon:0

ben at tecumseh:~$ dmesg | grep b43
[    2.290618] b43-pci-bridge 0000:06:02.0: enabling device (0000 -> 0002)
[    2.290657] b43-pci-bridge 0000:06:02.0: PCI INT A -> GSI 22 (level,
low) -> IRQ 22
[    2.290679] b43-pci-bridge 0000:06:02.0: setting latency timer to 64
[   19.256398] b43-phy0: Broadcom 4318 WLAN found (core revision 9)
[   19.534661] Registered led device: b43-phy0::tx
[   19.534694] Registered led device: b43-phy0::rx
[   19.534726] Registered led device: b43-phy0::radio
[   22.592042] b43-phy0: Loading firmware version 508.1084 (2009-01-14
01:32:01)
