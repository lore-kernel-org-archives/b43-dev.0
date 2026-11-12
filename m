Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595AF60A5BC5
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rE+nJAzZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=GGJkK+8r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=f1KcrR2n687QdLPkMYqlxPnN9qN1wp85SYrGYMvJ7Qo=; b=rE+nJAzZeDLcqOgqTn076RRET9
	aIDUV/Lj4ybeHcC5XupUXxm7zxnmKLPreLUBRPtq8JavjZRcrgD5k77MbHifOWSpcHh/Wj8PLnfyu
	txixdZ/57orcLg6pYeKbIjANRyxNEHKzk+yEwMp7+sKFm4osaJqsIV6WVmkhb3/9IpjpD4CoHhZLL
	bj6Sm6fKyXYa/iom0zQiT6MLubpm3pTaHmHgCyL0t/rUI+0vyZakgBnQA/7mztUwmKfgJ2oTdfyUj
	JVukMjjzvS3hy+TVgQbHwi1DjT9MjkZHmQGkRQCrEi4+dnoVQuC+gRssdPOuZjdle7samaub1LXP5
	WxdQ9wog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2X-0000000AoVI-4B4D;
	Thu, 12 Nov 2026 17:56:50 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2S-0000000AoRL-1Xxa
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:56:46 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4a549cd7fd2so808565e9.0
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:56:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506202; x=1795111002; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=UodyIOSej7Q9D1lUergWPqI8N9mlc/GZezBApzHmwIc=;
        b=GGJkK+8rRJDjsPEF86hHFexXeRxSWCbSxdsI0ntlexZweUJp2WU3LL21ks2EgRdlzR
         M5G3eSOlrc5QmpPeBbaAbnb77SCKrbIjOJ38VDJjmxkukeZdNLtu+Bw/uY4Ncnd/rP4Q
         oPVg3eju9Np0W1v7rPZZU+I+65DR8Uu1bRiCNzR0+tobO0ptcz8j1lb6P+WG/f7LaTFK
         CLOQVDr5g2cCZpZ+fDywTrZqCMnvINvyg12IZRjpkchQBrncUhgOdY4arn+lLFPQzqk+
         /wb1cMCBjcuwRvtuojEcKwyd7lLnP4rnE9WgOmMIYerqjLeV/nlMmfZVQZ4/weSWod3P
         YxYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506202; x=1795111002;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UodyIOSej7Q9D1lUergWPqI8N9mlc/GZezBApzHmwIc=;
        b=gqiqmirNm8kGNBlCZ7bU5ItIHEUotXZepDjKn8A3tPFgai0LZPknmE06G+1MqSQMQa
         Jli7jIcU4XBDXFdT72cjBqR6hROvHcHOtqK+yODeAqHl8olEjwNVe5eqGgpHFq8ifY5C
         5+G3rw4r8Gh8dESHLX1sK6mc4lLGBWd0zRd1/N3e2mcBtENJ2oOnc4iELxA1IMNDL0CR
         jN4glHctJNi07qjUaIoJhOZSLe13xAVkuoh9SOSAIrNy8r4+J0fxhSTOTFPz0e6FtUjz
         ZyUvQKHZN8r9oJFlRes4BkHg4D4t1DdFEA+D3w9FeSCO5kDegQgaLtzgq94tegKIwyHn
         Wldg==
X-Forwarded-Encrypted: i=1; AL+hErFdf0olu4DinSNfc0pInaDDjd99BfW1304OnGpXbv+qn9aN5R0p4kSQFxcCjUelaXC7EWdUa/w/@lists.infradead.org
X-Gm-Message-State: APuU4Z95VA3HcZBvNyo+b0V9afpKto2j76OfXsCaDBN9yPfsXlYXcPsi
	nBwCcO6Wck0EaJvLGsMgW3gzbD2/ynoZbzJTo4cmhv2BFyYTSuX+bFsb
X-Gm-Gg: AYBFou0EnrC6DmlDm1IFuanrGBFrjs2rveNwH2YUgxCeG25I0AyblMNcoWD4ukwU59m
	bh4nxkGiyeQEHNAZdpPnxRY33e7PorApCjoZXjPrEqrCTZPKLExNv9uSBSYXk3jjRRstTxMD8rr
	qqyXjqUVbLdbqrcM1oMYqp4m4dKNshoiCMt1JclpII7+6Tty2SV6neYusM8xSZLrytik5Iz2+Ff
	2G8Fg2byJOOU53OOm6AvmvI0Nm8q7dqgbn8l5onAsc7Zd5zuHDv52a6MmhzoulDL8HSnb/rJOuv
	QZE/AEafhbqf9gv3iHrOHC1h2KCyLgGR52w2LYCdwc3aSIVC8Jro2TUxUxDY9b+HHEv8p/s/3iS
	L1OQNs1xQqwN3uScQa1a3YNWodIj4tKikXF+jkFX7SrMsl3tvsZorLPa6zEK/xy2UMLSwM+AxIs
	SkXEARyOS+XT3D63hilWmzBJCRCjEDLMdWBoQ1xdD7aXWf8BzO4Jaz+Mqu9D/pS1IbfXjTA9X+N
	r0rtyJaYUMI3s3ImY/TLuwSA6rD5EAe8ECGhAaZTmXnknSOUxyURjiG2xtTUflFwjYN1I8/kysa
	Vip7YDUhcaFwwXEXmNzwx5Da0vBHauy8maN7hjhkaCO1yApHw9IrvBev51oqx9wzy0ACzSrf3Y1
	DOqCV125+KBD1vwSMrzGw3g3pQ4pMYtPLyi7KBkgHFFMOKAOCcs+Va0PtOi5lRNLOtzrRonn2q/
	RrTvxXFJz83f0GM/X0Hn+HmtFKwED56mW1AhGYjBp9IQ==
X-Received: by 2002:a05:600c:6dca:b0:4ba:7a0:7b67 with SMTP id 5b1f17b1804b1-4bb4e2d5f20mr58501255e9.3.1794506202346;
        Thu, 12 Nov 2026 09:56:42 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c5f1c193fsm547430f8f.13.2026.11.12.09.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:41 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 0/4] wifi: b43: AC microcode TX and RX formats (series 3/4)
Date: Thu, 12 Nov 2026 18:56:36 +0100
Message-ID: <20261112175640.40603-1-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095645_199862_1A9A867D 
X-CRM114-Status: GOOD (  10.35  )
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

The TX descriptor, TX status, RX header and A-MPDU handling of the AC
microcode, gated on the microcode revision. Only revision 832 has been
tested; the layouts of 784 and 928 are expected to match but are not
verified. Based on series 2/4.

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

Andreas Wendleder (4):
  wifi: b43: 11ac chanspec for the AC microcode
  wifi: b43: TX descriptor and TX status for the AC microcode
  wifi: b43: RX header handling for the AC microcode
  wifi: b43: A-MPDU for the AC microcode

 drivers/net/wireless/broadcom/b43/dma.c       |  61 ++++
 drivers/net/wireless/broadcom/b43/dma.h       |   1 +
 drivers/net/wireless/broadcom/b43/main.c      | 113 ++++++
 .../net/wireless/broadcom/b43/phy_common.c    |  13 +
 .../net/wireless/broadcom/b43/phy_common.h    |   7 +
 drivers/net/wireless/broadcom/b43/xmit.c      | 327 +++++++++++++++++-
 drivers/net/wireless/broadcom/b43/xmit.h      |  13 +
 7 files changed, 528 insertions(+), 7 deletions(-)


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
