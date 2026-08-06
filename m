Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28AE8C561E6
	for <b43-dev@archiver.kernel.org>; Thu,  6 Aug 2026 08:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f7GOUoco7G8qksLg4Y1DgG9aCUvdPrulgiEVbb8GtoE=; b=gYNw1tuq8ZDRzZ
	vdRvfszAqIKsEsP5FKXR7WPMOIGII/02AVhDz0FPzmPko37qNqTP0bZrbmOe4w6u1gSzvFkpm0EgH
	MmOPwLBophOWdlz6up12XPvuW8oMzUuOG6m9WtP2g1JMbB2/fqvrJRpPRHwcm124fMBzB8FPvdOd8
	dpP0xXXT1gCE2irW+dn6t+6356BQCr3m9m0LqSrS6ZC7ScF6T3hpHiRGztXj1daEcGuGSDoOI64CR
	K5TPWp7MkPeSB/9w2drWnPLQTSfjWcnoYRxie2Q6LkjiKSnbsY2HGx8OJErbGc6ROzQR+e3MVdmYd
	QdjMyC+FJrLOm6x71j3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrtlv-00000005Hwh-4033;
	Thu, 06 Aug 2026 08:48:15 +0000
Received: from smtpcmd10102.aruba.it ([62.149.156.102])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrtlp-00000005Hre-2tDC
	for b43-dev@lists.infradead.org;
	Thu, 06 Aug 2026 08:48:12 +0000
Received: from DELL-MOBILE03.ad.smart.it ([77.89.54.34])
	by Aruba SMTP with ESMTPSA
	id rtliwdfMAIfDkrtliwYU4u; Thu, 06 Aug 2026 10:48:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1786006083; bh=WeWgdOo7ZDytIYaKKU/Onqw8G8iiC0gsRwYKQt8aT7k=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=Ix8iffuErGQgzAKnsIi4oR49G8x2FtV7PnkVLOseJaSKwz1UuQhYDL0ftHGeCa1Sc
	 YlEa60xU4POmfCkAwZlIEnYQZ1Hsb8E/Lw9l0maNMvAEQ828UuiDGTbUePupNTdL6T
	 /+1lsIuzX8sF3DTgbQJNzZai6qHCM6EPrm3DgnFB8OEimMExmsbb4VE7nO+7mq1X6h
	 2r9o5fvROb8uwnalOpt1D3o/p04eWiWXgMN9GO1cmp1tPfkiLMW9i/Wx1mEyWVqqK7
	 y6X1UbDKeOKV6AmFEUAcyzg3yi9uXJasSzm/33rjIgnDF30QvTjIPoL/nSEu+47RX1
	 gYHPJezlXEh3g==
Date: Thu, 6 Aug 2026 10:48:02 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Michael Buesch <m@bues.ch>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org
Subject: b43: multiple parens bugs and double CORDIC_FIXED
Message-ID: <20260806104802.147ff076@DELL-MOBILE03.ad.smart.it>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfIwNugalfKyKKYa0X6tFVmHTaw19c0ck2bxh/8lVA4ZODp7deqLqLSSoxQcgkQElc6kszbI53awt6HEr90QzlrkEPxgg0BXJYJ9rGNkzqro6dlcoxJP0
 tvnfeeBnGGpZhebcf0Ns32xWKZaT/ZslNyGMliaQAGYYXhP7ivV4bxRTrKabZfWCM+ucn/fb6TpClslR4U6yj150pLW5N5I+8c+ZAsnnlJmpedyCpjqSWhyY
 gA6nPj2Hm0NOiPHxfqoBgYITHuHgmQmRVmClrV5iaqY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_014810_188710_E5E268F8 
X-CRM114-Status: UNSURE (   5.32  )
X-CRM114-Notice: Please train this message.
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

I developed a tool to capture io traces of proprietary wl driver by
hooking on its io accessors and then started to check mainline against
the captured trace, i already spotted 3 bugs:

1) in b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)

abs should accept only offset[j] and not offset[j] + 4, immediate result
is failure to reproduce the write 0x3e for the same reads

records #3723-#3740, from "PHY.WR   addr=0x01b8 val=0x003f"

2) In b43_nphy_load_samples()

shift has more priority than and, so samples[i].i & 0x3FF << 10 masks
with 0x3FF << 10 instead of shifting the masked value into place. The
in-phase component of a sample sits in the low ten bits, so it is
masked to zero. brcmsmac packs the same table as ((buf[t].i & 0x3ff) <<
10) | (buf[t].q & 0x3ff), in wlc_phy_loadsampletable_nphy()

3) In b43_nphy_gen_load_samples()

cordic_calc_iq() call CORDIC_FIXED(theta) as the first op, so the
pre-scaling of rot by 2^16 is wrong. For reference brcmsmac computes
the step as ((f_kHz * 36) / phy_bw) / 100 into an s32 and passes it in
unscaled. The wrong scaling and the double CORDIC_FIXED() result in
wrong values.

with both fixes it reproduce correctly:

records #8638-#8959, from "TBL.WR   id=0x0011 off=0x0000 len=160"

Bonus: with the trace I also found that I introduced too many values
for the table r2057_rev8_init, while wl write only a subsection of them:
the ones marked with an extra flag in the raw data.

I'll send patches in a few days once i verified them on hardware, do
you see any problems with the capture & compare approach?


LINK:
https://github.com/aleferri/b43-6362-wip/raw/refs/heads/main/router-data/dsl-3580l/opinit-ch1-ch6-bw20.decoded

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
