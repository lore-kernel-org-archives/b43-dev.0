From: Benoit Gschwind <gschwind@gnu-log.net>
Date: Sat, 17 Aug 2013 10:40:06 +0200
Subject: Minor bug, b43 not starting scanning automaticaly.
Message-ID: <520F36E6.9020308@gnu-log.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

I use the b43 for month on MacBook Pro retina 13" but the drive seems to
not enable scan at boot. I did not found why. The workaround is to run
iwlist scan, after that wireless is working, but not seems to scan
regularly.

I'm not sure if this is a driver issue or network manager issue but when
I use the proprietary driver, network manager work fine.


uname -a :

Linux localhost 3.10.5 #4 SMP Tue Aug 13 11:08:21 CEST 2013 x86_64
Intel(R) Core(TM) i7-3540M CPU @ 3.00GHz GenuineIntel GNU/Linux

dmesg:

[    3.916858] b43-phy0: Broadcom 4331 WLAN found (core revision 29)
[    3.917279] b43-phy0: Found PHY: Analog 9, Type 7 (HT), Revision 1
[    8.118455] b43-phy0: Loading firmware version 666.2 (2011-02-23
01:15:07)
[   76.336571] b43 bcma0:0 wlp3s0: disabling HT as WMM/QoS is not
supported by the AP
[   76.336575] b43 bcma0:0 wlp3s0: disabling VHT as WMM/QoS is not
supported by the AP

lspci:

03:00.0 0280: 14e4:4331 (rev 02)
	Subsystem: 106b:010f
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 256 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory@a0500000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3

let me know if you need more data, thanks by advance.

Best regards

--
Benoit Gschwind
