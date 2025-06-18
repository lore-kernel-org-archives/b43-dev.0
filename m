Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA713C7115C
	for <b43-dev@archiver.kernel.org>; Wed, 18 Jun 2025 07:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zk6Xkbc1cbxiL6Iwl1fQfkCInkq37Emyf3XCEUgKUWM=; b=xdvjZIrgLWVjXv
	RcYaqPxqUDTFlL8cg8li6HsthxouOItCwUgBAmKmDbDfYheNF2GYtPVS5E1lUhg6uG41HaafHNzbO
	2bh8bYzt4faZX480/fPisACFUWPseMmvLLjcnM30H5HelmPJKhT8/CuGw8O/6DLA0xlzgx8Rb9GO5
	8Ror7EFFPBfnsQpz779jX680/n/mry+0E8nb3UMvjYNOYZG8NrdSfaJwbbQjit5n9LBYBSl9HDnRN
	yNh/aH6JzjQ+hpWjr06leiFgADWkw9/kqZAiqQoNal0rrJ5Tk6EKwAqMvPOYyjsY57jwtOugPASBP
	nodnMq9AwFhnweaJ94XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRnGT-00000009IMz-2hRp;
	Wed, 18 Jun 2025 07:31:21 +0000
Received: from mail.formbizup.com ([51.195.200.90])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRnGO-00000009IMU-10xc
	for b43-dev@lists.infradead.org;
	Wed, 18 Jun 2025 07:31:18 +0000
Received: by mail.formbizup.com (Postfix, from userid 1002)
	id 2B93E4E306; Wed, 18 Jun 2025 09:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=formbizup.com;
	s=mail; t=1750231873;
	bh=wAcXwrNiqDJpeutFZq0A35YRxAPArSLzCPVOyFH7y18=;
	h=Date:From:To:Subject:From;
	b=HM3QqNmakPslu1x+UwKVsXaGqli9SycQEjwiRAD0AbjPbNxa/F2hcrTencC1Wcdpj
	 qNIB2uZWcza7C916kwO+QzhH2lmIB0iRAEZQ4bdiShxaJo2KwplVbDsr+2mfEhRF7w
	 uJCleK8JkA5L+JDcQc83vW4tLhYH0qk8h/W41a8K0+GErg4mrgJ8VPyyFyiT3Flis5
	 j8ddVcnX8bChq5P3IOtnH5TxbSmbbxNyzrwkLcTXRPZPZq1mCod59CR1YliVeUGaFD
	 Gen3ceoo/QOnTiF6wYH7/XU+VeeRnGQikBWB0Xf8vln10B9q3eqaskYPOgJ34XFcKg
	 4e72LEBwYvkOg==
Received: by mail.formbizup.com for <b43-dev@lists.infradead.org>; Wed, 18 Jun 2025 07:30:34 GMT
Message-ID: <20250618084500-0.1.9r.u69k.0.biaav1oa5b@formbizup.com>
Date: Wed, 18 Jun 2025 07:30:34 GMT
From: "Samuel Zeman" <samuel.zeman@formbizup.com>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Spolupr=C3=A1ce_s_dovozcem?=
X-Mailer: mail.formbizup.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_003116_950919_9E170A54 
X-CRM114-Status: UNSURE (   1.31  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

RG9icsO9IGRlbiwKCnphc3R1cHVqaSBzcG9sZcSNbm9zdCBzcGVjaWFsaXp1asOtY8OtIHNlIG5h
IGRvdm96IHBhcMOtcmVuc2vDqWhvLCDFoWtvbG7DrWhvIGEga2FuY2Vsw6HFmXNrw6lobyB6Ym/F
vsOtLCBrcmVhdGl2bsOtY2ggcG90xZllYiwgZGVrb3JhY8OtIGEgc2V6w7NubsOtY2ggKHbDoW5v
xI1uw61jaCkgcHJvZHVrdMWvLgoKViBuYcWhw60gbmFiw61kY2UgbmFqZGV0ZSBhxb4gMzAwMCBw
ZcSNbGl2xJsgdnlicmFuw71jaCBwcm9kdWt0xa8sIGt0ZXLDqSBqc291IGlkZcOhbG7DrSBwcm8g
dmVsa29vYmNob2Ruw60gcHJvZGVqLgoKViBzb3XEjWFzbm9zdGkgb2JzbHVodWplbWUgdsOtY2Ug
bmXFviA0MjUgesOha2F6bsOta8WvIHYgdHV6ZW1za3UgaSB6YWhyYW5pxI3DrSwgY2/FviBzdsSb
ZMSNw60gbyBuYcWhw60gc3BvbGVobGl2b3N0aSBhIMWhaXJva8OpbSBkb3NhaHUuCgpKYWtvIHDF
mcOtbcO9IGRvdm96Y2UgbcWvxb5lbWUgbmFiw61kbm91dCBrb25rdXJlbmNlc2Nob3Buw6kgY2Vu
eSBiZXogcHJvc3TFmWVkbsOta8WvLCBhdHJha3Rpdm7DrSBsb2dpc3RpY2vDqSBwb2Rtw61ua3kg
KG1pbmltw6FsbsOtIG9iamVkbsOhdmthIG9kIDEwMDAgS8SNIGJleiBEUEgpIGEgdsSNYXNuw6kg
dnnFmcOtemVuw60gb2JqZWRuw6F2ZWsuCgpQb2t1ZCBobGVkw6F0ZSBwYXJ0bmVyYSBzIMWhaXJv
a291IG5hYsOtZGtvdSBwcm9kdWt0xa8gYSB2w71ob2Ruw71taSBwb2Rtw61ua2FtaSBzcG9sdXBy
w6FjZSwgcsOhZGkgcHJvIHbDoXMgcMWZaXByYXbDrW1lIG5hYsOtZGt1IMWhaXRvdSBuYSBtw61y
dS4KClTEm8Whw61tZSBzZSBuYSBtb8W+bm9zdCBuYXbDoXrDoW7DrSDDunNwxJvFoW7DqSBzcG9s
dXByw6FjZSEKCgpTIHDFmcOhdGVsc2vDvW0gcG96ZHJhdmVtClNhbXVlbCBaZW1hbgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5n
IGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
