Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0A9CC47079
	for <b43-dev@archiver.kernel.org>; Sun, 31 Dec 2023 05:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NB3GYY6awMHob5S8sFsUAAOayh8/waWok9Jb7Ahqyu4=; b=ntKRlUKD1/YGvu
	AJARTh8jxWFdYDJuipSzdrTSNVBq+mjUoyknk+1ICRMn19qqpitUIWGlxeaHzXWoebdMc9H+Y1raf
	GwzmCRZ64230laO30FE47X40V8HK6jHeVfF3cYwCVDunTYf+lpvlKgXbyvXWojprvXj7t4V9EjPPf
	kqmMY7SiIz6JmAY1DyjUFkWTqzLCOSvn/3L8M9LkruPnSV/aYqvvFEAHaG7ny8rjTqKWJKQ7thkf6
	Fc+o2nsIPB1ZdnrSdIZXeYJLD8cjW3/Htudmy5YH1aUY8LKskjUhN+1cdWClEqBWkPdDP3S2o9mDM
	XHWiPUWH9zykRbSWSuhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnzT-003yID-2l;
	Sun, 31 Dec 2023 05:03:59 +0000
Received: from mail-40133.protonmail.ch ([185.70.40.133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnzP-003yHC-2p
	for b43-dev@lists.infradead.org;
	Sun, 31 Dec 2023 05:03:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703999032; x=1704258232;
	bh=Ikr85Z6/yN9nhBhWeQxE+j4mUr9OFD3GvuUtgh2uMSk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Os2dGPbMJw5UkLLO/e/zJ2a57GOunjgW98EY6kjJIDqW8SSz3Ke5CYhE9y0hxvfs2
	 jy0PULC2LKBS+Fo41iZT4850YhAil/V0EhIcVlaITqOFq8Co4M2h7q8bLUghFtJisc
	 ea74FLCI9MTigtgXymgnd6u1bun1WgKdidwgBFp8t7QcByc/6GDi7Di1zAxtyRpyo6
	 IuPifjhfrNmR3Vobg9rPQjKtlnRoojOhoQRHndsFE+uEQrzo5oL8GSiZbArzLh9GjQ
	 ygwyMlS+ql3HDTNXMcrzZqQnzCqjVVV2wId7IfKxyELmN70PWYKjWbi4WgOelFjSO4
	 oDo70EX1aiJdg==
Date: Sun, 31 Dec 2023 05:03:33 +0000
To: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, Julian Calaby <julian.calaby@gmail.com>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Rahul Rameshbabu <sergeantsagara@protonmail.com>
Subject: [PATCH wireless v2 1/4] wifi: b43: Stop/wake correct queue in DMA Tx path when QoS is disabled
Message-ID: <20231231050300.122806-2-sergeantsagara@protonmail.com>
In-Reply-To: <20231231050300.122806-1-sergeantsagara@protonmail.com>
References: <20231231050300.122806-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_210356_247091_8E09B3CB 
X-CRM114-Status: GOOD (  16.17  )
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

When QoS is disabled, the queue priority value will not map to the correct
ieee80211 queue since there is only one queue. Stop/wake queue 0 when QoS
is disabled to prevent trying to stop/wake a non-existent queue and failing
to stop/wake the actual queue instantiated.

Log of issue before change (with kernel parameter qos=0):
    [  +5.112651] ------------[ cut here ]------------
    [  +0.000005] WARNING: CPU: 7 PID: 25513 at net/mac80211/util.c:449 __ieee80211_wake_queue+0xd5/0x180 [mac80211]
    [  +0.000067] Modules linked in: b43(O) snd_seq_dummy snd_hrtimer snd_seq snd_seq_device nft_chain_nat xt_MASQUERADE nf_nat xfrm_user xfrm_algo xt_addrtype overlay ccm af_packet amdgpu snd_hda_codec_cirrus snd_hda_codec_generic ledtrig_audio drm_exec amdxcp gpu_sched xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ip6t_rpfilter ipt_rpfilter xt_pkttype xt_LOG nf_log_syslog xt_tcpudp nft_compat nf_tables nfnetlink sch_fq_codel btusb uinput iTCO_wdt ctr btrtl intel_pmc_bxt i915 intel_rapl_msr mei_hdcp mei_pxp joydev at24 watchdog btintel atkbd libps2 serio radeon btbcm vivaldi_fmap btmtk intel_rapl_common snd_hda_codec_hdmi bluetooth uvcvideo nls_iso8859_1 applesmc nls_cp437 x86_pkg_temp_thermal snd_hda_intel intel_powerclamp vfat videobuf2_vmalloc coretemp fat snd_intel_dspcfg crc32_pclmul uvc polyval_clmulni snd_intel_sdw_acpi loop videobuf2_memops snd_hda_codec tun drm_suballoc_helper polyval_generic drm_ttm_helper drm_buddy tap ecdh_generic videobuf2_v4l2 gf128mul macvlan ttm ghash_clmulni_intel ecc tg3
    [  +0.000044]  videodev bridge snd_hda_core rapl crc16 drm_display_helper cec mousedev snd_hwdep evdev intel_cstate bcm5974 hid_appleir videobuf2_common stp mac_hid libphy snd_pcm drm_kms_helper acpi_als mei_me intel_uncore llc mc snd_timer intel_gtt industrialio_triggered_buffer apple_mfi_fastcharge i2c_i801 mei snd lpc_ich agpgart ptp i2c_smbus thunderbolt apple_gmux i2c_algo_bit kfifo_buf video industrialio soundcore pps_core wmi tiny_power_button sbs sbshc button ac cordic bcma mac80211 cfg80211 ssb rfkill libarc4 kvm_intel kvm drm irqbypass fuse backlight firmware_class efi_pstore configfs efivarfs dmi_sysfs ip_tables x_tables autofs4 dm_crypt cbc encrypted_keys trusted asn1_encoder tee tpm rng_core input_leds hid_apple led_class hid_generic usbhid hid sd_mod t10_pi crc64_rocksoft crc64 crc_t10dif crct10dif_generic ahci libahci libata uhci_hcd ehci_pci ehci_hcd crct10dif_pclmul crct10dif_common sha512_ssse3 sha512_generic sha256_ssse3 sha1_ssse3 aesni_intel usbcore scsi_mod libaes crypto_simd cryptd scsi_common
    [  +0.000055]  usb_common rtc_cmos btrfs blake2b_generic libcrc32c crc32c_generic crc32c_intel xor raid6_pq dm_snapshot dm_bufio dm_mod dax [last unloaded: b43(O)]
    [  +0.000009] CPU: 7 PID: 25513 Comm: irq/17-b43 Tainted: G        W  O       6.6.7 #1-NixOS
    [  +0.000003] Hardware name: Apple Inc. MacBookPro8,3/Mac-942459F5819B171B, BIOS 87.0.0.0.0 06/13/2019
    [  +0.000001] RIP: 0010:__ieee80211_wake_queue+0xd5/0x180 [mac80211]
    [  +0.000046] Code: 00 45 85 e4 0f 85 9b 00 00 00 48 8d bd 40 09 00 00 f0 48 0f ba ad 48 09 00 00 00 72 0f 5b 5d 41 5c 41 5d 41 5e e9 cb 6d 3c d0 <0f> 0b 5b 5d 41 5c 41 5d 41 5e c3 cc cc cc cc 48 8d b4 16 94 00 00
    [  +0.000002] RSP: 0018:ffffc90003c77d60 EFLAGS: 00010097
    [  +0.000001] RAX: 0000000000000001 RBX: 0000000000000002 RCX: 0000000000000000
    [  +0.000001] RDX: 0000000000000000 RSI: 0000000000000002 RDI: ffff88820b924900
    [  +0.000002] RBP: ffff88820b924900 R08: ffffc90003c77d90 R09: 000000000003bfd0
    [  +0.000001] R10: ffff88820b924900 R11: ffffc90003c77c68 R12: 0000000000000000
    [  +0.000001] R13: 0000000000000000 R14: ffffc90003c77d90 R15: ffffffffc0fa6f40
    [  +0.000001] FS:  0000000000000000(0000) GS:ffff88846fb80000(0000) knlGS:0000000000000000
    [  +0.000001] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
    [  +0.000001] CR2: 00007fafda7ae008 CR3: 000000046d220005 CR4: 00000000000606e0
    [  +0.000002] Call Trace:
    [  +0.000003]  <TASK>
    [  +0.000001]  ? __ieee80211_wake_queue+0xd5/0x180 [mac80211]
    [  +0.000044]  ? __warn+0x81/0x130
    [  +0.000005]  ? __ieee80211_wake_queue+0xd5/0x180 [mac80211]
    [  +0.000045]  ? report_bug+0x171/0x1a0
    [  +0.000004]  ? handle_bug+0x41/0x70
    [  +0.000004]  ? exc_invalid_op+0x17/0x70
    [  +0.000003]  ? asm_exc_invalid_op+0x1a/0x20
    [  +0.000005]  ? __ieee80211_wake_queue+0xd5/0x180 [mac80211]
    [  +0.000043]  ieee80211_wake_queue+0x4a/0x80 [mac80211]
    [  +0.000044]  b43_dma_handle_txstatus+0x29c/0x3a0 [b43]
    [  +0.000016]  ? __pfx_irq_thread_fn+0x10/0x10
    [  +0.000002]  b43_handle_txstatus+0x61/0x80 [b43]
    [  +0.000012]  b43_interrupt_thread_handler+0x3f9/0x6b0 [b43]
    [  +0.000011]  irq_thread_fn+0x23/0x60
    [  +0.000002]  irq_thread+0xfe/0x1c0
    [  +0.000002]  ? __pfx_irq_thread_dtor+0x10/0x10
    [  +0.000001]  ? __pfx_irq_thread+0x10/0x10
    [  +0.000001]  kthread+0xe8/0x120
    [  +0.000003]  ? __pfx_kthread+0x10/0x10
    [  +0.000003]  ret_from_fork+0x34/0x50
    [  +0.000002]  ? __pfx_kthread+0x10/0x10
    [  +0.000002]  ret_from_fork_asm+0x1b/0x30
    [  +0.000004]  </TASK>
    [  +0.000001] ---[ end trace 0000000000000000 ]---

    [  +0.000065] ------------[ cut here ]------------
    [  +0.000001] WARNING: CPU: 0 PID: 56077 at net/mac80211/util.c:514 __ieee80211_stop_queue+0xcc/0xe0 [mac80211]
    [  +0.000077] Modules linked in: b43(O) snd_seq_dummy snd_hrtimer snd_seq snd_seq_device nft_chain_nat xt_MASQUERADE nf_nat xfrm_user xfrm_algo xt_addrtype overlay ccm af_packet amdgpu snd_hda_codec_cirrus snd_hda_codec_generic ledtrig_audio drm_exec amdxcp gpu_sched xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ip6t_rpfilter ipt_rpfilter xt_pkttype xt_LOG nf_log_syslog xt_tcpudp nft_compat nf_tables nfnetlink sch_fq_codel btusb uinput iTCO_wdt ctr btrtl intel_pmc_bxt i915 intel_rapl_msr mei_hdcp mei_pxp joydev at24 watchdog btintel atkbd libps2 serio radeon btbcm vivaldi_fmap btmtk intel_rapl_common snd_hda_codec_hdmi bluetooth uvcvideo nls_iso8859_1 applesmc nls_cp437 x86_pkg_temp_thermal snd_hda_intel intel_powerclamp vfat videobuf2_vmalloc coretemp fat snd_intel_dspcfg crc32_pclmul uvc polyval_clmulni snd_intel_sdw_acpi loop videobuf2_memops snd_hda_codec tun drm_suballoc_helper polyval_generic drm_ttm_helper drm_buddy tap ecdh_generic videobuf2_v4l2 gf128mul macvlan ttm ghash_clmulni_intel ecc tg3
    [  +0.000073]  videodev bridge snd_hda_core rapl crc16 drm_display_helper cec mousedev snd_hwdep evdev intel_cstate bcm5974 hid_appleir videobuf2_common stp mac_hid libphy snd_pcm drm_kms_helper acpi_als mei_me intel_uncore llc mc snd_timer intel_gtt industrialio_triggered_buffer apple_mfi_fastcharge i2c_i801 mei snd lpc_ich agpgart ptp i2c_smbus thunderbolt apple_gmux i2c_algo_bit kfifo_buf video industrialio soundcore pps_core wmi tiny_power_button sbs sbshc button ac cordic bcma mac80211 cfg80211 ssb rfkill libarc4 kvm_intel kvm drm irqbypass fuse backlight firmware_class efi_pstore configfs efivarfs dmi_sysfs ip_tables x_tables autofs4 dm_crypt cbc encrypted_keys trusted asn1_encoder tee tpm rng_core input_leds hid_apple led_class hid_generic usbhid hid sd_mod t10_pi crc64_rocksoft crc64 crc_t10dif crct10dif_generic ahci libahci libata uhci_hcd ehci_pci ehci_hcd crct10dif_pclmul crct10dif_common sha512_ssse3 sha512_generic sha256_ssse3 sha1_ssse3 aesni_intel usbcore scsi_mod libaes crypto_simd cryptd scsi_common
    [  +0.000084]  usb_common rtc_cmos btrfs blake2b_generic libcrc32c crc32c_generic crc32c_intel xor raid6_pq dm_snapshot dm_bufio dm_mod dax [last unloaded: b43]
    [  +0.000012] CPU: 0 PID: 56077 Comm: kworker/u16:17 Tainted: G        W  O       6.6.7 #1-NixOS
    [  +0.000003] Hardware name: Apple Inc. MacBookPro8,3/Mac-942459F5819B171B, BIOS 87.0.0.0.0 06/13/2019
    [  +0.000001] Workqueue: phy7 b43_tx_work [b43]
    [  +0.000019] RIP: 0010:__ieee80211_stop_queue+0xcc/0xe0 [mac80211]
    [  +0.000076] Code: 74 11 48 8b 78 08 0f b7 d6 89 e9 4c 89 e6 e8 ab f4 00 00 65 ff 0d 9c b7 34 3f 0f 85 55 ff ff ff 0f 1f 44 00 00 e9 4b ff ff ff <0f> 0b 5b 5d 41 5c 41 5d c3 cc cc cc cc 0f 1f 80 00 00 00 00 90 90
    [  +0.000002] RSP: 0000:ffffc90004157d50 EFLAGS: 00010097
    [  +0.000002] RAX: 0000000000000001 RBX: 0000000000000002 RCX: 0000000000000000
    [  +0.000002] RDX: 0000000000000000 RSI: 0000000000000002 RDI: ffff8882d65d0900
    [  +0.000002] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000001
    [  +0.000001] R10: 00000000000000ff R11: ffff88814d0155a0 R12: ffff8882d65d0900
    [  +0.000002] R13: 0000000000000000 R14: ffff8881002d2800 R15: 00000000000000d0
    [  +0.000002] FS:  0000000000000000(0000) GS:ffff88846f800000(0000) knlGS:0000000000000000
    [  +0.000003] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
    [  +0.000002] CR2: 00007f2e8c10c880 CR3: 0000000385b66005 CR4: 00000000000606f0
    [  +0.000002] Call Trace:
    [  +0.000001]  <TASK>
    [  +0.000001]  ? __ieee80211_stop_queue+0xcc/0xe0 [mac80211]
    [  +0.000075]  ? __warn+0x81/0x130
    [  +0.000004]  ? __ieee80211_stop_queue+0xcc/0xe0 [mac80211]
    [  +0.000075]  ? report_bug+0x171/0x1a0
    [  +0.000005]  ? handle_bug+0x41/0x70
    [  +0.000003]  ? exc_invalid_op+0x17/0x70
    [  +0.000004]  ? asm_exc_invalid_op+0x1a/0x20
    [  +0.000004]  ? __ieee80211_stop_queue+0xcc/0xe0 [mac80211]
    [  +0.000076]  ieee80211_stop_queue+0x36/0x50 [mac80211]
    [  +0.000077]  b43_dma_tx+0x550/0x780 [b43]
    [  +0.000023]  b43_tx_work+0x90/0x130 [b43]
    [  +0.000018]  process_one_work+0x174/0x340
    [  +0.000003]  worker_thread+0x27b/0x3a0
    [  +0.000004]  ? __pfx_worker_thread+0x10/0x10
    [  +0.000002]  kthread+0xe8/0x120
    [  +0.000003]  ? __pfx_kthread+0x10/0x10
    [  +0.000004]  ret_from_fork+0x34/0x50
    [  +0.000002]  ? __pfx_kthread+0x10/0x10
    [  +0.000003]  ret_from_fork_asm+0x1b/0x30
    [  +0.000006]  </TASK>
    [  +0.000001] ---[ end trace 0000000000000000 ]---

Fixes: e6f5b934fba8 ("b43: Add QOS support")
Signed-off-by: Rahul Rameshbabu <sergeantsagara@protonmail.com>
---

Notes:
    Changes:
    
        v1->v2:
            - Refactored logic with helpers (suggested by Larry Finger
              <Larry.Finger@lwfinger.net>)
    
    Issue Details:
    
        When QoS was first introduced to the b43 driver in commit
        e6f5b934fba8 ("b43: Add QOS support"), four rings were allocated for
        different QoS priorities for video, voice, best effort, and background.
        The core networking stack maps these priorities in the skb, and these
        mappings are noted in the ring's queue_prio member. When disabling QoS
        in the driver, the skb will still contain the mapping for the core
        stack while only one queue is actually considered active (the best
        effort queue). In the situation that QoS is disabled, b43 needs to pass
        0 to ieee80211 queue functions since the number of queues is set to 1
        in the struct ieee80211_hw queues member.

 drivers/net/wireless/broadcom/b43/b43.h | 16 ++++++++++++++++
 drivers/net/wireless/broadcom/b43/dma.c |  4 ++--
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/b43.h b/drivers/net/wireless/broadcom/b43/b43.h
index 67b4bac048e5..c0d8fc0b22fb 100644
--- a/drivers/net/wireless/broadcom/b43/b43.h
+++ b/drivers/net/wireless/broadcom/b43/b43.h
@@ -1082,6 +1082,22 @@ static inline bool b43_using_pio_transfers(struct b43_wldev *dev)
 	return dev->__using_pio_transfers;
 }
 
+static inline void b43_wake_queue(struct b43_wldev *dev, int queue_prio)
+{
+	if (dev->qos_enabled)
+		ieee80211_wake_queue(dev->wl->hw, queue_prio);
+	else
+		ieee80211_wake_queue(dev->wl->hw, 0);
+}
+
+static inline void b43_stop_queue(struct b43_wldev *dev, int queue_prio)
+{
+	if (dev->qos_enabled)
+		ieee80211_stop_queue(dev->wl->hw, queue_prio);
+	else
+		ieee80211_stop_queue(dev->wl->hw, 0);
+}
+
 /* Message printing */
 __printf(2, 3) void b43info(struct b43_wl *wl, const char *fmt, ...);
 __printf(2, 3) void b43err(struct b43_wl *wl, const char *fmt, ...);
diff --git a/drivers/net/wireless/broadcom/b43/dma.c b/drivers/net/wireless/broadcom/b43/dma.c
index 760d1a28edc6..6ac7dcebfff9 100644
--- a/drivers/net/wireless/broadcom/b43/dma.c
+++ b/drivers/net/wireless/broadcom/b43/dma.c
@@ -1399,7 +1399,7 @@ int b43_dma_tx(struct b43_wldev *dev, struct sk_buff *skb)
 	    should_inject_overflow(ring)) {
 		/* This TX ring is full. */
 		unsigned int skb_mapping = skb_get_queue_mapping(skb);
-		ieee80211_stop_queue(dev->wl->hw, skb_mapping);
+		b43_stop_queue(dev, skb_mapping);
 		dev->wl->tx_queue_stopped[skb_mapping] = true;
 		ring->stopped = true;
 		if (b43_debug(dev, B43_DBG_DMAVERBOSE)) {
@@ -1570,7 +1570,7 @@ void b43_dma_handle_txstatus(struct b43_wldev *dev,
 	} else {
 		/* If the driver queue is running wake the corresponding
 		 * mac80211 queue. */
-		ieee80211_wake_queue(dev->wl->hw, ring->queue_prio);
+		b43_wake_queue(dev, ring->queue_prio);
 		if (b43_debug(dev, B43_DBG_DMAVERBOSE)) {
 			b43dbg(dev->wl, "Woke up TX ring %d\n", ring->index);
 		}
-- 
2.42.0



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
