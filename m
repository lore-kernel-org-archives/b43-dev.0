Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B500C9832A
	for <b43-dev@archiver.kernel.org>; Tue, 29 Sep 2026 14:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9YS1TYGkfW55MFKXtG7V60egF1vp8+7kat9/ECkBfg=; b=rW9CiYzN/yGEAJ
	bEgJXCPqT5+Ra3y1HkSBtZTFImURHx38s9CDJiALJxaJRC1RnJ6xS1++NWtLU853Vt7LLDKh//Ra0
	K2IyjTnof96Y9zKTC0kxG/1tKk+Bj5VyfYAF7a7U1vjjNoepNSqc2SoJuJxdpy/x+kBygbHQAd4F0
	b0L7WZ2BHQd3Ykf5QSjhFSlIKtgs63LqNISOKahXNuhmAJ0HFNbQO1Imbn7Bqd4iIubwjRGkDH63Y
	zQhn6z12yMhQzltYNmUTcpQoG+jAyUfWmTAk1cr1Zy3eHHNoZ6yAfyRF6BAcOhf9epS/XI8/U3qzd
	NnLjstBMgJzoS7rrNKGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBZ6F-00000003pRB-0PEd;
	Tue, 29 Sep 2026 14:46:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBZ5l-00000003pGF-0mmU
	for b43-dev@bombadil.infradead.org;
	Tue, 29 Sep 2026 14:46:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:From:To:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=YqRb0Lt6o6cpf5+myrECVbP/9Jgh1swBc2Lgnr6DRn4=; b=f3i3Z72GzBuzJ1jc4ZQH/PM0/L
	xsEfMkK991IRhNfZiIVnisDeBdCczBZGqxNsVOMLI1SDGRcT+wmkYkcpDxs9cixwfwWouXnVLkejw
	IW1giCVp9fr3GGGbByIfHWICdNjnuF9tyq5O8WxMie1qEb5P0xDN4Xsb2brdjwUZKNJVaVdjyXeli
	L62ti2zpT35mTpEtYgA29F9zD0i3DYfrEv5KhkTPauNl9hRbUdjOfQ0Brfcy4aVMChbLWv8gZedN5
	CthPiUKm0A5n/6USmthxqQEG85+9uVFISeZYMWkxhqW5EK8mJtez+a11VljwoBoJb+ZiyWXE8twXe
	N8eHGQJQ==;
Received: from mail-4319.protonmail.ch ([185.70.43.19])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBZ5h-00000002kg8-38bo
	for b43-dev@lists.infradead.org;
	Tue, 29 Sep 2026 14:46:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1790693147; x=1790952347;
	bh=YqRb0Lt6o6cpf5+myrECVbP/9Jgh1swBc2Lgnr6DRn4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=v7zpD7d/tjzU7MDr1QYrvJi3Ol2n5YL6R609Y1xgYAWh6kSelWmrS11nhTN7smA5p
	 Ii3ijYby2iIBkO0OP4H3/ccdcU1zY/ehPOPXVnEzGRK+KnpwS5KEriws1Fs8Hmw5BC
	 Ant8I7MEJVKKEN4kVEY8xkl9f4gSAZ7Exy2ZO/w0ENQnGgGtjjw9mEFpv9rrwa3V98
	 75km9cSAEpqYnecesmpWjjUAClqGQZOTfqy8Fp+YVaOaUoKzvMKMKOXxEUO8XtNFVv
	 WQYDcgtDztp+cV+6MfhGybMM6jqWtOs8l9uZob3rVcI3w+Vk7Fn0BfZx1Ne1AJUk0r
	 0yOe70pLsL5uw==
Date: Tue, 29 Sep 2026 14:45:41 +0000
To: Alessio Ferri <alessio.ferri@mythread.it>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: =?utf-8?Q?AW:_Re:_BCM4360_AC-PHY_support_for_b43_=E2=80=94_reverse-engineered,_seeking_guidance_on_a_clean_path_upstream?=
Message-ID: <OG0AU4A6pMu865qvxpXQjF7NvEP6p2bwR_IZRaLxONsn_3Gdxm00PiOOaGuWbYy-AmxhLGRyz29ZPtUKzDwsKJk_UjTLAU1bctgCzdWlNlE=@proton.me>
In-Reply-To: <20260929113109.2c561844@DELL-MOBILE03.ad.smart.it>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me> <20260929081403.6076a6da@barney> <20260929093405.79d9f4ec@DELL-MOBILE03.ad.smart.it> <hCBGuqVmDlV3Y7f2t6L8DtnoyBNbC8KghHXm0fZCHLDLrtfaoYw9e0UcCCsQHHK1X4TBz0DuvSL4zmAx_dVS3q54BZ0JZXtjXXNnuSAFtyo=@proton.me> <20260929100544.343ce6d2@DELL-MOBILE03.ad.smart.it> <d6tVX7HBAW4Qnebx5Enj79edWG_LVmnRT0bjhcfv9bb1h0cewrTEDHK-VVoSy0NZcMzv3FB8OVEyTFNgA7rs_zaplEfiLXdwcCqhYDeonMo=@proton.me> <20260929105859.364ea71b@DELL-MOBILE03.ad.smart.it> <oYmDL00YinKfSdWHxkjmqPRGHWmeA_0SCR6tpafsgCvGyqYAEKuCt0kg7w_C47be5hm7IwFsxRnulMhvPFJEXQNDaDPgZNzMIQ0vfRKnOLw=@proton.me> <20260929113109.2c561844@DELL-MOBILE03.ad.smart.it>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: 5e49b4a9dc59e1bcd3755f763168d34cb421ad69
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_154558_190148_29E65137 
X-CRM114-Status: UNSURE (   7.00  )
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

PiBJZiB5b3UgYXJlIHVzaW5nIGFuIG9sZGVyIHVjb2RlLCBwcm9iYWJseSBteSBkcml2ZXIgZG9u
J3Qgd29yayBvbiB5b3VyCj4gZGV2aWNlIGJlY2F1c2UgaXQgaW50ZXJhY3Qgd2l0aCBuZXdlciB1
Y29kZSwgY2FuIHlvdSBsb29rIGZvciBtYWMKPiBiZWhhdmlvdXIgZGlmZiBmcm9tIHlvdXJzPyBN
YXliZSB3ZSBjYW4gbWVyZ2UgdGhlIGhhbmRsaW5nIHdpdGggc29tZQo+IGlmcywgcmVwbyBoZXJl
OiBodHRwczovL2dpdGh1Yi5jb20vYWxlZmVycmkvYjQzLWFjLXdpcAoKIEknbSBvbiB1Y29kZTQy
LmZ3IChEMTEgY29yZSByZXYgNDIpLCBmaXJtd2FyZSA4MzIuMTI3ICgyMDE0LTA5LTE5KTsgbXkg
ZHJpdmVyIGNoZWNrcyBTSE0gVUNPREVSRVYgYWdhaW5zdCDiiaQweDEyOC4gSSBkb24ndCBoYXZl
IGEgY2FwdHVyZWQgcmV2IG51bWJlciB0byBjb21wYXJlIGFnYWluc3QgeW91cnMgb2ZmLWhhbmQg
4oCUIHdoYXQgdWNvZGUgcmV2L2RhdGUgZG9lcyB5b3VyIGRyaXZlciB0YXJnZXQ/IEkndmUgbWFw
cGVkIGEgZGVjZW50IGNodW5rIG9mIHRoZSByZWFsIE1BQyBldmVudCBsb29wIChkaXNwYXRjaGVy
ICsgd2FpdCBwb2ludHMpIGFuZCB0aGUgd2F0Y2hkb2cgdGljayAoU0hNIDB4MTU4LCB+MS4wMjRz
KSBieSBkZWNvbXBpbGluZyB3bCwgc28gYSBkaWZmIGlzIGRvYWJsZSBpZiBJIGtub3cgd2hhdCB0
byBkaWZmIGFnYWluc3QuIEdhbWUgZm9yIG1lcmdpbmcgd2l0aCAjaWZkZWZzIGlmIHRoZSBkaXZl
cmdlbmNlIGlzIHNtYWxsLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
