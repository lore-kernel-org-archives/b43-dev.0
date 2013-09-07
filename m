From: Sandro Santilli <strk@keybit.net>
Date: Sat, 7 Sep 2013 15:07:38 +0200
Subject: BCM4301 noise
In-Reply-To: <522A4422.7040605@lwfinger.net>
References: <20130906174847.GA19004@ks356603.kimsufi.com>
 <522A3871.3090103@lwfinger.net> <20130906205107.GA15678@gnash>
 <522A4422.7040605@lwfinger.net>
Message-ID: <20130907130738.GA16740@gnash>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, Sep 06, 2013 at 04:07:46PM -0500, Larry Finger wrote:

> The offending module is usually marked with a P in the
> modules-loaded list that comes with the oops/warning output. No
> modules had this annotation, which could happen if the offending
> module was loaded and unloaded before the dump happened. Have you
> loaded any other module since the last reboot?

Not that I'm aware of. But this is what I found in kern.log, which
looks like the same warning prduced by a non-tained version, very
early on boot time, followed (no other logs in between) by a tainted
report:

Sep  6 19:11:38 xtp kernel: [   10.763686] EXT3-fs (sda1): mounted filesystem with ordered data mode
Sep  6 19:11:41 xtp kernel: [   18.458931] b43legacy ssb0:0: firmware: agent loaded b43legacy/ucode2.fw into memory
Sep  6 19:11:41 xtp kernel: [   18.620387] b43legacy ssb0:0: firmware: agent loaded b43legacy/pcm4.fw into memory
Sep  6 19:11:41 xtp kernel: [   18.746451] b43legacy ssb0:0: firmware: agent loaded b43legacy/b0g0initvals2.fw into memory
Sep  6 19:11:42 xtp kernel: [   18.856054] b43legacy-phy0: Loading firmware version 0x127, patch level 14 (2005-04-18 02:36:27)
Sep  6 19:11:42 xtp kernel: [   18.913047] b43legacy-phy0 debug: Chip initialized
Sep  6 19:11:42 xtp kernel: [   18.913488] b43legacy-phy0 debug: 30-bit DMA initialized
Sep  6 19:11:42 xtp kernel: [   18.914875] b43legacy-phy0 debug: Wireless interface started
Sep  6 19:11:42 xtp kernel: [   18.914925] b43legacy-phy0 debug: Adding Interface type 2
Sep  6 19:11:42 xtp kernel: [   19.232044] b43legacy-phy0 ERROR: MAC suspend failed
Sep  6 19:11:42 xtp kernel: [   19.252140] ADDRCONF(NETDEV_UP): wlan0: link is not ready
Sep  6 19:11:42 xtp kernel: [   19.263143] skge 0000:00:0d.0: eth0: enabling interface
Sep  6 19:11:44 xtp kernel: [   21.480649] ------------[ cut here ]------------
Sep  6 19:11:44 xtp kernel: [   21.480675] WARNING: at /build/linux-ppSMWv/linux-3.2.46/debian/build/source_rt/drivers/net/wireless/b43legacy/debugfs.c:485 b43legacy_debugfs_log_txstat+0x2a/0x71 [b43legacy]()
Sep  6 19:11:44 xtp kernel: [   21.480680] Hardware name: L5C
Sep  6 19:11:44 xtp kernel: [   21.480684] Modules linked in: radeon joydev i2c_sis96x arc4 ttm snd_intel8x0m snd_intel8x0 drm_kms_helper b43legacy snd_ac97_codec drm snd_pcm i2c_algo_bit snd_page_alloc snd_seq snd_seq_device snd_timer snd i2c_core mac80211 shpchp yenta_socket pcmcia_rsrc psmouse pcspkr serio_raw evdev soundcore ac97_bus cfg80211 rng_core battery ac power_supply asus_laptop sparse_keymap rfkill button input_polldev processor ext3 mbcache jbd sg sr_mod sd_mod cdrom crc_t10dif ata_generic cb710_mmc floppy fan thermal thermal_sys pata_sis libata ohci_hcd ssb mmc_core skge ehci_hcd usbcore scsi_mod pcmcia pcmcia_core cb710 firewire_ohci usb_common firewire_core crc_itu_t [last unloaded: scsi_wait_scan]
Sep  6 19:11:44 xtp kernel: [   21.480751] Pid: 1955, comm: irq/17-b43legac Not tainted 3.2.0-4-rt-686-pae #1 Debian 3.2.46-1+deb7u1
Sep  6 19:11:44 xtp kernel: [   21.480755] Call Trace:
Sep  6 19:11:44 xtp kernel: [   21.480768]  [<c103029a>] ? warn_slowpath_common+0x68/0x79
Sep  6 19:11:44 xtp kernel: [   21.480776]  [<e0ae953c>] ? b43legacy_debugfs_log_txstat+0x2a/0x71 [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.480783]  [<c10302b8>] ? warn_slowpath_null+0xd/0x10
Sep  6 19:11:44 xtp kernel: [   21.480791]  [<e0ae953c>] ? b43legacy_debugfs_log_txstat+0x2a/0x71 [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.480801]  [<e0ae865e>] ? b43legacy_handle_txstatus+0xb/0x54 [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.480810]  [<e0ae8710>] ? b43legacy_handle_hwtxstatus+0x69/0x6e [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.480818]  [<e0aead85>] ? b43legacy_dma_rx+0x119/0x2b5 [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.480827]  [<e0adf2de>] ? b43legacy_interrupt_tasklet+0x40b/0x505 [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.480835]  [<c10261c1>] ? enqueue_task_rt+0xf0/0x1cd
Sep  6 19:11:44 xtp kernel: [   21.480844]  [<c1021b29>] ? test_tsk_need_resched+0xd/0x16
Sep  6 19:11:44 xtp kernel: [   21.480851]  [<c12c46f3>] ? sub_preempt_count+0x74/0x80
Sep  6 19:11:44 xtp kernel: [   21.480857]  [<c1035048>] ? __tasklet_action.isra.4+0x7c/0xd6
Sep  6 19:11:44 xtp kernel: [   21.480862]  [<c10352de>] ? __do_softirq_common+0xb2/0x174
Sep  6 19:11:44 xtp kernel: [   21.480868]  [<c10356d8>] ? local_bh_enable+0x97/0x101
Sep  6 19:11:44 xtp kernel: [   21.480875]  [<c107361d>] ? irq_forced_thread_fn+0x34/0x3a
Sep  6 19:11:44 xtp kernel: [   21.480880]  [<c10734aa>] ? irq_thread+0xbf/0x1db
Sep  6 19:11:44 xtp kernel: [   21.480884]  [<c10735e9>] ? irq_thread_fn+0x23/0x23
Sep  6 19:11:44 xtp kernel: [   21.480890]  [<c10733eb>] ? irq_finalize_oneshot+0x88/0x88
Sep  6 19:11:44 xtp kernel: [   21.480897]  [<c1046758>] ? kthread+0x63/0x68
Sep  6 19:11:44 xtp kernel: [   21.480903]  [<c10466f5>] ? rcu_read_unlock_sched_notrace+0x1e/0x1e
Sep  6 19:11:44 xtp kernel: [   21.480909]  [<c12c623e>] ? kernel_thread_helper+0x6/0xd
Sep  6 19:11:44 xtp kernel: [   21.480912] ---[ end trace 0000000000000002 ]---
Sep  6 19:11:44 xtp kernel: [   21.480916] ------------[ cut here ]------------
Sep  6 19:11:44 xtp kernel: [   21.480924] WARNING: at /build/linux-ppSMWv/linux-3.2.46/debian/build/source_rt/drivers/net/wireless/b43legacy/dma.c:1212 b43legacy_dma_handle_txstatus+0xca/0x2a6 [b43legacy]()
Sep  6 19:11:44 xtp kernel: [   21.480929] Hardware name: L5C
Sep  6 19:11:44 xtp kernel: [   21.480931] Modules linked in: radeon joydev i2c_sis96x arc4 ttm snd_intel8x0m snd_intel8x0 drm_kms_helper b43legacy snd_ac97_codec drm snd_pcm i2c_algo_bit snd_page_alloc snd_seq snd_seq_device snd_timer snd i2c_core mac80211 shpchp yenta_socket pcmcia_rsrc psmouse pcspkr serio_raw evdev soundcore ac97_bus cfg80211 rng_core battery ac power_supply asus_laptop sparse_keymap rfkill button input_polldev processor ext3 mbcache jbd sg sr_mod sd_mod cdrom crc_t10dif ata_generic cb710_mmc floppy fan thermal thermal_sys pata_sis libata ohci_hcd ssb mmc_core skge ehci_hcd usbcore scsi_mod pcmcia pcmcia_core cb710 firewire_ohci usb_common firewire_core crc_itu_t [last unloaded: scsi_wait_scan]
Sep  6 19:11:44 xtp kernel: [   21.480978] Pid: 1955, comm: irq/17-b43legac Tainted: G        W    3.2.0-4-rt-686-pae #1 Debian 3.2.46-1+deb7u1
Sep  6 19:11:44 xtp kernel: [   21.480982] Call Trace:
Sep  6 19:11:44 xtp kernel: [   21.480988]  [<c103029a>] ? warn_slowpath_common+0x68/0x79
Sep  6 19:11:44 xtp kernel: [   21.480997]  [<e0aeaa90>] ? b43legacy_dma_handle_txstatus+0xca/0x2a6 [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.481003]  [<c10302b8>] ? warn_slowpath_null+0xd/0x10
Sep  6 19:11:44 xtp kernel: [   21.481012]  [<e0aeaa90>] ? b43legacy_dma_handle_txstatus+0xca/0x2a6 [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.481019]  [<c102aeae>] ? migrate_enable+0x120/0x132
Sep  6 19:11:44 xtp kernel: [   21.481028]  [<e0ae8710>] ? b43legacy_handle_hwtxstatus+0x69/0x6e [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.481037]  [<e0aead85>] ? b43legacy_dma_rx+0x119/0x2b5 [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.481046]  [<e0adf2de>] ? b43legacy_interrupt_tasklet+0x40b/0x505 [b43legacy]
Sep  6 19:11:44 xtp kernel: [   21.481052]  [<c10261c1>] ? enqueue_task_rt+0xf0/0x1cd
Sep  6 19:11:44 xtp kernel: [   21.481058]  [<c1021b29>] ? test_tsk_need_resched+0xd/0x16
Sep  6 19:11:44 xtp kernel: [   21.481063]  [<c12c46f3>] ? sub_preempt_count+0x74/0x80
Sep  6 19:11:44 xtp kernel: [   21.481069]  [<c1035048>] ? __tasklet_action.isra.4+0x7c/0xd6
Sep  6 19:11:44 xtp kernel: [   21.481074]  [<c10352de>] ? __do_softirq_common+0xb2/0x174
Sep  6 19:11:44 xtp kernel: [   21.481080]  [<c10356d8>] ? local_bh_enable+0x97/0x101
Sep  6 19:11:44 xtp kernel: [   21.481085]  [<c107361d>] ? irq_forced_thread_fn+0x34/0x3a
Sep  6 19:11:44 xtp kernel: [   21.481090]  [<c10734aa>] ? irq_thread+0xbf/0x1db
Sep  6 19:11:44 xtp kernel: [   21.481095]  [<c10735e9>] ? irq_thread_fn+0x23/0x23
Sep  6 19:11:44 xtp kernel: [   21.481100]  [<c10733eb>] ? irq_finalize_oneshot+0x88/0x88
Sep  6 19:11:44 xtp kernel: [   21.481106]  [<c1046758>] ? kthread+0x63/0x68
Sep  6 19:11:44 xtp kernel: [   21.481112]  [<c10466f5>] ? rcu_read_unlock_sched_notrace+0x1e/0x1e
Sep  6 19:11:44 xtp kernel: [   21.481117]  [<c12c623e>] ? kernel_thread_helper+0x6/0xd
Sep  6 19:11:44 xtp kernel: [   21.481121] ---[ end trace 0000000000000003 ]---

--strk;
