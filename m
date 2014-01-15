From: kpj <kpjkpjkpjkpjkpjkpj@gmail.com>
Date: Thu, 16 Jan 2014 00:25:25 +0100
Subject: Concerning the promiscuous mode
Message-ID: <20140115232524.GA2961@archer.lan>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,
I have noticed quite a strange behaviour when trying to enable the promiscuous mode (PM) with Wireshark (version 1.10.5):
Wireshark itself is saying that PM is enabled ("Capture Options/Capture List/Prom. Mode" says enabled). Accordingly dmesg tells me about it: "[..] device wlan0 entered promiscuous mode".
However, netstat and ip don't seem as convinced:
$ ip l
..
2: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> ..
..
(yes, wlan0 is the correct interface)

$ netstat -i
wlan0 ? ? 1500 ? 336406 ? ? ?0 ? 3985 0 ? ? ? ? 70978 ? ? ?0 ? ? ?0 ? ? ?0 BMRU
(BMRU are the flags, P is not amongst them)
I am also not convinced, since I am not able to see any other packets than the ones directed at me or broadcasted ones.

Some information about my system:
$ uname -a
Linux . 3.12.7-1-ARCH #1 SMP PREEMPT Fri Jan 10 08:50:35 CET 2014 x86_64 GNU/Linux

$ lspci -vvn|grep 43 -A7
04:00.0 0280: 14e4:432b (rev 01)
? ? ? ? Subsystem: 106b:008d
? ? ? ? Physical Slot: 3
? ? ? ? Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
? ? ? ? Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
? ? ? ? Latency: 0, Cache Line Size: 256 bytes
? ? ? ? Interrupt: pin A routed to IRQ 18
? ? ? ? Region 0: Memory@df200000 (64-bit, non-prefetchable) [size=16K]
--
? ? ? ? Kernel driver in use: b43-pci-bridge
? ? ? ? Kernel modules: ssb
?
05:00.0 0c00: 11c1:5901 (rev 07) (prog-if 10 [OHCI])
? ? ? ? Subsystem: 11c1:5900
? ? ? ? Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
? ? ? ? Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
? ? ? ? Latency: 0, Cache Line Size: 256 bytes
(see http://pastebin.com/puVahU19)

The wiki (http://wireless.kernel.org/en/users/Drivers/b43) mentiones that my chip (Broadcom Corporation BCM4322, 14e4:432b) is only ?partially supported (in 2.6.39+). Could this be the reason for this strange behaviour or am I simply missing something.

Thanks in advance for any advice,
kpj
