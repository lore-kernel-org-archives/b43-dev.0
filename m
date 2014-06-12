From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 12 Jun 2014 10:51:28 +0200
Subject: Missing b43 firmware handling
Message-ID: <CACna6rzJYtoDpF9dxjicYr6j_aGsdcsNvM1rEzXUmj8KWJ4+UQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hey Larry,

I've this hope you follow firmware handling in b43 and you can give me a hand.

First of all, I've noticed a problem with re-loading b43 after it was
loaded once without a firmware. Steps:
1) Remove firmware
2) Load b43 for the first time
3) [get an error]
4) Unload b43
5) Load b43

When using wireless-next this results in the:
b43-wlan ERROR: Dual-core devices are not supported

This is because b43_ssb_remove doesn't call
b43_wireless_exit/ssb_set_devtypedata(NULL) if the firmware wasn't
loaded. This makes ssb believe there is still some driver handling
"IEEE 802.11" core.

As a quick fix, I've added
ssb_set_devtypedata(sdev, NULL);
to the
if (!wldev->fw.ucode.data)

However a deeper look at this makes me feel we may even have some leak
there. AFAIU b43_wireless_init is called always, no matter if we have
a firmware or not (it allocates ieee80211 driver struct). I think we
should be calling b43_wireless_exit (to free ieee8011 struct) also
every time. Is that correct?

Now... it gets worse with older kernels. I gave 3.11.10 (openSuSE
kernel) a try. Steps:
1) Remove firmware
2) Load b43 for the first time
3) [get an error]
4) Unload b43
5) Install firmware
6) Load b43
7) Unload b43
8) Load b43

This results in the
[ 595.364220] BUG: unable to handle kernel paging request at ffffffffa06ccadf
[ 595.364301] IP: [<ffffffff812d64c4>] strcmp+0x4/0x30
(...)
[ 595.365037] Call Trace:
[ 595.365037] [<ffffffffa06e8835>] b43_do_request_fw+0x175/0x2e0 [b43]

-- 
Rafa?
-------------- next part --------------
[  595.356039] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision 8
[  595.363173] Broadcom 43xx driver loaded [ Features: PMNLS ]
[  595.364220] BUG: unable to handle kernel paging request at ffffffffa06ccadf
[  595.364301] IP: [<ffffffff812d64c4>] strcmp+0x4/0x30
[  595.364326] PGD 1c0f067 PUD 1c10063 PMD 1b935067 PTE 0
[  595.364352] Oops: 0000 [#1] PREEMPT SMP 
[  595.364382] Modules linked in: b43 arc4 netconsole configfs ssb_hcd mac80211 cfg80211 rfkill ssb mmc_core bcma pcmcia pcmcia_core fuse af_packet snd_intel8x0 snd_ac97_codec ac97_bus snd_pcm snd_seq ppdev snd_timer snd_seq_device snd k8temp pcspkr serio_raw edac_core edac_mce_amd nouveau forcedeth soundcore snd_page_alloc nv_tco i2c_nforce2 mxm_wmi video wmi shpchp ns558 gameport parport_pc parport floppy mperf button sg dm_mod autofs4 radeon ttm drm_kms_helper drm i2c_algo_bit ohci_pci processor thermal_sys scsi_dh_emc scsi_dh_rdac scsi_dh_hp_sw scsi_dh_alua scsi_dh ata_generic sata_nv pata_amd [last unloaded: b43]
[  595.364866] CPU: 0 PID: 42 Comm: kworker/0:2 Not tainted 3.11.10-7-desktop #1
[  595.364883] Hardware name:          K8NF4G-SATA2/K8NF4G-SATA2, BIOS P1.50 11/03/2005
[  595.364943] Workqueue: events b43_request_firmware [b43]
[  595.364959] task: ffff8800155c81c0 ti: ffff880015652000 task.ti: ffff880015652000
[  595.364974] RIP: 0010:[<ffffffff812d64c4>]  [<ffffffff812d64c4>] strcmp+0x4/0x30
[  595.365003] RSP: 0018:ffff880015653db0  EFLAGS: 00010292
[  595.365019] RAX: 0000000000000000 RBX: ffff880017cdb600 RCX: 0000000000000001
[  595.365034] RDX: ffff8800072fed38 RSI: ffffffffa072fadf RDI: ffffffffa06ccae0
[  595.365037] RBP: ffff8800072fed38 R08: e000000000000000 R09: ffff880017cdb600
[  595.365037] R10: dfff4126abf65970 R11: 0000000000000246 R12: ffffffffa072fadf
[  595.365037] R13: 0000000000000001 R14: 0000000000000005 R15: 0000000000000000
[  595.365037] FS:  00007f31b5913700(0000) GS:ffff88001bc00000(0000) knlGS:0000000000000000
[  595.365037] CS:  0010 DS: 0000 ES: 0000 CR0: 000000008005003b
[  595.365037] CR2: ffffffffa06ccadf CR3: 000000000da79000 CR4: 00000000000007f0
[  595.365037] Stack:
[  595.365037]  ffffffffa06e8835 000000000016709e ffff8800072fe800 000000000000000a
[  595.365037]  ffff880017cdb600 ffff88001bc16d00 0000000000000005 0000000000000000
[  595.365037]  ffffffffa06e8e40 ffff880017cdb600 ffff880011b65970 ffff8800072fe800
[  595.365037] Call Trace:
[  595.365037]  [<ffffffffa06e8835>] b43_do_request_fw+0x175/0x2e0 [b43]
[  595.365037]  [<ffffffffa06e8e40>] b43_try_request_fw+0x4a0/0x4c0 [b43]
[  595.365037]  [<ffffffffa06e8ea2>] b43_request_firmware+0x42/0x190 [b43]
[  595.365037]  [<ffffffff8106ac68>] process_one_work+0x168/0x490
[  595.365037]  [<ffffffff8106b904>] worker_thread+0x114/0x3a0
[  595.365037]  [<ffffffff81071c2f>] kthread+0xaf/0xc0
[  595.365037]  [<ffffffff815adb3c>] ret_from_fork+0x7c/0xb0
[  595.365037] Code: 0f 1f 80 00 00 00 00 48 83 c6 01 0f b6 4e ff 48 83 c2 01 84 c9 88 4a ff 75 ed f3 c3 66 66 2e 0f 1f 84 00 00 00 00 00 48 83 c7 01 <0f> b6 47 ff 48 83 c6 01 3a 46 ff 75 0f 84 c0 75 eb 31 c0 c3 0f 
[  595.365037] RIP  [<ffffffff812d64c4>] strcmp+0x4/0x30
[  595.365037]  RSP <ffff880015653db0>
[  595.365037] CR2: ffffffffa06ccadf
[  595.365037] ---[ end trace 8eaeec977a1ae300 ]---
[  595.372961] BUG: unable to handle kernel paging request at ffffffffffffffd8
[  595.373023] IP: [<ffffffff81072217>] kthread_data+0x7/0x10
[  595.373023] PGD 1c0f067 PUD 1c11067 PMD 0 
[  595.373023] Oops: 0000 [#2] PREEMPT SMP 
[  595.373023] Modules linked in: b43 arc4 netconsole configfs ssb_hcd mac80211 cfg80211 rfkill ssb mmc_core bcma pcmcia pcmcia_core fuse af_packet snd_intel8x0 snd_ac97_codec ac97_bus snd_pcm snd_seq ppdev snd_timer snd_seq_device snd k8temp pcspkr serio_raw edac_core edac_mce_amd nouveau forcedeth soundcore snd_page_alloc nv_tco i2c_nforce2 mxm_wmi video wmi shpchp ns558 gameport parport_pc parport floppy mperf button sg dm_mod autofs4 radeon ttm drm_kms_helper drm i2c_algo_bit ohci_pci processor thermal_sys scsi_dh_emc scsi_dh_rdac scsi_dh_hp_sw scsi_dh_alua scsi_dh ata_generic sata_nv pata_amd [last unloaded: b43]
[  595.373023] CPU: 0 PID: 42 Comm: kworker/0:2 Tainted: G      D      3.11.10-7-desktop #1
[  595.373023] Hardware name:          K8NF4G-SATA2/K8NF4G-SATA2, BIOS P1.50 11/03/2005
[  595.373023] task: ffff8800155c81c0 ti: ffff880015652000 task.ti: ffff880015652000
[  595.373023] RIP: 0010:[<ffffffff81072217>]  [<ffffffff81072217>] kthread_data+0x7/0x10
[  595.373023] RSP: 0018:ffff880015653ad0  EFLAGS: 00010002
[  595.373023] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000006
[  595.373023] RDX: 0000000000000003 RSI: 0000000000000000 RDI: ffff8800155c81c0
[  595.373023] RBP: ffff880015653b38 R08: 000000000000f1fb R09: 0000008a9efcfca6
[  595.373023] R10: 0000000000000000 R11: 0000000000000000 R12: ffff88001bc13900
[  595.373023] R13: 0000000000000000 R14: ffff8800155c81b0 R15: ffff8800155c81c0
[  595.373023] FS:  00007f89a3215880(0000) GS:ffff88001bc00000(0000) knlGS:0000000000000000
[  595.373023] CS:  0010 DS: 0000 ES: 0000 CR0: 000000008005003b
[  595.373023] CR2: 0000000000000028 CR3: 000000001a845000 CR4: 00000000000007f0
[  595.373023] Stack:
