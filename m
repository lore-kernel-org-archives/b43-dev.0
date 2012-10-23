From: Markus Kanet <dvmailing@gmx.eu>
Date: Tue, 23 Oct 2012 06:36:54 +0200
Subject: b43 driver NULL pointer dereference on 3.4.15
Message-ID: <50861EE6.70902@gmx.eu>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

NULL pointer dereference when unloading the b43 driver (not b43legacy) 
during shutdown if firmware was never loaded. See attached syslog.

Looks like the same bug as fixed in this commit for b43legacy driver:

commit dc8276b241ad415b2602c4a7309e5b518bb09c32
Author: Larry Finger <Larry.Finger@lwfinger.net>
Date:   Wed Sep 26 12:32:02 2012 -0500

     b43legacy: Fix crash on unload when firmware not available

     commit 2d838bb608e2d1f6cb4280e76748cb812dc822e7 upstream.

     When b43legacy is loaded without the firmware being available, a
     following unload generates a kernel NULL pointer dereference BUG
     as follows:
-------------- next part --------------
Oct 23 06:15:07 ganymed kernel: b43-phy0 ERROR: Firmware file "b43/ucode5.fw" not found
Oct 23 06:15:07 ganymed kernel: b43-phy0 ERROR: Firmware file "b43-open/ucode5.fw" not found
Oct 23 06:15:07 ganymed kernel: b43-phy0 ERROR: You must go to http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and download the correct firmware for this driver version. Please carefully read all instructions on this website.
...
Oct 23 06:15:38 ganymed kernel: BUG: unable to handle kernel NULL pointer dereference at 0000000000000088
Oct 23 06:15:38 ganymed kernel: IP: [<ffffffff8106f025>] drain_workqueue+0x25/0x200
Oct 23 06:15:38 ganymed kernel: PGD 3b9f8067 PUD 3bcc2067 PMD 0 
Oct 23 06:15:38 ganymed kernel: Oops: 0000 [#1] SMP 
Oct 23 06:15:38 ganymed kernel: CPU 0 
Oct 23 06:15:38 ganymed kernel: Modules linked in: b43(-) mac80211 cfg80211 mmc_block tifm_sd snd_seq_dummy snd_seq_oss snd_seq_midi_event snd_seq snd_seq_device snd_pcm_oss snd_mixer_oss ipv6 cpufreq_ondemand lp ppdev parport_pc parport pcspkr fan fuse snd_hda_codec_realtek i915 ssb snd_hda_intel drm_kms_helper snd_hda_codec joydev drm sg pcmcia acer_wmi snd_hwdep coretemp snd_pcm intel_agp sparse_keymap firewire_ohci acpi_cpufreq sdhci_pci freq_table tifm_7xx1 rfkill yenta_socket tifm_core firewire_core sdhci mperf i2c_algo_bit battery psmouse microcode snd_timer tg3 pcmcia_rsrc serio_raw processor video thermal ac evdev snd i2c_i801 libphy pcmcia_core wmi intel_gtt agpgart mmc_core thermal_sys hwmon soundcore snd_page_alloc i2c_core button loop
Oct 23 06:15:38 ganymed kernel: 
Oct 23 06:15:38 ganymed kernel: Pid: 2197, comm: modprobe Not tainted 3.4.15-dark #1 Acer            Extensa 5620                   /Columbia                       
Oct 23 06:15:38 ganymed kernel: RIP: 0010:[<ffffffff8106f025>]  [<ffffffff8106f025>] drain_workqueue+0x25/0x200
Oct 23 06:15:38 ganymed kernel: RSP: 0018:ffff88003c7bbd28  EFLAGS: 00010246
Oct 23 06:15:38 ganymed kernel: RAX: 0000000000002a2a RBX: 0000000000000000 RCX: 0000000000000000
Oct 23 06:15:38 ganymed kernel: RDX: 000000000000002a RSI: 0000000000000282 RDI: ffffffff822276c0
Oct 23 06:15:38 ganymed kernel: RBP: ffff88003c7bbd68 R08: ffffffff820d7c90 R09: 0000000000000000
Oct 23 06:15:38 ganymed kernel: R10: ffffffff811bc418 R11: 0000000000000000 R12: 0000000000000000
Oct 23 06:15:38 ganymed kernel: R13: ffff88003b0d70c0 R14: 0000000000000000 R15: 0000000000000000
Oct 23 06:15:38 ganymed kernel: FS:  00007f9ff1580720(0000) GS:ffff88003f400000(0000) knlGS:0000000000000000
Oct 23 06:15:38 ganymed kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 000000008005003b
Oct 23 06:15:38 ganymed kernel: CR2: 0000000000000088 CR3: 000000003bb44000 CR4: 00000000000007f0
Oct 23 06:15:38 ganymed kernel: DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
Oct 23 06:15:38 ganymed kernel: DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 0000000000000400
Oct 23 06:15:38 ganymed kernel: Process modprobe (pid: 2197, threadinfo ffff88003c7ba000, task ffff88003d7251c0)
Oct 23 06:15:38 ganymed kernel: Stack:
Oct 23 06:15:38 ganymed kernel:  ffff88003c7bbd58 ffffffff819591c7 ffff88003c7bbd88 ffff88003c5a0560
Oct 23 06:15:38 ganymed kernel:  0000000000000000 ffff88003b0d70c0 0000000000000000 0000000000000000
Oct 23 06:15:38 ganymed kernel:  ffff88003c7bbd98 ffffffff8106f21a ffff88003c7bbd98 ffff88003c5a0560
Oct 23 06:15:38 ganymed kernel: Call Trace:
Oct 23 06:15:38 ganymed kernel:  [<ffffffff819591c7>] ? skb_dequeue+0x67/0x90
Oct 23 06:15:38 ganymed kernel:  [<ffffffff8106f21a>] destroy_workqueue+0x1a/0x1e0
Oct 23 06:15:38 ganymed kernel:  [<ffffffffa040e1d9>] ieee80211_unregister_hw+0xe9/0x120 [mac80211]
Oct 23 06:15:38 ganymed kernel:  [<ffffffffa048774a>] b43_ssb_remove+0xaa/0xb0 [b43]
Oct 23 06:15:38 ganymed kernel:  [<ffffffffa02676d0>] ssb_device_remove+0x30/0x50 [ssb]
Oct 23 06:15:38 ganymed kernel:  [<ffffffff8156392c>] __device_release_driver+0x7c/0xe0
Oct 23 06:15:38 ganymed kernel:  [<ffffffff81564158>] driver_detach+0xb8/0xc0
Oct 23 06:15:38 ganymed kernel:  [<ffffffff815635d9>] bus_remove_driver+0x79/0xd0
Oct 23 06:15:38 ganymed kernel:  [<ffffffff81564562>] driver_unregister+0x62/0xa0
Oct 23 06:15:38 ganymed kernel:  [<ffffffffa0267af2>] ssb_driver_unregister+0x12/0x20 [ssb]
Oct 23 06:15:38 ganymed kernel:  [<ffffffffa04b2a28>] b43_exit+0x10/0x26 [b43]
Oct 23 06:15:38 ganymed kernel:  [<ffffffff810aa8e2>] sys_delete_module+0x192/0x290
Oct 23 06:15:38 ganymed kernel:  [<ffffffff81a5e792>] system_call_fastpath+0x16/0x1b
Oct 23 06:15:38 ganymed kernel: Code: 84 00 00 00 00 00 55 48 89 e5 41 57 41 56 41 55 41 54 53 48 83 ec 18 66 66 66 66 90 48 89 fb 48 c7 c7 c0 76 22 82 e8 bb ed 9e 00 <8b> 83 88 00 00 00 8d 50 01 85 c0 89 93 88 00 00 00 75 03 83 0b 
Oct 23 06:15:38 ganymed kernel: RIP  [<ffffffff8106f025>] drain_workqueue+0x25/0x200
Oct 23 06:15:38 ganymed kernel:  RSP <ffff88003c7bbd28>
Oct 23 06:15:38 ganymed kernel: CR2: 0000000000000088
Oct 23 06:15:38 ganymed kernel: ---[ end trace 76c098a6d84b4b6f ]---
