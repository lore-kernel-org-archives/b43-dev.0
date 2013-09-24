From: Larry Johnson <keepitsimpleengineer@gmail.com>
Date: Tue, 24 Sep 2013 12:16:09 -0700
Subject: Unable to transfer data over wireless connection
Message-ID: <CABb0tkdTXWKK9VFMTAsU_LdaXRzJXV8RMWfVG8ZaATJe6x5byQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Problem: Under Linux WiFi keeps dropping, unusable (recent behavoir).
It happens every time the connection is used.  When running WinXP, no
wireless problems this hardware.  No problem other wireless clients.
?
LenovoS12?AP?Router
Access Point is Linksys WRT54GL V1.1 running Firmware: DD-WRT v24-sp2
(07/22/09) voip. Security is WPA2 AES
DHCP from Router Untangle Build:
9.4.2~svn20130830r35759release9.4-1lenny, Kernel:
2.6.26-2-untangle-686 as a bastion firewall.
?
Linux KISE-007 3.11.1-1-ARCH #1 SMP PREEMPT Sat Sep 14 20:31:35 CEST
2013 i686 GNU/Linux
?
03:00.0 0280: 14e4:4315 (rev 01)
        Subsystem: 14e4:04b5
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0, Cache Line Size: 64 bytes
        Interrupt: pin A routed to IRQ 17
        Region 0: Memory@f8000000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: [40] Power Management version 3
--
        Kernel driver in use: b43-pci-bridge
        Kernel modules: ssb
?
dmesg ? http://pastebin.com/z8G8A1XJ
system info ? http://pastebin.com/BvGThw6g
archlinux forum this problem ?
https://bbs.archlinux.org/viewtopic.php?pid=1328829#p1328829
?
Tried previous two kernels, no help.  Tried previous wicd, no help.
?Larry Johnson, the keepitsimpleengineer
