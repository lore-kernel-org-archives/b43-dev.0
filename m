Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6930CC433F5
	for <b43-dev@archiver.kernel.org>; Sat, 15 Jan 2022 15:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDX/ZuDDVNlzUNCA8pASLZTFLU4r+c7SfH0j8edIxeE=; b=dXp2kAgNdgKW5j
	1Uictci2ZGa11wX4u4CI8Ps3d2mvFsxo+M5Qst/G6qBGVMEGTOrsS8XaUY+buimT/45ImNvO1osM7
	b3zeiVMHDvs0IhO+T54gLZe4vTm/EHkTEVZDp406ozwVl7D//9KMghLN0unjShzSnNHfSgXdMZCSP
	aT20YsU74elxUhNK+tfHW1k5W4FrNOIqlyoT6saPMzJB9b8rkzTtlN3Ze2Yvj0NHCZXCuTQraJVdB
	bVvLIsi8zTIs6AvqV14MparSa2KxeCsruHpMPqf+f9sf7rPA0US1f8PmuYVBzvuJRTeesdxwubnq/
	vflPnE+3fZqvG0Zo4VyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8lPz-00BGHw-Sr; Sat, 15 Jan 2022 15:56:39 +0000
Received: from m13123.mail.163.com ([220.181.13.123])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8lPw-00BGHM-2l
 for b43-dev@lists.infradead.org; Sat, 15 Jan 2022 15:56:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=rKvEM
 MnMq5ti1q5/OpKm8A5rDnJiwdQAgY+Cd3m43dI=; b=VMrZADcwixq7ZuW8Yk/xX
 +AMT1JJkzVNc7PDyLXhP3V9yOumKHC9SfQ7KemWBFyDp0fGT5S7AC8Hfqc8iec8/
 QYsMd0motNuqdRYG2tMRkstYHO5h9s2oQDP/w5dBk4qQVAVps06KgIl8CN1s0NSW
 39iHDBe2/yPAxhDXQijgh0=
Received: from yxj790222$163.com ( [124.126.178.205] ) by
 ajax-webmail-wmsvr123 (Coremail) ; Sat, 15 Jan 2022 23:55:52 +0800 (CST)
X-Originating-IP: [124.126.178.205]
Date: Sat, 15 Jan 2022 23:55:52 +0800 (CST)
From: =?GBK?B?08jP/r3c?= <yxj790222@163.com>
To: b43-dev@lists.infradead.org
Subject: Re:about 16bit pcmcia cf wifi card summit sdc-cf10g sdc-cf10ag
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210622(1d4788a8)
 Copyright (c) 2002-2022 www.mailtech.cn 163com
In-Reply-To: <a4d0a25.eea.17e5c1ad0d2.Coremail.yxj790222@163.com>
References: <a4d0a25.eea.17e5c1ad0d2.Coremail.yxj790222@163.com>
MIME-Version: 1.0
Message-ID: <65a79eee.257b.17e5e73c601.Coremail.yxj790222@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: e8GowAAnIISI7uJhiG4TAA--.33767W
X-CM-SenderInfo: 510mlmaqssjqqrwthudrp/1tbi6w2JvFXlzElD-gADsY
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220115_075636_559406_13E01064 
X-CRM114-Status: UNSURE (   1.64  )
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
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

ClBDTUNJQVxTdW1taXREQy04MDIuMTFnX1NDX0NGLTYwQjIKUENNQ0lBXFN1bW1pdERDLTgwMi4x
MWdfU0NfQ0YtMDJEMC0wNDQ4ClBDTUNJQVxTdW1taXREQy0wMkQwLTA0NDgKCgp0aGlzIHRoZSBo
YXJkIHdhcmUgaWQgaW4gd2luZG93cy4Kd2hlbiBJIGVudGVyIGNhcmQgaW50byBwY2FyZC1wY2kg
YWRhcGVyKCByaWNvaCByNWM0NzVpaSkgbm90aGluZyBzaG93IHRoYW5uICJjYXJkIGlzIGluc2Vy
dCBpbnRvIHNsb3QiLgoKCgoKCgpBdCAyMDIyLTAxLTE1IDEyOjU5OjI4LCAi08jP/r3cIiA8eXhq
NzkwMjIyQDE2My5jb20+IHdyb3RlOgo+Cj5kZWFyIGZyaWVuZCwgSSBhbSB1c2luZyBzZGMtY2Yx
MGcgZnJvbSBzdW1taXQsIGEgY2YgY29ubmVjdG9yIDQzMThlIGJhc2VkIHdpZmkgY2FyZC4gaXQg
c2VlbXMgbm90IHN1cHBvcnQgYnkga2VybmVubC4KPmRvZXMgYjQzIGRyaXZlciBjYW4gc3VwcG9y
dCBpdD8gCj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
YjQzLWRldiBtYWlsaW5nIGxpc3QKPmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwo+aHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0
CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
