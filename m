From: Sandro Santilli <strk@keybit.net>
Date: Fri, 6 Sep 2013 19:48:47 +0200
Subject: BCM4301 noise
Message-ID: <20130906174847.GA19004@ks356603.kimsufi.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello all, I've a BCM4301 network controller (Asus L5800C laptop)
and trying to use b43legacy module to use it on a 3.2.0-4-rt-686-pae
linux kernel.

The controller works, but makes lots of noise in syslog.
Here's an excerpt:

Sep  5 22:10:30 xtp kernel: [15725.713822] b43legacy-phy3: Broadcom 4301 WLAN found (core revision 2)
Sep  5 22:10:31 xtp kernel: [15725.765245] Broadcom 43xx-legacy driver loaded [ Features: PLID ]
Sep  5 22:10:31 xtp kernel: [15725.957371] b43legacy ssb0:0: firmware: agent loaded b43legacy/ucode2.fw into memory
Sep  5 22:10:31 xtp kernel: [15725.965476] b43legacy ssb0:0: firmware: agent loaded b43legacy/pcm4.fw into memory
Sep  5 22:10:31 xtp kernel: [15725.973486] b43legacy ssb0:0: firmware: agent loaded b43legacy/b0g0initvals2.fw into memory
Sep  5 22:10:31 xtp kernel: [15726.072149] b43legacy-phy3: Loading firmware version 0x127, patch level 14 (2005-04-18 02:36:27)
Sep  5 22:10:31 xtp kernel: [15726.140239] ADDRCONF(NETDEV_UP): wlan0: link is not ready
Sep  5 22:10:31 xtp kernel: [15726.304797] ------------[ cut here ]------------
Sep  5 22:10:31 xtp kernel: [15726.304817] WARNING: at /build/linux-ppSMWv/linux-3.2.46/debian/build/source_rt/drivers/net/wireless/b43legacy/debugfs.c:485 b43legacy_debugfs_log_txstat+0x2a/0x71 [b43legacy]()
Sep  5 22:10:31 xtp kernel: [15726.304822] Hardware name: L5C
Sep  5 22:10:31 xtp kernel: [15726.304825] Modules linked in: b43legacy bcma fuse crc32c libcrc32c zlib_deflate ufs qnx4 hfsplus hfs minix ntfs vfat msdos fat jfs xfs reiserfs ext4 crc16 jbd2 ext2 dm_mod joydev snd_intel8x0m radeon snd_intel8x0 snd_ac97_codec snd_pcm ttm arc4 snd_page_alloc snd_timer psmouse drm_kms_helper snd drm mac80211 asus_laptop cfg80211 sparse_keymap rfkill soundcore i2c_algo_bit ac97_bus pcspkr input_polldev serio_raw rng_core battery processor button ac yenta_socket evdev i2c_sis96x power_supply i2c_core shpchp pcmcia_rsrc ext3 mbcache jbd sg sr_mod sd_mod cdrom crc_t10dif ata_generic cb710_mmc floppy fan thermal pata_sis ssb thermal_sys ohci_hcd mmc_core libata pcmcia skge ehci_hcd firewire_ohci pcmcia_core cb710 scsi_mod usbcore usb_common firewire_core crc_itu_t [last unloaded: b43legacy]
Sep  5 22:10:31 xtp kernel: [15726.304914] Pid: 13890, comm: irq/17-b43legac Tainted: P        W  O 3.2.0-4-rt-686-pae #1 Debian 3.2.41-2+deb7u2
Sep  5 22:10:31 xtp kernel: [15726.304918] Call Trace:
Sep  5 22:10:31 xtp kernel: [15726.304931]  [<c10300fa>] ? warn_slowpath_common+0x68/0x79
Sep  5 22:10:31 xtp kernel: [15726.304939]  [<e192d53c>] ? b43legacy_debugfs_log_txstat+0x2a/0x71 [b43legacy]
Sep  5 22:10:31 xtp kernel: [15726.304945]  [<c1030118>] ? warn_slowpath_null+0xd/0x10
Sep  5 22:10:31 xtp kernel: [15726.304953]  [<e192d53c>] ? b43legacy_debugfs_log_txstat+0x2a/0x71 [b43legacy]
Sep  5 22:10:31 xtp kernel: [15726.304961]  [<e192c65e>] ? b43legacy_handle_txstatus+0xb/0x54 [b43legacy]
Sep  5 22:10:31 xtp kernel: [15726.304969]  [<e192c710>] ? b43legacy_handle_hwtxstatus+0x69/0x6e [b43legacy]
Sep  5 22:10:31 xtp kernel: [15726.304977]  [<e192ed85>] ? b43legacy_dma_rx+0x119/0x2b5 [b43legacy]
Sep  5 22:10:31 xtp kernel: [15726.304986]  [<e19232de>] ? b43legacy_interrupt_tasklet+0x40b/0x505 [b43legacy]
Sep  5 22:10:31 xtp kernel: [15726.304993]  [<c102601f>] ? enqueue_task_rt+0xf0/0x1cd
Sep  5 22:10:31 xtp kernel: [15726.305001]  [<c10219e5>] ? test_tsk_need_resched+0xd/0x16
Sep  5 22:10:31 xtp kernel: [15726.305010]  [<c12c3a93>] ? sub_preempt_count+0x74/0x80
Sep  5 22:10:31 xtp kernel: [15726.305016]  [<c1034ea8>] ? __tasklet_action.isra.4+0x7c/0xd6
Sep  5 22:10:31 xtp kernel: [15726.305021]  [<c103513e>] ? __do_softirq_common+0xb2/0x174
Sep  5 22:10:31 xtp kernel: [15726.305026]  [<c1035538>] ? local_bh_enable+0x97/0x101
Sep  5 22:10:31 xtp kernel: [15726.305032]  [<c10733f5>] ? irq_forced_thread_fn+0x34/0x3a
Sep  5 22:10:31 xtp kernel: [15726.305037]  [<c1073282>] ? irq_thread+0xbf/0x1db
Sep  5 22:10:31 xtp kernel: [15726.305041]  [<c10733c1>] ? irq_thread_fn+0x23/0x23
Sep  5 22:10:31 xtp kernel: [15726.305046]  [<c10731c3>] ? irq_finalize_oneshot+0x88/0x88
Sep  5 22:10:31 xtp kernel: [15726.305053]  [<c1046594>] ? kthread+0x63/0x68
Sep  5 22:10:31 xtp kernel: [15726.305058]  [<c1046531>] ? rcu_read_unlock_sched_notrace+0x1e/0x1e
Sep  5 22:10:31 xtp kernel: [15726.305064]  [<c12c55fe>] ? kernel_thread_helper+0x6/0xd
Sep  5 22:10:31 xtp kernel: [15726.305067] ---[ end trace 0000000000055d58 ]---

The same block, between "cut here" and "end trace" is repeated multiple
times per second, quickly filling up the /var/log partition

Ideas about what's going on ?

PS: I'm not subscribed to the list so please Cc me in replies.

--strk;
