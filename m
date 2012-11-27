From: Ma Xiaojun <damage3025@gmail.com>
Date: Tue, 27 Nov 2012 14:59:31 -0600
Subject: BCM4331 Stability Issue
Message-ID: <CAGVx7UXC6H1mBGfCfLHXrVkv0DLSbSGghUXFJhVrsPVnaEg-bQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

$ uname -a
Linux ubuntu 3.2.0-33-generic #52-Ubuntu SMP Thu Oct 18 16:29:15 UTC
2012 x86_64 x86_64 x86_64 GNU/Linux

$ lspci -vvn|grep 43 -A7
03:00.0 0280: 14e4:4331 (rev 02)
	Subsystem: 106b:00d6
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 256 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@a0600000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: <access denied>

$ dmesg
http://paste.ubuntu.com/1392777/

My laptop is MacBookPro8,1 and I'm running Ubuntu 12.04 64bit without
any kernel related tweak. I installed firmware from
broadcom-wl-5.100.138.tar.bz2 as described in
http://linuxwireless.org/en/users/Drivers/b43
( I used "b43-fwcutter" package from Ubuntu repository and extracted
the firmware manually, I know that postint script in
"firmware-b43-installer" package of Debian/Ubuntu is a bit outdated. )

My Wi-Fi is now usable, but it is unstable. The SSID I generally
connect is provided by a university. The connection uses WPA, TTLS,
MsCHAPv2. There is also a unencrypted SSID using Web portal. But the
unencrypted SSID doesn't work any better.

Now I generally monitor my Wi-Fi state using "ping 8.8.8.8" and "tail
-f /var/log/syslog". Ping fails from time to time and the syslog at
that time shows something like "wlan0: direct probe to
00:11:22:33:44:55 timed out" (the MAC address is definitely fake). In
most cases the disconnection is temporary. But sometimes only
restarting NetworkManger could help.

Mac OS X on same machine seems to be much better on Wi-Fi stability. I
don't know how to measure it. But I don't need to monitor Wi-Fi state
and I don't experience visible disconnection (Web page stuck, IRC/XMPP
disconnection, ...)

What I'd like to know:
1. Is there any way that I can tweak options of b43 module?
2. Anything else I can help. I'm definitely a noob on kernel stuff but
I'm willing to get some related links.
