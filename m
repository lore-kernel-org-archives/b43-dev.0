Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0F02CD5BB4
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jt8sEr2gMjfuclZ8qQMSLe0oMi73qPEjmHNKgllX0Cs=; b=vli9GXxmb6qlXd
	k78T/Xe6Kag1QRhUnPpyzjQXRcdrIvWR3AAblzMX41QsZsLjusufY5eWeqXOU8o3suxW+0dXxWxaC
	SzNvDpqVxEqFWFWLu+HrrmmlQ2Ciu42W3GYwWJ37RerOTtMyVxaZKxceo5Ugn4kl91Yvui3xIlB7b
	dRe4CxfOKIXyPq/BGE4NM8pTyXIP3d8AibirvTvah0NKQ/Xeq2sAIL0Dz2TYPVGyY5LZtbW5rBjLU
	pxfot3W2C3ywBqd/xBWniFKni3e6bRqTBlpKNnXcnAkbS5c+0sPcEC8v6wFPsQHZj8FfP9YmG5VCq
	tzttNUedR456NPcUMvzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGSR-0000000FgTv-17Fn;
	Sun, 24 May 2026 21:34:03 +0000
Received: from smtpcmd15176.aruba.it ([62.149.156.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGSO-0000000FgSx-3JrM
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:34:02 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGSLws9kZwf0DRGSLwF9e0; Sun, 24 May 2026 23:33:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779658438; bh=nGiMuq5oQsggp47VgQXRPVHvJULhPZFlt9aAJxCDgMM=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=i9dh2itEY0km5/SEoJ5DOUUqITm91LgJTJZ47GTOTNh137Xg3L4bhON81D9E2dcs6
	 JCgw+Kkd+Q2a9PYdKsNZOqYdOY0aqmADb4WSewbJVinE8VmrFtYPlwOiqTqju2Hc+h
	 rSZu8gulBm2Z+d+0uPuq+pdi356ML+wF7LEWCLVqagQesnhlD6Kws9o6e7q5yvx/MB
	 kVyvBn3mCEviQc6fegrWfZPspWXBUOhPImkvCw/kMwFO8dUBXeO7IejmSTuyBPHkpX
	 y/WKQIA0YnAPXPVpPoromW50rDSXZmhVfzVUdsfceyMrdeBI7qw4fIdgsRNL+/Xiig
	 LjwCLaeeTpzng==
Date: Sun, 24 May 2026 23:33:57 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
Message-ID: <20260524233357.0c66e4bb@fedora>
In-Reply-To: <20260524233228.06b38dba@fedora>
References: <20260524233228.06b38dba@fedora>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfJTdJJSA0gvcntBIWyRIkKxZg/g8VWhWAAviSQBQU7kFW2tz5wbjroSqE135QI6LbtqQbkZfNDsT1YSkXFvrgZP1NLjyFZ37s5YEnNUnlwYEWmuH9vty
 ThF8/vO08VstbamSs9Bs0A9genukAgbTcD+CJNJQeeMBk57OmMdC0dLngzw+LQAftI542m1ooI8mTqKlKZJu2pqZLK7e2Fx8gHAGNSLkPZIftwOHhj5Bjze7
 AQNPrvmjLvLSGTMHEDaF6RXip4dQqhJz43GsL90Vo5E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_143400_995270_67181DBC 
X-CRM114-Status: UNSURE (   8.90  )
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


Add d11 core revision 0x16 (= 22) to the b43 bcma device id table.

The b43 bcma id table covers d11 revisions 0x11, 0x15, 0x17, 0x18,
0x1C, 0x1D, 0x1E, 0x28 and 0x2A. Revision 0x16 belongs to the same
N-PHY family as revisions 0x17 and 0x18 (radio 2057) and needs no
new PHY or radio code beyond the radio_rev 8 dispatcher entries
added later in this series - only the device id entry is missing.
Without it bcma scan enumerates the 802.11 core but no driver binds.

The revision is used by the Broadcom BCM6362 single-die integrated
2.4 GHz wireless block found in xDSL SoCs.

Assisted-by: Claude:claude-4.7-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/broadcom/b43/main.c
b/drivers/net/wireless/broadcom/b43/main.c index 37c5d9928..85ea8fdd9
100644 --- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -117,6 +117,7 @@ MODULE_PARM_DESC(allhwsupport, "Enable support for
all hardware (even it if over static const struct bcma_device_id
b43_bcma_tbl[] = { BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x11,
BCMA_ANY_CLASS), BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x15,
BCMA_ANY_CLASS),
+	BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x16,
BCMA_ANY_CLASS), BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x17,
BCMA_ANY_CLASS), BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x18,
BCMA_ANY_CLASS), BCMA_CORE(BCMA_MANUF_BCM, BCMA_CORE_80211, 0x1C,
BCMA_ANY_CLASS),

-- 
2.54.0

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
