Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99960C3DA4A
	for <b43-dev@archiver.kernel.org>; Tue, 20 Aug 2024 08:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8e+eGzbM/n8cVWYMJ1jUQiwL1/1kSd9ifePRYF7c36Y=; b=dMPUZXneT3BTzj
	7fMCzCeATCMSBWG10O/+GqWuCJ+eitW2mY+y+yF36b+fGeyQ/C/VctKZvtG/XFVFD9Hunj2imy9gf
	YR9H7oKR+gXXvLk//eSpsuV/n35+U+uDgCihrNrKhnSQQ+N8r0f9+xFfjrOefDw5Q/3C6MDReiKjs
	3Ao+mDUHRXfjdezP6/32fCILTFnuYl02/dOEPOhTOFuvTFFX2vwOHTclYU4fN3UXgArDsFbMhySH0
	WUI1n+Dq0lrxIGt5iGOaPIBoBnhHu3EmPmB3IXNqYHiQZhbNxRSiEnAVmDl2dq4A9wHb/kubzHSad
	mXd2fWUhjHObNoxbH3bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgJsY-00000004JbG-2BNg;
	Tue, 20 Aug 2024 08:06:10 +0000
Received: from mail.startupadvisors.pl ([94.177.248.4])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgJro-00000004JPq-36rR
	for b43-dev@lists.infradead.org;
	Tue, 20 Aug 2024 08:05:26 +0000
Received: by mail.startupadvisors.pl (Postfix, from userid 1002)
	id 9156382C95; Tue, 20 Aug 2024 10:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=startupadvisors.pl;
	s=mail; t=1724141117;
	bh=+bW7zNBqABYsSkzehs8G7+MnjXBZYHKqEqc9FYkhy3E=;
	h=Date:From:To:Subject:From;
	b=QBZ9Wg5MX5nZKht007yYSuiIrRmwKsWLP6hTmYkvSt1EYtB9hmu9c3VbhXw6wlyLO
	 TuDBEP00lrpiwEQqHfnPy3SSyfpIW/LjkdJlt4L6DAGCFcz3TK+kiz4WqWIUAcKJZL
	 R5J7WjgUExP4PPfVgtwsjLFw9CjzzZ8whjiKFa+ehE6y627QVE72Cg8BksKWW4bQ+2
	 kZuxQTAs60WBKErSclHVmDQ2Ow21DM1oDzfQXYoC+JTkUVRfw+PRWj5YTZvvyJNGH7
	 J2oizv1utenq1zz0SVkR/H6YL1IvCwF4t+hJyT1hvPa49Ro50CV9bm6d120FmQsTPP
	 1IMsSF1lpKiqg==
Received: by mail.startupadvisors.pl for <b43-dev@lists.infradead.org>; Tue, 20 Aug 2024 08:05:09 GMT
Message-ID: <20240820084500-0.1.7c.fw20.0.36ln8mi097@startupadvisors.pl>
Date: Tue, 20 Aug 2024 08:05:09 GMT
From: "Kamil Basz" <kamil.basz@startupadvisors.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Oszcz=C4=99dno=C5=9Bci_na_rachunkach_za_energi=C4=99?=
X-Mailer: mail.startupadvisors.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_010525_478582_5EED1EC9 
X-CRM114-Status: UNSURE (   1.28  )
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

U3phbm93bmkgUGHFhHN0d28sCgpuYXN6YSBmaXJtYSBqZXN0IHd5c3BlY2phbGl6b3dhbmEgdyBv
cHR5bWFsaXphY2ppIHp1xbx5Y2lhIGVuZXJnaWkgZWxla3RyeWN6bmVqIGkgZ2F6dSwgZGxhdGVn
byBjaGNpZWxpYnnFm215IHphb2Zlcm93YcSHIG5hc3plIHdzcGFyY2llIHLDs3duaWXFvCBkbGEg
UGHFhHN0d2EgcHJ6ZWRzacSZYmlvcnN0d2EuCgpEb8Wbd2lhZGN6ZW5pIGVrc3BlcmNpIG1pZWxp
IHByenlqZW1ub8WbxIcgc2t1dGVjem5pZSB3c3DDs8WCcHJhY293YcSHIHogd2llbG9tYSBmaXJt
YW1pIHcgY2HFgmVqIFBvbHNjZSwgcG9tYWdhasSFYyBpbSBlZmVrdHl3bmllIHJlZHVrb3dhxIcg
a29zenR5IHp3acSFemFuZSB6IGVuZXJnacSFLgoKSmXFvGVsaSB6YWludGVyZXNvd2FsaSBzacSZ
IFBhxYRzdHdvIG5hc3rEhSBwcm9wb3p5Y2rEhSwgcHJvc3rEmSBvIG9kcG93aWVkxbogbmEgdMSZ
IHdpYWRvbW/Fm8SHLgoKClBvemRyYXdpYW0KS2FtaWwgQmFzegoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRl
dkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYjQzLWRldgo=
