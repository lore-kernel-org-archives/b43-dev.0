From: Shea Levy <shea.levy@logicblox.com>
Date: Fri, 13 Jul 2012 21:54:08 -0400
Subject: Macbook Pro 9,2 (mid-2012) bcm4331 not working on Linux 3.4
Message-ID: <5000D140.4020500@logicblox.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello,

With the firmware installed, udev doesn't autoload b43 and loading it 
manually does not create a new network interface. Is this interface 
supported?

Thanks,
Shea Levy

$ uname -a
Linux laptop.shealevy.com 3.4.4 #1 SMP Mon Jun 25 16:29:03 UTC 2012 
x86_64 GNU/Linux

$ sudo lspci -vvn|grep 43 -A7
02:00.0 0280: 14e4:4331 (rev 02)
         Subsystem: 14e4:4331
         Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- 
ParErr- Stepping- SERR- FastB2B- DisINTx-
         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- 
<TAbort- <MAbort- >SERR- <PERR- INTx+
         Latency: 0, Cache Line Size: 256 bytes
         Interrupt: pin A routed to IRQ 0
         Region 0: Memory@a0600000 (64-bit, non-prefetchable) [size=16K]
         Capabilities: [40] Power Management version 3
                 Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=0mA 
PME(D0-,D1-,D2-,D3hot-,D3cold-)

$ dmesg

[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Linux version 3.4.4 (nixbld@) (gcc version 4.6.3 (GCC) ) #1 SMP Mon Jun 25 16:29:03 UTC 2012
[    0.000000] Command line: systemConfig=/nix/store/dsdlapl9d1fkskpyn99gv6kjgn6m9pgh-nixos-0.1pre-git init=/nix/store/dsdlapl9d1fkskpyn99gv6kjgn6m9pgh-nixos-0.1pre-git/init initrd=\efi\nixos\q3hiagpv9giqbhr95wq54fg088765apz-initrd-initrd
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000008e000 (usable)
[    0.000000]  BIOS-e820: 000000000008e000 - 0000000000090000 (reserved)
[    0.000000]  BIOS-e820: 0000000000090000 - 00000000000a0000 (usable)
[    0.000000]  BIOS-e820: 00000000000a0000 - 00000000000c0000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 0000000020000000 (usable)
[    0.000000]  BIOS-e820: 0000000020000000 - 0000000020200000 (reserved)
[    0.000000]  BIOS-e820: 0000000020200000 - 0000000040004000 (usable)
[    0.000000]  BIOS-e820: 0000000040004000 - 0000000040005000 (reserved)
[    0.000000]  BIOS-e820: 0000000040005000 - 000000008ad14000 (usable)
[    0.000000]  BIOS-e820: 000000008ad14000 - 000000008ad53000 (ACPI NVS)
[    0.000000]  BIOS-e820: 000000008ad53000 - 000000008ad69000 (usable)
[    0.000000]  BIOS-e820: 000000008ad69000 - 000000008ad8f000 (ACPI data)
[    0.000000]  BIOS-e820: 000000008ad8f000 - 000000008ae31000 (usable)
[    0.000000]  BIOS-e820: 000000008ae31000 - 000000008ae8f000 (reserved)
[    0.000000]  BIOS-e820: 000000008ae8f000 - 000000008aece000 (usable)
[    0.000000]  BIOS-e820: 000000008aece000 - 000000008aeff000 (reserved)
[    0.000000]  BIOS-e820: 000000008aeff000 - 000000008af92000 (usable)
[    0.000000]  BIOS-e820: 000000008af92000 - 000000008afff000 (reserved)
[    0.000000]  BIOS-e820: 000000008afff000 - 000000008b000000 (usable)
[    0.000000]  BIOS-e820: 000000008b000000 - 000000008fa00000 (reserved)
[    0.000000]  BIOS-e820: 00000000e00f8000 - 00000000e00f9000 (reserved)
[    0.000000]  BIOS-e820: 00000000fed1c000 - 00000000fed20000 (reserved)
[    0.000000]  BIOS-e820: 00000000ffe70000 - 00000000ffea0000 (reserved)
[    0.000000]  BIOS-e820: 0000000100000000 - 000000026f600000 (usable)
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] efi: EFI v1.10 by Apple
[    0.000000] efi:  ACPI=0x8ad8e000  ACPI 2.0=0x8ad8e014  SMBIOS=0x8ad1b000
[    0.000000] efi: mem00: type=7, attr=0x80000000000000f, range=[0x0000000000000000-0x000000000008e000) (0MB)
[    0.000000] efi: mem01: type=0, attr=0x80000000000000f, range=[0x000000000008e000-0x0000000000090000) (0MB)
[    0.000000] efi: mem02: type=2, attr=0x80000000000000f, range=[0x0000000000090000-0x000000000009a000) (0MB)
[    0.000000] efi: mem03: type=7, attr=0x80000000000000f, range=[0x000000000009a000-0x00000000000a0000) (0MB)
[    0.000000] efi: mem04: type=7, attr=0xf, range=[0x0000000000100000-0x0000000001000000) (15MB)
[    0.000000] efi: mem05: type=2, attr=0xf, range=[0x0000000001000000-0x0000000001c61000) (12MB)
[    0.000000] efi: mem06: type=7, attr=0xf, range=[0x0000000001c61000-0x0000000020000000) (483MB)
[    0.000000] efi: mem07: type=0, attr=0xf, range=[0x0000000020000000-0x0000000020200000) (2MB)
[    0.000000] efi: mem08: type=7, attr=0xf, range=[0x0000000020200000-0x0000000040004000) (510MB)
[    0.000000] efi: mem09: type=0, attr=0xf, range=[0x0000000040004000-0x0000000040005000) (0MB)
[    0.000000] efi: mem10: type=7, attr=0xf, range=[0x0000000040005000-0x000000007fb20000) (1019MB)
[    0.000000] efi: mem11: type=2, attr=0xf, range=[0x000000007fb20000-0x0000000080000000) (4MB)
[    0.000000] efi: mem12: type=7, attr=0xf, range=[0x0000000080000000-0x0000000082b55000) (43MB)
[    0.000000] efi: mem13: type=1, attr=0xf, range=[0x0000000082b55000-0x0000000082e23000) (2MB)
[    0.000000] efi: mem14: type=7, attr=0xf, range=[0x0000000082e23000-0x00000000830ee000) (2MB)
[    0.000000] efi: mem15: type=2, attr=0xf, range=[0x00000000830ee000-0x00000000830f0000) (0MB)
[    0.000000] efi: mem16: type=7, attr=0xf, range=[0x00000000830f0000-0x00000000830f1000) (0MB)
[    0.000000] efi: mem17: type=4, attr=0xf, range=[0x00000000830f1000-0x000000008818f000) (80MB)
[    0.000000] efi: mem18: type=3, attr=0xf, range=[0x000000008818f000-0x00000000882a6000) (1MB)
[    0.000000] efi: mem19: type=4, attr=0xf, range=[0x00000000882a6000-0x0000000088360000) (0MB)
[    0.000000] efi: mem20: type=3, attr=0xf, range=[0x0000000088360000-0x0000000088383000) (0MB)
[    0.000000] efi: mem21: type=4, attr=0xf, range=[0x0000000088383000-0x00000000883b0000) (0MB)
[    0.000000] efi: mem22: type=3, attr=0xf, range=[0x00000000883b0000-0x00000000883be000) (0MB)
[    0.000000] efi: mem23: type=4, attr=0xf, range=[0x00000000883be000-0x00000000883c5000) (0MB)
[    0.000000] efi: mem24: type=3, attr=0xf, range=[0x00000000883c5000-0x00000000883d3000) (0MB)
[    0.000000] efi: mem25: type=4, attr=0xf, range=[0x00000000883d3000-0x00000000883d8000) (0MB)
[    0.000000] efi: mem26: type=3, attr=0xf, range=[0x00000000883d8000-0x00000000883dd000) (0MB)
[    0.000000] efi: mem27: type=2, attr=0xf, range=[0x00000000883dd000-0x00000000883de000) (0MB)
[    0.000000] efi: mem28: type=4, attr=0xf, range=[0x00000000883de000-0x00000000883e1000) (0MB)
[    0.000000] efi: mem29: type=3, attr=0xf, range=[0x00000000883e1000-0x00000000883fa000) (0MB)
[    0.000000] efi: mem30: type=4, attr=0xf, range=[0x00000000883fa000-0x00000000883fc000) (0MB)
[    0.000000] efi: mem31: type=2, attr=0xf, range=[0x00000000883fc000-0x00000000883fd000) (0MB)
[    0.000000] efi: mem32: type=3, attr=0xf, range=[0x00000000883fd000-0x00000000883fe000) (0MB)
[    0.000000] efi: mem33: type=4, attr=0xf, range=[0x00000000883fe000-0x0000000088400000) (0MB)
[    0.000000] efi: mem34: type=3, attr=0xf, range=[0x0000000088400000-0x0000000088403000) (0MB)
[    0.000000] efi: mem35: type=4, attr=0xf, range=[0x0000000088403000-0x0000000088405000) (0MB)
[    0.000000] efi: mem36: type=3, attr=0xf, range=[0x0000000088405000-0x000000008840b000) (0MB)
[    0.000000] efi: mem37: type=4, attr=0xf, range=[0x000000008840b000-0x000000008840f000) (0MB)
[    0.000000] efi: mem38: type=3, attr=0xf, range=[0x000000008840f000-0x0000000088413000) (0MB)
[    0.000000] efi: mem39: type=4, attr=0xf, range=[0x0000000088413000-0x0000000088415000) (0MB)
[    0.000000] efi: mem40: type=3, attr=0xf, range=[0x0000000088415000-0x0000000088416000) (0MB)
[    0.000000] efi: mem41: type=2, attr=0xf, range=[0x0000000088416000-0x0000000088417000) (0MB)
[    0.000000] efi: mem42: type=4, attr=0xf, range=[0x0000000088417000-0x000000008841b000) (0MB)
[    0.000000] efi: mem43: type=3, attr=0xf, range=[0x000000008841b000-0x0000000088422000) (0MB)
[    0.000000] efi: mem44: type=4, attr=0xf, range=[0x0000000088422000-0x0000000088423000) (0MB)
[    0.000000] efi: mem45: type=2, attr=0xf, range=[0x0000000088423000-0x0000000088424000) (0MB)
[    0.000000] efi: mem46: type=4, attr=0xf, range=[0x0000000088424000-0x0000000088426000) (0MB)
[    0.000000] efi: mem47: type=3, attr=0xf, range=[0x0000000088426000-0x0000000088428000) (0MB)
[    0.000000] efi: mem48: type=4, attr=0xf, range=[0x0000000088428000-0x0000000088429000) (0MB)
[    0.000000] efi: mem49: type=3, attr=0xf, range=[0x0000000088429000-0x000000008843c000) (0MB)
[    0.000000] efi: mem50: type=4, attr=0xf, range=[0x000000008843c000-0x000000008843d000) (0MB)
[    0.000000] efi: mem51: type=3, attr=0xf, range=[0x000000008843d000-0x0000000088441000) (0MB)
[    0.000000] efi: mem52: type=4, attr=0xf, range=[0x0000000088441000-0x0000000088445000) (0MB)
[    0.000000] efi: mem53: type=3, attr=0xf, range=[0x0000000088445000-0x0000000088461000) (0MB)
[    0.000000] efi: mem54: type=4, attr=0xf, range=[0x0000000088461000-0x00000000884a6000) (0MB)
[    0.000000] efi: mem55: type=2, attr=0xf, range=[0x00000000884a6000-0x00000000884a7000) (0MB)
[    0.000000] efi: mem56: type=4, attr=0xf, range=[0x00000000884a7000-0x00000000884a8000) (0MB)
[    0.000000] efi: mem57: type=3, attr=0xf, range=[0x00000000884a8000-0x00000000884b1000) (0MB)
[    0.000000] efi: mem58: type=4, attr=0xf, range=[0x00000000884b1000-0x00000000884b3000) (0MB)
[    0.000000] efi: mem59: type=3, attr=0xf, range=[0x00000000884b3000-0x00000000884c1000) (0MB)
[    0.000000] efi: mem60: type=4, attr=0xf, range=[0x00000000884c1000-0x00000000884ca000) (0MB)
[    0.000000] efi: mem61: type=3, attr=0xf, range=[0x00000000884ca000-0x00000000884cf000) (0MB)
[    0.000000] efi: mem62: type=4, attr=0xf, range=[0x00000000884cf000-0x00000000884d0000) (0MB)
[    0.000000] efi: mem63: type=2, attr=0xf, range=[0x00000000884d0000-0x00000000884d1000) (0MB)
[    0.000000] efi: mem64: type=4, attr=0xf, range=[0x00000000884d1000-0x00000000884d2000) (0MB)
[    0.000000] efi: mem65: type=3, attr=0xf, range=[0x00000000884d2000-0x00000000884d3000) (0MB)
[    0.000000] efi: mem66: type=4, attr=0xf, range=[0x00000000884d3000-0x0000000088c3a000) (7MB)
[    0.000000] efi: mem67: type=3, attr=0xf, range=[0x0000000088c3a000-0x0000000088c3f000) (0MB)
[    0.000000] efi: mem68: type=4, attr=0xf, range=[0x0000000088c3f000-0x000000008958e000) (9MB)
[    0.000000] efi: mem69: type=2, attr=0xf, range=[0x000000008958e000-0x000000008958f000) (0MB)
[    0.000000] efi: mem70: type=4, attr=0xf, range=[0x000000008958f000-0x00000000895a8000) (0MB)
[    0.000000] efi: mem71: type=3, attr=0xf, range=[0x00000000895a8000-0x00000000895b0000) (0MB)
[    0.000000] efi: mem72: type=4, attr=0xf, range=[0x00000000895b0000-0x00000000895cb000) (0MB)
[    0.000000] efi: mem73: type=3, attr=0xf, range=[0x00000000895cb000-0x00000000895cd000) (0MB)
[    0.000000] efi: mem74: type=4, attr=0xf, range=[0x00000000895cd000-0x00000000895d5000) (0MB)
[    0.000000] efi: mem75: type=3, attr=0xf, range=[0x00000000895d5000-0x00000000895dc000) (0MB)
[    0.000000] efi: mem76: type=2, attr=0xf, range=[0x00000000895dc000-0x00000000895dd000) (0MB)
[    0.000000] efi: mem77: type=3, attr=0xf, range=[0x00000000895dd000-0x00000000895de000) (0MB)
[    0.000000] efi: mem78: type=4, attr=0xf, range=[0x00000000895de000-0x00000000895e0000) (0MB)
[    0.000000] efi: mem79: type=3, attr=0xf, range=[0x00000000895e0000-0x00000000895e1000) (0MB)
[    0.000000] efi: mem80: type=4, attr=0xf, range=[0x00000000895e1000-0x00000000895e3000) (0MB)
[    0.000000] efi: mem81: type=3, attr=0xf, range=[0x00000000895e3000-0x00000000895e8000) (0MB)
[    0.000000] efi: mem82: type=4, attr=0xf, range=[0x00000000895e8000-0x0000000089603000) (0MB)
[    0.000000] efi: mem83: type=3, attr=0xf, range=[0x0000000089603000-0x0000000089607000) (0MB)
[    0.000000] efi: mem84: type=4, attr=0xf, range=[0x0000000089607000-0x000000008960b000) (0MB)
[    0.000000] efi: mem85: type=2, attr=0xf, range=[0x000000008960b000-0x000000008960c000) (0MB)
[    0.000000] efi: mem86: type=4, attr=0xf, range=[0x000000008960c000-0x000000008960d000) (0MB)
[    0.000000] efi: mem87: type=3, attr=0xf, range=[0x000000008960d000-0x000000008960e000) (0MB)
[    0.000000] efi: mem88: type=4, attr=0xf, range=[0x000000008960e000-0x0000000089610000) (0MB)
[    0.000000] efi: mem89: type=3, attr=0xf, range=[0x0000000089610000-0x0000000089611000) (0MB)
[    0.000000] efi: mem90: type=4, attr=0xf, range=[0x0000000089611000-0x0000000089612000) (0MB)
[    0.000000] efi: mem91: type=3, attr=0xf, range=[0x0000000089612000-0x000000008961c000) (0MB)
[    0.000000] efi: mem92: type=4, attr=0xf, range=[0x000000008961c000-0x0000000089622000) (0MB)
[    0.000000] efi: mem93: type=3, attr=0xf, range=[0x0000000089622000-0x0000000089624000) (0MB)
[    0.000000] efi: mem94: type=2, attr=0xf, range=[0x0000000089624000-0x0000000089625000) (0MB)
[    0.000000] efi: mem95: type=4, attr=0xf, range=[0x0000000089625000-0x000000008963d000) (0MB)
[    0.000000] efi: mem96: type=3, attr=0xf, range=[0x000000008963d000-0x0000000089679000) (0MB)
[    0.000000] efi: mem97: type=4, attr=0xf, range=[0x0000000089679000-0x000000008968e000) (0MB)
[    0.000000] efi: mem98: type=3, attr=0xf, range=[0x000000008968e000-0x0000000089691000) (0MB)
[    0.000000] efi: mem99: type=4, attr=0xf, range=[0x0000000089691000-0x0000000089696000) (0MB)
[    0.000000] efi: mem100: type=2, attr=0xf, range=[0x0000000089696000-0x0000000089697000) (0MB)
[    0.000000] efi: mem101: type=4, attr=0xf, range=[0x0000000089697000-0x00000000896bf000) (0MB)
[    0.000000] efi: mem102: type=3, attr=0xf, range=[0x00000000896bf000-0x00000000896d7000) (0MB)
[    0.000000] efi: mem103: type=4, attr=0xf, range=[0x00000000896d7000-0x00000000896e5000) (0MB)
[    0.000000] efi: mem104: type=3, attr=0xf, range=[0x00000000896e5000-0x00000000896ef000) (0MB)
[    0.000000] efi: mem105: type=4, attr=0xf, range=[0x00000000896ef000-0x00000000896fd000) (0MB)
[    0.000000] efi: mem106: type=3, attr=0xf, range=[0x00000000896fd000-0x00000000896ff000) (0MB)
[    0.000000] efi: mem107: type=4, attr=0xf, range=[0x00000000896ff000-0x0000000089704000) (0MB)
[    0.000000] efi: mem108: type=3, attr=0xf, range=[0x0000000089704000-0x000000008971d000) (0MB)
[    0.000000] efi: mem109: type=4, attr=0xf, range=[0x000000008971d000-0x000000008971f000) (0MB)
[    0.000000] efi: mem110: type=3, attr=0xf, range=[0x000000008971f000-0x0000000089720000) (0MB)
[    0.000000] efi: mem111: type=2, attr=0xf, range=[0x0000000089720000-0x0000000089721000) (0MB)
[    0.000000] efi: mem112: type=4, attr=0xf, range=[0x0000000089721000-0x0000000089722000) (0MB)
[    0.000000] efi: mem113: type=3, attr=0xf, range=[0x0000000089722000-0x0000000089723000) (0MB)
[    0.000000] efi: mem114: type=4, attr=0xf, range=[0x0000000089723000-0x0000000089726000) (0MB)
[    0.000000] efi: mem115: type=3, attr=0xf, range=[0x0000000089726000-0x0000000089727000) (0MB)
[    0.000000] efi: mem116: type=2, attr=0xf, range=[0x0000000089727000-0x0000000089728000) (0MB)
[    0.000000] efi: mem117: type=4, attr=0xf, range=[0x0000000089728000-0x0000000089729000) (0MB)
[    0.000000] efi: mem118: type=3, attr=0xf, range=[0x0000000089729000-0x000000008972f000) (0MB)
[    0.000000] efi: mem119: type=4, attr=0xf, range=[0x000000008972f000-0x0000000089731000) (0MB)
[    0.000000] efi: mem120: type=3, attr=0xf, range=[0x0000000089731000-0x0000000089732000) (0MB)
[    0.000000] efi: mem121: type=4, attr=0xf, range=[0x0000000089732000-0x0000000089735000) (0MB)
[    0.000000] efi: mem122: type=3, attr=0xf, range=[0x0000000089735000-0x0000000089736000) (0MB)
[    0.000000] efi: mem123: type=4, attr=0xf, range=[0x0000000089736000-0x0000000089737000) (0MB)
[    0.000000] efi: mem124: type=3, attr=0xf, range=[0x0000000089737000-0x0000000089739000) (0MB)
[    0.000000] efi: mem125: type=2, attr=0xf, range=[0x0000000089739000-0x000000008973a000) (0MB)
[    0.000000] efi: mem126: type=4, attr=0xf, range=[0x000000008973a000-0x000000008973c000) (0MB)
[    0.000000] efi: mem127: type=3, attr=0xf, range=[0x000000008973c000-0x000000008973d000) (0MB)
[    0.000000] efi: mem128: type=4, attr=0xf, range=[0x000000008973d000-0x000000008973f000) (0MB)
[    0.000000] efi: mem129: type=3, attr=0xf, range=[0x000000008973f000-0x0000000089743000) (0MB)
[    0.000000] efi: mem130: type=4, attr=0xf, range=[0x0000000089743000-0x0000000089745000) (0MB)
[    0.000000] efi: mem131: type=3, attr=0xf, range=[0x0000000089745000-0x000000008974c000) (0MB)
[    0.000000] efi: mem132: type=2, attr=0xf, range=[0x000000008974c000-0x000000008974d000) (0MB)
[    0.000000] efi: mem133: type=4, attr=0xf, range=[0x000000008974d000-0x000000008974e000) (0MB)
[    0.000000] efi: mem134: type=3, attr=0xf, range=[0x000000008974e000-0x0000000089753000) (0MB)
[    0.000000] efi: mem135: type=4, attr=0xf, range=[0x0000000089753000-0x0000000089754000) (0MB)
[    0.000000] efi: mem136: type=3, attr=0xf, range=[0x0000000089754000-0x0000000089755000) (0MB)
[    0.000000] efi: mem137: type=4, attr=0xf, range=[0x0000000089755000-0x0000000089757000) (0MB)
[    0.000000] efi: mem138: type=3, attr=0xf, range=[0x0000000089757000-0x000000008975d000) (0MB)
[    0.000000] efi: mem139: type=4, attr=0xf, range=[0x000000008975d000-0x000000008975f000) (0MB)
[    0.000000] efi: mem140: type=3, attr=0xf, range=[0x000000008975f000-0x0000000089761000) (0MB)
[    0.000000] efi: mem141: type=4, attr=0xf, range=[0x0000000089761000-0x0000000089762000) (0MB)
[    0.000000] efi: mem142: type=2, attr=0xf, range=[0x0000000089762000-0x0000000089763000) (0MB)
[    0.000000] efi: mem143: type=3, attr=0xf, range=[0x0000000089763000-0x0000000089767000) (0MB)
[    0.000000] efi: mem144: type=4, attr=0xf, range=[0x0000000089767000-0x000000008976c000) (0MB)
[    0.000000] efi: mem145: type=2, attr=0xf, range=[0x000000008976c000-0x000000008976d000) (0MB)
[    0.000000] efi: mem146: type=4, attr=0xf, range=[0x000000008976d000-0x0000000089773000) (0MB)
[    0.000000] efi: mem147: type=3, attr=0xf, range=[0x0000000089773000-0x0000000089778000) (0MB)
[    0.000000] efi: mem148: type=4, attr=0xf, range=[0x0000000089778000-0x0000000089781000) (0MB)
[    0.000000] efi: mem149: type=3, attr=0xf, range=[0x0000000089781000-0x000000008979a000) (0MB)
[    0.000000] efi: mem150: type=4, attr=0xf, range=[0x000000008979a000-0x000000008979b000) (0MB)
[    0.000000] efi: mem151: type=3, attr=0xf, range=[0x000000008979b000-0x00000000897a0000) (0MB)
[    0.000000] efi: mem152: type=4, attr=0xf, range=[0x00000000897a0000-0x00000000897a3000) (0MB)
[    0.000000] efi: mem153: type=3, attr=0xf, range=[0x00000000897a3000-0x00000000897aa000) (0MB)
[    0.000000] efi: mem154: type=4, attr=0xf, range=[0x00000000897aa000-0x00000000897ac000) (0MB)
[    0.000000] efi: mem155: type=3, attr=0xf, range=[0x00000000897ac000-0x00000000897c0000) (0MB)
[    0.000000] efi: mem156: type=4, attr=0xf, range=[0x00000000897c0000-0x00000000897c1000) (0MB)
[    0.000000] efi: mem157: type=3, attr=0xf, range=[0x00000000897c1000-0x00000000897c5000) (0MB)
[    0.000000] efi: mem158: type=4, attr=0xf, range=[0x00000000897c5000-0x00000000897c9000) (0MB)
[    0.000000] efi: mem159: type=3, attr=0xf, range=[0x00000000897c9000-0x00000000897cd000) (0MB)
[    0.000000] efi: mem160: type=2, attr=0xf, range=[0x00000000897cd000-0x00000000897ce000) (0MB)
[    0.000000] efi: mem161: type=4, attr=0xf, range=[0x00000000897ce000-0x00000000897d4000) (0MB)
[    0.000000] efi: mem162: type=2, attr=0xf, range=[0x00000000897d4000-0x00000000897d5000) (0MB)
[    0.000000] efi: mem163: type=4, attr=0xf, range=[0x00000000897d5000-0x00000000897d6000) (0MB)
[    0.000000] efi: mem164: type=3, attr=0xf, range=[0x00000000897d6000-0x00000000897d9000) (0MB)
[    0.000000] efi: mem165: type=4, attr=0xf, range=[0x00000000897d9000-0x00000000897db000) (0MB)
[    0.000000] efi: mem166: type=3, attr=0xf, range=[0x00000000897db000-0x00000000897ed000) (0MB)
[    0.000000] efi: mem167: type=4, attr=0xf, range=[0x00000000897ed000-0x00000000897f4000) (0MB)
[    0.000000] efi: mem168: type=3, attr=0xf, range=[0x00000000897f4000-0x00000000897fb000) (0MB)
[    0.000000] efi: mem169: type=4, attr=0xf, range=[0x00000000897fb000-0x00000000897fc000) (0MB)
[    0.000000] efi: mem170: type=3, attr=0xf, range=[0x00000000897fc000-0x00000000897fe000) (0MB)
[    0.000000] efi: mem171: type=4, attr=0xf, range=[0x00000000897fe000-0x0000000089800000) (0MB)
[    0.000000] efi: mem172: type=2, attr=0xf, range=[0x0000000089800000-0x0000000089801000) (0MB)
[    0.000000] efi: mem173: type=4, attr=0xf, range=[0x0000000089801000-0x0000000089802000) (0MB)
[    0.000000] efi: mem174: type=3, attr=0xf, range=[0x0000000089802000-0x0000000089803000) (0MB)
[    0.000000] efi: mem175: type=4, attr=0xf, range=[0x0000000089803000-0x0000000089806000) (0MB)
[    0.000000] efi: mem176: type=3, attr=0xf, range=[0x0000000089806000-0x0000000089821000) (0MB)
[    0.000000] efi: mem177: type=4, attr=0xf, range=[0x0000000089821000-0x0000000089823000) (0MB)
[    0.000000] efi: mem178: type=3, attr=0xf, range=[0x0000000089823000-0x0000000089833000) (0MB)
[    0.000000] efi: mem179: type=4, attr=0xf, range=[0x0000000089833000-0x0000000089836000) (0MB)
[    0.000000] efi: mem180: type=2, attr=0xf, range=[0x0000000089836000-0x0000000089837000) (0MB)
[    0.000000] efi: mem181: type=4, attr=0xf, range=[0x0000000089837000-0x0000000089838000) (0MB)
[    0.000000] efi: mem182: type=3, attr=0xf, range=[0x0000000089838000-0x000000008983f000) (0MB)
[    0.000000] efi: mem183: type=4, attr=0xf, range=[0x000000008983f000-0x0000000089842000) (0MB)
[    0.000000] efi: mem184: type=3, attr=0xf, range=[0x0000000089842000-0x0000000089843000) (0MB)
[    0.000000] efi: mem185: type=4, attr=0xf, range=[0x0000000089843000-0x0000000089846000) (0MB)
[    0.000000] efi: mem186: type=2, attr=0xf, range=[0x0000000089846000-0x0000000089847000) (0MB)
[    0.000000] efi: mem187: type=4, attr=0xf, range=[0x0000000089847000-0x0000000089848000) (0MB)
[    0.000000] efi: mem188: type=3, attr=0xf, range=[0x0000000089848000-0x000000008984a000) (0MB)
[    0.000000] efi: mem189: type=4, attr=0xf, range=[0x000000008984a000-0x000000008984d000) (0MB)
[    0.000000] efi: mem190: type=3, attr=0xf, range=[0x000000008984d000-0x000000008984e000) (0MB)
[    0.000000] efi: mem191: type=4, attr=0xf, range=[0x000000008984e000-0x0000000089852000) (0MB)
[    0.000000] efi: mem192: type=3, attr=0xf, range=[0x0000000089852000-0x0000000089854000) (0MB)
[    0.000000] efi: mem193: type=4, attr=0xf, range=[0x0000000089854000-0x0000000089855000) (0MB)
[    0.000000] efi: mem194: type=3, attr=0xf, range=[0x0000000089855000-0x0000000089858000) (0MB)
[    0.000000] efi: mem195: type=4, attr=0xf, range=[0x0000000089858000-0x0000000089859000) (0MB)
[    0.000000] efi: mem196: type=3, attr=0xf, range=[0x0000000089859000-0x0000000089862000) (0MB)
[    0.000000] efi: mem197: type=4, attr=0xf, range=[0x0000000089862000-0x0000000089864000) (0MB)
[    0.000000] efi: mem198: type=3, attr=0xf, range=[0x0000000089864000-0x0000000089866000) (0MB)
[    0.000000] efi: mem199: type=2, attr=0xf, range=[0x0000000089866000-0x0000000089867000) (0MB)
[    0.000000] efi: mem200: type=4, attr=0xf, range=[0x0000000089867000-0x0000000089868000) (0MB)
[    0.000000] efi: mem201: type=2, attr=0xf, range=[0x0000000089868000-0x0000000089869000) (0MB)
[    0.000000] efi: mem202: type=4, attr=0xf, range=[0x0000000089869000-0x000000008986a000) (0MB)
[    0.000000] efi: mem203: type=3, attr=0xf, range=[0x000000008986a000-0x000000008986b000) (0MB)
[    0.000000] efi: mem204: type=4, attr=0xf, range=[0x000000008986b000-0x0000000089870000) (0MB)
[    0.000000] efi: mem205: type=3, attr=0xf, range=[0x0000000089870000-0x0000000089871000) (0MB)
[    0.000000] efi: mem206: type=4, attr=0xf, range=[0x0000000089871000-0x0000000089874000) (0MB)
[    0.000000] efi: mem207: type=3, attr=0xf, range=[0x0000000089874000-0x0000000089876000) (0MB)
[    0.000000] efi: mem208: type=4, attr=0xf, range=[0x0000000089876000-0x0000000089878000) (0MB)
[    0.000000] efi: mem209: type=2, attr=0xf, range=[0x0000000089878000-0x0000000089879000) (0MB)
[    0.000000] efi: mem210: type=4, attr=0xf, range=[0x0000000089879000-0x000000008987b000) (0MB)
[    0.000000] efi: mem211: type=3, attr=0xf, range=[0x000000008987b000-0x000000008987c000) (0MB)
[    0.000000] efi: mem212: type=4, attr=0xf, range=[0x000000008987c000-0x000000008987e000) (0MB)
[    0.000000] efi: mem213: type=3, attr=0xf, range=[0x000000008987e000-0x000000008987f000) (0MB)
[    0.000000] efi: mem214: type=4, attr=0xf, range=[0x000000008987f000-0x000000008988d000) (0MB)
[    0.000000] efi: mem215: type=3, attr=0xf, range=[0x000000008988d000-0x0000000089892000) (0MB)
[    0.000000] efi: mem216: type=4, attr=0xf, range=[0x0000000089892000-0x0000000089898000) (0MB)
[    0.000000] efi: mem217: type=2, attr=0xf, range=[0x0000000089898000-0x0000000089899000) (0MB)
[    0.000000] efi: mem218: type=4, attr=0xf, range=[0x0000000089899000-0x00000000898c0000) (0MB)
[    0.000000] efi: mem219: type=3, attr=0xf, range=[0x00000000898c0000-0x00000000898d2000) (0MB)
[    0.000000] efi: mem220: type=4, attr=0xf, range=[0x00000000898d2000-0x00000000898ed000) (0MB)
[    0.000000] efi: mem221: type=3, attr=0xf, range=[0x00000000898ed000-0x00000000898f0000) (0MB)
[    0.000000] efi: mem222: type=4, attr=0xf, range=[0x00000000898f0000-0x000000008991c000) (0MB)
[    0.000000] efi: mem223: type=3, attr=0xf, range=[0x000000008991c000-0x0000000089930000) (0MB)
[    0.000000] efi: mem224: type=4, attr=0xf, range=[0x0000000089930000-0x0000000089931000) (0MB)
[    0.000000] efi: mem225: type=2, attr=0xf, range=[0x0000000089931000-0x0000000089932000) (0MB)
[    0.000000] efi: mem226: type=4, attr=0xf, range=[0x0000000089932000-0x000000008994e000) (0MB)
[    0.000000] efi: mem227: type=3, attr=0xf, range=[0x000000008994e000-0x0000000089953000) (0MB)
[    0.000000] efi: mem228: type=4, attr=0xf, range=[0x0000000089953000-0x0000000089959000) (0MB)
[    0.000000] efi: mem229: type=2, attr=0xf, range=[0x0000000089959000-0x000000008995a000) (0MB)
[    0.000000] efi: mem230: type=4, attr=0xf, range=[0x000000008995a000-0x000000008995b000) (0MB)
[    0.000000] efi: mem231: type=3, attr=0xf, range=[0x000000008995b000-0x000000008995c000) (0MB)
[    0.000000] efi: mem232: type=4, attr=0xf, range=[0x000000008995c000-0x000000008995d000) (0MB)
[    0.000000] efi: mem233: type=3, attr=0xf, range=[0x000000008995d000-0x000000008995e000) (0MB)
[    0.000000] efi: mem234: type=4, attr=0xf, range=[0x000000008995e000-0x0000000089971000) (0MB)
[    0.000000] efi: mem235: type=3, attr=0xf, range=[0x0000000089971000-0x0000000089976000) (0MB)
[    0.000000] efi: mem236: type=4, attr=0xf, range=[0x0000000089976000-0x0000000089977000) (0MB)
[    0.000000] efi: mem237: type=3, attr=0xf, range=[0x0000000089977000-0x000000008997a000) (0MB)
[    0.000000] efi: mem238: type=4, attr=0xf, range=[0x000000008997a000-0x000000008997b000) (0MB)
[    0.000000] efi: mem239: type=3, attr=0xf, range=[0x000000008997b000-0x000000008998c000) (0MB)
[    0.000000] efi: mem240: type=4, attr=0xf, range=[0x000000008998c000-0x000000008998f000) (0MB)
[    0.000000] efi: mem241: type=3, attr=0xf, range=[0x000000008998f000-0x000000008999b000) (0MB)
[    0.000000] efi: mem242: type=2, attr=0xf, range=[0x000000008999b000-0x000000008999c000) (0MB)
[    0.000000] efi: mem243: type=4, attr=0xf, range=[0x000000008999c000-0x000000008999d000) (0MB)
[    0.000000] efi: mem244: type=3, attr=0xf, range=[0x000000008999d000-0x000000008999e000) (0MB)
[    0.000000] efi: mem245: type=2, attr=0xf, range=[0x000000008999e000-0x000000008999f000) (0MB)
[    0.000000] efi: mem246: type=4, attr=0xf, range=[0x000000008999f000-0x00000000899a0000) (0MB)
[    0.000000] efi: mem247: type=3, attr=0xf, range=[0x00000000899a0000-0x00000000899a3000) (0MB)
[    0.000000] efi: mem248: type=4, attr=0xf, range=[0x00000000899a3000-0x00000000899a4000) (0MB)
[    0.000000] efi: mem249: type=3, attr=0xf, range=[0x00000000899a4000-0x00000000899a6000) (0MB)
[    0.000000] efi: mem250: type=2, attr=0xf, range=[0x00000000899a6000-0x00000000899a7000) (0MB)
[    0.000000] efi: mem251: type=4, attr=0xf, range=[0x00000000899a7000-0x00000000899a8000) (0MB)
[    0.000000] efi: mem252: type=3, attr=0xf, range=[0x00000000899a8000-0x00000000899a9000) (0MB)
[    0.000000] efi: mem253: type=4, attr=0xf, range=[0x00000000899a9000-0x0000000089dca000) (4MB)
[    0.000000] efi: mem254: type=3, attr=0xf, range=[0x0000000089dca000-0x0000000089dcf000) (0MB)
[    0.000000] efi: mem255: type=4, attr=0xf, range=[0x0000000089dcf000-0x0000000089e57000) (0MB)
[    0.000000] efi: mem256: type=3, attr=0xf, range=[0x0000000089e57000-0x0000000089e5e000) (0MB)
[    0.000000] efi: mem257: type=4, attr=0xf, range=[0x0000000089e5e000-0x0000000089e5f000) (0MB)
[    0.000000] efi: mem258: type=2, attr=0xf, range=[0x0000000089e5f000-0x0000000089e60000) (0MB)
[    0.000000] efi: mem259: type=3, attr=0xf, range=[0x0000000089e60000-0x0000000089e61000) (0MB)
[    0.000000] efi: mem260: type=4, attr=0xf, range=[0x0000000089e61000-0x0000000089e62000) (0MB)
[    0.000000] efi: mem261: type=3, attr=0xf, range=[0x0000000089e62000-0x0000000089e67000) (0MB)
[    0.000000] efi: mem262: type=4, attr=0xf, range=[0x0000000089e67000-0x0000000089e68000) (0MB)
[    0.000000] efi: mem263: type=3, attr=0xf, range=[0x0000000089e68000-0x0000000089e69000) (0MB)
[    0.000000] efi: mem264: type=4, attr=0xf, range=[0x0000000089e69000-0x0000000089e6a000) (0MB)
[    0.000000] efi: mem265: type=3, attr=0xf, range=[0x0000000089e6a000-0x0000000089e6b000) (0MB)
[    0.000000] efi: mem266: type=4, attr=0xf, range=[0x0000000089e6b000-0x0000000089e6d000) (0MB)
[    0.000000] efi: mem267: type=3, attr=0xf, range=[0x0000000089e6d000-0x0000000089e6e000) (0MB)
[    0.000000] efi: mem268: type=4, attr=0xf, range=[0x0000000089e6e000-0x0000000089e93000) (0MB)
[    0.000000] efi: mem269: type=3, attr=0xf, range=[0x0000000089e93000-0x0000000089e94000) (0MB)
[    0.000000] efi: mem270: type=4, attr=0xf, range=[0x0000000089e94000-0x000000008a358000) (4MB)
[    0.000000] efi: mem271: type=2, attr=0xf, range=[0x000000008a358000-0x000000008a359000) (0MB)
[    0.000000] efi: mem272: type=4, attr=0xf, range=[0x000000008a359000-0x000000008acf7000) (9MB)
[    0.000000] efi: mem273: type=2, attr=0xf, range=[0x000000008acf7000-0x000000008acf8000) (0MB)
[    0.000000] efi: mem274: type=4, attr=0xf, range=[0x000000008acf8000-0x000000008acfa000) (0MB)
[    0.000000] efi: mem275: type=2, attr=0xf, range=[0x000000008acfa000-0x000000008acfb000) (0MB)
[    0.000000] efi: mem276: type=4, attr=0xf, range=[0x000000008acfb000-0x000000008ad03000) (0MB)
[    0.000000] efi: mem277: type=7, attr=0xf, range=[0x000000008ad03000-0x000000008ad14000) (0MB)
[    0.000000] efi: mem278: type=10, attr=0xf, range=[0x000000008ad14000-0x000000008ad53000) (0MB)
[    0.000000] efi: mem279: type=7, attr=0xf, range=[0x000000008ad53000-0x000000008ad69000) (0MB)
[    0.000000] efi: mem280: type=9, attr=0xf, range=[0x000000008ad69000-0x000000008ad8f000) (0MB)
[    0.000000] efi: mem281: type=7, attr=0xf, range=[0x000000008ad8f000-0x000000008ae31000) (0MB)
[    0.000000] efi: mem282: type=6, attr=0x800000000000000f, range=[0x000000008ae31000-0x000000008ae8f000) (0MB)
[    0.000000] efi: mem283: type=7, attr=0xf, range=[0x000000008ae8f000-0x000000008aece000) (0MB)
[    0.000000] efi: mem284: type=5, attr=0x800000000000000f, range=[0x000000008aece000-0x000000008aeff000) (0MB)
[    0.000000] efi: mem285: type=7, attr=0xf, range=[0x000000008aeff000-0x000000008af92000) (0MB)
[    0.000000] efi: mem286: type=0, attr=0xf, range=[0x000000008af92000-0x000000008afff000) (0MB)
[    0.000000] efi: mem287: type=2, attr=0xf, range=[0x000000008afff000-0x000000008b000000) (0MB)
[    0.000000] efi: mem288: type=7, attr=0xf, range=[0x0000000100000000-0x000000026f600000) (5878MB)
[    0.000000] efi: mem289: type=0, attr=0x8000000000000000, range=[0x00000000000a0000-0x00000000000c0000) (0MB)
[    0.000000] efi: mem290: type=0, attr=0x8000000000000000, range=[0x000000008b000000-0x000000008fa00000) (74MB)
[    0.000000] efi: mem291: type=11, attr=0x8000000000000000, range=[0x00000000e00f8000-0x00000000e00f9000) (0MB)
[    0.000000] efi: mem292: type=11, attr=0x8000000000000000, range=[0x00000000fed1c000-0x00000000fed20000) (0MB)
[    0.000000] efi: mem293: type=11, attr=0x8000000000000000, range=[0x00000000ffe70000-0x00000000ffea0000) (0MB)
[    0.000000] DMI 2.4 present.
[    0.000000] DMI: Apple Inc. MacBookPro9,2/Mac-6F01561E16C75D06, BIOS MBP91.88Z.00D3.B06.1205101904 05/10/2012
[    0.000000] e820 update range: 0000000000000000 - 0000000000010000 (usable) ==>  (reserved)
[    0.000000] e820 remove range: 00000000000a0000 - 0000000000100000 (usable)
[    0.000000] No AGP bridge found
[    0.000000] last_pfn = 0x26f600 max_arch_pfn = 0x400000000
[    0.000000] MTRR default type: write-back
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-DFFFF write-protect
[    0.000000]   E0000-FFFFF uncachable
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 0C0000000 mask FC0000000 uncachable
[    0.000000]   1 base 0A0000000 mask FE0000000 uncachable
[    0.000000]   2 base 090000000 mask FF0000000 uncachable
[    0.000000]   3 base 08C000000 mask FFC000000 uncachable
[    0.000000]   4 base 08B000000 mask FFF000000 uncachable
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000]   8 disabled
[    0.000000]   9 disabled
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] last_pfn = 0x8b000 max_arch_pfn = 0x400000000
[    0.000000] initial memory mapped : 0 - 20000000
[    0.000000] Base memory trampoline at [ffff88000009a000] 9a000 size 20480
[    0.000000] init_memory_mapping: 0000000000000000-000000008b000000
[    0.000000]  0000000000 - 008b000000 page 2M
[    0.000000] kernel direct mapping tables up to 8b000000 @ 1fffc000-20000000
[    0.000000] init_memory_mapping: 0000000100000000-000000026f600000
[    0.000000]  0100000000 - 026f600000 page 2M
[    0.000000] kernel direct mapping tables up to 26f600000 @ 8af87000-8af92000
[    0.000000] RAMDISK: 7fb20000 - 80000000
[    0.000000] ACPI: RSDP 000000008ad8e014 00024 (v02 APPLE )
[    0.000000] ACPI: XSDT 000000008ad8e1c0 000B4 (v01 APPLE   Apple00 00000000      01000013)
[    0.000000] ACPI: FACP 000000008ad8c000 000F4 (v04 APPLE   Apple00 00000000 Loki 0000005F)
[    0.000000] ACPI: DSDT 000000008ad82000 04D53 (v01 APPLE  MacBookP 00090001 INTL 20100915)
[    0.000000] ACPI: FACS 000000008ad1e000 00040
[    0.000000] ACPI: HPET 000000008ad8b000 00038 (v01 APPLE   Apple00 00000001 Loki 0000005F)
[    0.000000] ACPI: APIC 000000008ad8a000 000BC (v02 APPLE   Apple00 00000001 Loki 0000005F)
[    0.000000] ACPI: SBST 000000008ad88000 00030 (v01 APPLE   Apple00 00000001 Loki 0000005F)
[    0.000000] ACPI: ECDT 000000008ad87000 00053 (v01 APPLE   Apple00 00000001 Loki 0000005F)
[    0.000000] ACPI: SSDT 000000008ad7f000 002E0 (v01 APPLE  SataAhci 00001000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad7e000 00024 (v01 APPLE   SmcDppt 00001000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad79000 00D20 (v01 APPLE    UsbPpt 00001000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad77000 00159 (v02 APPLE     IGHda 00001000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad75000 00032 (v01 APPLE    SsdtS3 00001000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad73000 015EB (v02 APPLE  SsdtIGPU 00001000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad70000 00AE6 (v01 APPLE  TbtPEG10 00001000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad6d000 0073E (v01  PmRef  Cpu0Ist 00003000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad6c000 00B3D (v01  PmRef    CpuPm 00003000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad6b000 00315 (v01  PmRef  Cpu0Tst 00003000 INTL 20100915)
[    0.000000] ACPI: SSDT 000000008ad6a000 0037A (v01  PmRef    ApTst 00003000 INTL 20100915)
[    0.000000] ACPI: DMAR 000000008ad69000 000B8 (v01 APPLE      IVB  00000001 AAPL 00000001)
[    0.000000] ACPI: MCFG 000000008ad89000 0003C (v01 APPLE   Apple00 00000001 Loki 0000005F)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] No NUMA configuration found
[    0.000000] Faking a node at 0000000000000000-000000026f600000
[    0.000000] Initmem setup node 0 0000000000000000-000000026f600000
[    0.000000]   NODE_DATA [000000026f5fc000 - 000000026f5fffff]
[    0.000000]  [ffffea0000000000-ffffea0009bfffff] PMD ->  [ffff880266c00000-ffff88026ebfffff] on node 0
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000010 ->  0x00001000
[    0.000000]   DMA32    0x00001000 ->  0x00100000
[    0.000000]   Normal   0x00100000 ->  0x0026f600
[    0.000000] Movable zone start PFN for each node
[    0.000000] Early memory PFN ranges
[    0.000000]     0: 0x00000010 ->  0x0000008e
[    0.000000]     0: 0x00000090 ->  0x000000a0
[    0.000000]     0: 0x00000100 ->  0x00020000
[    0.000000]     0: 0x00020200 ->  0x00040004
[    0.000000]     0: 0x00040005 ->  0x0008ad14
[    0.000000]     0: 0x0008ad53 ->  0x0008ad69
[    0.000000]     0: 0x0008ad8f ->  0x0008ae31
[    0.000000]     0: 0x0008ae8f ->  0x0008aece
[    0.000000]     0: 0x0008aeff ->  0x0008af92
[    0.000000]     0: 0x0008afff ->  0x0008b000
[    0.000000]     0: 0x00100000 ->  0x0026f600
[    0.000000] On node 0 totalpages: 2073132
[    0.000000]   DMA zone: 64 pages used for memmap
[    0.000000]   DMA zone: 10 pages reserved
[    0.000000]   DMA zone: 3908 pages, LIFO batch:0
[    0.000000]   DMA32 zone: 16320 pages used for memmap
[    0.000000]   DMA32 zone: 548062 pages, LIFO batch:31
[    0.000000]   Normal zone: 23512 pages used for memmap
[    0.000000]   Normal zone: 1481256 pages, LIFO batch:31
[    0.000000] ACPI: PM-Timer IO Port: 0x408
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x02] lapic_id[0x02] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x03] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x04] lapic_id[0x03] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x05] lapic_id[0xff] disabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x06] lapic_id[0xff] disabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x07] lapic_id[0xff] disabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x08] lapic_id[0xff] disabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x05] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x06] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x07] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x08] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ2 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.000000] SMP: Allowing 8 CPUs, 4 hotplug CPUs
[    0.000000] nr_irqs_gsi: 40
[    0.000000] PM: Registered nosave memory: 000000000008e000 - 0000000000090000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000c0000
[    0.000000] PM: Registered nosave memory: 00000000000c0000 - 0000000000100000
[    0.000000] PM: Registered nosave memory: 0000000020000000 - 0000000020200000
[    0.000000] PM: Registered nosave memory: 0000000040004000 - 0000000040005000
[    0.000000] PM: Registered nosave memory: 000000008ad14000 - 000000008ad53000
[    0.000000] PM: Registered nosave memory: 000000008ad69000 - 000000008ad8f000
[    0.000000] PM: Registered nosave memory: 000000008ae31000 - 000000008ae8f000
[    0.000000] PM: Registered nosave memory: 000000008aece000 - 000000008aeff000
[    0.000000] PM: Registered nosave memory: 000000008af92000 - 000000008afff000
[    0.000000] PM: Registered nosave memory: 000000008b000000 - 000000008fa00000
[    0.000000] PM: Registered nosave memory: 000000008fa00000 - 00000000e00f8000
[    0.000000] PM: Registered nosave memory: 00000000e00f8000 - 00000000e00f9000
[    0.000000] PM: Registered nosave memory: 00000000e00f9000 - 00000000fed1c000
[    0.000000] PM: Registered nosave memory: 00000000fed1c000 - 00000000fed20000
[    0.000000] PM: Registered nosave memory: 00000000fed20000 - 00000000ffe70000
[    0.000000] PM: Registered nosave memory: 00000000ffe70000 - 00000000ffea0000
[    0.000000] PM: Registered nosave memory: 00000000ffea0000 - 0000000100000000
[    0.000000] Allocating PCI resources starting at 8fa00000 (gap: 8fa00000:506f8000)
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] setup_percpu: NR_CPUS:64 nr_cpumask_bits:64 nr_cpu_ids:8 nr_node_ids:1
[    0.000000] PERCPU: Embedded 27 pages/cpu @ffff88026f200000 s80960 r8192 d21440 u262144
[    0.000000] pcpu-alloc: s80960 r8192 d21440 u262144 alloc=1*2097152
[    0.000000] pcpu-alloc: [0] 0 1 2 3 4 5 6 7
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 2033226
[    0.000000] Policy zone: Normal
[    0.000000] Kernel command line: systemConfig=/nix/store/dsdlapl9d1fkskpyn99gv6kjgn6m9pgh-nixos-0.1pre-git init=/nix/store/dsdlapl9d1fkskpyn99gv6kjgn6m9pgh-nixos-0.1pre-git/init initrd=\efi\nixos\q3hiagpv9giqbhr95wq54fg088765apz-initrd-initrd
[    0.000000] PID hash table entries: 4096 (order: 3, 32768 bytes)
[    0.000000] xsave/xrstor: enabled xstate_bv 0x7, cntxt size 0x340
[    0.000000] Checking aperture...
[    0.000000] No AGP bridge found
[    0.000000] Calgary: detecting Calgary via BIOS EBDA area
[    0.000000] Calgary: Unable to locate Rio Grande table in EBDA - bailing!
[    0.000000] Memory: 7953932k/10213376k available (3924k kernel code, 1920848k absent, 338596k reserved, 2814k data, 700k init)
[    0.000000] SLUB: Genslabs=15, HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] NR_IRQS:4352 nr_irqs:744 16
[    0.000000] Extended CMOS year: 2000
[    0.000000] Console: colour dummy device 80x25
[    0.000000] console [tty0] enabled
[    0.000000] allocated 33554432 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't want memory cgroups
[    0.000000] hpet clockevent registered
[    0.000000] Fast TSC calibration using PIT
[    0.001000] Detected 2893.340 MHz processor.
[    0.000002] Calibrating delay loop (skipped), value calculated using timer frequency.. 5786.68 BogoMIPS (lpj=2893340)
[    0.000014] pid_max: default: 32768 minimum: 301
[    0.000068] init_memory_mapping: 000000008b000000-000000008fa00000
[    0.000071]  008b000000 - 008fa00000 page 2M
[    0.025510] Security Framework initialized
[    0.025515] SELinux:  Disabled at boot.
[    0.025902] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes)
[    0.027596] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes)
[    0.028345] Mount-cache hash table entries: 256
[    0.028457] Initializing cgroup subsys cpuacct
[    0.028460] Initializing cgroup subsys memory
[    0.028465] Initializing cgroup subsys devices
[    0.028467] Initializing cgroup subsys freezer
[    0.028470] Initializing cgroup subsys blkio
[    0.028491] CPU: Physical Processor ID: 0
[    0.028493] CPU: Processor Core ID: 0
[    0.028801] mce: CPU supports 7 MCE banks
[    0.028811] CPU0: Thermal monitoring enabled (TM1)
[    0.028817] using mwait in idle threads.
[    0.029580] ACPI: Core revision 20120320
[    0.034510] ftrace: allocating 15883 entries in 63 pages
[    0.040875] DMAR: Host address width 36
[    0.040877] DMAR: DRHD base: 0x000000fed90000 flags: 0x0
[    0.040883] IOMMU 0: reg_base_addr fed90000 ver 1:0 cap c0000020e60262 ecap f0101a
[    0.040886] DMAR: DRHD base: 0x000000fed91000 flags: 0x1
[    0.040892] IOMMU 1: reg_base_addr fed91000 ver 1:0 cap c9008020660262 ecap f0105a
[    0.040895] DMAR: RMRR base: 0x0000003e2e0000 end: 0x0000003e2fffff
[    0.040897] DMAR: RMRR base: 0x0000008b800000 end: 0x0000008f9fffff
[    0.041418] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.051395] CPU0: Intel(R) Core(TM) i7-3520M CPU @ 2.90GHz stepping 09
[    0.152618] Performance Events: PEBS fmt1+, generic architected perfmon, Intel PMU driver.
[    0.152624] ... version:                3
[    0.152626] ... bit width:              48
[    0.152627] ... generic registers:      4
[    0.152629] ... value mask:             0000ffffffffffff
[    0.152631] ... max period:             000000007fffffff
[    0.152633] ... fixed-purpose events:   3
[    0.152634] ... event mask:             000000070000000f
[    0.152723] Booting Node   0, Processors  #1 #2 #3
[    0.193274] Brought up 4 CPUs
[    0.193279] Total of 4 processors activated (23146.72 BogoMIPS).
[    0.196612] devtmpfs: initialized
[    0.196716] PM: Registering ACPI NVS region [mem 0x8ad14000-0x8ad52fff] (258048 bytes)
[    0.197317] dummy:
[    0.197361] NET: Registered protocol family 16
[    0.197541] ACPI: bus type pci registered
[    0.197624] PCI: MMCONFIG for domain 0000 [bus 00-9a] at [mem 0xe0000000-0xe9afffff] (base 0xe0000000)
[    0.197628] PCI: not using MMCONFIG
[    0.197630] PCI: Using configuration type 1 for base access
[    0.198441] bio: create slab<bio-0>  at 0
[    0.198501] ACPI: Added _OSI(Module Device)
[    0.198503] ACPI: Added _OSI(Processor Device)
[    0.198505] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.198507] ACPI: Added _OSI(Processor Aggregator Device)
[    0.199442] ACPI: EC: EC description table is found, configuring boot EC
[    0.202912] [Firmware Bug]: ACPI: BIOS _OSI(Linux) query ignored
[    2.197325] ACPI Exception: AE_ERROR, Returned by Handler for [PCI_Config] (20120320/evregion-501)
[    2.197339] ACPI Error: Method parse/execution failed [\_SB_.PCI0.ZYXW] (Node ffff88026387fb68), AE_ERROR (20120320/psparse-536)
[    2.197362] ACPI Error: Method parse/execution failed [\_SB_._INI] (Node ffff88026385afa0), AE_ERROR (20120320/psparse-536)
[    2.197667] ACPI: SSDT 000000008ad19190 008AD (v01  PmRef  Cpu0Cst 00003001 INTL 20100915)
[    2.197910] ACPI: Dynamic OEM Table Load:
[    2.197913] ACPI: SSDT           (null) 008AD (v01  PmRef  Cpu0Cst 00003001 INTL 20100915)
[    2.200488] ACPI: SSDT 000000008ad1a710 003A4 (v01  PmRef    ApIst 00003000 INTL 20100915)
[    2.200757] ACPI: Dynamic OEM Table Load:
[    2.200760] ACPI: SSDT           (null) 003A4 (v01  PmRef    ApIst 00003000 INTL 20100915)
[    2.203385] ACPI: SSDT 000000008ad18d90 00119 (v01  PmRef    ApCst 00003000 INTL 20100915)
[    2.203621] ACPI: Dynamic OEM Table Load:
[    2.203623] ACPI: SSDT           (null) 00119 (v01  PmRef    ApCst 00003000 INTL 20100915)
[    2.206653] ACPI: Interpreter enabled
[    2.206657] ACPI: (supports S0 S3 S4 S5)
[    2.206671] ACPI: Using IOAPIC for interrupt routing
[    2.206684] PCI: MMCONFIG for domain 0000 [bus 00-9a] at [mem 0xe0000000-0xe9afffff] (base 0xe0000000)
[    2.206954] PCI: MMCONFIG at [mem 0xe0000000-0xe9afffff] reserved in ACPI motherboard resources
[    2.246817] ACPI: EC: GPE = 0x17, I/O: command/status = 0x66, data = 0x62
[    2.246940] ACPI: No dock devices found.
[    2.246944] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    2.247067] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    2.247210] pci_root PNP0A08:00: host bridge window [io  0x0000-0x0cf7]
[    2.247213] pci_root PNP0A08:00: host bridge window [io  0x0d00-0xffff]
[    2.247216] pci_root PNP0A08:00: host bridge window [mem 0x000a0000-0x000bffff]
[    2.247219] pci_root PNP0A08:00: host bridge window [mem 0x000c0000-0x000c3fff]
[    2.247221] pci_root PNP0A08:00: host bridge window [mem 0x000c4000-0x000c7fff]
[    2.247224] pci_root PNP0A08:00: host bridge window [mem 0x000c8000-0x000cbfff]
[    2.247227] pci_root PNP0A08:00: host bridge window [mem 0x000cc000-0x000cffff]
[    2.247229] pci_root PNP0A08:00: host bridge window [mem 0x000d0000-0x000d3fff]
[    2.247232] pci_root PNP0A08:00: host bridge window [mem 0x000d4000-0x000d7fff]
[    2.247235] pci_root PNP0A08:00: host bridge window [mem 0x000d8000-0x000dbfff]
[    2.247237] pci_root PNP0A08:00: host bridge window [mem 0x000dc000-0x000dffff]
[    2.247240] pci_root PNP0A08:00: host bridge window [mem 0x000e0000-0x000e3fff]
[    2.247243] pci_root PNP0A08:00: host bridge window [mem 0x000e4000-0x000e7fff]
[    2.247246] pci_root PNP0A08:00: host bridge window [mem 0x000e8000-0x000ebfff]
[    2.247248] pci_root PNP0A08:00: host bridge window [mem 0x000ec000-0x000effff]
[    2.247251] pci_root PNP0A08:00: host bridge window [mem 0x000f0000-0x000fffff]
[    2.247254] pci_root PNP0A08:00: host bridge window [mem 0x8fa00000-0xfeafffff]
[    2.247256] pci_root PNP0A08:00: host bridge window [mem 0xfed40000-0xfed44fff]
[    2.247291] PCI host bridge to bus 0000:00
[    2.247295] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7]
[    2.247297] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff]
[    2.247299] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff]
[    2.247302] pci_bus 0000:00: root bus resource [mem 0x000c0000-0x000c3fff]
[    2.247304] pci_bus 0000:00: root bus resource [mem 0x000c4000-0x000c7fff]
[    2.247307] pci_bus 0000:00: root bus resource [mem 0x000c8000-0x000cbfff]
[    2.247309] pci_bus 0000:00: root bus resource [mem 0x000cc000-0x000cffff]
[    2.247311] pci_bus 0000:00: root bus resource [mem 0x000d0000-0x000d3fff]
[    2.247314] pci_bus 0000:00: root bus resource [mem 0x000d4000-0x000d7fff]
[    2.247316] pci_bus 0000:00: root bus resource [mem 0x000d8000-0x000dbfff]
[    2.247319] pci_bus 0000:00: root bus resource [mem 0x000dc000-0x000dffff]
[    2.247321] pci_bus 0000:00: root bus resource [mem 0x000e0000-0x000e3fff]
[    2.247323] pci_bus 0000:00: root bus resource [mem 0x000e4000-0x000e7fff]
[    2.247326] pci_bus 0000:00: root bus resource [mem 0x000e8000-0x000ebfff]
[    2.247328] pci_bus 0000:00: root bus resource [mem 0x000ec000-0x000effff]
[    2.247331] pci_bus 0000:00: root bus resource [mem 0x000f0000-0x000fffff]
[    2.247333] pci_bus 0000:00: root bus resource [mem 0x8fa00000-0xfeafffff]
[    2.247336] pci_bus 0000:00: root bus resource [mem 0xfed40000-0xfed44fff]
[    2.247343] pci 0000:00:00.0: [8086:0154] type 00 class 0x060000
[    2.247380] pci 0000:00:01.0: [8086:0151] type 01 class 0x060400
[    2.247447] pci 0000:00:01.0: PME# supported from D0 D3hot D3cold
[    2.247471] pci 0000:00:02.0: [8086:0166] type 00 class 0x030000
[    2.247479] pci 0000:00:02.0: reg 10: [mem 0xa0000000-0xa03fffff 64bit]
[    2.247484] pci 0000:00:02.0: reg 18: [mem 0x90000000-0x9fffffff 64bit pref]
[    2.247488] pci 0000:00:02.0: reg 20: [io  0x2000-0x203f]
[    2.247532] pci 0000:00:14.0: [8086:1e31] type 00 class 0x0c0330
[    2.247553] pci 0000:00:14.0: reg 10: [mem 0xa0800000-0xa080ffff 64bit]
[    2.247620] pci 0000:00:14.0: PME# supported from D3hot D3cold
[    2.247641] pci 0000:00:16.0: [8086:1e3a] type 00 class 0x078000
[    2.247663] pci 0000:00:16.0: reg 10: [mem 0xa0817100-0xa081710f 64bit]
[    2.247735] pci 0000:00:16.0: PME# supported from D0 D3hot D3cold
[    2.247766] pci 0000:00:1a.0: [8086:1e2d] type 00 class 0x0c0320
[    2.247786] pci 0000:00:1a.0: reg 10: [mem 0xa0816c00-0xa0816fff]
[    2.247871] pci 0000:00:1a.0: PME# supported from D0 D3hot D3cold
[    2.247895] pci 0000:00:1b.0: [8086:1e20] type 00 class 0x040300
[    2.247909] pci 0000:00:1b.0: reg 10: [mem 0xa0810000-0xa0813fff 64bit]
[    2.247976] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    2.247996] pci 0000:00:1c.0: [8086:1e10] type 01 class 0x060400
[    2.248071] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    2.248093] pci 0000:00:1c.1: [8086:1e12] type 01 class 0x060400
[    2.248169] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    2.248192] pci 0000:00:1c.2: [8086:1e14] type 01 class 0x060400
[    2.248267] pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
[    2.248297] pci 0000:00:1d.0: [8086:1e26] type 00 class 0x0c0320
[    2.248317] pci 0000:00:1d.0: reg 10: [mem 0xa0816800-0xa0816bff]
[    2.248402] pci 0000:00:1d.0: PME# supported from D0 D3hot D3cold
[    2.248425] pci 0000:00:1f.0: [8086:1e57] type 00 class 0x060100
[    2.248542] pci 0000:00:1f.2: [8086:1e03] type 00 class 0x010601
[    2.248559] pci 0000:00:1f.2: reg 10: [io  0x2098-0x209f]
[    2.248567] pci 0000:00:1f.2: reg 14: [io  0x20bc-0x20bf]
[    2.248574] pci 0000:00:1f.2: reg 18: [io  0x2090-0x2097]
[    2.248582] pci 0000:00:1f.2: reg 1c: [io  0x20b8-0x20bb]
[    2.248589] pci 0000:00:1f.2: reg 20: [io  0x2060-0x207f]
[    2.248597] pci 0000:00:1f.2: reg 24: [mem 0xa0816000-0xa08167ff]
[    2.248639] pci 0000:00:1f.2: PME# supported from D3hot
[    2.248655] pci 0000:00:1f.3: [8086:1e22] type 00 class 0x0c0500
[    2.248669] pci 0000:00:1f.3: reg 10: [mem 0xa0817000-0xa08170ff 64bit]
[    2.248689] pci 0000:00:1f.3: reg 20: [io  0xefa0-0xefbf]
[    2.248755] pci 0000:00:01.0: PCI bridge to [bus 04-9a]
[    2.248758] pci 0000:00:01.0:   bridge window [io  0x3000-0x5fff]
[    2.248761] pci 0000:00:01.0:   bridge window [mem 0xa0900000-0xacbfffff]
[    2.248766] pci 0000:00:01.0:   bridge window [mem 0xacc00000-0xb8bfffff 64bit pref]
[    2.248872] pci 0000:01:00.0: [14e4:16b4] type 00 class 0x020000
[    2.248908] pci 0000:01:00.0: reg 10: [mem 0xa0400000-0xa040ffff 64bit pref]
[    2.248937] pci 0000:01:00.0: reg 18: [mem 0xa0410000-0xa041ffff 64bit pref]
[    2.249088] pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
[    2.249157] pci 0000:01:00.1: [14e4:16bc] type 00 class 0x080501
[    2.249194] pci 0000:01:00.1: reg 10: [mem 0xa0420000-0xa042ffff 64bit pref]
[    2.249369] pci 0000:01:00.1: PME# supported from D0 D3hot D3cold
[    2.251028] pci 0000:00:1c.0: PCI bridge to [bus 01-01]
[    2.251034] pci 0000:00:1c.0:   bridge window [mem 0xa0700000-0xa07fffff]
[    2.251041] pci 0000:00:1c.0:   bridge window [mem 0xa0400000-0xa04fffff 64bit pref]
[    2.251112] pci 0000:02:00.0: [14e4:4331] type 00 class 0x028000
[    2.251140] pci 0000:02:00.0: reg 10: [mem 0xa0600000-0xa0603fff 64bit]
[    2.251298] pci 0000:02:00.0: supports D1 D2
[    2.252978] pci 0000:00:1c.1: PCI bridge to [bus 02-02]
[    2.252991] pci 0000:00:1c.1:   bridge window [mem 0xa0600000-0xa06fffff]
[    2.253086] pci 0000:03:00.0: [11c1:5901] type 00 class 0x0c0010
[    2.253123] pci 0000:03:00.0: reg 10: [mem 0xa0500000-0xa0500fff 64bit]
[    2.253306] pci 0000:03:00.0: supports D1 D2
[    2.253308] pci 0000:03:00.0: PME# supported from D0 D1 D2 D3hot D3cold
[    2.254969] pci 0000:00:1c.2: PCI bridge to [bus 03-03]
[    2.254983] pci 0000:00:1c.2:   bridge window [mem 0xa0500000-0xa05fffff]
[    2.255024] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    2.255087] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P2._PRT]
[    2.255118] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
[    2.255141] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
[    2.255161] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
[    2.255225]  pci0000:00: Requesting ACPI _OSC control (0x1d)
[    2.255292]  pci0000:00: ACPI _OSC control (0x1d) granted
[    2.257117] ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled.
[    2.257154] ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled.
[    2.257185] ACPI: PCI Interrupt Link [LNKC] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled.
[    2.257216] ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled.
[    2.257246] ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled.
[    2.257276] ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled.
[    2.257307] ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 7 10 12 14 15) *0, disabled.
[    2.257337] ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 5 6 7 11 12 14 15) *0, disabled.
[    2.257462] vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
[    2.257468] vgaarb: loaded
[    2.257469] vgaarb: bridge control possible 0000:00:02.0
[    2.257519] PCI: Using ACPI for IRQ routing
[    2.261747] PCI: pci_cache_line_size set to 64 bytes
[    2.261879] reserve RAM buffer: 000000000008e000 - 000000000008ffff
[    2.261881] reserve RAM buffer: 0000000040004000 - 0000000043ffffff
[    2.261882] reserve RAM buffer: 000000008ad14000 - 000000008bffffff
[    2.261884] reserve RAM buffer: 000000008ad69000 - 000000008bffffff
[    2.261886] reserve RAM buffer: 000000008ae31000 - 000000008bffffff
[    2.261888] reserve RAM buffer: 000000008aece000 - 000000008bffffff
[    2.261890] reserve RAM buffer: 000000008af92000 - 000000008bffffff
[    2.261891] reserve RAM buffer: 000000008b000000 - 000000008bffffff
[    2.261893] reserve RAM buffer: 000000026f600000 - 000000026fffffff
[    2.261996] NetLabel: Initializing
[    2.261998] NetLabel:  domain hash size = 128
[    2.262000] NetLabel:  protocols = UNLABELED CIPSOv4
[    2.262007] NetLabel:  unlabeled traffic allowed by default
[    2.262020] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0, 0, 0, 0, 0, 0
[    2.262026] hpet0: 8 comparators, 64-bit 14.318180 MHz counter
[    2.265039] Switching to clocksource hpet
[    2.268205] pnp: PnP ACPI init
[    2.268217] ACPI: bus type pnp registered
[    2.268319] pnp 00:00: [bus 00-ff]
[    2.268321] pnp 00:00: [io  0x0000-0x0cf7 window]
[    2.268323] pnp 00:00: [io  0x0cf8-0x0cff]
[    2.268324] pnp 00:00: [io  0x0d00-0xffff window]
[    2.268325] pnp 00:00: [mem 0x000a0000-0x000bffff window]
[    2.268327] pnp 00:00: [mem 0x000c0000-0x000c3fff window]
[    2.268328] pnp 00:00: [mem 0x000c4000-0x000c7fff window]
[    2.268329] pnp 00:00: [mem 0x000c8000-0x000cbfff window]
[    2.268332] pnp 00:00: [mem 0x000cc000-0x000cffff window]
[    2.268333] pnp 00:00: [mem 0x000d0000-0x000d3fff window]
[    2.268334] pnp 00:00: [mem 0x000d4000-0x000d7fff window]
[    2.268336] pnp 00:00: [mem 0x000d8000-0x000dbfff window]
[    2.268337] pnp 00:00: [mem 0x000dc000-0x000dffff window]
[    2.268338] pnp 00:00: [mem 0x000e0000-0x000e3fff window]
[    2.268339] pnp 00:00: [mem 0x000e4000-0x000e7fff window]
[    2.268341] pnp 00:00: [mem 0x000e8000-0x000ebfff window]
[    2.268342] pnp 00:00: [mem 0x000ec000-0x000effff window]
[    2.268343] pnp 00:00: [mem 0x000f0000-0x000fffff window]
[    2.268345] pnp 00:00: [mem 0x8fa00000-0xfeafffff window]
[    2.268346] pnp 00:00: [mem 0xfed40000-0xfed44fff window]
[    2.268419] pnp 00:00: Plug and Play ACPI device, IDs PNP0a08 PNP0a03 (active)
[    2.268471] pnp 00:01: [io  0x0000-0x001f]
[    2.268472] pnp 00:01: [io  0x0081-0x0091]
[    2.268473] pnp 00:01: [io  0x0093-0x009f]
[    2.268474] pnp 00:01: [io  0x00c0-0x00df]
[    2.268476] pnp 00:01: [dma 4]
[    2.268514] pnp 00:01: Plug and Play ACPI device, IDs PNP0200 (active)
[    2.268520] pnp 00:02: [mem 0xff000000-0xffffffff]
[    2.268558] pnp 00:02: Plug and Play ACPI device, IDs INT0800 (active)
[    2.268611] pnp 00:03: [irq 0 disabled]
[    2.268618] pnp 00:03: [irq 8]
[    2.268619] pnp 00:03: [mem 0xfed00000-0xfed003ff]
[    2.268670] system 00:03: [mem 0xfed00000-0xfed003ff] has been reserved
[    2.268674] system 00:03: Plug and Play ACPI device, IDs PNP0103 PNP0c01 (active)
[    2.268681] pnp 00:04: [io  0x00f0]
[    2.268685] pnp 00:04: [irq 13]
[    2.268727] pnp 00:04: Plug and Play ACPI device, IDs PNP0c04 (active)
[    2.268734] pnp 00:05: [io  0x002e-0x002f]
[    2.268735] pnp 00:05: [io  0x004e-0x004f]
[    2.268736] pnp 00:05: [io  0x0061]
[    2.268737] pnp 00:05: [io  0x0063]
[    2.268738] pnp 00:05: [io  0x0065]
[    2.268739] pnp 00:05: [io  0x0067]
[    2.268740] pnp 00:05: [io  0x0080]
[    2.268741] pnp 00:05: [io  0x0092]
[    2.268742] pnp 00:05: [io  0x00b2-0x00b3]
[    2.268743] pnp 00:05: [io  0x1000-0x100f]
[    2.268744] pnp 00:05: [io  0x0400-0x047f]
[    2.268745] pnp 00:05: [io  0x0500-0x057f]
[    2.268792] system 00:05: [io  0x1000-0x100f] has been reserved
[    2.268796] system 00:05: [io  0x0400-0x047f] has been reserved
[    2.268798] system 00:05: [io  0x0500-0x057f] has been reserved
[    2.268801] system 00:05: Plug and Play ACPI device, IDs PNP0c02 (active)
[    2.268806] pnp 00:06: [io  0x0070-0x0077]
[    2.268845] pnp 00:06: Plug and Play ACPI device, IDs PNP0b00 (active)
[    2.268853] pnp 00:07: [io  0x0300-0x031f]
[    2.268854] pnp 00:07: [mem 0xfef00000-0xfef0ffff]
[    2.268858] pnp 00:07: [irq 6]
[    2.268896] pnp 00:07: Plug and Play ACPI device, IDs APP0001 (active)
[    2.268927] pnp 00:08: [io  0x0700-0x07fe]
[    2.268972] pnp 00:08: Plug and Play ACPI device, IDs APP000b (active)
[    2.269053] pnp 00:09: [mem 0xfed1c000-0xfed1ffff]
[    2.269055] pnp 00:09: [mem 0xfed10000-0xfed17fff]
[    2.269057] pnp 00:09: [mem 0xfed18000-0xfed18fff]
[    2.269058] pnp 00:09: [mem 0xfed19000-0xfed19fff]
[    2.269060] pnp 00:09: [mem 0xe0000000-0xefffffff]
[    2.269061] pnp 00:09: [mem 0xfed20000-0xfed3ffff]
[    2.269062] pnp 00:09: [mem 0xfed90000-0xfed93fff]
[    2.269063] pnp 00:09: [mem 0xfed45000-0xfed8ffff]
[    2.269064] pnp 00:09: [mem 0xff000000-0xffffffff]
[    2.269065] pnp 00:09: [mem 0xfee00000-0xfeefffff]
[    2.269067] pnp 00:09: [mem 0x00000000-0xffffffffffffffff disabled]
[    2.269121] system 00:09: [mem 0xfed1c000-0xfed1ffff] has been reserved
[    2.269124] system 00:09: [mem 0xfed10000-0xfed17fff] has been reserved
[    2.269126] system 00:09: [mem 0xfed18000-0xfed18fff] has been reserved
[    2.269129] system 00:09: [mem 0xfed19000-0xfed19fff] has been reserved
[    2.269132] system 00:09: [mem 0xe0000000-0xefffffff] could not be reserved
[    2.269135] system 00:09: [mem 0xfed20000-0xfed3ffff] has been reserved
[    2.269137] system 00:09: [mem 0xfed90000-0xfed93fff] has been reserved
[    2.269140] system 00:09: [mem 0xfed45000-0xfed8ffff] has been reserved
[    2.269143] system 00:09: [mem 0xff000000-0xffffffff] could not be reserved
[    2.269145] system 00:09: [mem 0xfee00000-0xfeefffff] has been reserved
[    2.269148] system 00:09: Plug and Play ACPI device, IDs PNP0c02 (active)
[    2.270896] pnp 00:0a: [mem 0x20000000-0x201fffff]
[    2.270897] pnp 00:0a: [mem 0x40000000-0x401fffff]
[    2.270976] system 00:0a: [mem 0x20000000-0x201fffff] has been reserved
[    2.270979] system 00:0a: [mem 0x40000000-0x401fffff] could not be reserved
[    2.270982] system 00:0a: Plug and Play ACPI device, IDs PNP0c01 (active)
[    2.270988] pnp: PnP ACPI: found 11 devices
[    2.270990] ACPI: ACPI bus type pnp unregistered
[    2.278594] pci 0000:00:01.0: PCI bridge to [bus 04-9a]
[    2.278598] pci 0000:00:01.0:   bridge window [io  0x3000-0x5fff]
[    2.278603] pci 0000:00:01.0:   bridge window [mem 0xa0900000-0xacbfffff]
[    2.278607] pci 0000:00:01.0:   bridge window [mem 0xacc00000-0xb8bfffff 64bit pref]
[    2.278613] pci 0000:00:1c.0: PCI bridge to [bus 01-01]
[    2.278618] pci 0000:00:1c.0:   bridge window [mem 0xa0700000-0xa07fffff]
[    2.278624] pci 0000:00:1c.0:   bridge window [mem 0xa0400000-0xa04fffff 64bit pref]
[    2.278631] pci 0000:00:1c.1: PCI bridge to [bus 02-02]
[    2.278637] pci 0000:00:1c.1:   bridge window [mem 0xa0600000-0xa06fffff]
[    2.278646] pci 0000:00:1c.2: PCI bridge to [bus 03-03]
[    2.278651] pci 0000:00:1c.2:   bridge window [mem 0xa0500000-0xa05fffff]
[    2.278691] pci 0000:00:1c.1: power state changed by ACPI to D0
[    2.278696] pci 0000:00:1c.1: power state changed by ACPI to D0
[    2.278711] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7]
[    2.278713] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff]
[    2.278714] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]
[    2.278716] pci_bus 0000:00: resource 7 [mem 0x000c0000-0x000c3fff]
[    2.278717] pci_bus 0000:00: resource 8 [mem 0x000c4000-0x000c7fff]
[    2.278718] pci_bus 0000:00: resource 9 [mem 0x000c8000-0x000cbfff]
[    2.278720] pci_bus 0000:00: resource 10 [mem 0x000cc000-0x000cffff]
[    2.278721] pci_bus 0000:00: resource 11 [mem 0x000d0000-0x000d3fff]
[    2.278723] pci_bus 0000:00: resource 12 [mem 0x000d4000-0x000d7fff]
[    2.278724] pci_bus 0000:00: resource 13 [mem 0x000d8000-0x000dbfff]
[    2.278725] pci_bus 0000:00: resource 14 [mem 0x000dc000-0x000dffff]
[    2.278727] pci_bus 0000:00: resource 15 [mem 0x000e0000-0x000e3fff]
[    2.278728] pci_bus 0000:00: resource 16 [mem 0x000e4000-0x000e7fff]
[    2.278729] pci_bus 0000:00: resource 17 [mem 0x000e8000-0x000ebfff]
[    2.278731] pci_bus 0000:00: resource 18 [mem 0x000ec000-0x000effff]
[    2.278732] pci_bus 0000:00: resource 19 [mem 0x000f0000-0x000fffff]
[    2.278734] pci_bus 0000:00: resource 20 [mem 0x8fa00000-0xfeafffff]
[    2.278735] pci_bus 0000:00: resource 21 [mem 0xfed40000-0xfed44fff]
[    2.278737] pci_bus 0000:04: resource 0 [io  0x3000-0x5fff]
[    2.278738] pci_bus 0000:04: resource 1 [mem 0xa0900000-0xacbfffff]
[    2.278739] pci_bus 0000:04: resource 2 [mem 0xacc00000-0xb8bfffff 64bit pref]
[    2.278741] pci_bus 0000:01: resource 1 [mem 0xa0700000-0xa07fffff]
[    2.278742] pci_bus 0000:01: resource 2 [mem 0xa0400000-0xa04fffff 64bit pref]
[    2.278744] pci_bus 0000:02: resource 1 [mem 0xa0600000-0xa06fffff]
[    2.278745] pci_bus 0000:03: resource 1 [mem 0xa0500000-0xa05fffff]
[    2.278768] NET: Registered protocol family 2
[    2.278887] IP route cache hash table entries: 262144 (order: 9, 2097152 bytes)
[    2.279394] TCP established hash table entries: 524288 (order: 11, 8388608 bytes)
[    2.280299] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
[    2.280431] TCP: Hash tables configured (established 524288 bind 65536)
[    2.280434] TCP: reno registered
[    2.280443] UDP hash table entries: 4096 (order: 5, 131072 bytes)
[    2.280466] UDP-Lite hash table entries: 4096 (order: 5, 131072 bytes)
[    2.280537] pci 0000:00:02.0: Boot video device
[    2.280546] pci 0000:00:14.0: enabling device (0000 ->  0002)
[    2.280551] pci 0000:00:14.0: can't derive routing for PCI INT A
[    2.280553] pci 0000:00:14.0: PCI INT A: no GSI
[    2.280611] pci 0000:00:14.0: can't derive routing for PCI INT A
[    2.280742] PCI: CLS 256 bytes, default 64
[    2.280768] Unpacking initramfs...
[    2.347628] Freeing initrd memory: 4992k freed
[    2.348106] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    2.348112] Placing 64MB software IO TLB between ffff88007bb20000 - ffff88007fb20000
[    2.348115] software IO TLB at phys 0x7bb20000 - 0x7fb20000
[    2.348679] audit: initializing netlink socket (disabled)
[    2.348688] type=2000 audit(1342229332.245:1): initialized
[    2.349067] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[    2.351321] VFS: Disk quotas dquot_6.5.2
[    2.351367] Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    2.351446] msgmni has been set to 15792
[    2.351620] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
[    2.351625] io scheduler noop registered
[    2.351694] io scheduler cfq registered (default)
[    2.351798] pcieport 0000:00:01.0: irq 40 for MSI/MSI-X
[    2.351936] pcieport 0000:00:1c.0: irq 41 for MSI/MSI-X
[    2.352051] pcieport 0000:00:1c.1: irq 42 for MSI/MSI-X
[    2.352171] pcieport 0000:00:1c.2: irq 43 for MSI/MSI-X
[    2.352304] pcieport 0000:00:01.0: Signaling PME through PCIe PME interrupt
[    2.352309] pcie_pme 0000:00:01.0:pcie01: service driver pcie_pme loaded
[    2.352323] pcieport 0000:00:1c.0: Signaling PME through PCIe PME interrupt
[    2.352326] pci 0000:01:00.0: Signaling PME through PCIe PME interrupt
[    2.352328] pci 0000:01:00.1: Signaling PME through PCIe PME interrupt
[    2.352333] pcie_pme 0000:00:1c.0:pcie01: service driver pcie_pme loaded
[    2.352347] pcieport 0000:00:1c.1: Signaling PME through PCIe PME interrupt
[    2.352350] pci 0000:02:00.0: Signaling PME through PCIe PME interrupt
[    2.352355] pcie_pme 0000:00:1c.1:pcie01: service driver pcie_pme loaded
[    2.352368] pcieport 0000:00:1c.2: Signaling PME through PCIe PME interrupt
[    2.352371] pci 0000:03:00.0: Signaling PME through PCIe PME interrupt
[    2.352376] pcie_pme 0000:00:1c.2:pcie01: service driver pcie_pme loaded
[    2.352436] efifb: probing for efifb
[    2.353421] efifb: framebuffer at 0x90000000, mapped to 0xffffc9000b300000, using 4000k, total 4000k
[    2.353425] efifb: mode is 1280x800x32, linelength=5120, pages=1
[    2.353426] efifb: scrolling: redraw
[    2.353429] efifb: Truecolor: size=8:8:8:8, shift=24:16:8:0
[    2.353480] fb0: EFI VGA frame buffer device
[    2.353574] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    2.354208] i8042: PNP: No PS/2 controller found. Probing ports directly.
[    2.355086] i8042: No controller found
[    2.355131] mousedev: PS/2 mouse device common for all mice
[    2.355171] cpuidle: using governor ladder
[    2.355173] cpuidle: using governor menu
[    2.355217] Registering the dns_resolver key type
[    2.355343] PM: Hibernation image not present or could not be loaded.
[    2.355347] registered taskstats version 1
[    2.356643] Freeing unused kernel memory: 700k freed
[    2.356709] Write protecting the kernel read-only data: 6144k
[    2.357078] Freeing unused kernel memory: 152k freed
[    2.358680] Freeing unused kernel memory: 784k freed
[    2.367996] usbcore: registered new interface driver usbfs
[    2.368030] usbcore: registered new interface driver hub
[    2.368071] usbcore: registered new device driver usb
[    2.368409] xhci_hcd 0000:00:14.0: can't derive routing for PCI INT A
[    2.368412] xhci_hcd 0000:00:14.0: PCI INT A: no GSI
[    2.368452] xhci_hcd 0000:00:14.0: setting latency timer to 64
[    2.368455] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    2.368469] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 1
[    2.368552] xhci_hcd 0000:00:14.0: cache line size of 256 is not supported
[    2.368590] xhci_hcd 0000:00:14.0: irq 44 for MSI/MSI-X
[    2.368631] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[    2.368634] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    2.368636] usb usb1: Product: xHCI Host Controller
[    2.368638] usb usb1: Manufacturer: Linux 3.4.4 xhci_hcd
[    2.368640] usb usb1: SerialNumber: 0000:00:14.0
[    2.368709] xHCI xhci_add_endpoint called for root hub
[    2.368710] xHCI xhci_check_bandwidth called for root hub
[    2.368745] hub 1-0:1.0: USB hub found
[    2.368752] hub 1-0:1.0: 4 ports detected
[    2.368796] xhci_hcd 0000:00:14.0: xHCI Host Controller
[    2.368801] xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 2
[    2.368813] usb usb2: New USB device found, idVendor=1d6b, idProduct=0003
[    2.368815] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    2.368818] usb usb2: Product: xHCI Host Controller
[    2.368820] usb usb2: Manufacturer: Linux 3.4.4 xhci_hcd
[    2.368822] usb usb2: SerialNumber: 0000:00:14.0
[    2.368877] xHCI xhci_add_endpoint called for root hub
[    2.368878] xHCI xhci_check_bandwidth called for root hub
[    2.368913] hub 2-0:1.0: USB hub found
[    2.368920] hub 2-0:1.0: 4 ports detected
[    2.373264] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    2.373296] ehci_hcd 0000:00:1a.0: setting latency timer to 64
[    2.373299] ehci_hcd 0000:00:1a.0: EHCI Host Controller
[    2.373305] ehci_hcd 0000:00:1a.0: new USB bus registered, assigned bus number 3
[    2.373325] ehci_hcd 0000:00:1a.0: debug port 2
[    2.377213] ehci_hcd 0000:00:1a.0: cache line size of 256 is not supported
[    2.377225] ehci_hcd 0000:00:1a.0: irq 23, io mem 0xa0816c00
[    2.383088] ehci_hcd 0000:00:1a.0: USB 2.0 started, EHCI 1.00
[    2.383115] usb usb3: New USB device found, idVendor=1d6b, idProduct=0002
[    2.383122] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    2.383137] usb usb3: Product: EHCI Host Controller
[    2.383139] usb usb3: Manufacturer: Linux 3.4.4 ehci_hcd
[    2.383141] usb usb3: SerialNumber: 0000:00:1a.0
[    2.383232] hub 3-0:1.0: USB hub found
[    2.383236] hub 3-0:1.0: 2 ports detected
[    2.383283] ehci_hcd 0000:00:1d.0: setting latency timer to 64
[    2.383286] ehci_hcd 0000:00:1d.0: EHCI Host Controller
[    2.383291] ehci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 4
[    2.383310] ehci_hcd 0000:00:1d.0: debug port 2
[    2.387194] ehci_hcd 0000:00:1d.0: cache line size of 256 is not supported
[    2.387205] ehci_hcd 0000:00:1d.0: irq 22, io mem 0xa0816800
[    2.393066] ehci_hcd 0000:00:1d.0: USB 2.0 started, EHCI 1.00
[    2.393093] usb usb4: New USB device found, idVendor=1d6b, idProduct=0002
[    2.393100] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    2.393113] usb usb4: Product: EHCI Host Controller
[    2.393115] usb usb4: Manufacturer: Linux 3.4.4 ehci_hcd
[    2.393117] usb usb4: SerialNumber: 0000:00:1d.0
[    2.393211] hub 4-0:1.0: USB hub found
[    2.393215] hub 4-0:1.0: 2 ports detected
[    2.394959] SCSI subsystem initialized
[    2.395766] libata version 3.00 loaded.
[    2.396162] ahci 0000:00:1f.2: version 3.0
[    2.396213] ahci 0000:00:1f.2: irq 45 for MSI/MSI-X
[    2.396254] ahci 0000:00:1f.2: AHCI 0001.0300 32 slots 6 ports 6 Gbps 0x3 impl SATA mode
[    2.396258] ahci 0000:00:1f.2: flags: 64bit ncq pm led clo pio slum part ems apst
[    2.396263] ahci 0000:00:1f.2: setting latency timer to 64
[    2.398675] scsi0 : ahci
[    2.398758] scsi1 : ahci
[    2.398834] scsi2 : ahci
[    2.398907] scsi3 : ahci
[    2.398981] scsi4 : ahci
[    2.399068] scsi5 : ahci
[    2.399215] ata1: SATA max UDMA/133 abar m2048 at 0xa0816000 port 0xa0816100 irq 45
[    2.399220] ata2: SATA max UDMA/133 abar m2048 at 0xa0816000 port 0xa0816180 irq 45
[    2.399223] ata3: DUMMY
[    2.399224] ata4: DUMMY
[    2.399225] ata5: DUMMY
[    2.399227] ata6: DUMMY
[    2.703272] ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    2.703302] ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[    2.703754] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filtered out
[    2.703857] ata1.00: ATA-8: APPLE SSD SM128E, CXM07A1Q, max UDMA/133
[    2.703863] ata1.00: 236978176 sectors, multi 16: LBA48 NCQ (depth 31/32), AA
[    2.704120] ata1.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filtered out
[    2.704218] ata1.00: configured for UDMA/133
[    2.704336] scsi 0:0:0:0: Direct-Access     ATA      APPLE SSD SM128E CXM0 PQ: 0 ANSI: 5
[    2.705179] ata2.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filtered out
[    2.705184] ata2.00: ATAPI: MATSHITADVD-R   UJ-8A8, HB14, max UDMA/100
[    2.708001] ata2.00: ACPI cmd ef/10:03:00:00:00:a0 (SET FEATURES) filtered out
[    2.708005] ata2.00: configured for UDMA/100
[    2.711659] scsi 1:0:0:0: CD-ROM            MATSHITA DVD-R   UJ-8A8   HB14 PQ: 0 ANSI: 5
[    2.720245] usb 1-2: new low-speed USB device number 2 using xhci_hcd
[    2.736565] usb 1-2: New USB device found, idVendor=046d, idProduct=c051
[    2.736572] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    2.736578] usb 1-2: Product: USB-PS/2 Optical Mouse
[    2.736583] usb 1-2: Manufacturer: Logitech
[    2.736677] usb 1-2: ep 0x81 - rounding interval to 64 microframes, ep desc says 80 microframes
[    2.764241] firewire_ohci 0000:03:00.0: irq 46 for MSI/MSI-X
[    2.764283] firewire_ohci 0000:03:00.0: added OHCI v1.10 device as card 0, 8 IR + 8 IT contexts, quirks 0x0
[    2.768996] input: Logitech USB-PS/2 Optical Mouse as /devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2:1.0/input/input0
[    2.769089] generic-usb 0003:046D:C051.0001: input,hidraw0: USB HID v1.10 Mouse [Logitech USB-PS/2 Optical Mouse] on usb-0000:00:14.0-2/input0
[    2.769119] usbcore: registered new interface driver usbhid
[    2.769121] usbhid: USB HID core driver
[    2.779783] Btrfs loaded
[    2.782142] device-mapper: ioctl: 4.22.0-ioctl (2011-10-19) initialised: dm-devel at redhat.com
[    2.783499] Console: switching to colour frame buffer device 160x50
[    2.787643] NET: Registered protocol family 1
[    2.808203] sd 0:0:0:0: [sda] 236978176 512-byte logical blocks: (121 GB/113 GiB)
[    2.808236] sd 0:0:0:0: [sda] 4096-byte physical blocks
[    2.808316] sd 0:0:0:0: [sda] Write Protect is off
[    2.808341] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    2.808362] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    2.811124]  sda: sda1 sda2 sda3 sda4 sda5
[    2.811913] sd 0:0:0:0: [sda] Attached SCSI disk
[    2.814870] sr0: scsi3-mmc drive: 62x/62x writer cd/rw xa/form2 cdda tray
[    2.814910] cdrom: Uniform CD-ROM driver Revision: 3.20
[    2.815727] sr 1:0:0:0: Attached scsi CD-ROM sr0
[    2.838920] usb 3-1: new high-speed USB device number 2 using ehci_hcd
[    2.953042] usb 3-1: New USB device found, idVendor=8087, idProduct=0024
[    2.953100] usb 3-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    2.953339] hub 3-1:1.0: USB hub found
[    2.953405] hub 3-1:1.0: 6 ports detected
[    3.055362] usb 4-1: new high-speed USB device number 2 using ehci_hcd
[    3.169475] usb 4-1: New USB device found, idVendor=8087, idProduct=0024
[    3.169498] usb 4-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    3.169771] hub 4-1:1.0: USB hub found
[    3.169851] hub 4-1:1.0: 8 ports detected
[    3.244049] usb 3-1.1: new high-speed USB device number 3 using ehci_hcd
[    3.263927] firewire_core 0000:03:00.0: created device fw0: GUID 003ee1fffe33c2ea, S800
[    3.263959] firewire_core 0000:03:00.0: phy config: new root=ffc0, gap_count=63
[    3.345409] usb 3-1.1: New USB device found, idVendor=05ac, idProduct=8509
[    3.345466] usb 3-1.1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    3.346198] usb 3-1.1: Product: FaceTime HD Camera (Built-in)
[    3.346926] usb 3-1.1: Manufacturer: Apple Inc.
[    3.347619] Refined TSC clocksource calibration: 2893.427 MHz.
[    3.347622] Switching to clocksource tsc
[    3.349872] usb 3-1.1: SerialNumber: CC2C6J00E0DG6LL0
[    3.444531] usb 4-1.8: new high-speed USB device number 3 using ehci_hcd
[    3.530555] usb 4-1.8: New USB device found, idVendor=0424, idProduct=2513
[    3.531304] usb 4-1.8: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    3.532214] hub 4-1.8:1.0: USB hub found
[    3.533049] hub 4-1.8:1.0: 3 ports detected
[    3.560477] device label root devid 1 transid 301 /dev/sda5
[    3.679221] PM: Hibernation mode set to 'shutdown'
[    3.728691] device label root devid 1 transid 301 /dev/disk/by-label/root
[    3.729693] btrfs: disk space caching is enabled
[    3.734461] Btrfs detected SSD devices, enabling SSD mode
[    3.806607] usb 4-1.8.1: new full-speed USB device number 4 using ehci_hcd
[    3.809449] btrfs: disk space caching is enabled
[    3.893870] usb 4-1.8.1: New USB device found, idVendor=0a5c, idProduct=4500
[    3.894638] usb 4-1.8.1: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    3.895350] usb 4-1.8.1: Product: BRCM20702 Hub
[    3.896050] usb 4-1.8.1: Manufacturer: Apple Inc.
[    3.897105] hub 4-1.8.1:1.0: USB hub found
[    3.897976] hub 4-1.8.1:1.0: 3 ports detected
[    3.972168] usb 4-1.8.2: new low-speed USB device number 5 using ehci_hcd
[    4.063683] usb 4-1.8.2: New USB device found, idVendor=05ac, idProduct=8242
[    4.064436] usb 4-1.8.2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    4.065105] usb 4-1.8.2: Product: IR Receiver
[    4.065782] usb 4-1.8.2: Manufacturer: Apple Computer, Inc.
[    4.141882] usb 4-1.8.3: new full-speed USB device number 6 using ehci_hcd
[    4.152002] udevd[1469]: starting version 173
[    4.161500] device label root devid 1 transid 302 /dev/sda5
[    4.233371] usb 4-1.8.3: New USB device found, idVendor=05ac, idProduct=0252
[    4.234073] usb 4-1.8.3: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    4.234741] usb 4-1.8.3: Product: Apple Internal Keyboard / Trackpad
[    4.235405] usb 4-1.8.3: Manufacturer: Apple Inc.
[    4.252267] input: bcm5974 as /devices/pci0000:00/0000:00:1d.0/usb4/4-1/4-1.8/4-1.8.3/4-1.8.3:1.2/input/input1
[    4.253075] usbcore: registered new interface driver bcm5974
[    4.255613] apple 0003:05AC:8242.0002: hiddev0,hidraw1: USB HID v1.11 Device [Apple Computer, Inc. IR Receiver] on usb-0000:00:1d.0-1.8.2/input0
[    4.260339] input: Apple Inc. Apple Internal Keyboard / Trackpad as /devices/pci0000:00/0000:00:1d.0/usb4/4-1/4-1.8/4-1.8.3/4-1.8.3:1.0/input/input2
[    4.261153] apple 0003:05AC:0252.0003: input,hidraw2: USB HID v1.11 Keyboard [Apple Inc. Apple Internal Keyboard / Trackpad] on usb-0000:00:1d.0-1.8.3/input0
[    4.300335] usb 4-1.8.1.1: new full-speed USB device number 7 using ehci_hcd
[    4.377625] usb 4-1.8.1.1: New USB device found, idVendor=05ac, idProduct=820a
[    4.378443] usb 4-1.8.1.1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    4.380465] input: HID 05ac:820a as /devices/pci0000:00/0000:00:1d.0/usb4/4-1/4-1.8/4-1.8.1/4-1.8.1.1/4-1.8.1.1:1.0/input/input3
[    4.381645] generic-usb 0003:05AC:820A.0005: input,hidraw3: USB HID v1.11 Keyboard [HID 05ac:820a] on usb-0000:00:1d.0-1.8.1.1/input0
[    4.396301] NET: Registered protocol family 10
[    4.401572] loop: module loaded
[    4.420298] ACPI: Requesting acpi_cpufreq
[    4.423068] Monitor-Mwait will be used to enter C-1 state
[    4.423082] Monitor-Mwait will be used to enter C-2 state
[    4.423092] Monitor-Mwait will be used to enter C-3 state
[    4.423103] ACPI: acpi_idle registered with cpuidle
[    4.439078] EFI Variables Facility v0.08 2004-May-17
[    4.443981] usb 4-1.8.1.2: new full-speed USB device number 8 using ehci_hcd
[    4.533253] usb 4-1.8.1.2: New USB device found, idVendor=05ac, idProduct=820b
[    4.534099] usb 4-1.8.1.2: New USB device strings: Mfr=0, Product=0, SerialNumber=0
[    4.536586] input: HID 05ac:820b as /devices/pci0000:00/0000:00:1d.0/usb4/4-1/4-1.8/4-1.8.1/4-1.8.1.2/4-1.8.1.2:1.0/input/input4
[    4.537873] generic-usb 0003:05AC:820B.0006: input,hidraw4: USB HID v1.11 Mouse [HID 05ac:820b] on usb-0000:00:1d.0-1.8.1.2/input0
[    4.575679] apple 0003:05AC:0252.0004: hidraw5: USB HID v1.11 Device [Apple Inc. Apple Internal Keyboard / Trackpad] on usb-0000:00:1d.0-1.8.3/input1
[    4.595655] input: Lid Switch as /devices/LNXSYSTM:00/device:00/PNP0C0D:00/input/input5
[    4.596479] ACPI: Lid Switch [LID0]
[    4.596526] input: Power Button as /devices/LNXSYSTM:00/device:00/PNP0C0C:00/input/input6
[    4.596555] ACPI: Power Button [PWRB]
[    4.596593] input: Sleep Button as /devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/input7
[    4.596618] ACPI: Sleep Button [SLPB]
[    4.596656] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input8
[    4.596677] ACPI: Power Button [PWRF]
[    4.600550] usb 4-1.8.1.3: new full-speed USB device number 9 using ehci_hcd
[    4.600771] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    4.600802] sr 1:0:0:0: Attached scsi generic sg1 type 5
[    4.608790] input: PC Speaker as /devices/platform/pcspkr/input/input9
[    4.608797] microcode: CPU0 sig=0x306a9, pf=0x10, revision=0x12
[    4.609340] Linux agpgart interface v0.103
[    4.613803] mei: module is from the staging directory, the quality is unknown, you have been warned.
[    4.614133] mei 0000:00:16.0: setting latency timer to 64
[    4.614214] mei 0000:00:16.0: irq 47 for MSI/MSI-X
[    4.614486] sdhci: Secure Digital Host Controller Interface driver
[    4.614487] sdhci: Copyright(c) Pierre Ossman
[    4.615464] sdhci-pci 0000:01:00.1: SDHCI controller found [14e4:16bc] (rev 10)
[    4.615511] sdhci-pci 0000:01:00.1: Invalid iomem size. You may experience problems.
[    4.615616] mmc0: no vmmc regulator found
[    4.615644] Registered led device: mmc0::
[    4.617365] mmc0: SDHCI controller on PCI [0000:01:00.1] using ADMA
[    4.618040] iTCO_wdt: Intel TCO WatchDog Timer Driver v1.07
[    4.618114] iTCO_wdt: unable to reset NO_REBOOT flag, device disabled by hardware/BIOS
[    4.623281] snd_hda_intel 0000:00:1b.0: enabling device (0000 ->  0002)
[    4.623362] snd_hda_intel 0000:00:1b.0: irq 48 for MSI/MSI-X
[    4.625557] ACPI: AC Adapter [ADP1] (on-line)
[    4.630517] tg3.c:v3.123 (March 21, 2012)
[    4.638031] tg3 0000:01:00.0: eth0: Tigon3 [partno(BCM957765) rev 57785100] (PCI Express) MAC address 40:6c:8f:50:ef:78
[    4.638034] tg3 0000:01:00.0: eth0: attached PHY is 57765 (10/100/1000Base-T Ethernet) (WireSpeed[1], EEE[1])
[    4.638037] tg3 0000:01:00.0: eth0: RXcsums[1] LinkChgREG[0] MIirq[0] ASF[0] TSOcap[1]
[    4.638039] tg3 0000:01:00.0: eth0: dma_rwctrl[00000001] dma_mask[64-bit]
[    4.644368] apple_gmux: gmux device not present
[    4.652730] applesmc: : read arg fail
[    4.700678] microcode: CPU1 sig=0x306a9, pf=0x10, revision=0x12
[    4.701238] usb 4-1.8.1.3: New USB device found, idVendor=05ac, idProduct=821d
[    4.701339] usb 4-1.8.1.3: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    4.701341] microcode: CPU2 sig=0x306a9, pf=0x10, revision=0x12
[    4.701346] usb 4-1.8.1.3: Product: Bluetooth USB Host Controller
[    4.701348] usb 4-1.8.1.3: Manufacturer: Apple Inc.
[    4.701968] microcode: CPU3 sig=0x306a9, pf=0x10, revision=0x12
[    4.702767] microcode: Microcode Update Driver: v2.00<tigran@aivazian.fsnet.co.uk>, Peter Oruba
[    4.705900] rtc_cmos 00:06: RTC can wake from S4
[    4.706113] rtc_cmos 00:06: rtc core: registered rtc_cmos as rtc0
[    4.706152] rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
[    4.751041] applesmc: LSSB: read arg fail
[    4.779891] ACPI: Battery Slot [BAT0] (battery present)
[    4.817920] Linux video capture interface: v2.00
[    4.824612] uvcvideo: Found UVC 1.00 device FaceTime HD Camera (Built-in) (05ac:8509)
[    4.833277] input: FaceTime HD Camera (Built-in) as /devices/pci0000:00/0000:00:1a.0/usb3/3-1/3-1.1/3-1.1:1.0/input/input10
[    4.833492] usbcore: registered new interface driver uvcvideo
[    4.833494] USB Video Class driver (1.1.1)
[    4.843487] applesmc: : read arg fail
[    4.927336] applesmc: : read arg fail
[    5.011211] applesmc: : read arg fail
[    5.095051] applesmc: : read arg fail
[    5.175188] agpgart-intel 0000:00:00.0: Intel Ivybridge Chipset
[    5.175662] agpgart-intel 0000:00:00.0: detected gtt size: 2097152K total, 262144K mappable
[    5.178676] agpgart-intel 0000:00:00.0: detected 65536K stolen memory
[    5.178837] applesmc: : read arg fail
[    5.179277] agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0x90000000
[    5.179312] i801_smbus 0000:00:1f.3: enabling device (0000 ->  0003)
[    5.179328] ACPI Warning: 0x000000000000efa0-0x000000000000efbf SystemIO conflicts with Region \_SB_.PCI0.SBUS.SMBI 1 (20120320/utaddress-251)
[    5.179341] ACPI: If an ACPI driver is available for this device, you should use it instead of the native driver
[    5.244791] [drm] Initialized drm 1.1.0 20060810
[    5.255165] i915 0000:00:02.0: setting latency timer to 64
[    5.262531] applesmc: : read arg fail
[    5.346370] applesmc: : read arg fail
[    5.348586] i915 0000:00:02.0: irq 49 for MSI/MSI-X
[    5.348596] [drm] Supports vblank timestamp caching Rev 1 (10.10.2010).
[    5.348597] [drm] Driver supports precise vblank timestamp query.
[    5.348636] [drm:intel_dsm_platform_mux_info] *ERROR* MUX INFO call failed
[    5.348863] vgaarb: device changed decodes: PCI:0000:00:02.0,olddecodes=io+mem,decodes=io+mem:owns=io+mem
[    5.430298] applesmc: : read arg fail
[    5.440530] irq 17: nobody cared (try booting with the "irqpoll" option)
[    5.440537] Pid: 0, comm: swapper/2 Tainted: G         C   3.4.4 #1
[    5.440540] Call Trace:
[    5.440543]<IRQ>   [<ffffffff810c18dd>] __report_bad_irq+0x3d/0xe0
[    5.440555]  [<ffffffff810c1b8c>] note_interrupt+0x15c/0x210
[    5.440561]  [<ffffffff810bf5ba>] handle_irq_event_percpu+0xba/0x240
[    5.440566]  [<ffffffff810bf781>] handle_irq_event+0x41/0x70
[    5.440571]  [<ffffffff810c26b9>] handle_fasteoi_irq+0x59/0x100
[    5.440577]  [<ffffffff810156a2>] handle_irq+0x22/0x40
[    5.440582]  [<ffffffff813d2eea>] do_IRQ+0x5a/0xe0
[    5.440587]  [<ffffffff813d096a>] common_interrupt+0x6a/0x6a
[    5.440589]<EOI>   [<ffffffffa04e54ff>] ? arch_local_irq_enable+0x8/0xd [processor]
[    5.440618]  [<ffffffffa04e6351>] acpi_idle_enter_c1+0x95/0xbf [processor]
[    5.440626]  [<ffffffff812f7cf9>] cpuidle_enter+0x19/0x20
[    5.440631]  [<ffffffff812f832c>] cpuidle_idle_call+0xbc/0x2c0
[    5.440637]  [<ffffffff8101d4b5>] cpu_idle+0x85/0xe0
[    5.440644]  [<ffffffff813c2c09>] start_secondary+0x1af/0x1b3
[    5.440647] handlers:
[    5.440652] [<ffffffffa00be860>] sdhci_irq
[    5.440655] Disabling IRQ #17
[    5.514808] applesmc: : read arg fail
[    5.598623] applesmc: : read arg fail
[    5.682390] applesmc: : read arg fail
[    5.696234] [drm] Enabling RC6 states: RC6 on, RC6p on, RC6pp off
[    5.766192] applesmc: : read arg fail
[    5.848780] checking generic (90000000 3e8000) vs hw (90000000 10000000)
[    5.848786] fb: conflicting fb hw usage inteldrmfb vs EFI VGA - removing generic driver
[    5.848829] Console: switching to colour dummy device 80x25
[    5.849948] applesmc: : read arg fail
[    5.850300] fbcon: inteldrmfb (fb0) is primary device
[    5.933748] applesmc: : read arg fail
[    6.008953] Console: switching to colour frame buffer device 160x50
[    6.013538] fb0: inteldrmfb frame buffer device
[    6.013541] drm: registered panic notifier
[    6.017545] applesmc: : read arg fail
[    6.020395] acpi device:0e: registered as cooling_device4
[    6.020973] input: Video Bus as /devices/LNXSYSTM:00/device:00/PNP0A08:00/LNXVIDEO:00/input/input11
[    6.021114] ACPI: Video Device [IGPU] (multi-head: yes  rom: no  post: no)
[    6.021184] [drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on minor 0
[    6.101360] applesmc: : read arg fail
[    6.185151] applesmc: : read arg fail
[    6.268935] applesmc: : read arg fail
[    6.352723] applesmc: : read arg fail
[    6.436507] applesmc: : read arg fail
[    6.520294] applesmc: : read arg fail
[    6.604053] applesmc: : read arg fail
[    6.687863] applesmc: : read arg fail
[    6.771669] applesmc: : read arg fail
[    6.855436] applesmc: : read arg fail
[    6.939215] applesmc: : read arg fail
[    7.023006] applesmc: : read arg fail
[    7.106789] applesmc: : read arg fail
[    7.190572] applesmc: : read arg fail
[    7.274358] applesmc: : read arg fail
[    7.358144] applesmc: : read arg fail
[    7.441860] applesmc: : read arg fail
[    7.525714] applesmc: : read arg fail
[    7.609500] applesmc: : read arg fail
[    7.693229] applesmc: : read arg fail
[    7.777069] applesmc: : read arg fail
[    7.860802] applesmc: : read arg fail
[    7.944642] applesmc: : read arg fail
[    8.028371] applesmc: : read arg fail
[    8.112156] applesmc: : read arg fail
[    8.195995] applesmc: : read arg fail
[    8.279727] applesmc: : read arg fail
[    8.363562] applesmc: : read arg fail
[    8.447295] applesmc: : read arg fail
[    8.531067] applesmc: : read arg fail
[    8.614853] applesmc: : read arg fail
[    8.698639] applesmc: : read arg fail
[    8.782424] applesmc: : read arg fail
[    8.866287] applesmc: : read arg fail
[    8.949989] applesmc: : read arg fail
[    9.033778] applesmc: : read arg fail
[    9.117563] applesmc: : read arg fail
[    9.201348] applesmc: : read arg fail
[    9.285133] applesmc: : read arg fail
[    9.368903] applesmc: : read arg fail
[    9.452774] applesmc: : read arg fail
[    9.536488] applesmc: : read arg fail
[    9.620341] applesmc: : read arg fail
[    9.704058] applesmc: : read arg fail
[    9.787911] applesmc: : read arg fail
[    9.871689] applesmc: : read arg fail
[    9.955416] applesmc: : read arg fail
[   10.039265] applesmc: : read arg fail
[   10.123051] applesmc: : read arg fail
[   10.206836] applesmc: : read arg fail
[   10.290619] applesmc: : read arg fail
[   10.374405] applesmc: : read arg fail
[   10.458139] applesmc: : read arg fail
[   10.541973] applesmc: : read arg fail
[   10.625761] applesmc: : read arg fail
[   10.709546] applesmc: : read arg fail
[   10.793333] applesmc: : read arg fail
[   10.877104] applesmc: : read arg fail
[   10.960846] applesmc: : read arg fail
[   11.044687] applesmc: : read arg fail
[   11.128472] applesmc: : read arg fail
[   11.212261] applesmc: : read arg fail
[   11.296043] applesmc: : read arg fail
[   11.379770] applesmc: : read arg fail
[   11.463559] applesmc: : read arg fail
[   11.547329] applesmc: : read arg fail
[   11.631186] applesmc: : read arg fail
[   11.714897] applesmc: : read arg fail
[   11.798755] applesmc: : read arg fail
[   11.882533] applesmc: : read arg fail
[   11.966323] applesmc: : read arg fail
[   12.050109] applesmc: : read arg fail
[   12.133895] applesmc: : read arg fail
[   12.217678] applesmc: : read arg fail
[   12.301462] applesmc: : read arg fail
[   12.385248] applesmc: : read arg fail
[   12.469033] applesmc: : read arg fail
[   12.552750] applesmc: : read arg fail
[   12.636604] applesmc: : read arg fail
[   12.720320] applesmc: : read arg fail
[   12.804173] applesmc: : read arg fail
[   12.887892] applesmc: : read arg fail
[   12.971688] applesmc: : read arg fail
[   13.021814] applesmc: probe of applesmc.768 failed with error -5
[   13.055495] applesmc: : read arg fail
[   13.139262] applesmc: : read arg fail
[   13.223098] applesmc: : read arg fail
[   13.306829] applesmc: : read arg fail
[   13.392170] applesmc: : read arg fail
[   13.476444] applesmc: : read arg fail
[   13.560233] applesmc: : read arg fail
[   13.644020] applesmc: : read arg fail
[   13.727802] applesmc: : read arg fail
[   13.811590] applesmc: : read arg fail
[   13.895309] applesmc: : read arg fail
[   13.979091] applesmc: : read arg fail
[   14.062943] applesmc: : read arg fail
[   14.146663] applesmc: : read arg fail
[   14.230512] applesmc: : read arg fail
[   14.314359] applesmc: : read arg fail
[   14.398081] applesmc: : read arg fail
[   14.481804] applesmc: : read arg fail
[   14.565655] applesmc: : read arg fail
[   14.649389] applesmc: : read arg fail
[   14.733223] applesmc: : read arg fail
[   14.816945] applesmc: : read arg fail
[   14.900797] applesmc: : read arg fail
[   14.984513] applesmc: : read arg fail
[   15.068365] applesmc: : read arg fail
[   15.152084] applesmc: : read arg fail
[   15.235935] applesmc: : read arg fail
[   15.319718] applesmc: : read arg fail
[   15.403504] applesmc: : read arg fail
[   15.487234] applesmc: : read arg fail
[   15.571078] applesmc: : read arg fail
[   15.654856] applesmc: : read arg fail
[   15.738591] applesmc: : read arg fail
[   15.822429] applesmc: : read arg fail
[   15.906215] applesmc: : read arg fail
[   15.989997] applesmc: : read arg fail
[   16.073696] applesmc: : read arg fail
[   16.157572] applesmc: : read arg fail
[   16.241289] applesmc: : read arg fail
[   16.325139] applesmc: : read arg fail
[   16.408858] applesmc: : read arg fail
[   16.492642] applesmc: : read arg fail
[   16.576429] applesmc: : read arg fail
[   16.660213] applesmc: : read arg fail
[   16.744013] applesmc: : read arg fail
[   16.827784] applesmc: : read arg fail
[   16.911567] applesmc: : read arg fail
[   16.995353] applesmc: : read arg fail
[   17.079207] applesmc: : read arg fail
[   17.162923] applesmc: : read arg fail
[   17.246763] applesmc: : read arg fail
[   17.330495] applesmc: : read arg fail
[   17.414291] applesmc: : read arg fail
[   17.498063] applesmc: : read arg fail
[   17.581920] applesmc: : read arg fail
[   17.665634] applesmc: : read arg fail
[   17.749487] applesmc: : read arg fail
[   17.833268] applesmc: : read arg fail
[   17.917059] applesmc: : read arg fail
[   18.000789] applesmc: : read arg fail
[   18.084559] applesmc: : read arg fail
[   18.168411] applesmc: : read arg fail
[   18.252128] applesmc: : read arg fail
[   18.335982] applesmc: : read arg fail
[   18.419701] applesmc: : read arg fail
[   18.503552] applesmc: : read arg fail
[   18.587271] applesmc: : read arg fail
[   18.671121] applesmc: : read arg fail
[   18.754839] applesmc: : read arg fail
[   18.838692] applesmc: : read arg fail
[   18.922410] applesmc: : read arg fail
[   19.006192] applesmc: : read arg fail
[   19.089982] applesmc: : read arg fail
[   19.173765] applesmc: : read arg fail
[   19.257547] applesmc: : read arg fail
[   19.341322] applesmc: : read arg fail
[   19.425318] applesmc: : read arg fail
[   19.508904] applesmc: : read arg fail
[   19.592746] applesmc: : read arg fail
[   19.676540] applesmc: : read arg fail
[   19.760330] applesmc: : read arg fail
[   19.844082] applesmc: : read arg fail
[   19.927844] applesmc: : read arg fail
[   20.011685] applesmc: : read arg fail
[   20.095470] applesmc: : read arg fail
[   20.179255] applesmc: : read arg fail
[   20.263038] applesmc: : read arg fail
[   20.346815] applesmc: : read arg fail
[   20.430608] applesmc: : read arg fail
[   20.514396] applesmc: : read arg fail
[   20.598181] applesmc: : read arg fail
[   20.681909] applesmc: : read arg fail
[   20.765694] applesmc: : read arg fail
[   20.849479] applesmc: : read arg fail
[   20.933322] applesmc: : read arg fail
[   21.017050] applesmc: : read arg fail
[   21.100893] applesmc: : read arg fail
[   21.184620] applesmc: : read arg fail
[   21.268455] applesmc: : read arg fail
[   21.352247] applesmc: : read arg fail
[   21.402438] applesmc: driver init failed (ret=-5)!
[   21.446308] applesmc: : read arg fail
[   21.530789] applesmc: : read arg fail
[   21.614570] applesmc: : read arg fail
[   21.698357] applesmc: : read arg fail
[   21.782140] applesmc: : read arg fail
[   21.865924] applesmc: : read arg fail
[   21.949643] applesmc: : read arg fail
[   22.033467] applesmc: : read arg fail
[   22.117280] applesmc: : read arg fail
[   22.201066] applesmc: : read arg fail
[   22.284784] applesmc: : read arg fail
[   22.368764] applesmc: : read arg fail
[   22.452354] applesmc: : read arg fail
[   22.536205] applesmc: : read arg fail
[   22.619994] applesmc: : read arg fail
[   22.703775] applesmc: : read arg fail
[   22.787494] applesmc: : read arg fail
[   22.871345] applesmc: : read arg fail
[   22.955069] applesmc: : read arg fail
[   23.038916] applesmc: : read arg fail
[   23.122703] applesmc: : read arg fail
[   23.206487] applesmc: : read arg fail
[   23.290272] applesmc: : read arg fail
[   23.374056] applesmc: : read arg fail
[   23.457841] applesmc: : read arg fail
[   23.541628] applesmc: : read arg fail
[   23.625415] applesmc: : read arg fail
[   23.709196] applesmc: : read arg fail
[   23.792915] applesmc: : read arg fail
[   23.876765] applesmc: : read arg fail
[   23.960502] applesmc: : read arg fail
[   24.044338] applesmc: : read arg fail
[   24.128128] applesmc: : read arg fail
[   24.211908] applesmc: : read arg fail
[   24.295694] applesmc: : read arg fail
[   24.379479] applesmc: : read arg fail
[   24.463262] applesmc: : read arg fail
[   24.547048] applesmc: : read arg fail
[   24.630833] applesmc: : read arg fail
[   24.714617] applesmc: : read arg fail
[   24.798404] applesmc: : read arg fail
[   24.882193] applesmc: : read arg fail
[   24.965971] applesmc: : read arg fail
[   25.049759] applesmc: : read arg fail
[   25.133546] applesmc: : read arg fail
[   25.217331] applesmc: : read arg fail
[   25.301116] applesmc: : read arg fail
[   25.384831] applesmc: : read arg fail
[   25.468681] applesmc: : read arg fail
[   25.552599] applesmc: : read arg fail
[   25.636198] applesmc: : read arg fail
[   25.720039] applesmc: : read arg fail
[   25.803771] applesmc: : read arg fail
[   25.887609] applesmc: : read arg fail
[   25.971340] applesmc: : read arg fail
[   26.055178] applesmc: : read arg fail
[   26.138958] applesmc: : read arg fail
[   26.222876] applesmc: : read arg fail
[   26.306533] applesmc: : read arg fail
[   26.390318] applesmc: : read arg fail
[   26.474105] applesmc: : read arg fail
[   26.557953] applesmc: : read arg fail
[   26.641621] applesmc: : read arg fail
[   26.725392] applesmc: : read arg fail
[   26.809191] applesmc: : read arg fail
[   26.892961] applesmc: : read arg fail
[   26.976761] applesmc: : read arg fail
[   27.060533] applesmc: : read arg fail
[   27.144331] applesmc: : read arg fail
[   27.228099] applesmc: : read arg fail
[   27.311901] applesmc: : read arg fail
[   27.395669] applesmc: : read arg fail
[   27.479472] applesmc: : read arg fail
[   27.563243] applesmc: : read arg fail
[   27.647096] applesmc: : read arg fail
[   27.730813] applesmc: : read arg fail
[   27.814668] applesmc: : read arg fail
[   27.898451] applesmc: : read arg fail
[   27.982168] applesmc: : read arg fail
[   28.066018] applesmc: : read arg fail
[   28.149739] applesmc: : read arg fail
[   28.233590] applesmc: : read arg fail
[   28.317350] applesmc: : read arg fail
[   28.401158] applesmc: : read arg fail
[   28.484950] applesmc: : read arg fail
[   28.568663] applesmc: : read arg fail
[   28.652515] applesmc: : read arg fail
[   28.736235] applesmc: : read arg fail
[   28.820086] applesmc: : read arg fail
[   28.903806] applesmc: : read arg fail
[   28.987655] applesmc: : read arg fail
[   29.071443] applesmc: : read arg fail
[   29.155227] applesmc: : read arg fail
[   29.239011] applesmc: : read arg fail
[   29.322772] applesmc: : read arg fail
[   29.406528] applesmc: : read arg fail
[   29.490366] applesmc: : read arg fail
[   29.574151] applesmc: : read arg fail
[   29.657936] applesmc: : read arg fail
[   29.741722] applesmc: : read arg fail
[   29.791808] applesmc: probe of applesmc.768 failed with error -5
[   29.825483] applesmc: : read arg fail
[   29.909294] applesmc: : read arg fail
[   29.993075] applesmc: : read arg fail
[   30.076865] applesmc: : read arg fail
[   30.160649] applesmc: : read arg fail
[   30.244435] applesmc: : read arg fail
[   30.328217] applesmc: : read arg fail
[   30.411996] applesmc: : read arg fail
[   30.495787] applesmc: : read arg fail
[   30.579552] applesmc: : read arg fail
[   30.663302] applesmc: : read arg fail
[   30.747141] applesmc: : read arg fail
[   30.830874] applesmc: : read arg fail
[   30.914712] applesmc: : read arg fail
[   30.998444] applesmc: : read arg fail
[   31.082282] applesmc: : read arg fail
[   31.166014] applesmc: : read arg fail
[   31.249852] applesmc: : read arg fail
[   31.333638] applesmc: : read arg fail
[   31.417423] applesmc: : read arg fail
[   31.501208] applesmc: : read arg fail
[   31.584995] applesmc: : read arg fail
[   31.668778] applesmc: : read arg fail
[   31.752560] applesmc: : read arg fail
[   31.836345] applesmc: : read arg fail
[   31.920078] applesmc: : read arg fail
[   32.003850] applesmc: : read arg fail
[   32.087704] applesmc: : read arg fail
[   32.171420] applesmc: : read arg fail
[   32.255270] applesmc: : read arg fail
[   32.338988] applesmc: : read arg fail
[   32.422843] applesmc: : read arg fail
[   32.506605] applesmc: : read arg fail
[   32.590410] applesmc: : read arg fail
[   32.674198] applesmc: : read arg fail
[   32.757919] applesmc: : read arg fail
[   32.841716] applesmc: : read arg fail
[   32.925487] applesmc: : read arg fail
[   33.009285] applesmc: : read arg fail
[   33.093124] applesmc: : read arg fail
[   33.176855] applesmc: : read arg fail
[   33.260698] applesmc: : read arg fail
[   33.344424] applesmc: : read arg fail
[   33.428265] applesmc: : read arg fail
[   33.511994] applesmc: : read arg fail
[   33.595969] applesmc: : read arg fail
[   33.679552] applesmc: : read arg fail
[   33.763387] applesmc: : read arg fail
[   33.847122] applesmc: : read arg fail
[   33.931105] applesmc: : read arg fail
[   34.014893] applesmc: : read arg fail
[   34.098677] applesmc: : read arg fail
[   34.182460] applesmc: : read arg fail
[   34.266245] applesmc: : read arg fail
[   34.350029] applesmc: : read arg fail
[   34.433815] applesmc: : read arg fail
[   34.517398] applesmc: : read arg fail
[   34.601383] applesmc: : read arg fail
[   34.684975] applesmc: : read arg fail
[   34.768953] applesmc: : read arg fail
[   34.852545] applesmc: : read arg fail
[   34.936457] applesmc: : read arg fail
[   35.020114] applesmc: : read arg fail
[   35.103899] applesmc: : read arg fail
[   35.187879] applesmc: : read arg fail
[   35.271666] applesmc: : read arg fail
[   35.355265] applesmc: : read arg fail
[   35.439235] applesmc: : read arg fail
[   35.523022] applesmc: : read arg fail
[   35.606620] applesmc: : read arg fail
[   35.690590] applesmc: : read arg fail
[   35.774368] applesmc: : read arg fail
[   35.858162] applesmc: : read arg fail
[   35.941944] applesmc: : read arg fail
[   36.025727] applesmc: : read arg fail
[   36.109513] applesmc: : read arg fail
[   36.193301] applesmc: : read arg fail
[   36.277086] applesmc: : read arg fail
[   36.360871] applesmc: : read arg fail
[   36.444459] applesmc: : read arg fail
[   36.528440] applesmc: : read arg fail
[   36.612029] applesmc: : read arg fail
[   36.696008] applesmc: : read arg fail
[   36.779798] applesmc: : read arg fail
[   36.866723] applesmc: CLKC: read arg fail
[   36.951355] applesmc: : read arg fail
[   37.034943] applesmc: : read arg fail
[   37.118926] applesmc: : read arg fail
[   37.202516] applesmc: : read arg fail
[   37.286498] applesmc: : read arg fail
[   37.370084] applesmc: : read arg fail
[   37.453884] applesmc: : read arg fail
[   37.537654] applesmc: : read arg fail
[   37.621640] applesmc: : read arg fail
[   37.705226] applesmc: : read arg fail
[   37.789207] applesmc: : read arg fail
[   37.872993] applesmc: : read arg fail
[   37.956777] applesmc: : read arg fail
[   38.040563] applesmc: : read arg fail
[   38.124348] applesmc: : read arg fail
[   38.174426] applesmc: driver init failed (ret=-5)!
[   38.256712] tg3 0000:01:00.0: irq 50 for MSI/MSI-X
[   38.256716] tg3 0000:01:00.0: irq 51 for MSI/MSI-X
[   38.256719] tg3 0000:01:00.0: irq 52 for MSI/MSI-X
[   38.256722] tg3 0000:01:00.0: irq 53 for MSI/MSI-X
[   38.256725] tg3 0000:01:00.0: irq 54 for MSI/MSI-X
[   38.551847] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   42.092285] tg3 0000:01:00.0: eth0: Link is up at 1000 Mbps, full duplex
[   42.092291] tg3 0000:01:00.0: eth0: Flow control is on for TX and on for RX
[   42.092295] tg3 0000:01:00.0: eth0: EEE is disabled
[   42.093286] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   42.137049] NET: Registered protocol family 17
[   44.207094] tg3 0000:01:00.0: irq 50 for MSI/MSI-X
[   44.207105] tg3 0000:01:00.0: irq 51 for MSI/MSI-X
[   44.207113] tg3 0000:01:00.0: irq 52 for MSI/MSI-X
[   44.207121] tg3 0000:01:00.0: irq 53 for MSI/MSI-X
[   44.207129] tg3 0000:01:00.0: irq 54 for MSI/MSI-X
[   44.502560] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   44.941128] tg3 0000:01:00.0: irq 50 for MSI/MSI-X
[   44.941144] tg3 0000:01:00.0: irq 51 for MSI/MSI-X
[   44.941157] tg3 0000:01:00.0: irq 52 for MSI/MSI-X
[   44.941168] tg3 0000:01:00.0: irq 53 for MSI/MSI-X
[   44.941180] tg3 0000:01:00.0: irq 54 for MSI/MSI-X
[   45.236617] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   46.194649] dhcpcd[2129]: segfault at 2a74656e6e ip 00007f9dd67562d9 sp 00007fff69aebd30 error 4 in libc-2.13.so[7f9dd66df000+182000]
[   46.195083] init: dhcpcd main process (2129) killed by SEGV signal
[   46.195157] init: dhcpcd main process ended, respawning
[   48.070897] tg3 0000:01:00.0: eth0: Link is up at 1000 Mbps, full duplex
[   48.070904] tg3 0000:01:00.0: eth0: Flow control is on for TX and on for RX
[   48.070908] tg3 0000:01:00.0: eth0: EEE is disabled
[   48.071891] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   51.181198] tg3 0000:01:00.0: irq 50 for MSI/MSI-X
[   51.181210] tg3 0000:01:00.0: irq 51 for MSI/MSI-X
[   51.181218] tg3 0000:01:00.0: irq 52 for MSI/MSI-X
[   51.181226] tg3 0000:01:00.0: irq 53 for MSI/MSI-X
[   51.181234] tg3 0000:01:00.0: irq 54 for MSI/MSI-X
[   51.477323] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   54.742386] tg3 0000:01:00.0: eth0: Link is up at 1000 Mbps, full duplex
[   54.742393] tg3 0000:01:00.0: eth0: Flow control is on for TX and on for RX
[   54.742397] tg3 0000:01:00.0: eth0: EEE is disabled
[   54.743379] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   56.093862] dhcpcd[2397]: segfault at 2a74656e6e ip 00007fa7514f42d9 sp 00007fffd4e35c60 error 4 in libc-2.13.so[7fa75147d000+182000]
[   56.101520] init: dhcpcd main process (2397) killed by SEGV signal
[   56.101586] init: dhcpcd main process ended, respawning
[   65.143105] eth0: no IPv6 routers present
[  148.788304] cfg80211: Calling CRDA to update world regulatory domain
[  148.806775] Broadcom 43xx driver loaded [ Features: PML ]
[  880.637222] Broadcom 43xx driver loaded [ Features: PML ]
