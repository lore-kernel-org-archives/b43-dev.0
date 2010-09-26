From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sun, 26 Sep 2010 21:53:16 +0200
Subject: 14e4:4315 chipset glitchy Monitor mode
In-Reply-To: <alpine.DEB.2.00.1009260218150.18060@niemands>
References: <alpine.DEB.2.00.1009260218150.18060@niemands>
Message-ID: <AANLkTin5v8aUrMh-xGzHb-NA3Q0uq6BqMbeR5P+Pr1Ro@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, Sep 26, 2010 at 11:42 AM, Nimrod Omer <nimrodomer@gmail.com> wrote:
> Hi there,
>
> I googled query variations on my problem, through various email lists, but
> ultimately failed to find a solution. This is my first email to this list,
> so I can only hope that I am following proper protocol
> . My apologies if I am not.
>
> My problem is that my wifi card spontaneously stops working in Monitor mode.
> It used to work just fine when I was using Karmic, around kernel 2.6.28
> -ish, but stopped at the later kernel updates (I believe it was kernel
> 2.6.31). I upgraded to Lucid, but the problem persisted.
>
> Other than that, the b43 driver works great (thank you, developers!). I
> followed the directions on the compat-wireless site exactly for the LP-PHY
> 14e4:4315 chipset, and I did modinfo and ls -l to confirm that the b43
> driver was updated. In Managed mode it does just about everything I want.
>
> (NB: I didn't install compat-wireless via
> linux-backports-modules-wireless-lucid-generic, but compiled and installed
> everything manually per the website instructions--as I assumed you have to
> do for the 14e4:4315 LP-PHY chipset)
>
> This is what I do to test for Monitor mode:
> 1. cd into the 9-12-2010 compat-wireless folder, and sudo make wlunload
> 2. sudo modprobe b43
> 3. sudo service avahi-daemon stop
> 4. sudo service network-manager stop
> 5. sudo airmon-ng check kill (gets rid of wpa_supplicant, and I assume
> ? ? ? ?that dhclient went away with network-manager)
> 6. sudo ifconfig wlan0 down
> 7. sudo iwconfig wlan0 mode Monitor channel 1
> 8. sudo ifconfig wlan0 up
> 9. sudo tcpdump -i wlan0

Instead of steps 6..9, do:
6. sudo airmon-ng start wlan0 1
7. sudo tcpdump -i mon0

Also, what happens if you simultaneously run "airodump-ng -c 1,1 mon0"
in the background?

>
> In a few seconds the tcpdump will just stop. If I ^c it, and do it again no
> packets are captured at all. To make it work again, I have to repeat steps 6
> - 8.
>
> One thing of note: certain channels are glitchier than others. Specifically:
> 1, 2 will capture over 1000 packets (often several k's) before failing
> 3, 4, 5, 6, 7 generally fail before capturing 1000 packets
> 8, 9, 10, 11, 12, 13 generally fail before capture 100 packets (though
> usually
> ? ? ? ?it's closer to < 10)
>
> Here's some info on the system I have:
>
> $ uname -a
> Linux computername 2.6.32-24-generic #43-Ubuntu SMP Thu Sep 16 14:17:33 UTC
> 2010 i686 GNU/Linux
> $ lspci -vnn | grep 14e4
> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4312 802.11b/g
> [14e4:4315] (rev 01)
> $ modinfo b43
> filename:
> /lib/modules/2.6.32-24-generic/updates/drivers/net/wireless/b43/b43.ko
> firmware: ? ? ? b43/ucode9.fw
> firmware: ? ? ? b43/ucode5.fw
> firmware: ? ? ? b43/ucode15.fw
> firmware: ? ? ? b43/ucode14.fw
> firmware: ? ? ? b43/ucode13.fw
> firmware: ? ? ? b43/ucode11.fw
> firmware: ? ? ? FW13
> license: ? ? ? ?GPL
> author: ? ? ? ? G?bor Stefanik
> author: ? ? ? ? Michael Buesch
> author: ? ? ? ? Stefano Brivio
> author: ? ? ? ? Martin Langer
> description: ? ?Broadcom B43 wireless driver
> srcversion: ? ? 0E1FC248C1F9F84ED6D2E6F
> alias: ? ? ? ? ?pcmcia:m02D0c0476f*fn*pfn*pa*pb*pc*pd*
> alias: ? ? ? ? ?pcmcia:m02D0c0448f*fn*pfn*pa*pb*pc*pd*
> alias: ? ? ? ? ?ssb:v4243id0812rev10*
> alias: ? ? ? ? ?ssb:v4243id0812rev0F*
> alias: ? ? ? ? ?ssb:v4243id0812rev0D*
> alias: ? ? ? ? ?ssb:v4243id0812rev0C*
> alias: ? ? ? ? ?ssb:v4243id0812rev0B*
> alias: ? ? ? ? ?ssb:v4243id0812rev0A*
> alias: ? ? ? ? ?ssb:v4243id0812rev09*
> alias: ? ? ? ? ?ssb:v4243id0812rev07*
> alias: ? ? ? ? ?ssb:v4243id0812rev06*
> alias: ? ? ? ? ?ssb:v4243id0812rev05*
> depends: ? ? ? ?pcmcia,ssb,compat_firmware_class,mac80211,led-class,cfg80211
> vermagic: ? ? ? 2.6.32-24-generic SMP mod_unload modversions 586 parm:
> ? ? bad_frames_preempt:enable(1) / disable(0) Bad Frames Preemption (int)
> parm: ? ? ? ? ? fwpostfix:Postfix for the .fw files to load. (string)
> parm: ? ? ? ? ? hwpctl:Enable hardware-side power control (default off)
> (int)
> parm: ? ? ? ? ? nohwcrypt:Disable hardware encryption. (int)
> parm: ? ? ? ? ? hwtkip:Enable hardware tkip. (int)
> parm: ? ? ? ? ? qos:Enable QOS support (default on) (int)
> parm: ? ? ? ? ? btcoex:Enable Bluetooth coexistence (default on) (int)
> parm: ? ? ? ? ? verbose:Log message verbosity: 0=error, 1=warn,
> 2=info(default), 3=debug (int)
> parm: ? ? ? ? ? pio:Use PIO accesses by default: 0=DMA, 1=PIO (int)
> $ ls -l
> /lib/modules/2.6.32-24-generic/updates/drivers/net/wireless/b43/b43.ko
> -rw-r--r-- 1 root root 287686 2010-09-25 15:34
> /lib/modules/2.6.32-24-generic/updates/drivers/net/wireless/b43/b43.ko
>
> I'm currently running the b43 driver out of compat-wireless-2010-09-12,
> downloaded from http://wireless.kernel.org/download/compat-wireless-2.6/. As
> of the other day, it is the second to latest daily snapshot of the bleeding
> edge version. I made two patches: one was the
> channel-negative-one-maxim.patch and the other was the
> mac80211.compat08082009.wl_frag+ack_v1.patch (both of which haven't given me
> grief in the past).
>
> $ lspci -vvn|grep 43 -A7
> 03:00.0 0280: 14e4:4315 (rev 01)
> ? ? ? ?Subsystem: 1028:000c
> ? ? ? ?Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
> Stepping- SERR- FastB2B- DisINTx-
> ? ? ? ?Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
> ? ? ? ?Latency: 0, Cache Line Size: 64 bytes
> ? ? ? ?Interrupt: pin A routed to IRQ 17
> ? ? ? ?Region 0: Memory at f0100000 (64-bit, non-prefetchable) [size=16K]
> ? ? ? ?Capabilities: <access denied>
> ? ? ? ?Kernel driver in use: b43-pci-bridge
> ? ? ? ?Kernel modules: wl, ssb
>
> 04:00.0 0200: 10ec:8136 (rev 02)
> ? ? ? ?Subsystem: 1028:02f4
> ? ? ? ?Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
> Stepping- SERR- FastB2B- DisINTx+
> ? ? ? ?Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
> ? ? ? ?Latency: 0, Cache Line Size: 64 bytes
>
> $ dmesg
> [ ? ?0.000000] Initializing cgroup subsys cpuset
> [ ? ?0.000000] Initializing cgroup subsys cpu
> [ ? ?0.000000] Linux version 2.6.32-24-generic (buildd at palmer) (gcc version
> 4.4.3 (Ubuntu 4.4.3-4ubuntu5) ) #43-Ubuntu SMP Thu Sep 16 14:17:33 UTC 2010
> (Ubuntu 2.6.32-24.43-generic 2.6.32.15+drm33.5)
> [ ? ?0.000000] KERNEL supported cpus:
> [ ? ?0.000000] ? Intel GenuineIntel
> [ ? ?0.000000] ? AMD AuthenticAMD
> [ ? ?0.000000] ? NSC Geode by NSC
> [ ? ?0.000000] ? Cyrix CyrixInstead
> [ ? ?0.000000] ? Centaur CentaurHauls
> [ ? ?0.000000] ? Transmeta GenuineTMx86
> [ ? ?0.000000] ? Transmeta TransmetaCPU
> [ ? ?0.000000] ? UMC UMC UMC UMC
> [ ? ?0.000000] BIOS-provided physical RAM map:
> [ ? ?0.000000] ?BIOS-e820: 0000000000000000 - 000000000009f800 (usable)
> [ ? ?0.000000] ?BIOS-e820: 000000000009f800 - 00000000000a0000 (reserved)
> [ ? ?0.000000] ?BIOS-e820: 00000000000e0000 - 0000000000100000 (reserved)
> [ ? ?0.000000] ?BIOS-e820: 0000000000100000 - 000000003f6d0000 (usable)
> [ ? ?0.000000] ?BIOS-e820: 000000003f6d0000 - 000000003f6e2000 (ACPI data)
> [ ? ?0.000000] ?BIOS-e820: 000000003f6e2000 - 000000003f6e3000 (ACPI NVS)
> [ ? ?0.000000] ?BIOS-e820: 000000003f6e3000 - 0000000040000000 (reserved)
> [ ? ?0.000000] ?BIOS-e820: 00000000e0000000 - 00000000f0000000 (reserved)
> [ ? ?0.000000] ?BIOS-e820: 00000000fec00000 - 00000000fec10000 (reserved)
> [ ? ?0.000000] ?BIOS-e820: 00000000fed00000 - 00000000fed00400 (reserved)
> [ ? ?0.000000] ?BIOS-e820: 00000000fed14000 - 00000000fed1a000 (reserved)
> [ ? ?0.000000] ?BIOS-e820: 00000000fed1c000 - 00000000fed90000 (reserved)
> [ ? ?0.000000] ?BIOS-e820: 00000000fee00000 - 00000000fee01000 (reserved)
> [ ? ?0.000000] ?BIOS-e820: 00000000ff000000 - 0000000100000000 (reserved)
> [ ? ?0.000000] DMI present.
> [ ? ?0.000000] last_pfn = 0x3f6d0 max_arch_pfn = 0x100000
> [ ? ?0.000000] MTRR default type: uncachable
> [ ? ?0.000000] MTRR fixed ranges enabled:
> [ ? ?0.000000] ? 00000-9FFFF write-back
> [ ? ?0.000000] ? A0000-BFFFF uncachable
> [ ? ?0.000000] ? C0000-CFFFF write-protect
> [ ? ?0.000000] ? D0000-DFFFF uncachable
> [ ? ?0.000000] ? E0000-FFFFF write-protect
> [ ? ?0.000000] MTRR variable ranges enabled:
> [ ? ?0.000000] ? 0 base 000000000 mask 0C0000000 write-back
> [ ? ?0.000000] ? 1 base 03F700000 mask 0FFF00000 uncachable
> [ ? ?0.000000] ? 2 base 03F800000 mask 0FF800000 uncachable
> [ ? ?0.000000] ? 3 disabled
> [ ? ?0.000000] ? 4 disabled
> [ ? ?0.000000] ? 5 disabled
> [ ? ?0.000000] ? 6 disabled
> [ ? ?0.000000] ? 7 disabled
> [ ? ?0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new
> 0x7010600070106
> [ ? ?0.000000] e820 update range: 0000000000002000 - 0000000000006000
> (usable) ==> (reserved)
> [ ? ?0.000000] Scanning 1 areas for low memory corruption
> [ ? ?0.000000] modified physical RAM map:
> [ ? ?0.000000] ?modified: 0000000000000000 - 0000000000002000 (usable)
> [ ? ?0.000000] ?modified: 0000000000002000 - 0000000000006000 (reserved)
> [ ? ?0.000000] ?modified: 0000000000006000 - 000000000009f800 (usable)
> [ ? ?0.000000] ?modified: 000000000009f800 - 00000000000a0000 (reserved)
> [ ? ?0.000000] ?modified: 00000000000e0000 - 0000000000100000 (reserved)
> [ ? ?0.000000] ?modified: 0000000000100000 - 000000003f6d0000 (usable)
> [ ? ?0.000000] ?modified: 000000003f6d0000 - 000000003f6e2000 (ACPI data)
> [ ? ?0.000000] ?modified: 000000003f6e2000 - 000000003f6e3000 (ACPI NVS)
> [ ? ?0.000000] ?modified: 000000003f6e3000 - 0000000040000000 (reserved)
> [ ? ?0.000000] ?modified: 00000000e0000000 - 00000000f0000000 (reserved)
> [ ? ?0.000000] ?modified: 00000000fec00000 - 00000000fec10000 (reserved)
> [ ? ?0.000000] ?modified: 00000000fed00000 - 00000000fed00400 (reserved)
> [ ? ?0.000000] ?modified: 00000000fed14000 - 00000000fed1a000 (reserved)
> [ ? ?0.000000] ?modified: 00000000fed1c000 - 00000000fed90000 (reserved)
> [ ? ?0.000000] ?modified: 00000000fee00000 - 00000000fee01000 (reserved)
> [ ? ?0.000000] ?modified: 00000000ff000000 - 0000000100000000 (reserved)
> [ ? ?0.000000] initial memory mapped : 0 - 00c00000
> [ ? ?0.000000] init_memory_mapping: 0000000000000000-00000000377fe000
> [ ? ?0.000000] Using x86 segment limits to approximate NX protection
> [ ? ?0.000000] ?0000000000 - 0000400000 page 4k
> [ ? ?0.000000] ?0000400000 - 0037400000 page 2M
> [ ? ?0.000000] ?0037400000 - 00377fe000 page 4k
> [ ? ?0.000000] kernel direct mapping tables up to 377fe000 @ 7000-c000
> [ ? ?0.000000] RAMDISK: 2eccf000 - 2f95b8c9
> [ ? ?0.000000] ACPI: RSDP 000f7d30 00024 (v02 PTLTD )
> [ ? ?0.000000] ACPI: XSDT 3f6db094 00084 (v01 DELL ? ?CL09 ? ?06040000 ?LTP
> 00000000)
> [ ? ?0.000000] ACPI: FACP 3f6e1bd2 000F4 (v03 INTEL ?CALISTGA 06040000 ALAN
> 00000001)
> [ ? ?0.000000] ACPI: DSDT 3f6dcc7c 04EE2 (v01 INTEL ?CALISTGA 06040000 INTL
> 20050624)
> [ ? ?0.000000] ACPI: FACS 3f6e2fc0 00040
> [ ? ?0.000000] ACPI: APIC 3f6e1cc6 00068 (v01 INTEL ?CALISTGA 06040000 LOHR
> 0000005A)
> [ ? ?0.000000] ACPI: HPET 3f6e1d2e 00038 (v01 INTEL ?CALISTGA 06040000 LOHR
> 0000005A)
> [ ? ?0.000000] ACPI: MCFG 3f6e1d66 0003C (v01 INTEL ?CALISTGA 06040000 LOHR
> 0000005A)
> [ ? ?0.000000] ACPI: TCPA 3f6e1da2 00032 (v01 PTLTD ?CALISTGA 06040000 ?PTL
> 00000001)
> [ ? ?0.000000] ACPI: TMOR 3f6e1dd4 00026 (v01 PTLTD ? ? ? ? ? 06040000 PTL
> ?00000003)
> [ ? ?0.000000] ACPI: APIC 3f6e1dfa 00068 (v01 PTLTD ?? APIC ? 06040000 ?LTP
> 00000000)
> [ ? ?0.000000] ACPI: BOOT 3f6e1e62 00028 (v01 PTLTD ?$SBFTBL$ 06040000 ?LTP
> 00000001)
> [ ? ?0.000000] ACPI: SLIC 3f6e1e8a 00176 (v01 DELL ? ?CL09 ? ?06040000 ?LTP
> 00000000)
> [ ? ?0.000000] ACPI: SSDT 3f6dc62d 0064F (v01 SataRe ?SataPri 00001000 INTL
> 20050624)
> [ ? ?0.000000] ACPI: SSDT 3f6dbf91 0069C (v01 SataRe ?SataSec 00001000 INTL
> 20050624)
> [ ? ?0.000000] ACPI: SSDT 3f6db118 004F6 (v02 ?PmRef ? ?CpuPm 00003000 INTL
> 20050624)
> [ ? ?0.000000] ACPI: BIOS bug: multiple APIC/MADT found, using 0
> [ ? ?0.000000] ACPI: If "acpi_apic_instance=2" works better, notify
> linux-acpi at vger.kernel.org
> [ ? ?0.000000] ACPI: Local APIC address 0xfee00000
> [ ? ?0.000000] 126MB HIGHMEM available.
> [ ? ?0.000000] 887MB LOWMEM available.
> [ ? ?0.000000] ? mapped low ram: 0 - 377fe000
> [ ? ?0.000000] ? low ram: 0 - 377fe000
> [ ? ?0.000000] ? node 0 low ram: 00000000 - 377fe000
> [ ? ?0.000000] ? node 0 bootmap 00008000 - 0000ef00
> [ ? ?0.000000] (9 early reservations) ==> bootmem [0000000000 - 00377fe000]
> [ ? ?0.000000] ? #0 [0000000000 - 0000001000] ? BIOS data page ==>
> [0000000000 - 0000001000]
> [ ? ?0.000000] ? #1 [0000001000 - 0000002000] ? ?EX TRAMPOLINE ==>
> [0000001000 - 0000002000]
> [ ? ?0.000000] ? #2 [0000006000 - 0000007000] ? ? ? TRAMPOLINE ==>
> [0000006000 - 0000007000]
> [ ? ?0.000000] ? #3 [0000100000 - 00008ddeb8] ? ?TEXT DATA BSS ==>
> [0000100000 - 00008ddeb8]
> [ ? ?0.000000] ? #4 [002eccf000 - 002f95b8c9] ? ? ? ? ?RAMDISK ==>
> [002eccf000 - 002f95b8c9]
> [ ? ?0.000000] ? #5 [000009f800 - 0000100000] ? ?BIOS reserved ==>
> [000009f800 - 0000100000]
> [ ? ?0.000000] ? #6 [00008de000 - 00008e1124] ? ? ? ? ? ? ?BRK ==>
> [00008de000 - 00008e1124]
> [ ? ?0.000000] ? #7 [0000007000 - 0000008000] ? ? ? ? ?PGTABLE ==>
> [0000007000 - 0000008000]
> [ ? ?0.000000] ? #8 [0000008000 - 000000f000] ? ? ? ? ?BOOTMAP ==>
> [0000008000 - 000000f000]
> [ ? ?0.000000] found SMP MP-table at [c00f7d60] f7d60
> [ ? ?0.000000] Zone PFN ranges:
> [ ? ?0.000000] ? DMA ? ? ?0x00000000 -> 0x00001000
> [ ? ?0.000000] ? Normal ? 0x00001000 -> 0x000377fe
> [ ? ?0.000000] ? HighMem ?0x000377fe -> 0x0003f6d0
> [ ? ?0.000000] Movable zone start PFN for each node
> [ ? ?0.000000] early_node_map[3] active PFN ranges
> [ ? ?0.000000] ? ? 0: 0x00000000 -> 0x00000002
> [ ? ?0.000000] ? ? 0: 0x00000006 -> 0x0000009f
> [ ? ?0.000000] ? ? 0: 0x00000100 -> 0x0003f6d0
> [ ? ?0.000000] On node 0 totalpages: 259691
> [ ? ?0.000000] free_area_init_node: node 0, pgdat c079a780, node_mem_map
> c1001000
> [ ? ?0.000000] ? DMA zone: 32 pages used for memmap
> [ ? ?0.000000] ? DMA zone: 0 pages reserved
> [ ? ?0.000000] ? DMA zone: 3963 pages, LIFO batch:0
> [ ? ?0.000000] ? Normal zone: 1744 pages used for memmap
> [ ? ?0.000000] ? Normal zone: 221486 pages, LIFO batch:31
> [ ? ?0.000000] ? HighMem zone: 254 pages used for memmap
> [ ? ?0.000000] ? HighMem zone: 32212 pages, LIFO batch:7
> [ ? ?0.000000] Using APIC driver default
> [ ? ?0.000000] ACPI: PM-Timer IO Port: 0x1008
> [ ? ?0.000000] ACPI: Local APIC address 0xfee00000
> [ ? ?0.000000] ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
> [ ? ?0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
> [ ? ?0.000000] ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
> [ ? ?0.000000] ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
> [ ? ?0.000000] ACPI: IOAPIC (id[0x01] address[0xfec00000] gsi_base[0])
> [ ? ?0.000000] IOAPIC[0]: apic_id 1, version 32, address 0xfec00000, GSI
> 0-23
> [ ? ?0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
> [ ? ?0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
> [ ? ?0.000000] ACPI: IRQ0 used by override.
> [ ? ?0.000000] ACPI: IRQ2 used by override.
> [ ? ?0.000000] ACPI: IRQ9 used by override.
> [ ? ?0.000000] Using ACPI (MADT) for SMP configuration information
> [ ? ?0.000000] ACPI: HPET id: 0x8086a201 base: 0xfed00000
> [ ? ?0.000000] SMP: Allowing 2 CPUs, 0 hotplug CPUs
> [ ? ?0.000000] nr_irqs_gsi: 24
> [ ? ?0.000000] PM: Registered nosave memory: 0000000000002000 -
> 0000000000006000
> [ ? ?0.000000] PM: Registered nosave memory: 000000000009f000 -
> 00000000000a0000
> [ ? ?0.000000] PM: Registered nosave memory: 00000000000a0000 -
> 00000000000e0000
> [ ? ?0.000000] PM: Registered nosave memory: 00000000000e0000 -
> 0000000000100000
> [ ? ?0.000000] Allocating PCI resources starting at 40000000 (gap:
> 40000000:a0000000)
> [ ? ?0.000000] Booting paravirtualized kernel on bare hardware
> [ ? ?0.000000] NR_CPUS:8 nr_cpumask_bits:8 nr_cpu_ids:2 nr_node_ids:1
> [ ? ?0.000000] PERCPU: Embedded 14 pages/cpu @c1800000 s36056 r0 d21288
> u2097152
> [ ? ?0.000000] pcpu-alloc: s36056 r0 d21288 u2097152 alloc=1*4194304
> [ ? ?0.000000] pcpu-alloc: [0] 0 1 [ ? ?0.000000] Built 1 zonelists in Zone
> order, mobility grouping on. ?Total pages: 257661
> [ ? ?0.000000] Kernel command line:
> BOOT_IMAGE=/boot/vmlinuz-2.6.32-24-generic
> root=UUID=540d8d65-8202-4f9d-832e-598b0e894a4f ro quiet splash
> [ ? ?0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
> [ ? ?0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288
> bytes)
> [ ? ?0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144
> bytes)
> [ ? ?0.000000] Enabling fast FPU save and restore... done.
> [ ? ?0.000000] Enabling unmasked SIMD FPU exception support... done.
> [ ? ?0.000000] Initializing CPU#0
> [ ? ?0.000000] allocated 5195840 bytes of page_cgroup
> [ ? ?0.000000] please try 'cgroup_disable=memory' option if you don't want
> memory cgroups
> [ ? ?0.000000] Initializing HighMem for node 0 (000377fe:0003f6d0)
> [ ? ?0.000000] Memory: 1003136k/1039168k available (4679k kernel code,
> 35084k reserved, 2124k data, 660k init, 129864k highmem)
> [ ? ?0.000000] virtual kernel memory layout:
> [ ? ?0.000000] ? ? fixmap ?: 0xfff1d000 - 0xfffff000 ? ( 904 kB)
> [ ? ?0.000000] ? ? pkmap ? : 0xff800000 - 0xffc00000 ? (4096 kB)
> [ ? ?0.000000] ? ? vmalloc : 0xf7ffe000 - 0xff7fe000 ? ( 120 MB)
> [ ? ?0.000000] ? ? lowmem ?: 0xc0000000 - 0xf77fe000 ? ( 887 MB)
> [ ? ?0.000000] ? ? ? .init : 0xc07a5000 - 0xc084a000 ? ( 660 kB)
> [ ? ?0.000000] ? ? ? .data : 0xc0591e33 - 0xc07a4e88 ? (2124 kB)
> [ ? ?0.000000] ? ? ? .text : 0xc0100000 - 0xc0591e33 ? (4679 kB)
> [ ? ?0.000000] Checking if this processor honours the WP bit even in
> supervisor mode...Ok.
> [ ? ?0.000000] SLUB: Genslabs=13, HWalign=64, Order=0-3, MinObjects=0,
> CPUs=2, Nodes=1
> [ ? ?0.000000] Hierarchical RCU implementation.
> [ ? ?0.000000] NR_IRQS:2304 nr_irqs:424
> [ ? ?0.000000] Extended CMOS year: 2000
> [ ? ?0.000000] Console: colour VGA+ 80x25
> [ ? ?0.000000] console [tty0] enabled
> [ ? ?0.000000] hpet clockevent registered
> [ ? ?0.000000] HPET: 3 timers in total, 0 timers will be used for per-cpu
> timer
> [ ? ?0.000000] Fast TSC calibration using PIT
> [ ? ?0.000000] Detected 1595.863 MHz processor.
> [ ? ?0.004009] Calibrating delay loop (skipped), value calculated using
> timer frequency.. 3191.72 BogoMIPS (lpj=6383452)
> [ ? ?0.008014] Security Framework initialized
> [ ? ?0.008057] AppArmor: AppArmor initialized
> [ ? ?0.008075] Mount-cache hash table entries: 512
> [ ? ?0.008315] Initializing cgroup subsys ns
> [ ? ?0.008325] Initializing cgroup subsys cpuacct
> [ ? ?0.008335] Initializing cgroup subsys memory
> [ ? ?0.008349] Initializing cgroup subsys devices
> [ ? ?0.008357] Initializing cgroup subsys freezer
> [ ? ?0.008362] Initializing cgroup subsys net_cls
> [ ? ?0.008400] CPU: L1 I cache: 32K, L1 D cache: 24K
> [ ? ?0.008407] CPU: L2 cache: 512K
> [ ? ?0.008412] CPU: Physical Processor ID: 0
> [ ? ?0.008417] CPU: Processor Core ID: 0
> [ ? ?0.008424] mce: CPU supports 5 MCE banks
> [ ? ?0.008441] CPU0: Thermal monitoring enabled (TM1)
> [ ? ?0.008451] using mwait in idle threads.
> [ ? ?0.008463] Performance Events: Atom events, Intel PMU driver.
> [ ? ?0.008480] ... version: ? ? ? ? ? ? ? ?3
> [ ? ?0.008485] ... bit width: ? ? ? ? ? ? ?40
> [ ? ?0.008489] ... generic registers: ? ? ?2
> [ ? ?0.008494] ... value mask: ? ? ? ? ? ? 000000ffffffffff
> [ ? ?0.008499] ... max period: ? ? ? ? ? ? 000000007fffffff
> [ ? ?0.008504] ... fixed-purpose events: ? 3
> [ ? ?0.008509] ... event mask: ? ? ? ? ? ? 0000000700000003
> [ ? ?0.008518] Checking 'hlt' instruction... OK.
> [ ? ?0.024010] Disabling 4MB page tables to avoid TLB bug
> [ ? ?0.028431] ACPI: Core revision 20090903
> [ ? ?0.044019] ftrace: converting mcount calls to 0f 1f 44 00 00
> [ ? ?0.044031] ftrace: allocating 21780 entries in 43 pages
> [ ? ?0.048108] Enabling APIC mode: ?Flat. ?Using 1 I/O APICs
> [ ? ?0.048515] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
> [ ? ?0.092061] CPU0: Intel(R) Atom(TM) CPU N270 ? @ 1.60GHz stepping 02
> [ ? ?0.096001] Booting processor 1 APIC 0x1 ip 0x6000
> [ ? ?0.008000] Initializing CPU#1
> [ ? ?0.008000] CPU: L1 I cache: 32K, L1 D cache: 24K
> [ ? ?0.008000] CPU: L2 cache: 512K
> [ ? ?0.008000] CPU: Physical Processor ID: 0
> [ ? ?0.008000] CPU: Processor Core ID: 0
> [ ? ?0.008000] CPU1: Thermal monitoring enabled (TM1)
> [ ? ?0.180140] CPU1: Intel(R) Atom(TM) CPU N270 ? @ 1.60GHz stepping 02
> [ ? ?0.180169] checking TSC synchronization [CPU#0 -> CPU#1]: passed.
> [ ? ?0.184037] Brought up 2 CPUs
> [ ? ?0.184044] Total of 2 processors activated (6383.67 BogoMIPS).
> [ ? ?0.184292] CPU0 attaching sched-domain:
> [ ? ?0.184302] ?domain 0: span 0-1 level SIBLING
> [ ? ?0.184307] ? groups: 0 (cpu_power = 589) 1 (cpu_power = 589)
> [ ? ?0.184322] ? domain 1: span 0-1 level MC
> [ ? ?0.184327] ? ?groups: 0-1 (cpu_power = 1178)
> [ ? ?0.184339] CPU1 attaching sched-domain:
> [ ? ?0.184344] ?domain 0: span 0-1 level SIBLING
> [ ? ?0.184349] ? groups: 1 (cpu_power = 589) 0 (cpu_power = 589)
> [ ? ?0.184361] ? domain 1: span 0-1 level MC
> [ ? ?0.184366] ? ?groups: 0-1 (cpu_power = 1178)
> [ ? ?0.184596] devtmpfs: initialized
> [ ? ?0.184596] regulator: core version 0.5
> [ ? ?0.184596] Time: 23:28:06 ?Date: 09/25/10
> [ ? ?0.184596] NET: Registered protocol family 16
> [ ? ?0.184596] Trying to unpack rootfs image as initramfs...
> [ ? ?0.184596] EISA bus registered
> [ ? ?0.184600] ACPI: bus type pci registered
> [ ? ?0.184775] PCI: MCFG configuration 0: base e0000000 segment 0 buses 0 -
> 255
> [ ? ?0.184784] PCI: MCFG area at e0000000 reserved in E820
> [ ? ?0.184790] PCI: Using MMCONFIG for extended config space
> [ ? ?0.184796] PCI: Using configuration type 1 for base access
> [ ? ?0.190069] bio: create slab <bio-0> at 0
> [ ? ?0.192511] ACPI: EC: Look up EC in DSDT
> [ ? ?0.199295] ACPI: BIOS _OSI(Linux) query ignored
> [ ? ?0.204475] ACPI: Interpreter enabled
> [ ? ?0.204475] ACPI: (supports S0 S3 S4 S5)
> [ ? ?0.204475] ACPI: Using IOAPIC for interrupt routing
> [ ? ?0.262616] ACPI: EC: GPE = 0x19, I/O: command/status = 0x66, data = 0x62
> [ ? ?0.263596] ACPI: No dock devices found.
> [ ? ?0.264993] ACPI: PCI Root Bridge [PCI0] (0000:00)
> [ ? ?0.265207] pci 0000:00:02.0: reg 10 32bit mmio: [0xf0000000-0xf007ffff]
> [ ? ?0.265221] pci 0000:00:02.0: reg 14 io port: [0x1800-0x1807]
> [ ? ?0.265233] pci 0000:00:02.0: reg 18 32bit mmio pref:
> [0xd0000000-0xdfffffff]
> [ ? ?0.265246] pci 0000:00:02.0: reg 1c 32bit mmio: [0xf0200000-0xf023ffff]
> [ ? ?0.265315] pci 0000:00:02.1: reg 10 32bit mmio: [0xf0080000-0xf00fffff]
> [ ? ?0.265484] pci 0000:00:1b.0: reg 10 64bit mmio: [0xf0440000-0xf0443fff]
> [ ? ?0.265571] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
> [ ? ?0.265583] pci 0000:00:1b.0: PME# disabled
> [ ? ?0.265715] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
> [ ? ?0.265726] pci 0000:00:1c.0: PME# disabled
> [ ? ?0.265867] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
> [ ? ?0.265880] pci 0000:00:1c.1: PME# disabled
> [ ? ?0.266020] pci 0000:00:1c.2: PME# supported from D0 D3hot D3cold
> [ ? ?0.266031] pci 0000:00:1c.2: PME# disabled
> [ ? ?0.266130] pci 0000:00:1d.0: reg 20 io port: [0x1820-0x183f]
> [ ? ?0.266227] pci 0000:00:1d.1: reg 20 io port: [0x1840-0x185f]
> [ ? ?0.266324] pci 0000:00:1d.2: reg 20 io port: [0x1860-0x187f]
> [ ? ?0.266419] pci 0000:00:1d.3: reg 20 io port: [0x1880-0x189f]
> [ ? ?0.266522] pci 0000:00:1d.7: reg 10 32bit mmio: [0xf0444000-0xf04443ff]
> [ ? ?0.266611] pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
> [ ? ?0.266623] pci 0000:00:1d.7: PME# disabled
> [ ? ?0.266876] pci 0000:00:1f.0: quirk: region 1000-107f claimed by ICH6
> ACPI/GPIO/TCO
> [ ? ?0.266889] pci 0000:00:1f.0: quirk: region 1180-11bf claimed by ICH6
> GPIO
> [ ? ?0.266900] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 1 PIO at 0680
> (mask 007f)
> [ ? ?0.266911] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 2 PIO at ff2c
> (mask 007f)
> [ ? ?0.266924] pci 0000:00:1f.0: ICH7 LPC Generic IO decode 4 PIO at 0068
> (mask 0007)
> [ ? ?0.267018] pci 0000:00:1f.2: reg 10 io port: [0x00-0x07]
> [ ? ?0.267034] pci 0000:00:1f.2: reg 14 io port: [0x00-0x03]
> [ ? ?0.267049] pci 0000:00:1f.2: reg 18 io port: [0x00-0x07]
> [ ? ?0.267064] pci 0000:00:1f.2: reg 1c io port: [0x00-0x03]
> [ ? ?0.267079] pci 0000:00:1f.2: reg 20 io port: [0x1810-0x181f]
> [ ? ?0.267095] pci 0000:00:1f.2: reg 24 32bit mmio: [0x000000-0x0003ff]
> [ ? ?0.267140] pci 0000:00:1f.2: PME# supported from D3hot
> [ ? ?0.267151] pci 0000:00:1f.2: PME# disabled
> [ ? ?0.267231] pci 0000:00:1f.3: reg 20 io port: [0x18c0-0x18df]
> [ ? ?0.267755] pci 0000:03:00.0: reg 10 64bit mmio: [0xf0100000-0xf0103fff]
> [ ? ?0.268066] pci 0000:03:00.0: supports D1 D2
> [ ? ?0.268074] pci 0000:03:00.0: PME# supported from D0 D3hot D3cold
> [ ? ?0.268089] pci 0000:03:00.0: PME# disabled
> [ ? ?0.268258] pci 0000:00:1c.1: bridge 32bit mmio: [0xf0100000-0xf01fffff]
> [ ? ?0.268464] pci 0000:04:00.0: reg 10 io port: [0x2000-0x20ff]
> [ ? ?0.268553] pci 0000:04:00.0: reg 18 64bit mmio pref:
> [0xf0510000-0xf0510fff]
> [ ? ?0.268615] pci 0000:04:00.0: reg 20 64bit mmio pref:
> [0xf0500000-0xf050ffff]
> [ ? ?0.268651] pci 0000:04:00.0: reg 30 32bit mmio pref: [0x000000-0x01ffff]
> [ ? ?0.268826] pci 0000:04:00.0: supports D1 D2
> [ ? ?0.268833] pci 0000:04:00.0: PME# supported from D0 D1 D2 D3hot D3cold
> [ ? ?0.268854] pci 0000:04:00.0: PME# disabled
> [ ? ?0.269034] pci 0000:00:1c.2: bridge io port: [0x2000-0x2fff]
> [ ? ?0.269054] pci 0000:00:1c.2: bridge 64bit mmio pref:
> [0xf0500000-0xf05fffff]
> [ ? ?0.269142] pci 0000:00:1e.0: transparent bridge
> [ ? ?0.269201] pci_bus 0000:00: on NUMA node 0
> [ ? ?0.269224] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
> [ ? ?0.269806] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP01._PRT]
> [ ? ?0.270098] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP02._PRT]
> [ ? ?0.270332] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.RP03._PRT]
> [ ? ?0.270641] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.PCIB._PRT]
> [ ? ?0.291826] ACPI: PCI Interrupt Link [LNKA] (IRQs 1 3 4 5 6 *7 10 12 14
> 15)
> [ ? ?0.292142] ACPI: PCI Interrupt Link [LNKB] (IRQs 1 3 4 5 6 7 *11 12 14
> 15)
> [ ? ?0.292435] ACPI: PCI Interrupt Link [LNKC] (IRQs 1 3 4 5 6 7 10 12 14
> 15) *11
> [ ? ?0.292736] ACPI: PCI Interrupt Link [LNKD] (IRQs 1 3 4 5 6 7 11 12 14
> 15) *10
> [ ? ?0.293011] ACPI: PCI Interrupt Link [LNKE] (IRQs 1 3 4 5 6 7 10 12 14
> 15) *0, disabled.
> [ ? ?0.293282] ACPI: PCI Interrupt Link [LNKF] (IRQs 1 3 4 5 6 7 11 12 14
> 15) *0, disabled.
> [ ? ?0.293582] ACPI: PCI Interrupt Link [LNKG] (IRQs 1 3 4 5 6 7 *10 12 14
> 15)
> [ ? ?0.293864] ACPI: PCI Interrupt Link [LNKH] (IRQs 1 3 4 *5 6 7 11 12 14
> 15)
> [ ? ?0.294184] vgaarb: device added:
> PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
> [ ? ?0.294215] vgaarb: loaded
> [ ? ?0.294574] SCSI subsystem initialized
> [ ? ?0.294808] libata version 3.00 loaded.
> [ ? ?0.295039] usbcore: registered new interface driver usbfs
> [ ? ?0.295083] usbcore: registered new interface driver hub
> [ ? ?0.295170] usbcore: registered new device driver usb
> [ ? ?0.295642] ACPI: WMI: Mapper loaded
> [ ? ?0.295649] PCI: Using ACPI for IRQ routing
> [ ? ?0.296489] NetLabel: Initializing
> [ ? ?0.296496] NetLabel: ?domain hash size = 128
> [ ? ?0.296501] NetLabel: ?protocols = UNLABELED CIPSOv4
> [ ? ?0.296534] NetLabel: ?unlabeled traffic allowed by default
> [ ? ?0.296653] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
> [ ? ?0.296669] hpet0: 3 comparators, 64-bit 14.318180 MHz counter
> [ ? ?0.300626] Switching to clocksource tsc
> [ ? ?0.304975] AppArmor: AppArmor Filesystem Enabled
> [ ? ?0.305025] pnp: PnP ACPI init
> [ ? ?0.305067] ACPI: bus type pnp registered
> [ ? ?0.326997] pnp: PnP ACPI: found 11 devices
> [ ? ?0.327006] ACPI: ACPI bus type pnp unregistered
> [ ? ?0.327016] PnPBIOS: Disabled by ACPI PNP
> [ ? ?0.327050] system 00:01: iomem range 0xe0000000-0xefffffff has been
> reserved
> [ ? ?0.327062] system 00:01: iomem range 0xfed14000-0xfed17fff has been
> reserved
> [ ? ?0.327071] system 00:01: iomem range 0xfed18000-0xfed18fff has been
> reserved
> [ ? ?0.327080] system 00:01: iomem range 0xfed19000-0xfed19fff has been
> reserved
> [ ? ?0.327090] system 00:01: iomem range 0xfed1c000-0xfed1ffff has been
> reserved
> [ ? ?0.327101] system 00:01: iomem range 0xfed20000-0xfed3ffff has been
> reserved
> [ ? ?0.327114] system 00:01: iomem range 0xfed40000-0xfed44fff has been
> reserved
> [ ? ?0.327126] system 00:01: iomem range 0xfed45000-0xfed8ffff has been
> reserved
> [ ? ?0.327152] system 00:04: iomem range 0xfed00000-0xfed003ff has been
> reserved
> [ ? ?0.327175] system 00:06: ioport range 0x680-0x69f has been reserved
> [ ? ?0.327185] system 00:06: ioport range 0x800-0x80f has been reserved
> [ ? ?0.327195] system 00:06: ioport range 0x1000-0x107f has been reserved
> [ ? ?0.327205] system 00:06: ioport range 0x1180-0x11bf has been reserved
> [ ? ?0.327214] system 00:06: ioport range 0x1640-0x164f has been reserved
> [ ? ?0.327225] system 00:06: ioport range 0xfe00-0xfe7f has been reserved
> [ ? ?0.327235] system 00:06: ioport range 0xff00-0xff7f has been reserved
> [ ? ?0.327253] system 00:07: ioport range 0x6a0-0x6af has been reserved
> [ ? ?0.327263] system 00:07: ioport range 0x6b0-0x6ff has been reserved
> [ ? ?0.362491] pci 0000:00:1c.0: PCI bridge, secondary bus 0000:02
> [ ? ?0.362504] pci 0000:00:1c.0: ? IO window: 0x3000-0x3fff
> [ ? ?0.362518] pci 0000:00:1c.0: ? MEM window: 0x40000000-0x401fffff
> [ ? ?0.362530] pci 0000:00:1c.0: ? PREFETCH window:
> 0x00000040200000-0x000000403fffff
> [ ? ?0.362546] pci 0000:00:1c.1: PCI bridge, secondary bus 0000:03
> [ ? ?0.362555] pci 0000:00:1c.1: ? IO window: 0x4000-0x4fff
> [ ? ?0.362568] pci 0000:00:1c.1: ? MEM window: 0xf0100000-0xf01fffff
> [ ? ?0.362580] pci 0000:00:1c.1: ? PREFETCH window:
> 0x00000040400000-0x000000405fffff
> [ ? ?0.362598] pci 0000:00:1c.2: PCI bridge, secondary bus 0000:04
> [ ? ?0.362607] pci 0000:00:1c.2: ? IO window: 0x2000-0x2fff
> [ ? ?0.362620] pci 0000:00:1c.2: ? MEM window: 0x40600000-0x409fffff
> [ ? ?0.362631] pci 0000:00:1c.2: ? PREFETCH window:
> 0x000000f0500000-0x000000f05fffff
> [ ? ?0.362647] pci 0000:00:1e.0: PCI bridge, secondary bus 0000:05
> [ ? ?0.362654] pci 0000:00:1e.0: ? IO window: disabled
> [ ? ?0.362666] pci 0000:00:1e.0: ? MEM window: disabled
> [ ? ?0.362676] pci 0000:00:1e.0: ? PREFETCH window: disabled
> [ ? ?0.362723] ? alloc irq_desc for 17 on node -1
> [ ? ?0.362731] ? alloc kstat_irqs on node -1
> [ ? ?0.362749] pci 0000:00:1c.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
> [ ? ?0.362764] pci 0000:00:1c.0: setting latency timer to 64
> [ ? ?0.362787] ? alloc irq_desc for 16 on node -1
> [ ? ?0.362793] ? alloc kstat_irqs on node -1
> [ ? ?0.362804] pci 0000:00:1c.1: PCI INT B -> GSI 16 (level, low) -> IRQ 16
> [ ? ?0.362816] pci 0000:00:1c.1: setting latency timer to 64
> [ ? ?0.362836] ? alloc irq_desc for 18 on node -1
> [ ? ?0.362842] ? alloc kstat_irqs on node -1
> [ ? ?0.362853] pci 0000:00:1c.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
> [ ? ?0.362865] pci 0000:00:1c.2: setting latency timer to 64
> [ ? ?0.362882] pci 0000:00:1e.0: setting latency timer to 64
> [ ? ?0.362894] pci_bus 0000:00: resource 0 io: ?[0x00-0xffff]
> [ ? ?0.362902] pci_bus 0000:00: resource 1 mem: [0x000000-0xffffffff]
> [ ? ?0.362911] pci_bus 0000:02: resource 0 io: ?[0x3000-0x3fff]
> [ ? ?0.362919] pci_bus 0000:02: resource 1 mem: [0x40000000-0x401fffff]
> [ ? ?0.362928] pci_bus 0000:02: resource 2 pref mem [0x40200000-0x403fffff]
> [ ? ?0.362937] pci_bus 0000:03: resource 0 io: ?[0x4000-0x4fff]
> [ ? ?0.362945] pci_bus 0000:03: resource 1 mem: [0xf0100000-0xf01fffff]
> [ ? ?0.362954] pci_bus 0000:03: resource 2 pref mem [0x40400000-0x405fffff]
> [ ? ?0.362963] pci_bus 0000:04: resource 0 io: ?[0x2000-0x2fff]
> [ ? ?0.362971] pci_bus 0000:04: resource 1 mem: [0x40600000-0x409fffff]
> [ ? ?0.362980] pci_bus 0000:04: resource 2 pref mem [0xf0500000-0xf05fffff]
> [ ? ?0.362989] pci_bus 0000:05: resource 3 io: ?[0x00-0xffff]
> [ ? ?0.362997] pci_bus 0000:05: resource 4 mem: [0x000000-0xffffffff]
> [ ? ?0.363098] NET: Registered protocol family 2
> [ ? ?0.363382] IP route cache hash table entries: 32768 (order: 5, 131072
> bytes)
> [ ? ?0.364311] TCP established hash table entries: 131072 (order: 8, 1048576
> bytes)
> [ ? ?0.365513] TCP bind hash table entries: 65536 (order: 7, 524288 bytes)
> [ ? ?0.366103] TCP: Hash tables configured (established 131072 bind 65536)
> [ ? ?0.366113] TCP reno registered
> [ ? ?0.366473] NET: Registered protocol family 1
> [ ? ?0.366530] pci 0000:00:02.0: Boot video device
> [ ? ?0.366752] Simple Boot Flag at 0x36 set to 0x1
> [ ? ?0.367278] cpufreq-nforce2: No nForce2 chipset.
> [ ? ?0.367370] Scanning for low memory corruption every 60 seconds
> [ ? ?0.367707] audit: initializing netlink socket (disabled)
> [ ? ?0.367735] type=2000 audit(1285457286.366:1): initialized
> [ ? ?0.389365] highmem bounce pool size: 64 pages
> [ ? ?0.389383] HugeTLB registered 4 MB page size, pre-allocated 0 pages
> [ ? ?0.394756] VFS: Disk quotas dquot_6.5.2
> [ ? ?0.394961] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
> [ ? ?0.396975] fuse init (API version 7.13)
> [ ? ?0.397274] msgmni has been set to 1706
> [ ? ?0.397969] alg: No test for stdrng (krng)
> [ ? ?0.398172] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 253)
> [ ? ?0.398182] io scheduler noop registered
> [ ? ?0.398188] io scheduler anticipatory registered
> [ ? ?0.398195] io scheduler deadline registered
> [ ? ?0.398352] io scheduler cfq registered (default)
> [ ? ?0.398741] ? alloc irq_desc for 24 on node -1
> [ ? ?0.398748] ? alloc kstat_irqs on node -1
> [ ? ?0.398771] pcieport 0000:00:1c.0: irq 24 for MSI/MSI-X
> [ ? ?0.398792] pcieport 0000:00:1c.0: setting latency timer to 64
> [ ? ?0.399077] ? alloc irq_desc for 25 on node -1
> [ ? ?0.399084] ? alloc kstat_irqs on node -1
> [ ? ?0.399105] pcieport 0000:00:1c.1: irq 25 for MSI/MSI-X
> [ ? ?0.399125] pcieport 0000:00:1c.1: setting latency timer to 64
> [ ? ?0.399431] ? alloc irq_desc for 26 on node -1
> [ ? ?0.399438] ? alloc kstat_irqs on node -1
> [ ? ?0.399457] pcieport 0000:00:1c.2: irq 26 for MSI/MSI-X
> [ ? ?0.399476] pcieport 0000:00:1c.2: setting latency timer to 64
> [ ? ?0.399717] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
> [ ? ?0.400003] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
> [ ? ?0.400697] ACPI: AC Adapter [ACAD] (on-line)
> [ ? ?0.400947] input: Lid Switch as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input0
> [ ? ?0.401064] ACPI: Lid Switch [LID0]
> [ ? ?0.401202] input: Power Button as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input1
> [ ? ?0.401212] ACPI: Power Button [PWRB]
> [ ? ?0.401400] input: Power Button as
> /devices/LNXSYSTM:00/LNXPWRBN:00/input/input2
> [ ? ?0.401409] ACPI: Power Button [PWRF]
> [ ? ?0.403435] ACPI: SSDT 3f6dbc78 00245 (v02 ?PmRef ?Cpu0Ist 00003000 INTL
> 20050624)
> [ ? ?0.404724] ACPI: SSDT 3f6db60e 005E5 (v02 ?PmRef ?Cpu0Cst 00003001 INTL
> 20050624)
> [ ? ?0.406056] Monitor-Mwait will be used to enter C-1 state
> [ ? ?0.406160] Monitor-Mwait will be used to enter C-2 state
> [ ? ?0.406245] Monitor-Mwait will be used to enter C-3 state
> [ ? ?0.406266] Marking TSC unstable due to TSC halts in idle
> [ ? ?0.406453] processor LNXCPU:00: registered as cooling_device0
> [ ? ?0.407531] ACPI: SSDT 3f6dbebd 000D4 (v02 ?PmRef ?Cpu1Ist 00003000 INTL
> 20050624)
> [ ? ?0.408440] ACPI: SSDT 3f6dbbf3 00085 (v02 ?PmRef ?Cpu1Cst 00003000 INTL
> 20050624)
> [ ? ?0.409215] Switching to clocksource hpet
> [ ? ?0.410768] processor LNXCPU:01: registered as cooling_device1
> [ ? ?0.435341] thermal LNXTHERM:01: registered as thermal_zone0
> [ ? ?0.435366] ACPI: Thermal Zone [TZ01] (47 C)
> [ ? ?0.440762] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
> [ ? ?0.445308] brd: module loaded
> [ ? ?0.447002] loop: module loaded
> [ ? ?0.447302] input: Macintosh mouse button emulation as
> /devices/virtual/input/input3
> [ ? ?0.447579] ata_piix 0000:00:1f.2: version 2.13
> [ ? ?0.447618] ? alloc irq_desc for 19 on node -1
> [ ? ?0.447625] ? alloc kstat_irqs on node -1
> [ ? ?0.447642] ata_piix 0000:00:1f.2: PCI INT B -> GSI 19 (level, low) ->
> IRQ 19
> [ ? ?0.447655] ata_piix 0000:00:1f.2: MAP [ P0 P2 -- -- ]
> [ ? ?0.447826] isapnp: Scanning for PnP cards...
> [ ? ?0.628655] ata_piix 0000:00:1f.2: setting latency timer to 64
> [ ? ?0.672620] scsi0 : ata_piix
> [ ? ?0.716595] scsi1 : ata_piix
> [ ? ?0.719279] ata1: SATA max UDMA/133 cmd 0x1f0 ctl 0x3f6 bmdma 0x1810 irq
> 14
> [ ? ?0.719290] ata2: SATA max UDMA/133 cmd 0x170 ctl 0x376 bmdma 0x1818 irq
> 15
> [ ? ?0.720643] Fixed MDIO Bus: probed
> [ ? ?0.720762] PPP generic driver version 2.4.2
> [ ? ?0.720931] tun: Universal TUN/TAP device driver, 1.6
> [ ? ?0.720939] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
> [ ? ?0.721263] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [ ? ?0.721329] ? alloc irq_desc for 23 on node -1
> [ ? ?0.721336] ? alloc kstat_irqs on node -1
> [ ? ?0.721353] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) ->
> IRQ 23
> [ ? ?0.721394] ehci_hcd 0000:00:1d.7: setting latency timer to 64
> [ ? ?0.721404] ehci_hcd 0000:00:1d.7: EHCI Host Controller
> [ ? ?0.721530] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus
> number 1
> [ ? ?0.721578] ehci_hcd 0000:00:1d.7: using broken periodic workaround
> [ ? ?0.721599] ehci_hcd 0000:00:1d.7: debug port 1
> [ ? ?0.725509] ehci_hcd 0000:00:1d.7: cache line size of 32 is not supported
> [ ? ?0.725574] ehci_hcd 0000:00:1d.7: irq 23, io mem 0xf0444000
> [ ? ?0.741162] ACPI: Battery Slot [BAT1] (battery present)
> [ ? ?0.773137] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00
> [ ? ?0.773459] usb usb1: configuration #1 chosen from 1 choice
> [ ? ?0.773554] hub 1-0:1.0: USB hub found
> [ ? ?0.773580] hub 1-0:1.0: 8 ports detected
> [ ? ?0.773763] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
> [ ? ?0.773816] uhci_hcd: USB Universal Host Controller Interface driver
> [ ? ?0.773976] uhci_hcd 0000:00:1d.0: power state changed by ACPI to D0
> [ ? ?0.774044] uhci_hcd 0000:00:1d.0: power state changed by ACPI to D0
> [ ? ?0.774066] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) ->
> IRQ 23
> [ ? ?0.774086] uhci_hcd 0000:00:1d.0: setting latency timer to 64
> [ ? ?0.774096] uhci_hcd 0000:00:1d.0: UHCI Host Controller
> [ ? ?0.774235] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus
> number 2
> [ ? ?0.774285] uhci_hcd 0000:00:1d.0: irq 23, io base 0x00001820
> [ ? ?0.774573] usb usb2: configuration #1 chosen from 1 choice
> [ ? ?0.774671] hub 2-0:1.0: USB hub found
> [ ? ?0.774692] hub 2-0:1.0: 2 ports detected
> [ ? ?0.774841] uhci_hcd 0000:00:1d.1: power state changed by ACPI to D0
> [ ? ?0.774866] uhci_hcd 0000:00:1d.1: power state changed by ACPI to D0
> [ ? ?0.774883] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) ->
> IRQ 19
> [ ? ?0.774902] uhci_hcd 0000:00:1d.1: setting latency timer to 64
> [ ? ?0.774913] uhci_hcd 0000:00:1d.1: UHCI Host Controller
> [ ? ?0.775041] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus
> number 3
> [ ? ?0.775110] uhci_hcd 0000:00:1d.1: irq 19, io base 0x00001840
> [ ? ?0.775387] usb usb3: configuration #1 chosen from 1 choice
> [ ? ?0.775481] hub 3-0:1.0: USB hub found
> [ ? ?0.775506] hub 3-0:1.0: 2 ports detected
> [ ? ?0.775650] uhci_hcd 0000:00:1d.2: power state changed by ACPI to D0
> [ ? ?0.775672] uhci_hcd 0000:00:1d.2: power state changed by ACPI to D0
> [ ? ?0.775689] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) ->
> IRQ 18
> [ ? ?0.775706] uhci_hcd 0000:00:1d.2: setting latency timer to 64
> [ ? ?0.775716] uhci_hcd 0000:00:1d.2: UHCI Host Controller
> [ ? ?0.775835] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus
> number 4
> [ ? ?0.775905] uhci_hcd 0000:00:1d.2: irq 18, io base 0x00001860
> [ ? ?0.776211] usb usb4: configuration #1 chosen from 1 choice
> [ ? ?0.776301] hub 4-0:1.0: USB hub found
> [ ? ?0.776322] hub 4-0:1.0: 2 ports detected
> [ ? ?0.776520] uhci_hcd 0000:00:1d.3: power state changed by ACPI to D0
> [ ? ?0.776583] uhci_hcd 0000:00:1d.3: power state changed by ACPI to D0
> [ ? ?0.776601] uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) ->
> IRQ 16
> [ ? ?0.776621] uhci_hcd 0000:00:1d.3: setting latency timer to 64
> [ ? ?0.776630] uhci_hcd 0000:00:1d.3: UHCI Host Controller
> [ ? ?0.776760] uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus
> number 5
> [ ? ?0.776835] uhci_hcd 0000:00:1d.3: irq 16, io base 0x00001880
> [ ? ?0.777189] usb usb5: configuration #1 chosen from 1 choice
> [ ? ?0.777280] hub 5-0:1.0: USB hub found
> [ ? ?0.777301] hub 5-0:1.0: 2 ports detected
> [ ? ?0.777581] PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64
> irq 1,12
> [ ? ?0.804058] serio: i8042 KBD port at 0x60,0x64 irq 1
> [ ? ?0.804083] serio: i8042 AUX port at 0x60,0x64 irq 12
> [ ? ?0.804526] mice: PS/2 mouse device common for all mice
> [ ? ?0.806349] rtc_cmos 00:08: RTC can wake from S4
> [ ? ?0.806499] rtc_cmos 00:08: rtc core: registered rtc_cmos as rtc0
> [ ? ?0.806552] rtc0: alarms up to one month, y3k, 242 bytes nvram, hpet irqs
> [ ? ?0.806921] device-mapper: uevent: version 1.0.3
> [ ? ?0.807287] device-mapper: ioctl: 4.15.0-ioctl (2009-04-01) initialised:
> dm-devel at redhat.com
> [ ? ?0.807521] device-mapper: multipath: version 1.1.0 loaded
> [ ? ?0.807529] device-mapper: multipath round-robin: version 1.0.0 loaded
> [ ? ?0.807914] EISA: Probing bus 0 at eisa.0
> [ ? ?0.807928] Cannot allocate resource for EISA slot 1
> [ ? ?0.807936] Cannot allocate resource for EISA slot 2
> [ ? ?0.807943] Cannot allocate resource for EISA slot 3
> [ ? ?0.807950] Cannot allocate resource for EISA slot 4
> [ ? ?0.807978] EISA: Detected 0 cards.
> [ ? ?0.808443] cpuidle: using governor ladder
> [ ? ?0.808807] cpuidle: using governor menu
> [ ? ?0.810225] TCP cubic registered
> [ ? ?0.810793] NET: Registered protocol family 10
> [ ? ?0.812196] lo: Disabled Privacy Extensions
> [ ? ?0.813258] NET: Registered protocol family 17
> [ ? ?0.814759] Using IPI No-Shortcut mode
> [ ? ?0.815062] PM: Resume from disk failed.
> [ ? ?0.815095] registered taskstats version 1
> [ ? ?0.816154] ? Magic number: 10:265:505
> [ ? ?0.816170] i8042 i8042: hash matches
> [ ? ?0.816352] rtc_cmos 00:08: setting system clock to 2010-09-25 23:28:07
> UTC (1285457287)
> [ ? ?0.816362] BIOS EDD facility v0.16 2004-Jun-25, 0 devices found
> [ ? ?0.816368] EDD information not available.
> [ ? ?0.860255] isapnp: No Plug & Play device found
> [ ? ?0.871513] input: AT Translated Set 2 keyboard as
> /devices/platform/i8042/serio0/input/input4
> [ ? ?0.944079] Freeing initrd memory: 12850k freed
> [ ? ?0.985785] ata1.00: ATA-8: WDC WD1600BEVT-75ZCT2, 11.01A11, max UDMA/133
> [ ? ?0.985802] ata1.00: 312581808 sectors, multi 16: LBA48 NCQ (depth 0/32)
> [ ? ?1.001792] ata1.00: configured for UDMA/133
> [ ? ?1.002201] scsi 0:0:0:0: Direct-Access ? ? ATA ? ? ?WDC WD1600BEVT-7
> 11.0 PQ: 0 ANSI: 5
> [ ? ?1.002606] sd 0:0:0:0: [sda] 312581808 512-byte logical blocks: (160
> GB/149 GiB)
> [ ? ?1.002656] sd 0:0:0:0: Attached scsi generic sg0 type 0
> [ ? ?1.002787] sd 0:0:0:0: [sda] Write Protect is off
> [ ? ?1.002796] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
> [ ? ?1.002895] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled,
> doesn't support DPO or FUA
> [ ? ?1.003250] ?sda: sda1 sda2 < sda5 >
> [ ? ?1.039970] sd 0:0:0:0: [sda] Attached SCSI disk
> [ ? ?1.040045] Freeing unused kernel memory: 660k freed
> [ ? ?1.040629] Write protecting the kernel text: 4680k
> [ ? ?1.040706] Write protecting the kernel read-only data: 1844k
> [ ? ?1.082696] udev: starting version 151
> [ ? ?1.085093] usb 1-2: new high speed USB device using ehci_hcd and address
> 2
> [ ? ?1.263789] usb 1-2: configuration #1 chosen from 1 choice
> [ ? ?1.376146] usb 1-3: new high speed USB device using ehci_hcd and address
> 3
> [ ? ?1.479666] Linux agpgart interface v0.103
> [ ? ?1.511368] acpi device:00: registered as cooling_device2
> [ ? ?1.511743] input: Video Bus as
> /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input5
> [ ? ?1.511880] ACPI: Video Device [GFX0] (multi-head: yes ?rom: no ?post:
> no)
> [ ? ?1.544176] r8169 Gigabit Ethernet driver 2.3LK-NAPI loaded
> [ ? ?1.544241] r8169 0000:04:00.0: PCI INT A -> GSI 18 (level, low) -> IRQ
> 18
> [ ? ?1.544377] r8169 0000:04:00.0: setting latency timer to 64
> [ ? ?1.544565] ? alloc irq_desc for 27 on node -1
> [ ? ?1.544572] ? alloc kstat_irqs on node -1
> [ ? ?1.544628] r8169 0000:04:00.0: irq 27 for MSI/MSI-X
> [ ? ?1.546541] eth0: RTL8102e at 0xf813e000, 00:24:e8:f7:fd:59, XID 04c00000
> IRQ 27
> [ ? ?1.574466] [drm] Initialized drm 1.1.0 20060810
> [ ? ?1.586146] agpgart-intel 0000:00:00.0: Intel 945GME Chipset
> [ ? ?1.587051] agpgart-intel 0000:00:00.0: detected 7932K stolen memory
> [ ? ?1.590663] agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xd0000000
> [ ? ?1.661414] i915 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
> [ ? ?1.661425] i915 0000:00:02.0: setting latency timer to 64
> [ ? ?1.672878] [drm] set up 7M of stolen space
> [ ? ?1.775901] [drm] initialized overlay support
> [ ? ?2.176442] fb0: inteldrmfb frame buffer device
> [ ? ?2.176449] registered panic notifier
> [ ? ?2.176465] [drm] Initialized i915 1.6.0 20080730 for 0000:00:02.0 on
> minor 0
> [ ? ?2.181379] vga16fb: initializing
> [ ? ?2.181390] vga16fb: mapped to 0xc00a0000
> [ ? ?2.181400] vga16fb: not registering due to another framebuffer present
> [ ? ?2.495309] Console: switching to colour frame buffer device 128x37
> [ ? ?3.222213] EXT4-fs (sda1): mounted filesystem with ordered data mode
> [ ? ?6.339461] usb 1-3: configuration #1 chosen from 1 choice
> [ ? 14.095333] Adding 2980016k swap on /dev/sda5. ?Priority:-1 extents:1
> across:2980016k [ ? 14.132040] udev: starting version 151
> [ ? 14.607785] intel_rng: FWH not detected
> [ ? 14.622093] lib80211: common routines for IEEE802.11 drivers
> [ ? 14.622104] lib80211_crypt: registered algorithm 'NULL'
> [ ? 14.673112] lp: driver loaded but no devices found
> [ ? 14.989508] Initializing USB Mass Storage driver...
> [ ? 15.031001] scsi2 : SCSI emulation for USB Mass Storage devices
> [ ? 15.052184] usbcore: registered new interface driver usb-storage
> [ ? 15.052197] USB Mass Storage support registered.
> [ ? 15.052219] usb-storage: device found at 3
> [ ? 15.052224] usb-storage: waiting for device to settle before scanning
> [ ? 15.066214] Linux video capture interface: v2.00
> [ ? 15.115434] wl: module license 'unspecified' taints kernel.
> [ ? 15.115444] Disabling lock debugging due to kernel taint
> [ ? 15.119013] wl: disagrees about version of symbol lib80211_get_crypto_ops
> [ ? 15.119026] wl: Unknown symbol lib80211_get_crypto_ops
> [ ? 15.169547] type=1505 audit(1285457301.851:2): ?operation="profile_load"
> pid=645 name="/sbin/dhclient3"
> [ ? 15.170361] type=1505 audit(1285457301.851:3): ?operation="profile_load"
> pid=645 name="/usr/lib/NetworkManager/nm-dhcp-client.action"
> [ ? 15.170824] type=1505 audit(1285457301.851:4): ?operation="profile_load"
> pid=645 name="/usr/lib/connman/scripts/dhclient-script"
> [ ? 15.221409] dcdbas dcdbas: Dell Systems Management Base Driver (version
> 5.6.0-3.2)
> [ ? 15.259246] uvcvideo: Found UVC 1.00 device Integrated Webcam (064e:a129)
> [ ? 15.264759] compal-laptop: Identified laptop model 'Dell Mini 10v'.
> [ ? 15.267151] compal-laptop: driver 0.2.6 successfully loaded.
> [ ? 15.281805] ip_tables: (C) 2000-2006 Netfilter Core Team
> [ ? 15.287896] dell-laptop: Blacklisted hardware detected - not loading
> [ ? 15.293254] input: Integrated Webcam as
> /devices/pci0000:00/0000:00:1d.7/usb1/1-2/1-2:1.0/input/input6
> [ ? 15.293438] usbcore: registered new interface driver uvcvideo
> [ ? 15.293450] USB Video Class driver (v0.1.0)
> [ ? 15.318702] dell-wmi: No known WMI GUID found
> [ ? 15.441264] nf_conntrack version 0.5.0 (15893 buckets, 63572 max)
> [ ? 15.443594] CONFIG_NF_CT_ACCT is deprecated and will be removed soon.
> Please use
> [ ? 15.443606] nf_conntrack.acct=1 kernel parameter, acct=1 nf_conntrack
> module option or
> [ ? 15.443613] sysctl net.netfilter.nf_conntrack_acct=1 to enable it.
> [ ? 15.692472] ip6_tables: (C) 2000-2006 Netfilter Core Team
> [ ? 15.960618] type=1505 audit(1285457302.643:5):
> ?operation="profile_replace" pid=840 name="/sbin/dhclient3"
> [ ? 15.969769] type=1505 audit(1285457302.651:6):
> ?operation="profile_replace" pid=840
> name="/usr/lib/NetworkManager/nm-dhcp-client.action"
> [ ? 15.970234] type=1505 audit(1285457302.651:7):
> ?operation="profile_replace" pid=840
> name="/usr/lib/connman/scripts/dhclient-script"
> [ ? 16.016137] type=1505 audit(1285457302.699:8): ?operation="profile_load"
> pid=842 name="/usr/bin/evince"
> [ ? 16.081960] type=1505 audit(1285457302.763:9): ?operation="profile_load"
> pid=842 name="/usr/bin/evince-previewer"
> [ ? 16.093457] type=1505 audit(1285457302.775:10): ?operation="profile_load"
> pid=842 name="/usr/bin/evince-thumbnailer"
> [ ? 16.098242] r8169: eth0: link down
> [ ? 16.098908] ADDRCONF(NETDEV_UP): eth0: link is not ready
> [ ? 16.117260] Synaptics Touchpad, model: 1, fw: 7.4, id: 0x1e0b1, caps:
> 0xd04711/0xa40000
> [ ? 16.147680] type=1505 audit(1285457302.827:11): ?operation="profile_load"
> pid=917 name="/usr/lib/cups/backend/cups-pdf"
> [ ? 16.163357] ? alloc irq_desc for 22 on node -1
> [ ? 16.163367] ? alloc kstat_irqs on node -1
> [ ? 16.163386] HDA Intel 0000:00:1b.0: PCI INT A -> GSI 22 (level, low) ->
> IRQ 22
> [ ? 16.163483] HDA Intel 0000:00:1b.0: setting latency timer to 64
> [ ? 16.214561] input: SynPS/2 Synaptics TouchPad as
> /devices/platform/i8042/serio1/input/input7
> [ ? 16.316993] input: HDA Digital PCBeep as
> /devices/pci0000:00/0000:00:1b.0/input/input8
> [ ? 16.912310] ppdev: user-space parallel port driver
> [ ? 17.498806] CPU0 attaching NULL sched-domain.
> [ ? 17.498822] CPU1 attaching NULL sched-domain.
> [ ? 17.521303] CPU0 attaching sched-domain:
> [ ? 17.521320] ?domain 0: span 0-1 level SIBLING
> [ ? 17.521333] ? groups: 0 (cpu_power = 589) 1 (cpu_power = 589)
> [ ? 17.521359] ? domain 1: span 0-1 level MC
> [ ? 17.521369] ? ?groups: 0-1 (cpu_power = 1178)
> [ ? 17.521392] CPU1 attaching sched-domain:
> [ ? 17.521402] ?domain 0: span 0-1 level SIBLING
> [ ? 17.521413] ? groups: 1 (cpu_power = 589) 0 (cpu_power = 589)
> [ ? 17.521436] ? domain 1: span 0-1 level MC
> [ ? 17.521446] ? ?groups: 0-1 (cpu_power = 1178)
> [ ? 20.064084] usb-storage: device scan complete
> [ ? 20.066361] scsi 2:0:0:0: Direct-Access ? ? Generic- Multi-Card
> 1.00 PQ: 0 ANSI: 0 CCS
> [ ? 20.072560] sd 2:0:0:0: Attached scsi generic sg1 type 0
> [ ? 20.083202] sd 2:0:0:0: [sdb] Attached SCSI removable disk
> [ ? 20.344143] CPU0 attaching NULL sched-domain.
> [ ? 20.344159] CPU1 attaching NULL sched-domain.
> [ ? 20.368209] CPU0 attaching sched-domain:
> [ ? 20.368221] ?domain 0: span 0-1 level SIBLING
> [ ? 20.368230] ? groups: 0 (cpu_power = 589) 1 (cpu_power = 589)
> [ ? 20.368249] ? domain 1: span 0-1 level MC
> [ ? 20.368257] ? ?groups: 0-1 (cpu_power = 1178)
> [ ? 20.368272] CPU1 attaching sched-domain:
> [ ? 20.368279] ?domain 0: span 0-1 level SIBLING
> [ ? 20.368287] ? groups: 1 (cpu_power = 589) 0 (cpu_power = 589)
> [ ? 20.368304] ? domain 1: span 0-1 level MC
> [ ? 20.368311] ? ?groups: 0-1 (cpu_power = 1178)
> [ ? 36.406585] padlock: VIA PadLock not detected.
> [ ?120.997198] lib80211_crypt: unregistered algorithm 'NULL'
> [ ?126.616951] cfg80211: Calling CRDA to update world regulatory domain
> [ ?126.683226] cfg80211: World regulatory domain updated:
> [ ?126.683241] ? ? (start_freq - end_freq @ bandwidth), (max_antenna_gain,
> max_eirp)
> [ ?126.683258] ? ? (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000
> mBm)
> [ ?126.683271] ? ? (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000
> mBm)
> [ ?126.683284] ? ? (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000
> mBm)
> [ ?126.683296] ? ? (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000
> mBm)
> [ ?126.683309] ? ? (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000
> mBm)
> [ ?126.888290] Compat-wireless backport release: compat-wireless--2010-09-02
> [ ?126.888300] Backport based on linux-next.git next-20100910
> [ ?126.933368] b43-pci-bridge 0000:03:00.0: PCI INT A -> GSI 17 (level, low)
> -> IRQ 17
> [ ?126.933398] b43-pci-bridge 0000:03:00.0: setting latency timer to 64
> [ ?126.953911] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor
> 0x4243)
> [ ?126.953984] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F, vendor
> 0x4243)
> [ ?126.954014] ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor 0x4243)
> [ ?126.954043] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor 0x4243)
> [ ?127.000633] ssb: Sonics Silicon Backplane found on PCI device
> 0000:03:00.0
> [ ?127.036630] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
> [ ?127.167533] phy0: ee773d64
> [ ?127.175188] Registered led device: b43-phy0::tx
> [ ?127.177396] Registered led device: b43-phy0::rx
> [ ?127.179355] Registered led device: b43-phy0::radio
> [ ?127.179488] Broadcom 43xx driver loaded [ Features: PMNLS, Firmware-ID:
> FW13 ]
> [ ?149.208371] b43-phy0: Loading firmware version 478.104 (2008-07-01
> 00:50:23)
> [ ?154.737795] b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000,
> 0x00000000, 0x00000000, 0x00000000, 0x00000000

Oh, our old friend, the 0x400 DMA error... as a workaround, try
loading and unloading wl (the Broadcom hybrid driver) before loading
ssb & b43. Or, if you don't want to mess with closed-source stuff,
load b43 with "pio=1 qos=0 nohwcrypt=1".

> [ ?154.737823] b43-phy0 ERROR: This device does not support DMA on your
> system. It will now be switched to PIO.
> [ ?154.737839] b43-phy0: Controller RESET (DMA error) ...
> [ ?154.737882] phy0: ee7bfe04
> [ ?154.964352] b43-phy0: Loading firmware version 478.104 (2008-07-01
> 00:50:23)
> [ ?160.488168] b43-phy0: Controller restarted
> [ ?169.620176] device wlan0 entered promiscuous mode
> [ ?244.477193] device wlan0 left promiscuous mode
>
> $ iw event -t
> 1285461826.005040: wlan0 (phy #0): scan started
> 1285461827.908088: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
> 1285461946.005223: wlan0 (phy #0): scan started
> 1285461947.900706: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
> 1285462066.005307: wlan0 (phy #0): scan started
> 1285462067.912618: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
> 1285462186.007133: wlan0 (phy #0): scan started
> 1285462187.901580: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
> 1285462306.006669: wlan0 (phy #0): scan started
> 1285462307.900188: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
> 1285462426.006714: wlan0 (phy #0): scan started
> 1285462427.908087: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
> 1285462546.005434: wlan0 (phy #0): scan started
> 1285462547.900196: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
> 1285462666.005884: wlan0 (phy #0): scan started
> 1285462667.900720: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
> 1285462786.005273: wlan0 (phy #0): scan started
> 1285462787.899915: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
> 1285462906.004987: wlan0 (phy #0): scan started
> 1285462907.907964: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
> 1285463026.006441: wlan0 (phy #0): scan started
> 1285463027.900710: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
> 1285463146.005031: wlan0 (phy #0): scan started
> 1285463147.908142: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
> 1285463266.005550: wlan0 (phy #0): scan started
> 1285463267.900163: wlan0 (phy #0): scan finished: 2412 2417 2422 2427 2432
> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
>
> (I ^c this after 15 minutes, as it seemed to just be essentially
> repeating)

Something seems to be scanning in the background.

>
> I sincerely hope that someone out there can solve this, as I'm tapped out
> for ideas.
>
> Any help is appreciated,
>
> NO
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
