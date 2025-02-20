Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54A8EC021B1
	for <b43-dev@archiver.kernel.org>; Thu, 20 Feb 2025 09:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SHDi78hTutYlj7FI1pfA964RIDNcZzQydTHQks7Dr+A=; b=p8td6YCSnxCQwS
	LKLXdQLKR2TxwtQ2eKLkBAhJ0oQXtzh+FvEcdKmyJXpCDXMenPu2B5eGXmU/IxNiTo8paFI+2jHRk
	DfyW9kYapFLLzexalp8O0UBQ+Eo+6I3GqlOZ1YVs8tBM0hoOQ2EVjXMs+2/A9aJHDBZFztJJJP95D
	JmD+TzpE69o047kLLPSAXTV9gwTt20H7Gi80VaejXhlpLzOPt19klJpEs/1aYK2KpQJhanJZJiqlq
	/AmDyECW08vc3yB3Pyc0v57amlsN1AMsMte4assDW4uk9GmC1ytrWrgw0Oqy4OLsgiR/4Mdtas8QK
	26AosaRR+qt6QNDEoHOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl2Sa-0000000HVdC-3rRY;
	Thu, 20 Feb 2025 09:03:09 +0000
Received: from mail.dynix.pl ([51.210.183.58])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl2SX-0000000HVae-1rg5
	for b43-dev@lists.infradead.org;
	Thu, 20 Feb 2025 09:03:07 +0000
Authentication-Results: dynix.pl; arc=none smtp.remote-ip=127.0.0.1
ARC-Seal: i=1; d=dynix.pl; s=default; a=rsa-sha256; cv=none; t=1740041857;
	b=RqN+/zb9KL/fI8mTFNGmutitbZfx0Vhys3ybEZaHE2oaI8a7i2sGtaFAiU+NwTng94gc
	 Gk3nqc2iWoZRQlaj2Infj/kPa1+OSOJsl+UGRvlYBGC1ObezD2n3TIBxmxwhEzYh9Usrb
	 PP2XIFJLBjWjRy+wV0VXlYm3PvbGTjIACX+FCs4zPaoshEGXrIEur6ZCiZqDHaAJFbSYa
	 NYl1vjnyYubhpk/ynkR/MzHNRSlPAO4CnIiGFYzSOrgni+Cc6QbBhSva/Uyi7ydIRfzfS
	 n7+LbG5lZvFiKA1UxKHzlcqGYZhT+NAOn47KnjUUn63rPRw7MrzmG+DxdqRoihxeQUQ==
ARC-Message-Signature: i=1; d=dynix.pl; s=default; a=rsa-sha256;
	c=relaxed/simple; t=1740041857;
	h=Message-ID:Date:From:Subject:From;
	bh=wJkahnT0Xyjw2uzF1s2fos6Z8TGWXIBnRiB5YPRQ/o8=;
	b=kZoUSeHjca2pC25IiRip5lrxFVVXgVfqSyRWRyOdoNp0s7nk19akorPXH652Uz8beoP3
	 Tacjp8I42k6gctEtaleMHfNfi4YJ3X2/zAJ4YXq3G0ZsId11u5d7BdvCBLx6JyOmoxk/y
	 m/X+FnD6GvTBzrSd6rEjDWCMYBmHPjRG2VbostBnaoxaIoDmsg8gHChMTkNtdj8W3zdQZ
	 8+Im/TC/ML+mOo0vAficRQSxIrkW5ixpZCDSWIei2VOi1ehvsVxdO1UO//Zk4GnvFZiCE
	 yEipLVoxbgVaGgAAzJTj+dSjPMhmmtlWBGtL5l4DsRxLMoccpDs7+5kqGCVEM9eC+4w==
ARC-Authentication-Results: i=1; dynix.pl; arc=none smtp.remote-ip=127.0.0.1
Received: by mail.dynix.pl (Postfix, from userid 1002)
	id D8A46248EF; Thu, 20 Feb 2025 08:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dynix.pl; s=mail;
	t=1740041857; bh=wJkahnT0Xyjw2uzF1s2fos6Z8TGWXIBnRiB5YPRQ/o8=;
	h=Date:From:To:Subject:From;
	b=tVxOlW//eMYCks+h2WDbF6qBt7nvHScWQLtWFFkyLrOq/QLz9o0TPa8Soog8mXAxY
	 8YNGx7MTwEDmKBnOJUbti16ve3NSQ9FjMRq2FIjFuYYUfQhm7zqXlAfFP35z4eTXD+
	 E8aZ56rCElAfACNAccs3S1/CEnovk3TfALmrqKlXu++tdLZMaw74q9vI093eIsnW5c
	 FFAHHEmvpxMQarFon+wraagqw49Z9SwNYN+WL4ABROM7+JOuiRlemx9cEWXV8w1na5
	 TTJiLlhWHKnBiAeRq8cEBGe3qdVbgF2oxeZ5wJipXbke8T6Fhq5tJ0AoxgOPdZTkVD
	 CM6c077jHgD/g==
Received: by mail.dynix.pl for <b43-dev@lists.infradead.org>; Thu, 20 Feb 2025 08:55:41 GMT
Message-ID: <20250220074500-0.1.t.79vw.0.wb4s37f8ep@dynix.pl>
Date: Thu, 20 Feb 2025 08:55:41 GMT
From: =?UTF-8?Q?"Micha=C5=82_Deja"?= <michal.deja@dynix.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_ofert=C4=99?=
X-Mailer: mail.dynix.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_010306_167147_F66E5E5D 
X-CRM114-Status: UNSURE (   1.81  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IHBvdHJ6ZWJ1asSFIFBhxYRzdHdvIGFrdHVhbG5pZSBub3d5Y2gg
a2xpZW50w7N3ID8KClNrdXRlY3puaWUgcG9tYWdhbXkgcm96cG9jenluYcSHIHJvem1vd3kgaGFu
ZGxvd2UgeiBrbGllbnRhbWkgemFpbnRlcmVzb3dhbnltaSBQYcWEc3R3YSBvZmVydMSFLgoKWmFw
cmFzemFtIGRvIGtvbnRha3R1IHp3cm90bmVnby4KCgpQb3pkcmF3aWFtIHNlcmRlY3puaWUKTWlj
aGHFgiBEZWphCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
