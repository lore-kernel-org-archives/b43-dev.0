From: yhager at yhager.com <yhager@yhager.com>
Date: Sun, 18 Apr 2010 00:19:33 -0700
Subject: System freezes with 2.6.33
Message-ID: <20100418071932.GB15229@happy.exit>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

After upgrading my system to 2.6.33
(http://www.archlinux.org/packages/core/i686/kernel26/) I am
experiencing complete system lockups.

I confirmed that this happens when the b43 drives is on ahd I try to
connect to the network. When I remove the module, the system works fine
for hours. When it is on, I have a few minutes, till a complete freeze.

There is nothing in the kernel logs, or dmesg, or anywhere I could
find. I tried reinstalling the firmware, but it didn't change anything.

The hardware is HP-2133 (mini note).

[yuval at happy ~]$ uname -a
Linux happy 2.6.33-ARCH #1 SMP PREEMPT Mon Apr 5 05:57:38 UTC 2010 i686 VIA C7-M Processor 1600MHz CentaurHauls GNU/Linux
[yuval at happy ~]$ lspci -vvn|grep 43 -A7
00:00.4 0600: 1106:4364
  Subsystem: 103c:3030
  Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
  Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
  Latency: 0

00:00.5 0800: 1106:5364 (prog-if 20 [IO(X)-APIC])
  Subsystem: 103c:3030
--
02:00.0 0280: 14e4:4312 (rev 02)
  Subsystem: 103c:1371
  Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
  Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
  Latency: 0, Cache Line Size: 32 bytes
  Interrupt: pin A routed to IRQ 24
  Region 0: Memory@fdffc000 (64-bit, non-prefetchable) [size=16K]
  Capabilities: <access denied>
  Kernel driver in use: b43-pci-bridge

07:03.0 0200: 14e4:169c (rev 03)
  Subsystem: 103c:3030
  Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
  Status: Cap+ 66MHz+ UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
  Latency: 64 (16000ns min), Cache Line Size: 32 bytes
  Interrupt: pin A routed to IRQ 16
