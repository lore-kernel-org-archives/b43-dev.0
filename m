From: Hong Xu <hong@topbug.net>
Date: Thu, 01 Jan 2015 14:04:41 -0800
Subject: Wireless link unstable (BCM4331)
Message-ID: <87k316f98m.fsf@home.hong.me>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


Hi,

I'm using b43 driver with my BCM4331 chip, but the connection is very unstable -- the ping time to
the router range from 1ms to a few thousand ms.

It happens randomly. There is no definite way to reproduce it.

Here are some info of the wlan configuration copied from NetworkManager system-connection files.

    [connection]
    type=wifi

    [wifi]
    mode=infrastructure
    security=802-11-wireless-security

    [wifi-security]
    key-mgmt=wpa-psk

    [ipv4]
    method=auto

    [ipv6]
    method=auto
    ip6-privacy=2

I also tried to switch to different channels on the router settings, but not helpful. Other wireless
devices have no stability problem when connecting to this router, but I also haven't observed
another router which this laptop with b43 has problem with.

Here are some system information.

$ uname -a
Linux hong-MacBook 3.18.1-3-ck #1 SMP PREEMPT Mon Dec 22 14:40:44 EST 2014 x86_64 GNU/Linux

# lspci -vvn | grep 43 -A7

04:00.0 0280: 14e4:4331 (rev 02)
	Subsystem: 106b:00ef
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 256 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@c1900000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3

dmesg output is attached.

Thanks!
Hong


-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43.dmesg
Type: application/octet-stream
Size: 122946 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150101/a1b577d5/attachment-0001.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 818 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150101/a1b577d5/attachment-0001.sig>
