Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275AB60A261D
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KUMdwhxB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zhTH0lgG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Q+B48JrfBhryJtuG7SORtc2R4zCNpIbsz5Yxq7oODvI=; b=KUMdwhxBIm5P3sF5UiUv6nOgDm
	wL5c5kl2T9z30E3LSzVOX7qVVaFk5Su2ujxu9fh2nOSAt2wg+N5AghUs1ogooMCQNSaTDaRWwIE6C
	mKnotPHWHDgrhDL1gNKwOM12fbsacrNPELnGvdiYT9b9eeF9LTkN2ccB0p88es1FBTa/2BTC7T705
	SJDJqXTFHyF4tGHZZBRt2spU+GpwNhJz7dnYAqK06bPLjT6rQu4fcXToYUsCiOEuTl6ieJYlRTeE1
	GJ9T9eaHuCX8Dbr+kuaAmP9ROUeQU6l88q946CwpDmaHtvvtrF7gmYjCEU1wHwEFeCilKjev5SnDq
	8LtJ4dew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2G-0000000AoKj-1XkW;
	Thu, 12 Nov 2026 17:56:32 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2D-0000000AoJM-2Kd8
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:56:30 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-48b001cd92bso15527f8f.2
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506187; x=1795110987; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=kmnLdMmjUsJ8mDUaHUl0eMypkCr4ZnV84joT0wzngzk=;
        b=zhTH0lgGPnoP+RCBiBOgtLQnXFGhCZ1i/IC6bmfwzBuxeMjeuNwDEV9jW9aLz47PSq
         V3ZkWuFdKQVaovToLWvMc9JCxy4stUxt5j9kVHL0pnfXXcBQ06VaV8odVetNXEZ9Z39C
         ndgQfPjJAIFC04pxrmndQQqac7+jFmPLfwN0LyVuOvmTU6VcrPTCN+nN+CyXv7ESgjde
         KVaKpdx5yzdi4paYMDUojTqOY7L7o7KZho5c+8Z9yH1Wwz29SpsNxhNNZ/FyATPIRtRE
         5KM2FUabemdD2Wvp4ptvICtLYiIK19sASEbqDmOEIwANTi7EH593hOzaY/Ph0zOc3gbK
         FqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506187; x=1795110987;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kmnLdMmjUsJ8mDUaHUl0eMypkCr4ZnV84joT0wzngzk=;
        b=pedwAWpBtpfKzd38UCxxOxkqbxF+0V85IhRU2P8LKtAV0I80c5/gy0eAa8BA+sVMuw
         u8ZIKTPAB1RhuXqSkZ+fkcj1sMhB2eTRa+QelXB8ulp5jg9fUersdM+bQkE1HEJSctYa
         kvZk+9vcwwesgH7lo0GizXSJjuG+JShHO5ggEdJcbZ1OAcEyopeK2Dy97SIwIwyoDa6/
         f/rBwoYWZaGp9oOgZV+jCmxut8y4ZGiaiUlpjke4poijrwa5KgrJOXm8oWtH9yVRZiYe
         13HgKKNJOdSV2dlEa5BypZsar5ZP7FoWmBjHd58s2eR2WhAJKxuaFl9Y+ocTILPBHe4b
         1FSQ==
X-Forwarded-Encrypted: i=1; AL+hErGNsfyCoJfxokKOduu7P8Fb/Nb5Fh2o0Pxgl8/zl2Xtrk9dTfGG0vJUO73XsVtrWrNtB43dtG6L@lists.infradead.org
X-Gm-Message-State: APuU4Z9WCnmI9XPoZZV+5lTQJXVXjky60gOcp7hENL8j0ifviJUPcnaX
	lpbTXTksqIbmfxo3d+MGC/1a0SNOcVNJwVMTxKXXB4Fkpfa+KgXw46W4
X-Gm-Gg: AYBFou31sKs9HneWsSNrHp24rleq10DKlEMsa2v4b1mRNKf0r+MRodaCeQpSFsAhq7X
	Gny4ZNLlmS23OYofQWwtGcpfr3zAG5wQt+7wvdz4dE5e6P8C75YazjqBpHt2xRLe2mxs4wmfg18
	TK4TZ2WMUSCURKqGVa2EEQeIv/n0VvuIpycIpExrONzy0SiIW0KXa0kgZEVMPakFvOR+6IWL/Hh
	q3+s4YAU1NVI1KbOb6OAF2c2/uhjrPR3BWPM/kmqBuTy6vMAxVtsi8zXSem+7cFbz+pc8t4bocK
	FKYCJmi+igmQLSUM9VSh+dxU9sI3SoQawq9zkvuKfuRTA/+yl+4+8pxhKVj1szY6lcExMEx8Yky
	uC4R1Q1EsRMdnV5fvjwPGTR+2V61mUEaw9/mcv16dtCbrH4EaAQZk8ymChszEPivqYcX4Xoud48
	dB3NAg0nZ/S9IItlpe3ODZh2ULUMBwSu1VVBH/guq9x5ujiYSTRBsMtm43x5y0YqJeu//rH9GL9
	o73zhcnCnhncd/8kgRmxrygI2Odk50oSuQT3nay56RCpTZ/aLtjgkTtth6ewfdV3Zgo19KbS8K/
	hw56IrzKn4rIu1etpixUpua9JExD/BlILbfkS5iznVAVYu5NqgiQ/GNF3P3Y1OGwAglFKMM09gS
	vn4dom1dgYXjzqPEMq3aB/OIbZc4VHrNenJm/+KrhszUTJYjr0w0mhJlKmD7lMR9Miv4KfH++bu
	X+MZ2kzqgP6uLAyF3F6yIQY+gPd0utIOzyaLpJc0uNVw==
X-Received: by 2002:adf:e00e:0:20b0:490:1881:80ec with SMTP id ffacd0b85a97d-49c710c24f8mr229471f8f.36.1794506186972;
        Thu, 12 Nov 2026 09:56:26 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60f8d66esm438408f8f.57.2026.11.12.09.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:26 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 0/3] wifi: b43: core revision 40 and 42 MAC setup (series 2/4)
Date: Thu, 12 Nov 2026 18:56:21 +0100
Message-ID: <20261112175624.40547-1-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095629_700588_ED8F8A26 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -1.1 (-)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: jpeisach@ubuntu.com, julian.calaby@gmail.com, kvalo@kernel.org, linux-kernel@vger.kernel.org, rosenp@gmail.com, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-7.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

MAC core support for the BCM4352/BCM4360 core revisions 40 and 42. Things
that depend on the core revision are gated on it (b43_is_ac_core()),
things that depend on the microcode layout are gated on the microcode
revision (b43_ucode_is_ac(), revision 784 and above, set once the
microcode is loaded). The TX and RX formats and the PHY are not in this
series. Based on series 1/4.

This is posted as RFC so that people with these chips can use and test
it now; b43 is orphaned and nobody is set to take these patches at the
moment. Series 1/4 is on the list:
https://lore.kernel.org/linux-wireless/20261014143225.82149-1-gonsolo@gmail.com/

Where the values come from: the register sequences and table contents were
taken from Broadcom's wl driver running on this MacBook, by tracing its
register accesses (bpftrace on wl's MMIO accessors), and reduced to what
the hardware needs. Parts come from Alessio Ferri's AC-PHY work (the PHY
init sequence, the 40 and 80 MHz coefficient tables, a TX gain table, the
Farrow resampler formula, the VHT fields of the TX descriptor, register
and table names), and some formats follow brcmsmac.
The result was tested on the hardware as described below.

Each patch compiles on its own (kernel 7.2.10 headers). The four series
together were run on a MacBookAir6,1 (14e4:43a0, BCM4360, core revision 42,
microcode 832.127, 2 of 3 chains wired) on top of v7.3-rc5's b43. The AC PHY
only comes with series 4, so the earlier series cannot be exercised on this
hardware alone.

Andreas Wendleder (3):
  wifi: b43: set the DMA burst and prefetch bits of core revisions 40
    and 42
  wifi: b43: MAC core setup for core revisions 40 and 42
  wifi: b43: address match table, templates and beacons for the AC
    microcode

 drivers/net/wireless/broadcom/b43/b43.h  |  14 ++
 drivers/net/wireless/broadcom/b43/dma.c  |   4 +
 drivers/net/wireless/broadcom/b43/dma.h  |   2 +
 drivers/net/wireless/broadcom/b43/main.c | 242 +++++++++++++++++++++--
 4 files changed, 246 insertions(+), 16 deletions(-)


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
