Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE406070F39
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oo/zoHh6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=wXhhG6br
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=SxTKj5w2ZJx9T/5wagC5fo2RPP7keAtMY+KSWibov1k=; b=oo/zoHh65ppxE/v0mcc/cAFKsT
	/pWchnBZGrhtoSOP/OTDzJGMhocyCJqusHESphEaavjT/8oYuPTWUqjBMzsdKFtKH2JD4y69TFY2S
	ps02XWlPrmqGybLjJjOoiKotejUfPj1a4rcF67rzVbn5WVbVoXHii0WdNEQ/gPxJ39x5qqef/bles
	l2vWDPLBuDneyI12crWgg5SScLo2Queq0XCzEEqkBOfXanp2bTAO8Wqw1aOvrGZYFclc23D486s20
	e6s+j7476QyGY/w9raeIC0FFlEzxPUQkoohoaDWNA0xmd5gzpLZzLnYuJ+On284OZxRowScA8KHyz
	IMLX+uIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2r-0000000AopW-0yyL;
	Thu, 12 Nov 2026 17:57:09 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2i-0000000Aofx-3umm
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:57:06 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a35db1f202so637975e9.3
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506219; x=1795111019; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=TETUUjEDSYeWqOu+yo6YINSK0fK0s83/dBCWh+KW/c8=;
        b=wXhhG6brSSknbrcBilm55cSu9Ff9Qomv3X1Q0MKr/z9mNqZPAbRPddQ8XdWOvjyRH6
         47NAOMktAkN/0qjgCU9pAh+rjJZmxzO8iYV9KNoghvFk5Kd/mZN/kpkfuixxOFT4uiWi
         v1YKrT6bEWI6WiYz9pc3r5cTaByZAqxUcnYatQZd0ZLBv2MdUFme6el+5rtD/OauwwX0
         rtKCbbxsRLDqdJn1U2QGVjdQJSDWCTsqeRIiYQjqP4928Th1PLev3dwmav+6AWLjnSBl
         1EsFh68JH38+1O+XGwb59uGRBrhmJ0SzJBtaMCG1rilmc56/6z0thtW0f47Lz1EkTqyr
         t+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506219; x=1795111019;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TETUUjEDSYeWqOu+yo6YINSK0fK0s83/dBCWh+KW/c8=;
        b=w2ij3gL8Yakju0POgRKWfh7gvX0DNTizVcsHYddlI8rhWPnFH2T+fv3L9KfFwYpmuz
         NrMxWhD2eOG515hNaVka8VFcROZ4azT0z/rClhmP3quwJR3TgWUjhiCQha//Q6fMeOyI
         kaShdXR8I3fqcM5O1fgIN2mLcB8xFqnQvPUp8yyQ9d1ohoxQ18fMsunfDXgTzHfV99b+
         nC7ItYZlfwNUng2W78FTgJwn4Qg3O4b0ycTjUBJzblwpefifAs36lNURKWQSk5K4owK8
         McRHu/nRzr1khODBF/CamvLLXdhHE3uchO1Pepp6iZJVnZWJhKm4XPD7JRCCGz+2Q71V
         bmWg==
X-Forwarded-Encrypted: i=1; AL+hErFLzsCV8dPq/fGrfVWfiEu4zq4mOAhNahG/mw30oLhO1AETnsJQxDjd1gsZBoUt1dwoJ7u0iaQi@lists.infradead.org
X-Gm-Message-State: APuU4Z8fbkomaX0j/qL7dYf2ztjxktvU7rVdns+G2iJR2P3dzoDQwRzX
	li7/iiQw7hu+6rCfQHd6qbN28xiF2rWpsFuVw79z1krNOeXKYtl3N09q
X-Gm-Gg: AYBFou1AuMp0rlG0UQ0PFPgfZcCJacPjRMgdiUqfe4cRO3ADEz6CgIKg12uhwgl8Cek
	Cmm2hhXWu5F2oArGunNyVOqOzKXHEpbO76xOqekctT+mKD9qn2MqYJaGkoSEykeETJJLxAgPeXO
	mByumgeudz0VXE9Xw8LMduhNWGstm3rGGMrPjYtL0q2IeLiwQCOmJ11SFGNi5SvpaPZixBrjhyD
	XV/c7X/I4YEz37Ug1B7MhXNI5+FoxMTAZRaBZhZTSffZZZSmAfzKvXmT2uZSEb0lLYV2LP/B8q3
	0ERS6WAXwOLgm0eEG6TDCBPpffLhAptmrbF8a2PcwMojpkRFFSWLmES03cXIoWP1ekKNXQKW5hr
	awQAEvlY9SMVfqhgUxWFUnsemNQa0gCfdBdNsq2NS3PfgI8OEuMZN1C3NMadeviJGLcOYkQE/2y
	K1SKuSR7+xdvaar5uF+bUbTRzaygQifntCFNFjW0Cf5p27Qu/1x7lF0v9mulftZHGnosOYkgnOP
	OcTqr8In2J7ZfZxqxysjlE443YZ5WX5F72CW7PVDbBt+1ZD0+tF+D3Y8vwNdsm5XjF4xvl5PSgW
	/YGGZbxThtInai2CbSH7kMdJA4c0EkZejNHIW5cLjgTEyE4S1zeTUSUr3jAJmSC7PFv8WY2mQRC
	g3/LQ//CdeFF2OFuugE8RIsp8woXFdXjVtbcm1kO2hLgWs31rRp2qoZv4m7Vx0LBB4sOJEeTVgx
	aDM0uIfy0uOm4n7fbk0kU3LvgGz6sBPW+vuPPBYWRYTQ==
X-Received: by 2002:a05:600c:1c25:b0:4a2:18d4:f9e0 with SMTP id 5b1f17b1804b1-4ba093a9f02mr139408685e9.25.1794506218938;
        Thu, 12 Nov 2026 09:56:58 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb527c755esm31491425e9.4.2026.11.12.09.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:58 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 0/4] wifi: b43: AC-PHY support (series 4/4)
Date: Thu, 12 Nov 2026 18:56:52 +0100
Message-ID: <20261112175656.40686-1-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095703_693085_B09687C5 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Radio 2069 and the AC PHY: tables, 2.4 GHz and 5 GHz channel switching
(5 GHz in 80 MHz mode), HT and VHT capabilities, and the removal of
"depends on BROKEN". Based on series 3/4.

With the four series b43 brings up a BCM4360 on 2.4 GHz and 5 GHz, with HT
at 20 MHz on 2.4 GHz and VHT at 80 MHz on 5 GHz (40 MHz is untested), two
streams and A-MPDU.

Each patch compiles on its own (kernel 7.2.10 headers). The four series
together were run on a MacBookAir6,1 (14e4:43a0, BCM4360, core revision 42,
microcode 832.127, 2 of 3 chains wired) on top of v7.3-rc5's b43. The AC PHY
only comes with series 4, so the earlier series cannot be exercised on this
hardware alone. Association and traffic with WPA2 (software
crypto) on 2.4 GHz (HT, about 54-63 Mbit/s) and on 5 GHz (VHT, 80 MHz block,
two streams, 40-70 Mbit/s at -78 dBm), no errors in the log. Not tested:
suspend/resume with this exact series, other boards. Not done: TX
calibration, hardware crypto, power save.

Known issues, which a review would ask to fix (pointed out by Alessio
Ferri): the number of AC cores is forced to 2 on the MacBook boards
(0x117, 0x137) and some init loops assume 2 cores, which is wrong for
3-chain boards; and SROM revision 11 values are read at fixed word
offsets instead of from parsed SPROM fields (the parsing is in his bcma
series, not merged yet).

Where the values come from: the register sequences and table contents were
taken from Broadcom's wl driver running on this MacBook, by tracing its
register accesses (bpftrace on wl's MMIO accessors), and reduced to what
the hardware needs. Parts come from Alessio Ferri's AC-PHY work (the PHY
init sequence, the 40 and 80 MHz coefficient tables, a TX gain table, the
Farrow resampler formula, the VHT fields of the TX descriptor, register
and table names), and some formats follow brcmsmac.
The result was tested on the hardware as described below.

Andreas Wendleder (4):
  wifi: b43: radio 2069 and AC-PHY tables
  wifi: b43: AC-PHY init and 2.4 GHz channel switching
  wifi: b43: 5 GHz, 80 MHz and VHT for the AC PHY
  wifi: b43: enable the AC-PHY support

 drivers/net/wireless/broadcom/b43/Kconfig     |    4 +-
 drivers/net/wireless/broadcom/b43/Makefile    |    2 +-
 drivers/net/wireless/broadcom/b43/main.c      |   69 +-
 drivers/net/wireless/broadcom/b43/phy_ac.c    | 1263 +++++++++++++++-
 drivers/net/wireless/broadcom/b43/phy_ac.h    |    4 +
 .../net/wireless/broadcom/b43/phy_ac_farrow.h |  260 ++++
 .../net/wireless/broadcom/b43/phy_common.c    |   25 +-
 .../net/wireless/broadcom/b43/radio_2069.c    |  862 +++++++++++
 .../net/wireless/broadcom/b43/radio_2069.h    |   19 +
 .../net/wireless/broadcom/b43/tables_phy_ac.c | 1273 +++++++++++++++++
 .../net/wireless/broadcom/b43/tables_phy_ac.h |   31 +
 11 files changed, 3801 insertions(+), 11 deletions(-)
 create mode 100644 drivers/net/wireless/broadcom/b43/phy_ac_farrow.h
 create mode 100644 drivers/net/wireless/broadcom/b43/radio_2069.c
 create mode 100644 drivers/net/wireless/broadcom/b43/radio_2069.h
 create mode 100644 drivers/net/wireless/broadcom/b43/tables_phy_ac.c
 create mode 100644 drivers/net/wireless/broadcom/b43/tables_phy_ac.h


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
