Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 607D0C27C53
	for <b43-dev@archiver.kernel.org>; Fri,  7 Jun 2024 08:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FgEZaW1cjtPxvXK6Z5RY8seSwFd+YBZAjlX8sWYnuXE=; b=l6dQ1qg/zv8+Nm
	D4Le3e+fahYKYrdHnMsbiwDzih4Zympw3QXEQdl4jBT6+BJJY8xM91rbfmYqrVYDcXEpae8xD/JM1
	63yMYUFJEE0APUGrQkMq8UDwBHGQ91Kc9GFI0EOt4QOr086WRE7fmLWN+aVu5WCiwXnfqmjWQtDTB
	SLWSI2KgvUdxfu/SrbzxuY+y7/rAxhOa4l5FUvLMiKJtCuPt1RSlklaknvGVNrFjl9hSQ/tQqcHXA
	6QVsmZyR7Sqj/pd6DApPjOks5cfQsJr9RsaGcxUFjOSjUKxfNmc7vSvz/eszcZDClicVG7A1zDKsv
	Y5nkm6cRWqbjUWdrA6fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFUWc-0000000D31l-1O39;
	Fri, 07 Jun 2024 08:00:38 +0000
Received: from mail.vividpod.pl ([5.249.155.99])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFUWU-0000000D318-1IbW
	for b43-dev@lists.infradead.org;
	Fri, 07 Jun 2024 08:00:32 +0000
Received: by mail.vividpod.pl (Postfix, from userid 1002)
	id 605F382998; Fri,  7 Jun 2024 10:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=vividpod.pl; s=mail;
	t=1717747220; bh=L/IK9R++bObEpC6T/5eZn67vovIH5yzdO0tEF7xLLBg=;
	h=Date:From:To:Subject:From;
	b=wIm6pEeBtizVuraXODrjQ3YecvYqvms9j2jgKvs+Hducz2qrpQvDyHpN7vfiEVm8l
	 a39qY5vx+NupcC42b2WVz2kjfbtEQUbeMH8+Isvs1vtm+FvGuAPwi8/9xCDbokmm+8
	 wYcOTLiLumoJiKcMkUMTr3Xd7wOG58WvJ4hQtIoWcu6/GrPwL1Pe1TWp1JXLGwCHq/
	 2t3FwXRQZNNv8YrGCJ+2popCg4GEmzsk+XmHZYONheZ24l64FTtWLSg52K2cgKwGMG
	 a4J1geOoc3JSiG/QIQ6JGp/fvJnXJBWVfNG9AViVGRk68brmGFfYSJIwtYfTWVHOdL
	 m+Z2DhaulsMyg==
Received: by mail.vividpod.pl for <b43-dev@lists.infradead.org>; Fri,  7 Jun 2024 08:00:16 GMT
Message-ID: <20240607084500-0.1.2u.26ex.0.99gaqorz5e@vividpod.pl>
Date: Fri,  7 Jun 2024 08:00:16 GMT
From: =?UTF-8?Q?"Bart=C5=82omiej_Szyperski"?= <bartlomiej.szyperski@vividpod.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Rozszerzona_obs=C5=82uga_informatyczna?=
X-Mailer: mail.vividpod.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_010031_102157_84A77216 
X-CRM114-Status: UNSURE (   0.86  )
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

RHppZcWEIGRvYnJ5LAoKamFrbyB3YXJzemF3c2thIGZpcm1hIHogYnJhbsW8eSBJVCB3c3BpZXJh
bXkgbG9rYWxueWNoIFBhcnRuZXLDs3cgeiB3b2ouIG1hem93aWVja2llZ28gdyB6d2nEmWtzemFu
aXUgcHJ6ZXdhZ2kga29ua3VyZW5jeWpuZWogaSBvcHR5bWFsaXphY2ppIHByb2Nlc8Ozdy4KIApX
IHBlxYJuaSBvZHBvd2lhZGFqxIVjIHBvdHJ6ZWJvbSBQYcWEc3R3YSBmaXJteSwgcHJ6ZWptaWVt
eSBmdW5rY2rEmSBpIG9kcG93aWVkemlhbG5vxZvEhyBkemlhxYJ1IElULCBwcnp5IGplZG5vY3pl
c25laiByZWR1a2NqaSBrb3N6dMOzdyBqZWdvIHV0cnp5bWFuaWEgLSB3IGZvcm1pZSBtaWVzacSZ
Y3puZWdvIGFib25hbWVudHUuCgpVdHJ6eW15d2FuaWUgc3lzdGVtw7N3IGkgYXBsaWthY2ppIGR6
aWHFgmFqxIVjeWNoIGJleiB6YWvFgsOzY2XFhCwgemFyesSFZHphbmllIGRvc3TEmXBhbWkgaSBo
YXPFgmVtLCBiZXpwaWVjemXFhHN0d28gZGFueWNoIG9yYXogY3phcyByZWFrY2ppIG5hIGJpZcW8
xIVjZSB6Z8WCb3N6ZW5pYSB0byBrbHVjem93ZSBhc3Bla3R5IG5hc3plaiBwcmFjeS4gSmVzdGXF
m215IGVrc3BlcnRhbWkgdyBkemllZHppbmllIHN5c3RlbcOzdyBpIHNpZWNpIGtvbXB1dGVyb3d5
Y2gsIGluxbx5bmllcmlpIG9wcm9ncmFtb3dhbmlhIGkgYmFja3VwdS4gCgpXc3BpZXJhbXkgY29k
emllbm7EhSBwcmFjxJkgcG9sc2tpY2ggcHJ6ZWRzacSZYmlvcnN0dyB6IHNla3RvciBNxZpQLCBh
bGUgdGFrxbxlIGR1xbx5Y2gsIG1pxJlkenluYXJvZG93eWNoIGtvcnBvcmFjamkgeiBDaGluLCBX
xYJvY2gsIEZyYW5jamkgaSBJbmRpaS4KCkR6acSZa2kgZG/Fm3dpYWRjemVuaXUgemFwZXduaWFt
eSBQYcWEc3R3dSB3c3BhcmNpZSBuYSBuYWp3ecW8c3p5bSBwb3ppb21pZSBvcmF6IGRvc3TEmXAg
ZG8gbm93b2N6ZXNuZWogaSBuYWpsZXBzemVqIG5hIHJ5bmt1IHRlY2hub2xvZ2lpLgoKTcOzZ8WC
YnltIHByemVkc3Rhd2nEhywgY28gbW/FvGVteSBkbGEgUGHFhHN0d2EgenJvYmnEhz8KCgpaIHBv
emRyb3dpZW5pYW1pCkJhcnTFgm9taWVqIFN6eXBlcnNraQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYjQzLWRldgo=
