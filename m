From: Charles Reese <charlespreese@gmail.com>
Date: Sat, 28 Jul 2012 09:49:29 -0700
Subject: Help with Broadocm 4322 Wireless
Message-ID: <CAA_94OTBy6xXNiQtdP1A3-R2pRt+yXb0RMm7RNjL4OOFHE-7JQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I have a Macbook5,1 (Late 2008, Unibody) with Broadcom BCM 4322
(14e4:432b). I'm trying to get the wireless up.


Steps to reproduce:

Get the latest iso from http://www.archlinux.org/download/ .
Boot from the CD.
At the prompt, type
ip link set dev eth0 up
dhcpcd eth0
pacman -Syy
pacman -S base-devel
choose option 3
wget https://aur.archlinux.org/packages/b4/b43-firmware/PKGBUILD
makepkg --asroot
cd /usr/lib/firmware
ln -s /root/pkg/usr/lib/firmware/b43
rmmod b43


At this point, I get a bunch of lines to stderr. It's the output of
dmesg, starting with

[  391.239096] BUG: unable to handle kernel NULL pointer dereference
at 0000000000000098


uname -a

Linux archiso 3.4.5-1-ARCH #1 SMP PREEMPT Mon Jul 16 21:35:54 CEST
2012 x86_64 GNU/Linux


lspci -vvn | grep 43 -A7

03:00.0 0280: 14e4:432b (rev 01)
	Subsystem: 106b:008d
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 256 bytes
	Interrupt: pin A routed to IRQ 23
	Region 0: Memory at d3100000 (64-bit, non-prefetchable) [size=16K]
	Capabilities: [40] Power Management version 3
--
	Kernel driver in use: b43-pci-bridge


ls -al /usr/lib/firmware/b43

total 1060
drwxr-x--- 2 root root  4096 Jul 24 02:21 .
drwxr-xr-x 3 root root  4096 Jul 24 02:21 ..
-rw-r--r-- 1 root root   178 Jul 24 02:21 a0g0bsinitvals5.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 a0g0bsinitvals9.fw
-rw-r--r-- 1 root root  1836 Jul 24 02:21 a0g0initvals5.fw
-rw-r--r-- 1 root root  1992 Jul 24 02:21 a0g0initvals9.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 a0g1bsinitvals13.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 a0g1bsinitvals5.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 a0g1bsinitvals9.fw
-rw-r--r-- 1 root root  2126 Jul 24 02:21 a0g1initvals13.fw
-rw-r--r-- 1 root root  1836 Jul 24 02:21 a0g1initvals5.fw
-rw-r--r-- 1 root root  1992 Jul 24 02:21 a0g1initvals9.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 b0g0bsinitvals13.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 b0g0bsinitvals5.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 b0g0bsinitvals9.fw
-rw-r--r-- 1 root root  2126 Jul 24 02:21 b0g0initvals13.fw
-rw-r--r-- 1 root root  1836 Jul 24 02:21 b0g0initvals5.fw
-rw-r--r-- 1 root root  1992 Jul 24 02:21 b0g0initvals9.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 ht0bsinitvals26.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 ht0bsinitvals29.fw
-rw-r--r-- 1 root root  2678 Jul 24 02:21 ht0initvals26.fw
-rw-r--r-- 1 root root  2720 Jul 24 02:21 ht0initvals29.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lcn0bsinitvals24.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lcn0bsinitvals25.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lcn0bsinitvals26.fw
-rw-r--r-- 1 root root  2976 Jul 24 02:21 lcn0initvals24.fw
-rw-r--r-- 1 root root  2958 Jul 24 02:21 lcn0initvals25.fw
-rw-r--r-- 1 root root  2678 Jul 24 02:21 lcn0initvals26.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lcn1bsinitvals24.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lcn1bsinitvals25.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lcn1bsinitvals26.fw
-rw-r--r-- 1 root root  2976 Jul 24 02:21 lcn1initvals24.fw
-rw-r--r-- 1 root root  2958 Jul 24 02:21 lcn1initvals25.fw
-rw-r--r-- 1 root root  2678 Jul 24 02:21 lcn1initvals26.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lcn2bsinitvals24.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lcn2bsinitvals25.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lcn2bsinitvals26.fw
-rw-r--r-- 1 root root  2976 Jul 24 02:21 lcn2initvals24.fw
-rw-r--r-- 1 root root  2958 Jul 24 02:21 lcn2initvals25.fw
-rw-r--r-- 1 root root  2678 Jul 24 02:21 lcn2initvals26.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lcn400bsinitvals33.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lcn400initvals33.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lp0bsinitvals13.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lp0bsinitvals14.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lp0bsinitvals15.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 lp0bsinitvals16.fw
-rw-r--r-- 1 root root  3664 Jul 24 02:21 lp0initvals13.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lp0initvals14.fw
-rw-r--r-- 1 root root  2598 Jul 24 02:21 lp0initvals15.fw
-rw-r--r-- 1 root root  2738 Jul 24 02:21 lp0initvals16.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lp1bsinitvals20.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lp1bsinitvals22.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lp1initvals20.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lp1initvals22.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lp2bsinitvals19.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 lp2initvals19.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 n0absinitvals11.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 n0bsinitvals11.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 n0bsinitvals16.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 n0bsinitvals17.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 n0bsinitvals22.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 n0bsinitvals24.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 n0bsinitvals25.fw
-rw-r--r-- 1 root root  2152 Jul 24 02:21 n0initvals11.fw
-rw-r--r-- 1 root root  2738 Jul 24 02:21 n0initvals16.fw
-rw-r--r-- 1 root root  2408 Jul 24 02:21 n0initvals17.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 n0initvals22.fw
-rw-r--r-- 1 root root  2976 Jul 24 02:21 n0initvals24.fw
-rw-r--r-- 1 root root  2958 Jul 24 02:21 n0initvals25.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 n16bsinitvals30.fw
-rw-r--r-- 1 root root  2634 Jul 24 02:21 n16initvals30.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 n18bsinitvals32.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 n18initvals32.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 n1bsinitvals20.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 n1initvals20.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 n2bsinitvals19.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 n2initvals19.fw
-rw-r--r-- 1 root root  1320 Jul 24 02:21 pcm5.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 sslpn0bsinitvals16.fw
-rw-r--r-- 1 root root  2738 Jul 24 02:21 sslpn0initvals16.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 sslpn1bsinitvals20.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 sslpn1bsinitvals27.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 sslpn1initvals20.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 sslpn1initvals27.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 sslpn2bsinitvals19.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 sslpn2initvals19.fw
-rw-r--r-- 1 root root   178 Jul 24 02:21 sslpn3bsinitvals21.fw
-rw-r--r-- 1 root root  2552 Jul 24 02:21 sslpn3initvals21.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 sslpn4bsinitvals22.fw
-rw-r--r-- 1 root root     8 Jul 24 02:21 sslpn4initvals22.fw
-rw-r--r-- 1 root root 31176 Jul 24 02:21 ucode11.fw
-rw-r--r-- 1 root root 28216 Jul 24 02:21 ucode13.fw
-rw-r--r-- 1 root root    12 Jul 24 02:21 ucode14.fw
-rw-r--r-- 1 root root 35512 Jul 24 02:21 ucode15.fw
-rw-r--r-- 1 root root 33712 Jul 24 02:21 ucode16_lp.fw
-rw-r--r-- 1 root root 39296 Jul 24 02:21 ucode16_mimo.fw
-rw-r--r-- 1 root root 34448 Jul 24 02:21 ucode16_sslpn.fw
-rw-r--r-- 1 root root 28589 Jul 24 02:21 ucode16_sslpn_nobt.fw
-rw-r--r-- 1 root root 36216 Jul 24 02:21 ucode17_mimo.fw
-rw-r--r-- 1 root root     9 Jul 24 02:21 ucode19_sslpn.fw
-rw-r--r-- 1 root root     9 Jul 24 02:21 ucode19_sslpn_nobt.fw
-rw-r--r-- 1 root root     9 Jul 24 02:21 ucode20_sslpn.fw
-rw-r--r-- 1 root root     9 Jul 24 02:21 ucode20_sslpn_nobt.fw
-rw-r--r-- 1 root root 34735 Jul 24 02:21 ucode21_sslpn.fw
-rw-r--r-- 1 root root 28988 Jul 24 02:21 ucode21_sslpn_nobt.fw
-rw-r--r-- 1 root root    12 Jul 24 02:21 ucode22_mimo.fw
-rw-r--r-- 1 root root     9 Jul 24 02:21 ucode22_sslpn.fw
-rw-r--r-- 1 root root 35267 Jul 24 02:21 ucode24_lcn.fw
-rw-r--r-- 1 root root 39760 Jul 24 02:21 ucode24_mimo.fw
-rw-r--r-- 1 root root 34847 Jul 24 02:21 ucode25_lcn.fw
-rw-r--r-- 1 root root 39128 Jul 24 02:21 ucode25_mimo.fw
-rw-r--r-- 1 root root 39728 Jul 24 02:21 ucode26_mimo.fw
-rw-r--r-- 1 root root     9 Jul 24 02:21 ucode27_sslpn.fw
-rw-r--r-- 1 root root 39760 Jul 24 02:21 ucode29_mimo.fw
-rw-r--r-- 1 root root 39632 Jul 24 02:21 ucode30_mimo.fw
-rw-r--r-- 1 root root    12 Jul 24 02:21 ucode32_mimo.fw
-rw-r--r-- 1 root root     9 Jul 24 02:21 ucode33_lcn40.fw
-rw-r--r-- 1 root root 21328 Jul 24 02:21 ucode5.fw
-rw-r--r-- 1 root root 23256 Jul 24 02:21 ucode9.fw


dmesg

[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Linux version 3.4.5-1-ARCH (tobias@T-POWA-LX) (gcc
version 4.7.1 (GCC) ) #1 SMP PREEMPT Mon Jul 16 21:35:54 CEST 2012
[    0.000000] Command line: archisobasedir=arch
archisolabel=ARCH_201207 initrd=boot/x86_64/archiso.img
BOOT_IMAGE=boot/x86_64/vmlinuz
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009fc00 (usable)
[    0.000000]  BIOS-e820: 000000000009fc00 - 00000000000a0000 (reserved)
[    0.000000]  BIOS-e820: 00000000000e0000 - 0000000000100000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 0000000080000000 (usable)
[    0.000000]  BIOS-e820: 0000000080000000 - 0000000090000000 (reserved)
[    0.000000]  BIOS-e820: 0000000090000000 - 00000000be86e000 (usable)
[    0.000000]  BIOS-e820: 00000000be86e000 - 00000000be870000 (ACPI NVS)
[    0.000000]  BIOS-e820: 00000000be870000 - 00000000be871000 (ACPI data)
[    0.000000]  BIOS-e820: 00000000be871000 - 00000000be873000 (ACPI NVS)
[    0.000000]  BIOS-e820: 00000000be873000 - 00000000be88e000 (ACPI data)
[    0.000000]  BIOS-e820: 00000000be88e000 - 00000000bea8f000 (ACPI NVS)
[    0.000000]  BIOS-e820: 00000000bea8f000 - 00000000bfec6000 (ACPI data)
[    0.000000]  BIOS-e820: 00000000bfec6000 - 00000000bfec8000 (ACPI NVS)
[    0.000000]  BIOS-e820: 00000000bfec8000 - 00000000bfec9000 (ACPI data)
[    0.000000]  BIOS-e820: 00000000bfec9000 - 00000000bfecb000 (ACPI NVS)
[    0.000000]  BIOS-e820: 00000000bfecb000 - 00000000bfecd000 (ACPI data)
[    0.000000]  BIOS-e820: 00000000bfecd000 - 00000000bfedf000 (ACPI NVS)
[    0.000000]  BIOS-e820: 00000000bfedf000 - 00000000bfef9000 (ACPI data)
[    0.000000]  BIOS-e820: 00000000bfef9000 - 00000000bfeff000 (reserved)
[    0.000000]  BIOS-e820: 00000000bfeff000 - 00000000bff00000 (ACPI data)
[    0.000000]  BIOS-e820: 00000000d3300000 - 00000000d3301000 (reserved)
[    0.000000]  BIOS-e820: 00000000f0000000 - 00000000f4000000 (reserved)
[    0.000000]  BIOS-e820: 00000000fec00000 - 00000000fec01000 (reserved)
[    0.000000]  BIOS-e820: 00000000fee00000 - 00000000fee01000 (reserved)
[    0.000000]  BIOS-e820: 00000000ffc00000 - 0000000100000000 (reserved)
[    0.000000]  BIOS-e820: 0000000100000000 - 0000000140000000 (usable)
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] DMI 2.4 present.
[    0.000000] DMI: Apple Inc. MacBook5,1/Mac-F42D89C8, BIOS
MB51.88Z.007D.B03.0904271443 04/27/09
[    0.000000] e820 update range: 0000000000000000 - 0000000000010000
(usable) ==> (reserved)
[    0.000000] e820 remove range: 00000000000a0000 - 0000000000100000 (usable)
[    0.000000] No AGP bridge found
[    0.000000] last_pfn = 0x140000 max_arch_pfn = 0x400000000
[    0.000000] MTRR default type: uncachable
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-FFFFF uncachable
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 disabled
[    0.000000]   1 base 000000000 mask F80000000 write-back
[    0.000000]   2 base 080000000 mask FC0000000 write-back
[    0.000000]   3 base 100000000 mask FC0000000 write-back
[    0.000000]   4 base 0BFF00000 mask FFFF00000 uncachable
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] e820 update range: 00000000bff00000 - 0000000100000000
(usable) ==> (reserved)
[    0.000000] last_pfn = 0xbe86e max_arch_pfn = 0x400000000
[    0.000000] initial memory mapped : 0 - 20000000
[    0.000000] Base memory trampoline at [ffff88000009a000] 9a000 size 20480
[    0.000000] init_memory_mapping: 0000000000000000-00000000be86e000
[    0.000000]  0000000000 - 00be800000 page 2M
[    0.000000]  00be800000 - 00be86e000 page 4k
[    0.000000] kernel direct mapping tables up to be86e000 @ 1fffb000-20000000
[    0.000000] init_memory_mapping: 0000000100000000-0000000140000000
[    0.000000]  0100000000 - 0140000000 page 2M
[    0.000000] kernel direct mapping tables up to 140000000 @ be868000-be86e000
[    0.000000] RAMDISK: 7f194000 - 7ffdf000
[    0.000000] ACPI: RSDP 00000000000fe020 00024 (v02 APPLE )
[    0.000000] ACPI: XSDT 00000000bfeee1c0 00074 (v01 APPLE   Apple00
0000007D      01000013)
[    0.000000] ACPI: FACP 00000000bfeec000 000F4 (v03 APPLE   Apple00
0000007D Loki 0000005F)
[    0.000000] ACPI: DSDT 00000000bfee0000 058CA (v01 APPLE   MacBook
00050001 INTL 20061109)
[    0.000000] ACPI: FACS 00000000bfecd000 00040
[    0.000000] ACPI: HPET 00000000bfeeb000 00038 (v01 APPLE   Apple00
00000001 Loki 0000005F)
[    0.000000] ACPI: APIC 00000000bfeea000 00068 (v01 APPLE   Apple00
00000001 Loki 0000005F)
[    0.000000] ACPI: MCFG 00000000bfee9000 0003C (v01 APPLE   Apple00
00000001 Loki 0000005F)
[    0.000000] ACPI: ASF! 00000000bfee8000 000A5 (v32 APPLE   Apple00
00000001 Loki 0000005F)
[    0.000000] ACPI: SBST 00000000bfee7000 00030 (v01 APPLE   Apple00
00000001 Loki 0000005F)
[    0.000000] ACPI: ECDT 00000000bfee6000 00053 (v01 APPLE   Apple00
00000001 Loki 0000005F)
[    0.000000] ACPI: SSDT 00000000bfec8000 004DC (v01  APPLE    CpuPm
00003000 INTL 20061109)
[    0.000000] ACPI: SSDT 00000000bfedf000 000A5 (v01 SataRe  SataPri
00001000 INTL 20061109)
[    0.000000] ACPI: SSDT 00000000bfecc000 0009F (v01 SataRe  SataSec
00001000 INTL 20061109)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] No NUMA configuration found
[    0.000000] Faking a node at 0000000000000000-0000000140000000
[    0.000000] Initmem setup node 0 0000000000000000-0000000140000000
[    0.000000]   NODE_DATA [000000013fffc000 - 000000013fffffff]
[    0.000000]  [ffffea0000000000-ffffea0004ffffff] PMD ->
[ffff88013ba00000-ffff88013f5fffff] on node 0
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000010 -> 0x00001000
[    0.000000]   DMA32    0x00001000 -> 0x00100000
[    0.000000]   Normal   0x00100000 -> 0x00140000
[    0.000000] Movable zone start PFN for each node
[    0.000000] Early memory PFN ranges
[    0.000000]     0: 0x00000010 -> 0x0000009f
[    0.000000]     0: 0x00000100 -> 0x00080000
[    0.000000]     0: 0x00090000 -> 0x000be86e
[    0.000000]     0: 0x00100000 -> 0x00140000
[    0.000000] On node 0 totalpages: 976893
[    0.000000]   DMA zone: 64 pages used for memmap
[    0.000000]   DMA zone: 5 pages reserved
[    0.000000]   DMA zone: 3914 pages, LIFO batch:0
[    0.000000]   DMA32 zone: 16320 pages used for memmap
[    0.000000]   DMA32 zone: 694446 pages, LIFO batch:31
[    0.000000]   Normal zone: 4096 pages used for memmap
[    0.000000]   Normal zone: 258048 pages, LIFO batch:31
[    0.000000] ACPI: PM-Timer IO Port: 0x408
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x01] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 1, version 17, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ2 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] ACPI: HPET id: 0x10de8201 base: 0xfed00000
[    0.000000] SMP: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] nr_irqs_gsi: 40
[    0.000000] PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000e0000
[    0.000000] PM: Registered nosave memory: 00000000000e0000 - 0000000000100000
[    0.000000] PM: Registered nosave memory: 0000000080000000 - 0000000090000000
[    0.000000] PM: Registered nosave memory: 00000000be86e000 - 00000000be870000
[    0.000000] PM: Registered nosave memory: 00000000be870000 - 00000000be871000
[    0.000000] PM: Registered nosave memory: 00000000be871000 - 00000000be873000
[    0.000000] PM: Registered nosave memory: 00000000be873000 - 00000000be88e000
[    0.000000] PM: Registered nosave memory: 00000000be88e000 - 00000000bea8f000
[    0.000000] PM: Registered nosave memory: 00000000bea8f000 - 00000000bfec6000
[    0.000000] PM: Registered nosave memory: 00000000bfec6000 - 00000000bfec8000
[    0.000000] PM: Registered nosave memory: 00000000bfec8000 - 00000000bfec9000
[    0.000000] PM: Registered nosave memory: 00000000bfec9000 - 00000000bfecb000
[    0.000000] PM: Registered nosave memory: 00000000bfecb000 - 00000000bfecd000
[    0.000000] PM: Registered nosave memory: 00000000bfecd000 - 00000000bfedf000
[    0.000000] PM: Registered nosave memory: 00000000bfedf000 - 00000000bfef9000
[    0.000000] PM: Registered nosave memory: 00000000bfef9000 - 00000000bfeff000
[    0.000000] PM: Registered nosave memory: 00000000bfeff000 - 00000000bff00000
[    0.000000] PM: Registered nosave memory: 00000000bff00000 - 00000000d3300000
[    0.000000] PM: Registered nosave memory: 00000000d3300000 - 00000000d3301000
[    0.000000] PM: Registered nosave memory: 00000000d3301000 - 00000000f0000000
[    0.000000] PM: Registered nosave memory: 00000000f0000000 - 00000000f4000000
[    0.000000] PM: Registered nosave memory: 00000000f4000000 - 00000000fec00000
[    0.000000] PM: Registered nosave memory: 00000000fec00000 - 00000000fec01000
[    0.000000] PM: Registered nosave memory: 00000000fec01000 - 00000000fee00000
[    0.000000] PM: Registered nosave memory: 00000000fee00000 - 00000000fee01000
[    0.000000] PM: Registered nosave memory: 00000000fee01000 - 00000000ffc00000
[    0.000000] PM: Registered nosave memory: 00000000ffc00000 - 0000000100000000
[    0.000000] Allocating PCI resources starting at d3301000 (gap:
d3301000:1ccff000)
[    0.000000] Booting paravirtualized kernel on bare hardware
[    0.000000] setup_percpu: NR_CPUS:64 nr_cpumask_bits:64
nr_cpu_ids:2 nr_node_ids:1
[    0.000000] PERCPU: Embedded 28 pages/cpu @ffff88013fc00000 s82880
r8192 d23616 u1048576
[    0.000000] pcpu-alloc: s82880 r8192 d23616 u1048576 alloc=1*2097152
[    0.000000] pcpu-alloc: [0] 0 1
[    0.000000] Built 1 zonelists in Node order, mobility grouping on.
Total pages: 956408
[    0.000000] Policy zone: Normal
[    0.000000] Kernel command line: archisobasedir=arch
archisolabel=ARCH_201207 initrd=boot/x86_64/archiso.img
BOOT_IMAGE=boot/x86_64/vmlinuz
[    0.000000] PID hash table entries: 4096 (order: 3, 32768 bytes)
[    0.000000] Checking aperture...
[    0.000000] No AGP bridge found
[    0.000000] Calgary: detecting Calgary via BIOS EBDA area
[    0.000000] Calgary: Unable to locate Rio Grande table in EBDA - bailing!
[    0.000000] Memory: 3754016k/5242880k available (4538k kernel code,
1335308k absent, 153556k reserved, 4308k data, 740k init)
[    0.000000] SLUB: Genslabs=15, HWalign=64, Order=0-3, MinObjects=0,
CPUs=2, Nodes=1
[    0.000000] Preemptible hierarchical RCU implementation.
[    0.000000] 	RCU dyntick-idle grace-period acceleration is enabled.
[    0.000000] 	Dump stacks of tasks blocking RCU-preempt GP.
[    0.000000] NR_IRQS:4352 nr_irqs:512 16
[    0.000000] Extended CMOS year: 2000
[    0.000000] spurious 8259A interrupt: IRQ7.
[    0.000000] Console: colour VGA+ 80x25
[    0.000000] console [tty0] enabled
[    0.000000] allocated 15728640 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't
want memory cgroups
[    0.000000] hpet clockevent registered
[    0.000000] Fast TSC calibration using PIT
[    0.000000] Detected 1989.954 MHz processor.
[    0.003338] Calibrating delay loop (skipped), value calculated
using timer frequency.. 3981.73 BogoMIPS (lpj=6633180)
[    0.003344] pid_max: default: 32768 minimum: 301
[    0.003381] Security Framework initialized
[    0.003389] AppArmor: AppArmor disabled by boot time parameter
[    0.003852] Dentry cache hash table entries: 524288 (order: 10,
4194304 bytes)
[    0.007533] Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes)
[    0.008607] Mount-cache hash table entries: 256
[    0.008916] Initializing cgroup subsys cpuacct
[    0.008920] Initializing cgroup subsys memory
[    0.008933] Initializing cgroup subsys devices
[    0.008936] Initializing cgroup subsys freezer
[    0.008938] Initializing cgroup subsys net_cls
[    0.008941] Initializing cgroup subsys blkio
[    0.008985] CPU: Physical Processor ID: 0
[    0.008987] CPU: Processor Core ID: 0
[    0.008991] mce: CPU supports 6 MCE banks
[    0.009002] CPU0: Thermal monitoring enabled (TM2)
[    0.009007] using mwait in idle threads.
[    0.010854] ACPI: Core revision 20120320
[    0.016310] ftrace: allocating 17824 entries in 70 pages
[    0.023863] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.058435] CPU0: Intel(R) Core(TM)2 Duo CPU     P7350  @ 2.00GHz stepping 06
[    0.059996] Performance Events: PEBS fmt0+, 4-deep LBR, Core2
events, Intel PMU driver.
[    0.059996] ... version:                2
[    0.059996] ... bit width:              40
[    0.059996] ... generic registers:      2
[    0.059996] ... value mask:             000000ffffffffff
[    0.059996] ... max period:             000000007fffffff
[    0.059996] ... fixed-purpose events:   3
[    0.059996] ... event mask:             0000000700000003
[    0.076766] NMI watchdog: enabled, takes one hw-pmu counter.
[    0.096678] Booting Node   0, Processors  #1 Ok.
[    0.109834] NMI watchdog: enabled, takes one hw-pmu counter.
[    0.109892] Brought up 2 CPUs
[    0.109895] Total of 2 processors activated (7963.47 BogoMIPS).
[    0.110103] devtmpfs: initialized
[    0.113348] PM: Registering ACPI NVS region [mem
0xbe86e000-0xbe86ffff] (8192 bytes)
[    0.113352] PM: Registering ACPI NVS region [mem
0xbe871000-0xbe872fff] (8192 bytes)
[    0.113355] PM: Registering ACPI NVS region [mem
0xbe88e000-0xbea8efff] (2101248 bytes)
[    0.113399] PM: Registering ACPI NVS region [mem
0xbfec6000-0xbfec7fff] (8192 bytes)
[    0.113402] PM: Registering ACPI NVS region [mem
0xbfec9000-0xbfecafff] (8192 bytes)
[    0.113405] PM: Registering ACPI NVS region [mem
0xbfecd000-0xbfedefff] (73728 bytes)
[    0.113410] Apple MacBook5 series board detected. Selecting
PCI-method for reboots.
[    0.114414] NET: Registered protocol family 16
[    0.114593] ACPI: bus type pci registered
[    0.116690] PCI: MMCONFIG for domain 0000 [bus 00-ff] at [mem
0xf0000000-0xffffffff] (base 0xf0000000)
[    0.116696] PCI: MMCONFIG at [mem 0xf0000000-0xffffffff] reserved in E820
[    0.116700] PCI: MMCONFIG for 0000 [bus00-3f] at [mem
0xf0000000-0xf3ffffff] (base 0xf0000000) (size reduced!)
[    0.145837] PCI: Using configuration type 1 for base access
[    0.146529] bio: create slab <bio-0> at 0
[    0.146711] ACPI: Added _OSI(Module Device)
[    0.146715] ACPI: Added _OSI(Processor Device)
[    0.146717] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.146720] ACPI: Added _OSI(Processor Aggregator Device)
[    0.148508] ACPI: EC: EC description table is found, configuring boot EC
[    0.152116] [Firmware Bug]: ACPI: BIOS _OSI(Linux) query ignored
[    0.152516] ACPI: SSDT 00000000bfecac98 001F6 (v01  APPLE  Cpu0Ist
00003000 INTL 20061109)
[    0.152932] ACPI: Dynamic OEM Table Load:
[    0.152936] ACPI: SSDT           (null) 001F6 (v01  APPLE  Cpu0Ist
00003000 INTL 20061109)
[    0.153068] ACPI: SSDT 00000000bfec9c18 002AD (v01  APPLE  Cpu0Cst
00003001 INTL 20061109)
[    0.153478] ACPI: Dynamic OEM Table Load:
[    0.153482] ACPI: SSDT           (null) 002AD (v01  APPLE  Cpu0Cst
00003001 INTL 20061109)
[    0.153574] ACPI: SSDT 00000000bfecaf18 000C8 (v01  APPLE  Cpu1Ist
00003000 INTL 20061109)
[    0.153981] ACPI: Dynamic OEM Table Load:
[    0.153985] ACPI: SSDT           (null) 000C8 (v01  APPLE  Cpu1Ist
00003000 INTL 20061109)
[    0.154093] ACPI: SSDT 00000000bfec9f18 00085 (v01  APPLE  Cpu1Cst
00003000 INTL 20061109)
[    0.154491] ACPI: Dynamic OEM Table Load:
[    0.154495] ACPI: SSDT           (null) 00085 (v01  APPLE  Cpu1Cst
00003000 INTL 20061109)
[    0.154514] ACPI: Interpreter enabled
[    0.154514] ACPI: (supports S0 S3 S4 S5)
[    0.154514] ACPI: Using IOAPIC for interrupt routing
[    0.166974] ACPI: EC: GPE = 0x3f, I/O: command/status = 0x66, data = 0x62
[    0.167226] ACPI: No dock devices found.
[    0.167231] PCI: Using host bridge windows from ACPI; if necessary,
use "pci=nocrs" and report a bug
[    0.167412] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    0.167521] pci_root PNP0A08:00: host bridge window [io  0x0000-0x0cf7]
[    0.167525] pci_root PNP0A08:00: host bridge window [io  0x0d00-0xffff]
[    0.167528] pci_root PNP0A08:00: host bridge window [mem
0x000a0000-0x000bffff]
[    0.167532] pci_root PNP0A08:00: host bridge window [mem
0x000c0000-0x000c3fff]
[    0.167535] pci_root PNP0A08:00: host bridge window [mem
0x000c4000-0x000c7fff]
[    0.167538] pci_root PNP0A08:00: host bridge window [mem
0x000c8000-0x000cbfff]
[    0.167541] pci_root PNP0A08:00: host bridge window [mem
0x000cc000-0x000cffff]
[    0.167544] pci_root PNP0A08:00: host bridge window [mem
0x000d0000-0x000d3fff]
[    0.167548] pci_root PNP0A08:00: host bridge window [mem
0x000d4000-0x000d7fff]
[    0.167551] pci_root PNP0A08:00: host bridge window [mem
0x000d8000-0x000dbfff]
[    0.167554] pci_root PNP0A08:00: host bridge window [mem
0x000dc000-0x000dffff]
[    0.167557] pci_root PNP0A08:00: host bridge window [mem
0x000e0000-0x000e3fff]
[    0.167560] pci_root PNP0A08:00: host bridge window [mem
0x000e4000-0x000e7fff]
[    0.167564] pci_root PNP0A08:00: host bridge window [mem
0x000e8000-0x000ebfff]
[    0.167567] pci_root PNP0A08:00: host bridge window [mem
0x000ec000-0x000effff]
[    0.167570] pci_root PNP0A08:00: host bridge window [mem
0x000f0000-0x000fffff]
[    0.167574] pci_root PNP0A08:00: host bridge window [mem
0xc0000000-0xfebfffff]
[    0.167583] pci_root PNP0A08:00: ignoring host bridge window [mem
0x000cc000-0x000cffff] (conflicts with Video ROM [mem
0x000c0000-0x000ce3ff])
[    0.167632] PCI host bridge to bus 0000:00
[    0.167636] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7]
[    0.167639] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff]
[    0.167642] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff]
[    0.167645] pci_bus 0000:00: root bus resource [mem 0x000c0000-0x000c3fff]
[    0.167648] pci_bus 0000:00: root bus resource [mem 0x000c4000-0x000c7fff]
[    0.167651] pci_bus 0000:00: root bus resource [mem 0x000c8000-0x000cbfff]
[    0.167654] pci_bus 0000:00: root bus resource [mem 0x000d0000-0x000d3fff]
[    0.167657] pci_bus 0000:00: root bus resource [mem 0x000d4000-0x000d7fff]
[    0.167660] pci_bus 0000:00: root bus resource [mem 0x000d8000-0x000dbfff]
[    0.167663] pci_bus 0000:00: root bus resource [mem 0x000dc000-0x000dffff]
[    0.167666] pci_bus 0000:00: root bus resource [mem 0x000e0000-0x000e3fff]
[    0.167669] pci_bus 0000:00: root bus resource [mem 0x000e4000-0x000e7fff]
[    0.167672] pci_bus 0000:00: root bus resource [mem 0x000e8000-0x000ebfff]
[    0.167675] pci_bus 0000:00: root bus resource [mem 0x000ec000-0x000effff]
[    0.167678] pci_bus 0000:00: root bus resource [mem 0x000f0000-0x000fffff]
[    0.167681] pci_bus 0000:00: root bus resource [mem 0xc0000000-0xfebfffff]
[    0.167699] pci 0000:00:00.0: [10de:0a82] type 00 class 0x060000
[    0.167807] pci 0000:00:00.1: [10de:0a88] type 00 class 0x050000
[    0.167962] pci 0000:00:03.0: [10de:0aae] type 00 class 0x060100
[    0.167974] pci 0000:00:03.0: reg 10: [io  0x2000-0x20ff]
[    0.168026] pci 0000:00:03.1: [10de:0aa4] type 00 class 0x050000
[    0.168117] pci 0000:00:03.2: [10de:0aa2] type 00 class 0x0c0500
[    0.168133] pci 0000:00:03.2: reg 10: [io  0x2180-0x21bf]
[    0.168158] pci 0000:00:03.2: reg 20: [io  0x2140-0x217f]
[    0.168166] pci 0000:00:03.2: reg 24: [io  0x2100-0x213f]
[    0.168206] pci 0000:00:03.2: PME# supported from D3hot D3cold
[    0.168231] pci 0000:00:03.3: [10de:0a89] type 00 class 0x050000
[    0.168382] pci 0000:00:03.4: [10de:0a98] type 00 class 0x050000
[    0.168450] pci 0000:00:03.5: [10de:0aa3] type 00 class 0x0b4000
[    0.168471] pci 0000:00:03.5: reg 10: [mem 0xd3300000-0xd337ffff]
[    0.168603] pci 0000:00:04.0: [10de:0aa5] type 00 class 0x0c0310
[    0.168617] pci 0000:00:04.0: reg 10: [mem 0xd3388000-0xd3388fff]
[    0.168673] pci 0000:00:04.0: supports D1 D2
[    0.168676] pci 0000:00:04.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.168695] pci 0000:00:04.1: [10de:0aa6] type 00 class 0x0c0320
[    0.168711] pci 0000:00:04.1: reg 10: [mem 0xd3389200-0xd33892ff]
[    0.168777] pci 0000:00:04.1: supports D1 D2
[    0.168779] pci 0000:00:04.1: PME# supported from D0 D1 D2 D3hot D3cold
[    0.168808] pci 0000:00:06.0: [10de:0aa7] type 00 class 0x0c0310
[    0.168822] pci 0000:00:06.0: reg 10: [mem 0xd3387000-0xd3387fff]
[    0.168877] pci 0000:00:06.0: supports D1 D2
[    0.168880] pci 0000:00:06.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.168899] pci 0000:00:06.1: [10de:0aa9] type 00 class 0x0c0320
[    0.168915] pci 0000:00:06.1: reg 10: [mem 0xd3389100-0xd33891ff]
[    0.168980] pci 0000:00:06.1: supports D1 D2
[    0.168983] pci 0000:00:06.1: PME# supported from D0 D1 D2 D3hot D3cold
[    0.169012] pci 0000:00:08.0: [10de:0ac0] type 00 class 0x040300
[    0.169026] pci 0000:00:08.0: reg 10: [mem 0xd3380000-0xd3383fff]
[    0.169082] pci 0000:00:08.0: PME# supported from D3hot D3cold
[    0.169098] pci 0000:00:09.0: [10de:0aab] type 01 class 0x060401
[    0.169156] pci 0000:00:0a.0: [10de:0ab0] type 00 class 0x020000
[    0.169171] pci 0000:00:0a.0: reg 10: [mem 0xd3386000-0xd3386fff]
[    0.169179] pci 0000:00:0a.0: reg 14: [io  0x21e0-0x21e7]
[    0.169186] pci 0000:00:0a.0: reg 18: [mem 0xd3389000-0xd33890ff]
[    0.169194] pci 0000:00:0a.0: reg 1c: [mem 0xd3389300-0xd338930f]
[    0.169239] pci 0000:00:0a.0: supports D1 D2
[    0.169242] pci 0000:00:0a.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.169264] pci 0000:00:0b.0: [10de:0ab5] type 00 class 0x010185
[    0.169997] pci 0000:00:0b.0: reg 10: [io  0x21d8-0x21df]
[    0.170004] pci 0000:00:0b.0: reg 14: [io  0x21ec-0x21ef]
[    0.170012] pci 0000:00:0b.0: reg 18: [io  0x21d0-0x21d7]
[    0.170019] pci 0000:00:0b.0: reg 1c: [io  0x21e8-0x21eb]
[    0.170027] pci 0000:00:0b.0: reg 20: [io  0x21c0-0x21cf]
[    0.170035] pci 0000:00:0b.0: reg 24: [mem 0xd3384000-0xd3385fff]
[    0.170092] pci 0000:00:10.0: [10de:0aa0] type 01 class 0x060400
[    0.170141] pci 0000:00:10.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.170203] pci 0000:00:15.0: [10de:0ac6] type 01 class 0x060400
[    0.170435] pci 0000:00:15.0: PME# supported from D0 D1 D2 D3hot D3cold
[    0.170549] pci 0000:00:09.0: PCI bridge to [bus 01-01] (subtractive decode)
[    0.170556] pci 0000:00:09.0:   bridge window [mem 0xd3200000-0xd32fffff]
[    0.170560] pci 0000:00:09.0:   bridge window [io  0x0000-0x0cf7]
(subtractive decode)
[    0.170564] pci 0000:00:09.0:   bridge window [io  0x0d00-0xffff]
(subtractive decode)
[    0.170567] pci 0000:00:09.0:   bridge window [mem
0x000a0000-0x000bffff] (subtractive decode)
[    0.170571] pci 0000:00:09.0:   bridge window [mem
0x000c0000-0x000c3fff] (subtractive decode)
[    0.170575] pci 0000:00:09.0:   bridge window [mem
0x000c4000-0x000c7fff] (subtractive decode)
[    0.170578] pci 0000:00:09.0:   bridge window [mem
0x000c8000-0x000cbfff] (subtractive decode)
[    0.170582] pci 0000:00:09.0:   bridge window [mem
0x000d0000-0x000d3fff] (subtractive decode)
[    0.170585] pci 0000:00:09.0:   bridge window [mem
0x000d4000-0x000d7fff] (subtractive decode)
[    0.170588] pci 0000:00:09.0:   bridge window [mem
0x000d8000-0x000dbfff] (subtractive decode)
[    0.170592] pci 0000:00:09.0:   bridge window [mem
0x000dc000-0x000dffff] (subtractive decode)
[    0.170595] pci 0000:00:09.0:   bridge window [mem
0x000e0000-0x000e3fff] (subtractive decode)
[    0.170599] pci 0000:00:09.0:   bridge window [mem
0x000e4000-0x000e7fff] (subtractive decode)
[    0.170602] pci 0000:00:09.0:   bridge window [mem
0x000e8000-0x000ebfff] (subtractive decode)
[    0.170606] pci 0000:00:09.0:   bridge window [mem
0x000ec000-0x000effff] (subtractive decode)
[    0.170609] pci 0000:00:09.0:   bridge window [mem
0x000f0000-0x000fffff] (subtractive decode)
[    0.170613] pci 0000:00:09.0:   bridge window [mem
0xc0000000-0xfebfffff] (subtractive decode)
[    0.170652] pci 0000:02:00.0: [10de:0863] type 00 class 0x030000
[    0.170671] pci 0000:02:00.0: reg 10: [mem 0xd2000000-0xd2ffffff]
[    0.170686] pci 0000:02:00.0: reg 14: [mem 0xc0000000-0xcfffffff 64bit pref]
[    0.170700] pci 0000:02:00.0: reg 1c: [mem 0xd0000000-0xd1ffffff 64bit pref]
[    0.170710] pci 0000:02:00.0: reg 24: [io  0x1000-0x107f]
[    0.170720] pci 0000:02:00.0: reg 30: [mem 0xd3000000-0xd301ffff pref]
[    0.170797] pci 0000:00:10.0: PCI bridge to [bus 02-02]
[    0.170802] pci 0000:00:10.0:   bridge window [io  0x1000-0x1fff]
[    0.170806] pci 0000:00:10.0:   bridge window [mem 0xd2000000-0xd30fffff]
[    0.170812] pci 0000:00:10.0:   bridge window [mem
0xc0000000-0xd1ffffff 64bit pref]
[    0.171129] pci 0000:03:00.0: [14e4:432b] type 00 class 0x028000
[    0.171151] pci 0000:03:00.0: reg 10: [mem 0xd3100000-0xd3103fff 64bit]
[    0.171261] pci 0000:03:00.0: supports D1 D2
[    0.171264] pci 0000:03:00.0: PME# supported from D0 D3hot D3cold
[    0.176835] pci 0000:00:15.0: PCI bridge to [bus 03-03]
[    0.176857] pci 0000:00:15.0:   bridge window [mem 0xd3100000-0xd31fffff]
[    0.176895] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    0.177082] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.IXVE._PRT]
[    0.177219]  pci0000:00: Requesting ACPI _OSC control (0x1d)
[    0.177405]  pci0000:00: ACPI _OSC control (0x1d) granted
[    0.201264] ACPI: PCI Interrupt Link [LNK1] (IRQs 5 7 10 11 14 15)
*0, disabled.
[    0.201377] ACPI: PCI Interrupt Link [LNK2] (IRQs 5 7 10 11 14 15)
*0, disabled.
[    0.201482] ACPI: PCI Interrupt Link [LNK3] (IRQs 5 7 10 11 14 15)
*0, disabled.
[    0.201586] ACPI: PCI Interrupt Link [LNK4] (IRQs 5 7 10 11 14 15)
*0, disabled.
[    0.201689] ACPI: PCI Interrupt Link [Z003] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.201793] ACPI: PCI Interrupt Link [Z004] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.201898] ACPI: PCI Interrupt Link [Z005] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202009] ACPI: PCI Interrupt Link [Z006] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202119] ACPI: PCI Interrupt Link [Z007] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202230] ACPI: PCI Interrupt Link [Z008] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202335] ACPI: PCI Interrupt Link [Z009] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202439] ACPI: PCI Interrupt Link [Z00A] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202544] ACPI: PCI Interrupt Link [Z00B] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202649] ACPI: PCI Interrupt Link [Z00C] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202754] ACPI: PCI Interrupt Link [Z00D] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202858] ACPI: PCI Interrupt Link [Z00E] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.202963] ACPI: PCI Interrupt Link [Z00F] (IRQs 16 17 18 19 20 21
22 23) *10
[    0.203067] ACPI: PCI Interrupt Link [Z00G] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.203171] ACPI: PCI Interrupt Link [Z00H] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.203276] ACPI: PCI Interrupt Link [Z00I] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.203391] ACPI: PCI Interrupt Link [Z00J] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.203497] ACPI: PCI Interrupt Link [Z00K] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.203606] ACPI: PCI Interrupt Link [Z00L] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.203712] ACPI: PCI Interrupt Link [Z00M] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.203817] ACPI: PCI Interrupt Link [Z00N] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.203926] ACPI: PCI Interrupt Link [Z00O] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.204031] ACPI: PCI Interrupt Link [Z00P] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.204136] ACPI: PCI Interrupt Link [Z00Q] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.204241] ACPI: PCI Interrupt Link [Z00R] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.204346] ACPI: PCI Interrupt Link [Z00S] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.204450] ACPI: PCI Interrupt Link [Z00T] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.204555] ACPI: PCI Interrupt Link [Z00U] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.204660] ACPI: PCI Interrupt Link [LSMB] (IRQs 16 17 18 19 20 21
22 23) *15
[    0.204763] ACPI: PCI Interrupt Link [LUS0] (IRQs 16 17 18 19 20 21
22 23) *11
[    0.204866] ACPI: PCI Interrupt Link [LUS2] (IRQs 16 17 18 19 20 21
22 23) *10
[    0.204975] ACPI: PCI Interrupt Link [LMAC] (IRQs 16 17 18 19 20 21
22 23) *14
[    0.205079] ACPI: PCI Interrupt Link [LAZA] (IRQs 16 17 18 19 20 21
22 23) *15
[    0.205188] ACPI: PCI Interrupt Link [LGPU] (IRQs 16 17 18 19 20 21
22 23) *11
[    0.205291] ACPI: PCI Interrupt Link [LPID] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.205395] ACPI: PCI Interrupt Link [LSI0] (IRQs 16 17 18 19 20 21
22 23) *11
[    0.205504] ACPI: PCI Interrupt Link [LSI1] (IRQs 16 17 18 19 20 21
22 23) *0, disabled.
[    0.205607] ACPI: PCI Interrupt Link [Z000] (IRQs 16 17 18 19 20 21 22 23) *7
[    0.205716] ACPI: PCI Interrupt Link [Z001] (IRQs 16 17 18 19 20 21 22 23) *5
[    0.205829] ACPI: PCI Interrupt Link [LPMU] (IRQs 16 17 18 19 20 21
22 23) *14
[    0.205934] vgaarb: device added:
PCI:0000:02:00.0,decodes=io+mem,owns=io+mem,locks=none
[    0.205934] vgaarb: loaded
[    0.205934] vgaarb: bridge control possible 0000:02:00.0
[    0.205934] PCI: Using ACPI for IRQ routing
[    0.208052] PCI: pci_cache_line_size set to 64 bytes
[    0.208307] reserve RAM buffer: 000000000009fc00 - 000000000009ffff
[    0.208310] reserve RAM buffer: 00000000be86e000 - 00000000bfffffff
[    0.208439] NetLabel: Initializing
[    0.208442] NetLabel:  domain hash size = 128
[    0.208444] NetLabel:  protocols = UNLABELED CIPSOv4
[    0.208461] NetLabel:  unlabeled traffic allowed by default
[    0.208480] HPET: 4 timers in total, 0 timers will be used for per-cpu timer
[    0.208488] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 31, 31
[    0.208495] hpet0: 4 comparators, 64-bit 25.000000 MHz counter
[    0.220005] Switching to clocksource hpet
[    0.229543] pnp: PnP ACPI init
[    0.229568] ACPI: bus type pnp registered
[    0.229702] pnp 00:00: [bus 00-ff]
[    0.229706] pnp 00:00: [io  0x0cf8-0x0cff]
[    0.229709] pnp 00:00: [io  0x0000-0x0cf7 window]
[    0.229712] pnp 00:00: [io  0x0d00-0xffff window]
[    0.229715] pnp 00:00: [mem 0x000a0000-0x000bffff window]
[    0.229718] pnp 00:00: [mem 0x000c0000-0x000c3fff window]
[    0.229721] pnp 00:00: [mem 0x000c4000-0x000c7fff window]
[    0.229724] pnp 00:00: [mem 0x000c8000-0x000cbfff window]
[    0.229727] pnp 00:00: [mem 0x000cc000-0x000cffff window]
[    0.229730] pnp 00:00: [mem 0x000d0000-0x000d3fff window]
[    0.229733] pnp 00:00: [mem 0x000d4000-0x000d7fff window]
[    0.229736] pnp 00:00: [mem 0x000d8000-0x000dbfff window]
[    0.229739] pnp 00:00: [mem 0x000dc000-0x000dffff window]
[    0.229742] pnp 00:00: [mem 0x000e0000-0x000e3fff window]
[    0.229744] pnp 00:00: [mem 0x000e4000-0x000e7fff window]
[    0.229747] pnp 00:00: [mem 0x000e8000-0x000ebfff window]
[    0.229750] pnp 00:00: [mem 0x000ec000-0x000effff window]
[    0.229753] pnp 00:00: [mem 0x000f0000-0x000fffff window]
[    0.229756] pnp 00:00: [mem 0xc0000000-0xfebfffff window]
[    0.229865] pnp 00:00: Plug and Play ACPI device, IDs PNP0a08
PNP0a03 (active)
[    0.229890] pnp 00:01: [mem 0x00000000-0xffffffffffffffff disabled]
[    0.229893] pnp 00:01: [mem 0xf0000000-0xf3ffffff]
[    0.229967] system 00:01: [mem 0xf0000000-0xf3ffffff] has been reserved
[    0.229973] system 00:01: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.229989] pnp 00:02: [io  0x0300-0x031f]
[    0.230024] pnp 00:02: [irq 6]
[    0.230057] pnp 00:02: Plug and Play ACPI device, IDs APP0001 (active)
[    0.230109] pnp 00:03: [io  0x0000-0x0008]
[    0.230112] pnp 00:03: [io  0x000a-0x000f]
[    0.230115] pnp 00:03: [io  0x0081-0x0083]
[    0.230117] pnp 00:03: [io  0x0087]
[    0.230120] pnp 00:03: [io  0x0089-0x008b]
[    0.230122] pnp 00:03: [io  0x008f]
[    0.230124] pnp 00:03: [io  0x00c0-0x00d1]
[    0.230127] pnp 00:03: [io  0x00d4-0x00df]
[    0.230130] pnp 00:03: [dma 4]
[    0.230168] pnp 00:03: Plug and Play ACPI device, IDs PNP0200 (active)
[    0.230249] pnp 00:04: [irq 0 disabled]
[    0.230257] pnp 00:04: [irq 8]
[    0.230264] pnp 00:04: [mem 0xfed00000-0xfed003ff]
[    0.230321] system 00:04: [mem 0xfed00000-0xfed003ff] has been reserved
[    0.230326] system 00:04: Plug and Play ACPI device, IDs PNP0103
PNP0c01 (active)
[    0.230341] pnp 00:05: [io  0x00f0-0x00f1]
[    0.230348] pnp 00:05: [irq 13]
[    0.230387] pnp 00:05: Plug and Play ACPI device, IDs PNP0c04 (active)
[    0.230533] pnp 00:06: [io  0x0400-0x047f]
[    0.230536] pnp 00:06: [io  0x0480-0x04ff]
[    0.230539] pnp 00:06: [io  0x0500-0x057f]
[    0.230541] pnp 00:06: [io  0x0580-0x05ff]
[    0.230544] pnp 00:06: [io  0x0800-0x087f]
[    0.230546] pnp 00:06: [io  0x0880-0x08ff]
[    0.230549] pnp 00:06: [io  0x2140-0x217f]
[    0.230551] pnp 00:06: [io  0x2100-0x213f]
[    0.230553] pnp 00:06: [io  0x0010-0x001f]
[    0.230556] pnp 00:06: [io  0x0022-0x003f]
[    0.230558] pnp 00:06: [io  0x0044-0x005f]
[    0.230561] pnp 00:06: [io  0x0062-0x0063]
[    0.230563] pnp 00:06: [io  0x0065-0x006f]
[    0.230565] pnp 00:06: [io  0x0072-0x0073]
[    0.230568] pnp 00:06: [io  0x0074-0x007f]
[    0.230570] pnp 00:06: [io  0x0091-0x0093]
[    0.230573] pnp 00:06: [io  0x0097-0x009f]
[    0.230575] pnp 00:06: [io  0x00a2-0x00bf]
[    0.230577] pnp 00:06: [io  0x00e0-0x00ef]
[    0.230580] pnp 00:06: [io  0x04d0-0x04d1]
[    0.230582] pnp 00:06: [io  0x0080]
[    0.230585] pnp 00:06: [io  0x0295-0x0296]
[    0.230656] system 00:06: [io  0x0400-0x047f] has been reserved
[    0.230659] system 00:06: [io  0x0480-0x04ff] has been reserved
[    0.230663] system 00:06: [io  0x0500-0x057f] has been reserved
[    0.230666] system 00:06: [io  0x0580-0x05ff] has been reserved
[    0.230669] system 00:06: [io  0x0800-0x087f] has been reserved
[    0.230673] system 00:06: [io  0x0880-0x08ff] has been reserved
[    0.230676] system 00:06: [io  0x2140-0x217f] has been reserved
[    0.230679] system 00:06: [io  0x2100-0x213f] has been reserved
[    0.230683] system 00:06: [io  0x04d0-0x04d1] has been reserved
[    0.230687] system 00:06: [io  0x0295-0x0296] has been reserved
[    0.230692] system 00:06: Plug and Play ACPI device, IDs PNP0c02 (active)
[    0.230704] pnp 00:07: [io  0x0070-0x0077]
[    0.230744] pnp 00:07: Plug and Play ACPI device, IDs PNP0b00 (active)
[    0.238464] pnp: PnP ACPI: found 8 devices
[    0.238467] ACPI: ACPI bus type pnp unregistered
[    0.246251] pci 0000:00:09.0: PCI bridge to [bus 01-01]
[    0.246258] pci 0000:00:09.0:   bridge window [mem 0xd3200000-0xd32fffff]
[    0.246267] pci 0000:00:10.0: PCI bridge to [bus 02-02]
[    0.246271] pci 0000:00:10.0:   bridge window [io  0x1000-0x1fff]
[    0.246276] pci 0000:00:10.0:   bridge window [mem 0xd2000000-0xd30fffff]
[    0.246282] pci 0000:00:10.0:   bridge window [mem
0xc0000000-0xd1ffffff 64bit pref]
[    0.246288] pci 0000:00:15.0: PCI bridge to [bus 03-03]
[    0.246300] pci 0000:00:15.0:   bridge window [mem 0xd3100000-0xd31fffff]
[    0.246324] pci 0000:00:09.0: enabling device (0000 -> 0002)
[    0.246332] pci 0000:00:09.0: setting latency timer to 64
[    0.246339] pci 0000:00:10.0: setting latency timer to 64
[    0.246521] ACPI: PCI Interrupt Link [Z00F] enabled at IRQ 23
[    0.246538] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7]
[    0.246542] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff]
[    0.246545] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff]
[    0.246548] pci_bus 0000:00: resource 7 [mem 0x000c0000-0x000c3fff]
[    0.246551] pci_bus 0000:00: resource 8 [mem 0x000c4000-0x000c7fff]
[    0.246554] pci_bus 0000:00: resource 9 [mem 0x000c8000-0x000cbfff]
[    0.246557] pci_bus 0000:00: resource 10 [mem 0x000d0000-0x000d3fff]
[    0.246560] pci_bus 0000:00: resource 11 [mem 0x000d4000-0x000d7fff]
[    0.246563] pci_bus 0000:00: resource 12 [mem 0x000d8000-0x000dbfff]
[    0.246566] pci_bus 0000:00: resource 13 [mem 0x000dc000-0x000dffff]
[    0.246569] pci_bus 0000:00: resource 14 [mem 0x000e0000-0x000e3fff]
[    0.246572] pci_bus 0000:00: resource 15 [mem 0x000e4000-0x000e7fff]
[    0.246575] pci_bus 0000:00: resource 16 [mem 0x000e8000-0x000ebfff]
[    0.246579] pci_bus 0000:00: resource 17 [mem 0x000ec000-0x000effff]
[    0.246582] pci_bus 0000:00: resource 18 [mem 0x000f0000-0x000fffff]
[    0.246585] pci_bus 0000:00: resource 19 [mem 0xc0000000-0xfebfffff]
[    0.246588] pci_bus 0000:01: resource 1 [mem 0xd3200000-0xd32fffff]
[    0.246592] pci_bus 0000:01: resource 4 [io  0x0000-0x0cf7]
[    0.246595] pci_bus 0000:01: resource 5 [io  0x0d00-0xffff]
[    0.246598] pci_bus 0000:01: resource 6 [mem 0x000a0000-0x000bffff]
[    0.246601] pci_bus 0000:01: resource 7 [mem 0x000c0000-0x000c3fff]
[    0.246604] pci_bus 0000:01: resource 8 [mem 0x000c4000-0x000c7fff]
[    0.246607] pci_bus 0000:01: resource 9 [mem 0x000c8000-0x000cbfff]
[    0.246610] pci_bus 0000:01: resource 10 [mem 0x000d0000-0x000d3fff]
[    0.246613] pci_bus 0000:01: resource 11 [mem 0x000d4000-0x000d7fff]
[    0.246616] pci_bus 0000:01: resource 12 [mem 0x000d8000-0x000dbfff]
[    0.246619] pci_bus 0000:01: resource 13 [mem 0x000dc000-0x000dffff]
[    0.246622] pci_bus 0000:01: resource 14 [mem 0x000e0000-0x000e3fff]
[    0.246625] pci_bus 0000:01: resource 15 [mem 0x000e4000-0x000e7fff]
[    0.246628] pci_bus 0000:01: resource 16 [mem 0x000e8000-0x000ebfff]
[    0.246631] pci_bus 0000:01: resource 17 [mem 0x000ec000-0x000effff]
[    0.246634] pci_bus 0000:01: resource 18 [mem 0x000f0000-0x000fffff]
[    0.246637] pci_bus 0000:01: resource 19 [mem 0xc0000000-0xfebfffff]
[    0.246641] pci_bus 0000:02: resource 0 [io  0x1000-0x1fff]
[    0.246644] pci_bus 0000:02: resource 1 [mem 0xd2000000-0xd30fffff]
[    0.246647] pci_bus 0000:02: resource 2 [mem 0xc0000000-0xd1ffffff
64bit pref]
[    0.246651] pci_bus 0000:03: resource 1 [mem 0xd3100000-0xd31fffff]
[    0.246724] NET: Registered protocol family 2
[    0.246896] IP route cache hash table entries: 131072 (order: 8,
1048576 bytes)
[    0.248159] TCP established hash table entries: 524288 (order: 11,
8388608 bytes)
[    0.252368] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
[    0.252913] TCP: Hash tables configured (established 524288 bind 65536)
[    0.252916] TCP: reno registered
[    0.252930] UDP hash table entries: 2048 (order: 4, 65536 bytes)
[    0.252974] UDP-Lite hash table entries: 2048 (order: 4, 65536 bytes)
[    0.253132] NET: Registered protocol family 1
[    0.253466] ACPI: PCI Interrupt Link [LUS0] enabled at IRQ 22
[    0.320198] ACPI: PCI Interrupt Link [LUS2] enabled at IRQ 21
[    0.320398] ACPI: PCI Interrupt Link [Z000] enabled at IRQ 20
[    0.373530] ACPI: PCI Interrupt Link [Z001] enabled at IRQ 19
[    0.373644] pci 0000:02:00.0: Boot video device
[    0.373808] PCI: CLS 256 bytes, default 64
[    0.373885] Unpacking initramfs...
[    3.068177] Freeing initrd memory: 14636k freed
[    3.074440] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    3.074446] Placing 64MB software IO TLB between ffff8800ba868000 -
ffff8800be868000
[    3.074449] software IO TLB at phys 0xba868000 - 0xbe868000
[    3.075079] audit: initializing netlink socket (disabled)
[    3.075100] type=2000 audit(1343490925.073:1): initialized
[    3.075754] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[    3.078539] VFS: Disk quotas dquot_6.5.2
[    3.078602] Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    3.078729] msgmni has been set to 7360
[    3.078989] Block layer SCSI generic (bsg) driver version 0.4
loaded (major 253)
[    3.079030] io scheduler noop registered
[    3.079033] io scheduler deadline registered
[    3.079111] io scheduler cfq registered (default)
[    3.079404] pcieport 0000:00:15.0: irq 40 for MSI/MSI-X
[    3.079611] pcieport 0000:00:15.0: Signaling PME through PCIe PME interrupt
[    3.079615] pci 0000:03:00.0: Signaling PME through PCIe PME interrupt
[    3.079624] pcie_pme 0000:00:15.0:pcie01: service driver pcie_pme loaded
[    3.079762] intel_idle: does not run on family 6 model 23
[    3.079835] GHES: HEST is not enabled!
[    3.079910] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    3.080518] Linux agpgart interface v0.103
[    3.080609] i8042: PNP: No PS/2 controller found. Probing ports directly.
[    3.081476] i8042: No controller found
[    3.081618] mousedev: PS/2 mouse device common for all mice
[    3.081940] rtc_cmos 00:07: rtc core: registered rtc_cmos as rtc0
[    3.081992] rtc0: alarms up to one year, y3k, 242 bytes nvram, hpet irqs
[    3.082002] cpuidle: using governor ladder
[    3.082004] cpuidle: using governor menu
[    3.082186] TCP: cubic registered
[    3.082325] NET: Registered protocol family 10
[    3.082586] NET: Registered protocol family 17
[    3.082592] Registering the dns_resolver key type
[    3.082763] PM: Hibernation image not present or could not be loaded.
[    3.082771] registered taskstats version 1
[    3.083800] rtc_cmos 00:07: setting system clock to 2012-07-28
15:55:25 UTC (1343490925)
[    3.083906] Initializing network drop monitor service
[    3.085546] Freeing unused kernel memory: 740k freed
[    3.085814] Write protecting the kernel read-only data: 8192k
[    3.092656] Freeing unused kernel memory: 1588k freed
[    3.095926] Freeing unused kernel memory: 640k freed
[    3.106329] systemd-udevd[40]: starting version 186
[    3.131730] input: Lid Switch as
/devices/LNXSYSTM:00/device:00/PNP0C0D:00/input/input0
[    3.131780] ACPI: Lid Switch [LID0]
[    3.131891] input: Power Button as
/devices/LNXSYSTM:00/device:00/PNP0C0C:00/input/input1
[    3.131897] ACPI: Power Button [PWRB]
[    3.132019] input: Sleep Button as
/devices/LNXSYSTM:00/device:00/PNP0C0E:00/input/input2
[    3.132025] ACPI: Sleep Button [SLPB]
[    3.132148] input: Power Button as
/devices/LNXSYSTM:00/LNXPWRBN:00/input/input3
[    3.132154] ACPI: Power Button [PWRF]
[    3.181401] usbcore: registered new interface driver usbfs
[    3.181433] usbcore: registered new interface driver hub
[    3.182142] forcedeth: Reverse Engineered nForce ethernet driver.
Version 0.64.
[    3.182371] ACPI: PCI Interrupt Link [LMAC] enabled at IRQ 18
[    3.182391] forcedeth 0000:00:0a.0: setting latency timer to 64
[    3.183273] usbcore: registered new device driver usb
[    3.183798] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    3.185744] SCSI subsystem initialized
[    3.190143] libata version 3.00 loaded.
[    3.191082] [drm] Initialized drm 1.1.0 20060810
[    3.193180] wmi: Mapper loaded
[    3.193942] b43-pci-bridge 0000:03:00.0: power state changed by ACPI to D0
[    3.193950] b43-pci-bridge 0000:03:00.0: power state changed by ACPI to D0
[    3.197744] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    3.200667] ACPI: PCI Interrupt Link [LGPU] enabled at IRQ 17
[    3.201238] nouveau 0000:02:00.0: setting latency timer to 64
[    3.201282] [drm] nouveau 0000:02:00.0: Detected an NV50 generation
card (0x0ac180b1)
[    3.210261] ssb: Found chip with id 0x4322, rev 0x01 and package 0x0A
[    3.210270] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x17, vendor 0x4243)
[    3.210278] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x10,
vendor 0x4243)
[    3.210286] ssb: Core 2 found: PCI-E (cc 0x820, rev 0x0B, vendor 0x4243)
[    3.210294] ssb: Core 3 found: PCI (cc 0x804, rev 0x0E, vendor 0x4243)
[    3.210301] ssb: Core 4 found: USB 2.0 Device (cc 0x81A, rev 0x05,
vendor 0x4243)
[    3.210308] ssb: Core 5 found: UNKNOWN (cc 0x8FF, rev 0x00, vendor 0x4243)
[    3.210316] ssb: Core 6 found: Internal Memory (cc 0x80E, rev 0x03,
vendor 0x4243)
[    3.229043] [drm] nouveau 0000:02:00.0: Checking PRAMIN for VBIOS
[    3.241045] forcedeth 0000:00:0a.0: ifname eth0, PHY OUI 0x732 @ 1,
addr 00:23:32:bf:22:d4
[    3.241051] forcedeth 0000:00:0a.0: highdma csum pwrctl gbit lnktim
msi desc-v3
[    3.241266] ehci_hcd 0000:00:04.1: setting latency timer to 64
[    3.241272] ehci_hcd 0000:00:04.1: EHCI Host Controller
[    3.241302] ehci_hcd 0000:00:04.1: new USB bus registered, assigned
bus number 1
[    3.241341] ehci_hcd 0000:00:04.1: debug port 1
[    3.241356] ehci_hcd 0000:00:04.1: cache line size of 256 is not supported
[    3.241378] ehci_hcd 0000:00:04.1: irq 21, io mem 0xd3389200
[    3.250054] ehci_hcd 0000:00:04.1: USB 2.0 started, EHCI 1.00
[    3.250241] hub 1-0:1.0: USB hub found
[    3.250247] hub 1-0:1.0: 7 ports detected
[    3.250403] ehci_hcd 0000:00:06.1: setting latency timer to 64
[    3.250409] ehci_hcd 0000:00:06.1: EHCI Host Controller
[    3.250420] ehci_hcd 0000:00:06.1: new USB bus registered, assigned
bus number 2
[    3.250451] ehci_hcd 0000:00:06.1: debug port 1
[    3.250466] ehci_hcd 0000:00:06.1: cache line size of 256 is not supported
[    3.250488] ehci_hcd 0000:00:06.1: irq 19, io mem 0xd3389100
[    3.260030] ehci_hcd 0000:00:06.1: USB 2.0 started, EHCI 1.00
[    3.260321] hub 2-0:1.0: USB hub found
[    3.260327] hub 2-0:1.0: 5 ports detected
[    3.260446] ahci 0000:00:0b.0: version 3.0
[    3.260662] ACPI: PCI Interrupt Link [LSI0] enabled at IRQ 16
[    3.260731] ahci 0000:00:0b.0: irq 41 for MSI/MSI-X
[    3.260751] ahci 0000:00:0b.0: controller can't do PMP, turning off CAP_PMP
[    3.260807] ahci 0000:00:0b.0: AHCI 0001.0200 32 slots 6 ports 3
Gbps 0x3 impl IDE mode
[    3.260813] ahci 0000:00:0b.0: flags: 64bit ncq sntf pm led pio
slum part boh
[    3.260817] ahci 0000:00:0b.0: setting latency timer to 64
[    3.262116] scsi0 : ahci
[    3.263369] scsi1 : ahci
[    3.263477] scsi2 : ahci
[    3.263590] scsi3 : ahci
[    3.266880] scsi4 : ahci
[    3.266998] scsi5 : ahci
[    3.267176] ata1: SATA max UDMA/133 abar m8192 at 0xd3384000 port
0xd3384100 irq 41
[    3.267180] ata2: SATA max UDMA/133 abar m8192 at 0xd3384000 port
0xd3384180 irq 41
[    3.267183] ata3: DUMMY
[    3.267185] ata4: DUMMY
[    3.267187] ata5: DUMMY
[    3.267188] ata6: DUMMY
[    3.267248] ohci_hcd 0000:00:04.0: setting latency timer to 64
[    3.267252] ohci_hcd 0000:00:04.0: OHCI Host Controller
[    3.267266] ohci_hcd 0000:00:04.0: new USB bus registered, assigned
bus number 3
[    3.267294] ohci_hcd 0000:00:04.0: irq 22, io mem 0xd3388000
[    3.273652] ssb: Sonics Silicon Backplane found on PCI device 0000:03:00.0
[    3.302931] [drm] nouveau 0000:02:00.0: ... appears to be valid
[    3.302934] [drm] nouveau 0000:02:00.0: Using VBIOS from PRAMIN
[    3.302938] [drm] nouveau 0000:02:00.0: BIT BIOS found
[    3.302942] [drm] nouveau 0000:02:00.0: Bios version 62.79.40.00
[    3.302946] [drm] nouveau 0000:02:00.0: TMDS table version 2.0
[    3.303162] [drm] nouveau 0000:02:00.0: MXM: no VBIOS data, nothing to do
[    3.303165] [drm] nouveau 0000:02:00.0: DCB version 4.0
[    3.303169] [drm] nouveau 0000:02:00.0: DCB outp 00: 01000123 00010014
[    3.303172] [drm] nouveau 0000:02:00.0: DCB outp 01: 02021232 00000010
[    3.303175] [drm] nouveau 0000:02:00.0: DCB outp 02: 02021286 0f220010
[    3.303178] [drm] nouveau 0000:02:00.0: DCB conn 00: 00000040
[    3.303181] [drm] nouveau 0000:02:00.0: DCB conn 01: 0000a146
[    3.303187] [drm] nouveau 0000:02:00.0: Parsing VBIOS init table 0
at offset 0xD814
[    3.322180] hub 3-0:1.0: USB hub found
[    3.322188] hub 3-0:1.0: 7 ports detected
[    3.322306] ohci_hcd 0000:00:06.0: setting latency timer to 64
[    3.322311] ohci_hcd 0000:00:06.0: OHCI Host Controller
[    3.322322] ohci_hcd 0000:00:06.0: new USB bus registered, assigned
bus number 4
[    3.322347] ohci_hcd 0000:00:06.0: irq 20, io mem 0xd3387000
[    3.375505] hub 4-0:1.0: USB hub found
[    3.375512] hub 4-0:1.0: 5 ports detected
[    3.387260] [drm] nouveau 0000:02:00.0: Register 0x00004028 not
found in PLL limits table
[    3.388433] [drm] nouveau 0000:02:00.0: Parsing VBIOS init table 1
at offset 0xDAC8
[    3.388481] [drm] nouveau 0000:02:00.0: Parsing VBIOS init table 2
at offset 0xDACA
[    3.388488] [drm] nouveau 0000:02:00.0: Parsing VBIOS init table 3
at offset 0xDBAF
[    3.388497] [drm] nouveau 0000:02:00.0: Parsing VBIOS init table 4
at offset 0xDC74
[    3.388500] [drm] nouveau 0000:02:00.0: Parsing VBIOS init table at
offset 0xDCD9
[    3.408507] [drm] nouveau 0000:02:00.0: 0xDCD9: Condition still not
met after 20ms, skipping following opcodes
[    3.446794] [TTM] Zone  kernel: Available graphics memory: 1885810 kiB
[    3.446797] [TTM] Initializing pool allocator
[    3.446803] [TTM] Initializing DMA pool allocator
[    3.446820] [drm] nouveau 0000:02:00.0: Detected 256MiB VRAM (DDR1)
[    3.446823] [drm] nouveau 0000:02:00.0: Stolen system memory at: 0x0080000000
[    3.449006] [drm] nouveau 0000:02:00.0: 64 MiB GART (aperture)
[    3.474237] [drm] Supports vblank timestamp caching Rev 1 (10.10.2010).
[    3.474240] [drm] No driver support for vblank timestamp query.
[    3.647337] usb 1-4: new high-speed USB device number 2 using ehci_hcd
[    3.647344] [drm] nouveau 0000:02:00.0: 4 available performance level(s)
[    3.647349] [drm] nouveau 0000:02:00.0: 0: core 100MHz shader
200MHz voltage 900mV fanspeed 100%
[    3.647354] [drm] nouveau 0000:02:00.0: 1: core 150MHz shader
300MHz voltage 900mV fanspeed 100%
[    3.647359] [drm] nouveau 0000:02:00.0: 2: core 350MHz shader
800MHz voltage 900mV fanspeed 100%
[    3.647363] ata1: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[    3.647369] [drm] nouveau 0000:02:00.0: 3: core 450MHz shader
1100MHz voltage 1010mV fanspeed 100%
[    3.647372] [drm] nouveau 0000:02:00.0: c:
[    3.648254] ata1.00: ATA-8: Hitachi HTS543216L9SA02, FB2AC50F, max UDMA/133
[    3.648259] ata1.00: 312581808 sectors, multi 0: LBA48 NCQ (depth 31/32)
[    3.649314] ata1.00: configured for UDMA/133
[    3.649462] scsi 0:0:0:0: Direct-Access     ATA      Hitachi
HTS54321 FB2A PQ: 0 ANSI: 5
[    3.676702] ata2: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[    3.678818] ata2.00: ATAPI: MATSHITADVD-R   UJ-868, KA19, max UDMA/66
[    3.681444] ata2.00: configured for UDMA/66
[    3.684901] scsi 1:0:0:0: CD-ROM            MATSHITA DVD-R   UJ-868
  KA19 PQ: 0 ANSI: 5
[    3.692611] sd 0:0:0:0: [sda] 312581808 512-byte logical blocks:
(160 GB/149 GiB)
[    3.692678] sd 0:0:0:0: [sda] Write Protect is off
[    3.692682] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    3.692711] sd 0:0:0:0: [sda] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[    3.736612]  sda: sda1 sda2 sda3 sda4 sda5 sda6
[    3.737142] sd 0:0:0:0: [sda] Attached SCSI disk
[    3.739127] sr0: scsi3-mmc drive: 62x/62x writer cd/rw xa/form2 cdda tray
[    3.739131] cdrom: Uniform CD-ROM driver Revision: 3.20
[    3.739288] sr 1:0:0:0: Attached scsi CD-ROM sr0
[    4.076694] Refined TSC clocksource calibration: 1990.001 MHz.
[    4.076701] Switching to clocksource tsc
[    4.180025] usb 2-2: new high-speed USB device number 3 using ehci_hcd
[    4.304183] hub 2-2:1.0: USB hub found
[    4.304260] hub 2-2:1.0: 3 ports detected
[    4.583345] usb 4-1: new full-speed USB device number 2 using ohci_hcd
[    4.788423] hub 4-1:1.0: USB hub found
[    4.791372] hub 4-1:1.0: 3 ports detected
[    5.083344] usb 3-5: new low-speed USB device number 2 using ohci_hcd
[    5.106576] [drm] nouveau 0000:02:00.0: allocated 1280x800 fb:
0x2f0000, bo ffff8801330d0400
[    5.106662] fbcon: nouveaufb (fb0) is primary device
[    5.287578] usbcore: registered new interface driver usbhid
[    5.287581] usbhid: USB HID core driver
[    5.299141] apple 0003:05AC:8242.0001: hiddev0,hidraw0: USB HID
v1.11 Device [Apple Computer, Inc. IR Receiver] on
usb-0000:00:04.0-5/input0
[    5.374238] Console: switching to colour frame buffer device 160x50
[    5.376072] fb0: nouveaufb frame buffer device
[    5.376074] drm: registered panic notifier
[    5.376082] [drm] Initialized nouveau 1.0.0 20120316 for
0000:02:00.0 on minor 0
[    5.563348] usb 3-6: new full-speed USB device number 3 using ohci_hcd
[    5.781766] input: Apple, Inc. Apple Internal Keyboard / Trackpad
as /devices/pci0000:00/0000:00:04.0/usb3/3-6/3-6:1.0/input/input4
[    5.781843] apple 0003:05AC:0236.0002: input,hidraw1: USB HID v1.11
Keyboard [Apple, Inc. Apple Internal Keyboard / Trackpad] on
usb-0000:00:04.0-6/input0
[    5.790405] ISO 9660 Extensions: RRIP_1991A
[    5.905252] loop: module loaded
[    6.283120] apple 0003:05AC:0236.0003: hidraw2: USB HID v1.11
Device [Apple, Inc. Apple Internal Keyboard / Trackpad] on
usb-0000:00:04.0-6/input1
[    6.363643] usb 2-2.1: new full-speed USB device number 4 using ehci_hcd
[    6.472122] input: Topre Corporation HHKB Professional as
/devices/pci0000:00/0000:00:06.1/usb2/2-2/2-2.1/2-2.1:1.0/input/input5
[    6.472202] generic-usb 0003:0853:0100.0004: input,hidraw3: USB HID
v1.11 Keyboard [Topre Corporation HHKB Professional] on
usb-0000:00:06.1-2.1/input0
[    6.541377] usb 4-1.1: new full-speed USB device number 3 using ohci_hcd
[    6.731374] usb 4-1.2: new full-speed USB device number 4 using ohci_hcd
[    6.845698] input: HID 05ac:820a as
/devices/pci0000:00/0000:00:06.0/usb4/4-1/4-1.2/4-1.2:1.0/input/input6
[    6.845782] generic-usb 0003:05AC:820A.0005: input,hidraw4: USB HID
v1.11 Keyboard [HID 05ac:820a] on usb-0000:00:06.0-1.2/input0
[    6.914373] usb 4-1.3: new full-speed USB device number 5 using ohci_hcd
[    7.025660] input: HID 05ac:820b as
/devices/pci0000:00/0000:00:06.0/usb4/4-1/4-1.3/4-1.3:1.0/input/input7
[    7.025820] generic-usb 0003:05AC:820B.0006: input,hidraw5: USB HID
v1.11 Mouse [HID 05ac:820b] on usb-0000:00:06.0-1.3/input0
[    7.159156] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    7.177321] device-mapper: uevent: version 1.0.3
[    7.177571] device-mapper: ioctl: 4.22.0-ioctl (2011-10-19)
initialised: dm-devel at redhat.com
[    7.198393] EXT4-fs (dm-0): mounted filesystem without journal. Opts: (null)
[    8.335607] EXT4-fs (dm-1): mounted filesystem without journal. Opts: (null)
[    9.661269] EXT4-fs (dm-2): mounted filesystem without journal. Opts: (null)
[   13.573005] EXT4-fs (dm-0): re-mounted. Opts: (null)
[   15.159168] systemd-udevd[285]: starting version 186
[   18.443686] FS-Cache: Loaded
[   19.714431] RPC: Registered named UNIX socket transport module.
[   19.714435] RPC: Registered udp transport module.
[   19.714437] RPC: Registered tcp transport module.
[   19.714439] RPC: Registered tcp NFSv4.1 backchannel transport module.
[   20.721393] ACPI: Battery Slot [BAT0] (battery present)
[   20.721525] ACPI: AC Adapter [ADP1] (on-line)
[   21.344608] ACPI: Requesting acpi_cpufreq
[   21.346787] input: PC Speaker as /devices/platform/pcspkr/input/input8
[   22.336562] Monitor-Mwait will be used to enter C-1 state
[   22.336601] Monitor-Mwait will be used to enter C-2 state
[   22.336631] Monitor-Mwait will be used to enter C-3 state
[   22.336640] Marking TSC unstable due to TSC halts in idle
[   22.336661] ACPI: acpi_idle registered with cpuidle
[   22.336940] Switching to clocksource hpet
[   22.687459] applesmc: key=271 fan=1 temp=14 acc=1 lux=2 kbd=1
[   22.700874] input: bcm5974 as
/devices/pci0000:00/0000:00:04.0/usb3/3-6/3-6:1.2/input/input9
[   22.701004] usbcore: registered new interface driver bcm5974
[   22.732433] microcode: CPU0 sig=0x10676, pf=0x80, revision=0x60c
[   22.733397] microcode: CPU1 sig=0x10676, pf=0x80, revision=0x60c
[   22.733570] input: applesmc as /devices/platform/applesmc.768/input/input10
[   22.733704] i2c i2c-7: nForce2 SMBus adapter at 0x2140
[   22.733736] i2c i2c-8: nForce2 SMBus adapter at 0x2100
[   22.734101] Registered led device: smc::kbd_backlight
[   22.736287] microcode: Microcode Update Driver: v2.00
<tigran@aivazian.fsnet.co.uk>, Peter Oruba
[   23.585578] Bluetooth: Core ver 2.16
[   23.585616] NET: Registered protocol family 31
[   23.585618] Bluetooth: HCI device and connection manager initialized
[   23.585622] Bluetooth: HCI socket layer initialized
[   23.585625] Bluetooth: L2CAP socket layer initialized
[   23.585635] Bluetooth: SCO socket layer initialized
[   23.839472] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[   24.136360] Linux media interface: v0.10
[   24.154921] NFS: Registering the id_resolver key type
[   24.154945] FS-Cache: Netfs 'nfs' registered for caching
[   24.156634] systemd-modules-load[288]: Inserted module 'nfs'
[   24.164037] cfg80211: Calling CRDA to update world regulatory domain
[   26.301177] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[   26.307644] usbcore: registered new interface driver btusb
[   26.321461] usb 4-1.2: USB disconnect, device number 4
[   26.454397] usb 4-1.3: USB disconnect, device number 5
[   27.864306] Linux video capture interface: v2.00
[   30.891144] cfg80211: World regulatory domain updated:
[   30.891148] cfg80211:   (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[   30.891151] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[   30.891154] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[   30.891157] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[   30.891160] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[   30.891162] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[   31.449002] uvcvideo: Found UVC 1.00 device Built-in iSight (05ac:8507)
[   31.479087] input: Built-in iSight as
/devices/pci0000:00/0000:00:04.1/usb1/1-4/1-4:1.0/input/input11
[   31.479190] usbcore: registered new interface driver uvcvideo
[   31.479192] USB Video Class driver (1.1.1)
[   31.791476] b43-phy0: Broadcom 4322 WLAN found (core revision 16)
[   31.803884] ACPI: PCI Interrupt Link [LAZA] enabled at IRQ 23
[   31.803889] hda_intel: Disabling MSI
[   31.803976] snd_hda_intel 0000:00:08.0: setting latency timer to 64
[   31.847069] Broadcom 43xx driver loaded [ Features: PMNLS ]
[   31.848624] b43-phy0 ERROR: Firmware file "b43/ucode16_mimo.fw" not found
[   31.849178] b43-phy0 ERROR: Firmware file
"b43-open/ucode16_mimo.fw" not found
[   31.849721] b43-phy0 ERROR: You must go to
http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and
download the correct firmware for this driver version. Please
carefully read all instructions on this website.
[   32.307355] hda_codec: ALC889A: SKU not ready 0x400000f0
[   32.646905] input: HDA Digital PCBeep as
/devices/pci0000:00/0000:00:08.0/input/input12
[   33.370255] input: HDA NVidia Line as
/devices/pci0000:00/0000:00:08.0/sound/card0/input13
[   33.370403] input: HDA NVidia Headphone as
/devices/pci0000:00/0000:00:08.0/sound/card0/input14
[   33.670088] systemd-vconsole-setup[448]: /usr/bin/loadkeys failed
with error code 1.
[   33.670099] systemd-vconsole-setup[448]: /usr/bin/setfont failed
with error code 1.
[   34.136739] EXT4-fs (dm-0): re-mounted. Opts: (null)
[   59.719149] forcedeth 0000:00:0a.0: irq 42 for MSI/MSI-X
[   59.719188] forcedeth 0000:00:0a.0: eth0: MSI enabled
[   69.976772] eth0: no IPv6 routers present
[  391.239096] BUG: unable to handle kernel NULL pointer dereference
at 0000000000000098
[  391.239471] IP: [<ffffffff8106cbb5>] drain_workqueue+0x25/0x1f0
[  391.239974] PGD 138f24067 PUD 138123067 PMD 0
[  391.240621] Oops: 0000 [#1] PREEMPT SMP
[  391.241258] CPU 1
[  391.241265] Modules linked in: snd_hda_codec_realtek snd_hda_intel
b43(-) snd_hda_codec bcma uvcvideo snd_hwdep mac80211 snd_pcm
videobuf2_vmalloc videobuf2_memops snd_page_alloc videobuf2_core
snd_timer videodev snd btusb shpchp cfg80211 nfs media soundcore
pci_hotplug acpi_cpufreq bluetooth mperf joydev i2c_nforce2 microcode
nfs_acl bcm5974 applesmc rfkill lockd pcspkr input_polldev processor
auth_rpcgss evdev coretemp ac battery apple_bl sunrpc fscache ext4
jbd2 mbcache crc16 dm_snapshot dm_mod squashfs loop isofs hid_apple
usbhid hid sr_mod cdrom sd_mod pata_acpi ata_generic nouveau ohci_hcd
video ahci libahci mxm_wmi wmi i2c_algo_bit drm_kms_helper ttm ssb
libata mmc_core drm pcmcia pcmcia_core scsi_mod ehci_hcd i2c_core
forcedeth usbcore usb_common button
[  391.241462]
[  391.241462] Pid: 1195, comm: rmmod Not tainted 3.4.5-1-ARCH #1
Apple Inc. MacBook5,1/Mac-F42D89C8
[  391.241462] RIP: 0010:[<ffffffff8106cbb5>]  [<ffffffff8106cbb5>]
drain_workqueue+0x25/0x1f0
[  391.241462] RSP: 0018:ffff880139e13d28  EFLAGS: 00010246
[  391.241462] RAX: 0000000000002828 RBX: ffff88013228c5c0 RCX: 0000000000000000
[  391.241462] RDX: 0000000000000028 RSI: 0000000000000282 RDI: ffffffff81a21880
[  391.241462] RBP: ffff880139e13d68 R08: ffffffff8189d180 R09: 0000000000000040
[  391.241462] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
[  391.241462] R13: ffff880134a5e300 R14: 0000000001915010 R15: 0000000000000002
[  391.241462] FS:  00007f5acfab1700(0000) GS:ffff88013fd00000(0000)
knlGS:0000000000000000
[  391.241462] CS:  0010 DS: 0000 ES: 0000 CR0: 000000008005003b
[  391.241462] CR2: 0000000000000098 CR3: 000000013803c000 CR4: 00000000000007e0
[  391.241462] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  391.241462] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 0000000000000400
[  391.241462] Process rmmod (pid: 1195, threadinfo ffff880139e12000,
task ffff880134a78000)
[  391.241462] Stack:
[  391.241462]  ffff880139e13d58 ffffffff81361104 0000000000000000
ffff88013228c5c0
[  391.241462]  0000000000000000 ffff880134a5e300 0000000001915010
0000000000000002
[  391.241462]  ffff880139e13d98 ffffffff8106cd98 ffff88013228c5c0
ffff880133245000
[  391.241462] Call Trace:
[  391.241462]  [<ffffffff81361104>] ? skb_dequeue+0x64/0x80
[  391.241462]  [<ffffffff8106cd98>] destroy_workqueue+0x18/0x190
[  391.241462]  [<ffffffffa06ba1c9>]
ieee80211_unregister_hw+0xe9/0x120 [mac80211]
[  391.241462]  [<ffffffffa078af6d>] b43_ssb_remove+0xad/0xb0 [b43]
[  391.241462]  [<ffffffffa01e05e0>] ssb_device_remove+0x30/0x50 [ssb]
[  391.241462]  [<ffffffff8130f70c>] __device_release_driver+0x7c/0xe0
[  391.241462]  [<ffffffff81310018>] driver_detach+0xc8/0xd0
[  391.241462]  [<ffffffff8130f4c1>] bus_remove_driver+0x81/0xe0
[  391.241462]  [<ffffffff81310502>] driver_unregister+0x62/0xa0
[  391.241462]  [<ffffffffa01e0922>] ssb_driver_unregister+0x12/0x20 [ssb]
[  391.241462]  [<ffffffffa07b3638>] b43_exit+0x10/0x32 [b43]
[  391.241462]  [<ffffffff810b0532>] sys_delete_module+0x152/0x2a0
[  391.241462]  [<ffffffff8146a8e9>] system_call_fastpath+0x16/0x1b
[  391.241462] Code: 0f 0b 0f 1f 40 00 55 48 89 e5 41 57 41 56 41 55
41 54 53 48 83 ec 18 66 66 66 66 90 49 89 fc 48 c7 c7 80 18 a2 81 e8
eb ca 3f 00 <41> 8b 84 24 98 00 00 00 8d 50 01 85 c0 41 89 94 24 98 00
00 00
[  391.241462] RIP  [<ffffffff8106cbb5>] drain_workqueue+0x25/0x1f0
[  391.241462]  RSP <ffff880139e13d28>
[  391.241462] CR2: 0000000000000098
[  391.274880] ---[ end trace a9f41ab5fae1b4a2 ]---
[  391.275584] note: rmmod[1195] exited with preempt_count 1
[  391.276323] BUG: scheduling while atomic: rmmod/1195/0x10000002
[  391.277053] Modules linked in: snd_hda_codec_realtek snd_hda_intel
b43(-) snd_hda_codec bcma uvcvideo snd_hwdep mac80211 snd_pcm
videobuf2_vmalloc videobuf2_memops snd_page_alloc videobuf2_core
snd_timer videodev snd btusb shpchp cfg80211 nfs media soundcore
pci_hotplug acpi_cpufreq bluetooth mperf joydev i2c_nforce2 microcode
nfs_acl bcm5974 applesmc rfkill lockd pcspkr input_polldev processor
auth_rpcgss evdev coretemp ac battery apple_bl sunrpc fscache ext4
jbd2 mbcache crc16 dm_snapshot dm_mod squashfs loop isofs hid_apple
usbhid hid sr_mod cdrom sd_mod pata_acpi ata_generic nouveau ohci_hcd
video ahci libahci mxm_wmi wmi i2c_algo_bit drm_kms_helper ttm ssb
libata mmc_core drm pcmcia pcmcia_core scsi_mod ehci_hcd i2c_core
forcedeth usbcore usb_common button
[  391.281099] Pid: 1195, comm: rmmod Tainted: G      D      3.4.5-1-ARCH #1
[  391.281904] Call Trace:
[  391.282668]  [<ffffffff81460d6f>] __schedule_bug+0x4d/0x4f
[  391.283432]  [<ffffffff814689d8>] __schedule+0x8c8/0x900
[  391.284149]  [<ffffffff8128f726>] ? fbcon_scroll+0x206/0xd00
[  391.284864]  [<ffffffff8128d250>] ? get_color.isra.14+0x40/0x150
[  391.285574]  [<ffffffff81081bba>] __cond_resched+0x2a/0x40
[  391.286274]  [<ffffffff81468a90>] _cond_resched+0x30/0x40
[  391.286985]  [<ffffffff81131601>] unmap_single_vma+0x431/0x820
[  391.287666]  [<ffffffff811194cf>] ? release_pages+0x1cf/0x220
[  391.288355]  [<ffffffff8113224e>] unmap_vmas+0x5e/0xb0
[  391.289043]  [<ffffffff8113a11f>] exit_mmap+0x9f/0x150
[  391.289733]  [<ffffffff8104e919>] mmput+0x59/0x130
[  391.290429]  [<ffffffff810558d8>] exit_mm+0x108/0x130
[  391.291092]  [<ffffffff81469a15>] ? _raw_spin_unlock_irq+0x35/0x40
[  391.291762]  [<ffffffff81055a5f>] do_exit+0x15f/0x940
[  391.292441]  [<ffffffff81053834>] ? kmsg_dump+0xc4/0x110
[  391.293123]  [<ffffffff81017f3d>] oops_end+0x9d/0xe0
[  391.293805]  [<ffffffff8146016e>] no_context+0x264/0x290
[  391.294457]  [<ffffffff8146054e>] __bad_area_nosemaphore+0x1cf/0x1ee
[  391.295110]  [<ffffffff81460580>] bad_area_nosemaphore+0x13/0x15
[  391.295763]  [<ffffffff81042c2a>] do_page_fault+0x3aa/0x480
[  391.296414]  [<ffffffff81086e05>] ? cpuacct_charge+0x75/0xb0
[  391.297069]  [<ffffffff810135c3>] ? __switch_to+0x163/0x410
[  391.297698]  [<ffffffff8107f109>] ? finish_task_switch+0x49/0xd0
[  391.298337]  [<ffffffff8146a265>] page_fault+0x25/0x30
[  391.298976]  [<ffffffff8106cbb5>] ? drain_workqueue+0x25/0x1f0
[  391.299610]  [<ffffffff8106cbb5>] ? drain_workqueue+0x25/0x1f0
[  391.300256]  [<ffffffff81361104>] ? skb_dequeue+0x64/0x80
[  391.300872]  [<ffffffff8106cd98>] destroy_workqueue+0x18/0x190
[  391.301510]  [<ffffffffa06ba1c9>]
ieee80211_unregister_hw+0xe9/0x120 [mac80211]
[  391.302146]  [<ffffffffa078af6d>] b43_ssb_remove+0xad/0xb0 [b43]
[  391.302790]  [<ffffffffa01e05e0>] ssb_device_remove+0x30/0x50 [ssb]
[  391.303445]  [<ffffffff8130f70c>] __device_release_driver+0x7c/0xe0
[  391.304080]  [<ffffffff81310018>] driver_detach+0xc8/0xd0
[  391.304728]  [<ffffffff8130f4c1>] bus_remove_driver+0x81/0xe0
[  391.305367]  [<ffffffff81310502>] driver_unregister+0x62/0xa0
[  391.305996]  [<ffffffffa01e0922>] ssb_driver_unregister+0x12/0x20 [ssb]
[  391.306605]  [<ffffffffa07b3638>] b43_exit+0x10/0x32 [b43]
[  391.307224]  [<ffffffff810b0532>] sys_delete_module+0x152/0x2a0
[  391.307813]  [<ffffffff8146a8e9>] system_call_fastpath+0x16/0x1b
