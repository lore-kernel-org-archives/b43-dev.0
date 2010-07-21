From: Harry Bullen <hbullen@gmail.com>
Date: Wed, 21 Jul 2010 13:03:56 -0400
Subject: Crash with BCM4312 using ad-hoc mode and promiscuous
In-Reply-To: <AANLkTilV1cwXDotfGZfqVjt2tCtNkEo9Un4N1W78iZAs@mail.gmail.com>
References: <AANLkTinxJtP4qj2kQqQd0uLguosQdHLPPs4BAXBZO0eg@mail.gmail.com>
	<4C4611D3.30104@lwfinger.net>
	<AANLkTikMvuO9dXEPeuIBagl6QFC8A2pN9SUiBZseaM0z@mail.gmail.com>
	<AANLkTilV1cwXDotfGZfqVjt2tCtNkEo9Un4N1W78iZAs@mail.gmail.com>
Message-ID: <AANLkTikaNUKA9k0JZ6-WwpekEtf397N5SfWXdxKH8VGW@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Alright I used netconsole and I got the message from the crashing
machine.  I have attached it.
Harry William Bullen IV



2010/7/20 Rafa? Mi?ecki <zajec5@gmail.com>:
> 2010/7/20 Harry Bullen <hbullen@gmail.com>:
>> I think it's a crash. ?If a switch to a tty console I get a bunch of
>> scrolling output that looks like a crash, but I'm not sure how to
>> capture it.
>
> Maybe it sounds a little crazy, but you could connect machines with
> cable... ;) and use netconsole to grab messages from crashing machine.
>
> --
> Rafa?
>
-------------- next part --------------
[   18.132757] console [netcon0] enabled
[   18.132765] netconsole: network logging started
[   27.744013] eth1: no IPv6 routers present
[   28.825009] eth0: no IPv6 routers present
[   88.420237] eth1: no IPv6 routers present
[  170.580291] device eth1 entered promiscuous mode
[  180.111384] BUG: unable to handle kernel NULL pointer dereference at 00000010
[  180.115314] IP: [<f834854d>] wlc_1635+0x829/0x842 [wl]
[  180.115314] *pde = b268a067 
[  180.115314] Thread overran stack, or stack corrupted
[  180.240404] Oops: 0000 [#1] SMP 
[  180.240404] last sysfs file: /sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/device:0b/PNP0C0A:00/power_supply/BAT1/voltage_now
[  180.240404] Modules linked in: michael_mic arc4 binfmt_misc ppdev joydev snd_hda_codec_realtek netconsole configfs lib80211_crypt_tkip fbcon tileblit font bitblit softcursor uvcvideo snd_hda_intel snd_hda_codec snd_hwdep snd_pcm_oss snd_mixer_oss snd_pcm snd_seq_dummy snd_seq_oss snd_seq_midi snd_rawmidi snd_seq_midi_event snd_seq snd_timer snd_seq_device snd video output nvidia(P) videodev vga16fb v4l1_compat vgastate wl(P) lib80211 psmouse serio_raw soundcore snd_page_alloc intel_agp agpgart lp parport usb_storage tg3 ahci
[  180.240404] 
[  180.240404] Pid: 0, comm: swapper Tainted: P           (2.6.32-23-generic #37-Ubuntu) 4186                
[  180.240404] EIP: 0060:[<f834854d>] EFLAGS: 00010246 CPU: 0
[  180.240404] EIP is at wlc_1635+0x829/0x842 [wl]
[  180.240404] EAX: 00000000 EBX: 00000018 ECX: f2f3412c EDX: f2f340f0
[  180.240404] ESI: f6a4b6c0 EDI: f6835000 EBP: f6835000 ESP: c075fcc4
[  180.240404]  DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068
[  180.240404] Process swapper (pid: 0, ti=c075e000 task=c0764e80 task.ti=c075e000)
[  180.240404] Stack:
[  180.240404]  00000000 1dcd6500 f2f340cc f4182b40 f6a4b6e0 f2f340ea 01cd6500 f2f340f0
[  180.240404] <0> f2f34108 00000024 0000003c 00000024 f6a4b6c0 f2f340cc 00020008 00000000
[  180.240404] <0> 00000000 00000000 f7260000 d48de101 c2c087a0 00000000 c0146594 d48de1e7
[  180.240404] Call Trace:
[  180.240404]  [<c0146594>] ? enqueue_entity+0x154/0x1e0
[  180.240404]  [<f834b68a>] ? wlc_1633+0x120/0x1ed4 [wl]
[  180.240404]  [<c01329e4>] ? enqueue_task+0x74/0x90
[  180.240404]  [<c04ba302>] ? __alloc_skb+0x52/0x130
[  180.240404]  [<f83cd0fc>] ? osl_dma_map+0x5c/0x70 [wl]
[  180.240404]  [<f836b91a>] ? wlc_237+0x7e5/0x100b [wl]
[  180.240404]  [<f837fbfc>] ? wlc_dpc+0x332/0x4ea [wl]
[  180.240404]  [<f83cf45e>] ? wl_dpc+0x3e/0xc0 [wl]
[  180.240404]  [<c0151b37>] ? tasklet_action+0xa7/0xb0
[  180.240404]  [<c0153128>] ? __do_softirq+0x98/0x1b0
[  180.240404]  [<c012297b>] ? ack_apic_level+0x6b/0x170
[  180.240404]  [<c016d89e>] ? sched_clock_tick+0x5e/0xa0
[  180.240404]  [<c0153285>] ? do_softirq+0x45/0x50
[  180.240404]  [<c01533d5>] ? irq_exit+0x65/0x70
[  180.240404]  [<c05906a5>] ? do_IRQ+0x55/0xc0
[  180.240404]  [<c016d5b5>] ? sched_clock_local+0xa5/0x180
[  180.240404]  [<c0103a30>] ? common_interrupt+0x30/0x40
[  180.240404]  [<c016007b>] ? sys_setrlimit+0xb/0x120
[  180.240404]  [<c039d69b>] ? acpi_idle_enter_simple+0x117/0x148
[  180.240404]  [<c04a12ea>] ? cpuidle_idle_call+0x7a/0x100
[  180.240404]  [<c01021d4>] ? cpu_idle+0x94/0xd0
[  180.240404]  [<c0579c78>] ? rest_init+0x58/0x60
[  180.240404]  [<c07a38ec>] ? start_kernel+0x351/0x357
[  180.240404]  [<c07a33c7>] ? unknown_bootoption+0x0/0x19e
[  180.240404]  [<c07a30aa>] ? i386_start_kernel+0xaa/0xb1
[  180.240404] Code: a5 fb ff ff 8b 84 24 80 00 00 00 80 7c 24 45 00 8b 58 10 8b b3 b0 02 00 00 0f 84 1d fc ff ff e9 53 fc ff ff 8b 84 24 80 00 00 00 <8b> 58 10 8b b3 b0 02 00 00 e9 3e fc ff ff 81 c4 84 00 00 00 5b 
[  180.240404] EIP: [<f834854d>] wlc_1635+0x829/0x842 [wl] SS:ESP 0068:c075fcc4
[  180.240404] CR2: 0000000000000010
[  183.273035] ---[ end trace 1ac6df02a6b48a8d ]---
[  183.313036] Kernel panic - not syncing: Fatal exception in interrupt
[  183.354025] Pid: 0, comm: swapper Tainted: P      D    2.6.32-23-generic #37-Ubuntu
[  183.438289] Call Trace:
[  183.481220]  [<c0589bc6>] ? printk+0x1d/0x1f
[  183.524507]  [<c0589afe>] panic+0x48/0xf3
[  183.567762]  [<c058d16d>] oops_end+0xcd/0xd0
[  183.611082]  [<c012b47c>] no_context+0xbc/0xe0
[  183.655013]  [<c012b4dc>] __bad_area_nosemaphore+0x3c/0x160
[  183.699598]  [<c012b617>] bad_area_nosemaphore+0x17/0x20
[  183.744185]  [<c058e8f6>] do_page_fault+0x2f6/0x3a0
[  183.789682]  [<c01fd1ec>] ? __slab_free+0x7c/0xe0
[  183.836353]  [<c058e600>] ? do_page_fault+0x0/0x3a0
[  183.883601]  [<c058c603>] error_code+0x73/0x80
[  183.931848]  [<f834854d>] ? wlc_1635+0x829/0x842 [wl]
[  183.981276]  [<c0146594>] ? enqueue_entity+0x154/0x1e0
[  184.031901]  [<f834b68a>] ? wlc_1633+0x120/0x1ed4 [wl]
[  184.083653]  [<c01329e4>] ? enqueue_task+0x74/0x90
[  184.135418]  [<c04ba302>] ? __alloc_skb+0x52/0x130
[  184.187769]  [<f83cd0fc>] ? osl_dma_map+0x5c/0x70 [wl]
[  184.241376]  [<f836b91a>] ? wlc_237+0x7e5/0x100b [wl]
[  184.295887]  [<f837fbfc>] ? wlc_dpc+0x332/0x4ea [wl]
[  184.350922]  [<f83cf45e>] ? wl_dpc+0x3e/0xc0 [wl]
[  184.406215]  [<c0151b37>] ? tasklet_action+0xa7/0xb0
[  184.459419]  [<c0153128>] ? __do_softirq+0x98/0x1b0
[  184.511295]  [<c012297b>] ? ack_apic_level+0x6b/0x170
[  184.557636]  [<c016d89e>] ? sched_clock_tick+0x5e/0xa0
[  184.604104]  [<c0153285>] ? do_softirq+0x45/0x50
[  184.649848]  [<c01533d5>] ? irq_exit+0x65/0x70
[  184.695025]  [<c05906a5>] ? do_IRQ+0x55/0xc0
[  184.739187]  [<c016d5b5>] ? sched_clock_local+0xa5/0x180
[  184.782980]  [<c0103a30>] ? common_interrupt+0x30/0x40
[  184.824973]  [<c016007b>] ? sys_setrlimit+0xb/0x120
[  184.867534]  [<c039d69b>] ? acpi_idle_enter_simple+0x117/0x148
[  184.909895]  [<c04a12ea>] ? cpuidle_idle_call+0x7a/0x100
[  184.952873]  [<c01021d4>] ? cpu_idle+0x94/0xd0
[  184.996125]  [<c0579c78>] ? rest_init+0x58/0x60
[  185.039028]  [<c07a38ec>] ? start_kernel+0x351/0x357
[  185.082207]  [<c07a33c7>] ? unknown_bootoption+0x0/0x19e
[  185.125771]  [<c07a30aa>] ? i386_start_kernel+0xaa/0xb1
