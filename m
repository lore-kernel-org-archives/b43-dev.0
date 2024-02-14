Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 301CBC48BEB
	for <b43-dev@archiver.kernel.org>; Wed, 14 Feb 2024 09:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dOBP/cMmd/A+HidI8ZvvHO8tUPSfJCrmewYcXBCgKJA=; b=zQxXnNi0LXL85/
	eIamxMN203PYn97Q4IQVOJZui40J4HHMSXwJ3/GfF479OzCgnY4f6T79BZg9TVHohJsHjFYX1cAqz
	nLoethn9/CTSkkGWkX2lGDf5RmcQfBezvgymi7BLxSkcxo0VM2UYmBHcXiFwLN1d+2PB6LeFFtCV9
	3WLfJq1bMJEseOhCuSdFyiy3ENZJO6UfcqFPXoa6d9c6fz0SXBJnu2O5X+/RvcYxZRJIOU7pqoRVK
	MY3xsvXC6XqtHX3hbCayOGue5BA66/xJa9GqeEQ4q/1QzrTRRDW1HA+ik2YB3rZzDkhZg4AsQDEWh
	TfZTEcBw/Ej+1kRaxYpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raB8G-0000000CCQw-19pD;
	Wed, 14 Feb 2024 09:00:44 +0000
Received: from mail.syncnova.pl ([80.211.148.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raB89-0000000CCOE-44Xi
	for b43-dev@lists.infradead.org;
	Wed, 14 Feb 2024 09:00:40 +0000
Received: by mail.syncnova.pl (Postfix, from userid 1002)
	id 0108482617; Wed, 14 Feb 2024 10:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=syncnova.pl; s=mail;
	t=1707901232; bh=RpRRs6GU/cRheiUdATicU8e98SOpopDeLo9BS+zhAIs=;
	h=Date:From:To:Subject:From;
	b=mTkXDM/nIZd778+QkEuvP+ToTCK3pULPB7wBiGAUWZvq6zCerpL+lSFqc8lbJ+p+J
	 E60hrCDqJcHJVZezOBiQRcq+CKKoFIxJMxQUj1pDKW/r+9zDmCatkNdbN7RTVHuWXN
	 OrGLSTrDLi3sc0hUOLwodwf3KH+/nLwJkLN5yYfJ09GQvFFLghMpmNp54kKUfmEopl
	 jX2QOs1uHgrMdLAkkJ/a+TG+VgqzXciqgNTk+pOoTBSOkXo5zhThhav8p/j9Mt5+F6
	 FGH8haSb9jBcvm2Iu7/mv25d/avCntzpHPxJnaSTSquaThYsZB09ujY/FtlaP7HS4t
	 A79V6PaReX1Gw==
Received: by mail.syncnova.pl for <b43-dev@lists.infradead.org>; Wed, 14 Feb 2024 09:00:24 GMT
Message-ID: <20240214084500-0.1.w.wav.0.kdzoy649bh@syncnova.pl>
Date: Wed, 14 Feb 2024 09:00:24 GMT
From: "Sylwia Orzech" <sylwia.orzech@syncnova.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Nowoczesna_ksi=C4=99gowo=C5=9B=C4=87?=
X-Mailer: mail.syncnova.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_010038_789162_C8E21B1A 
X-CRM114-Status: UNSURE (   1.78  )
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

RHppZcWEIGRvYnJ5LAoKamVzdGXFm215IHNwZWNqYWxpc3R5Y3puxIUgZmlybcSFIG9mZXJ1asSF
Y8SFIGtvbXBsZWtzb3fEhSBvYnPFgnVnxJkga3NpxJlnb3dvLWthZHJvd8SFLiBOYXN6ZSB1c8WC
dWdpIG9iZWptdWrEhSB6YXLDs3dubyBzdGFjam9uYXJuxIUsIGphayBpIG9ubGluZSBvYnPFgnVn
xJksIGEgdGFrxbxlIGRvcmFkenR3byBiaXpuZXNvd2UgaSByYXBvcnRvd2FuaWUuCgpEbGFjemVn
byB3YXJ0byBuYW0gemF1ZmHEhz8KCi0gT2ZlcnVqZW15IHBlxYJuxIUgZ2FtxJkgdXPFgnVnLCB3
IHR5bSBrc2nEmWdvd2/Fm8SHLCBvYnPFgnVnxJkga2Fkcm93xIUsIHDFgmFjb3fEhSwgZG9yYWR6
dHdvIGJpem5lc293ZSBpIHJhcG9ydG93YW5pZS4KLSBEbGEgc3RhcnR1asSFY3ljaCBmaXJtIHph
cGV3bmlhbXkgcG9tb2MgdyB6YcWCb8W8ZW5pdSBkemlhxYJhbG5vxZtjaSwgemFrxYJhZGFteSBz
cMOzxYJraSwgb3R3aWVyYW15IGtvbnRhIGJhbmtvd2UgaSB1ZG9zdMSZcG5pYW15IGJlenDFgmF0
bnkgcHJvZ3JhbSBkbyBmYWt0dXJvd2FuaWEuCi0gRG9zdGFyY3phbmllIGRva3VtZW50w7N3IGpl
c3QgZWxhc3R5Y3puZSAtIHByemV6IGFwbGlrYWNqxJksIG1haWxhLCBwb2N6dMSFIGx1YiBvc29i
acWbY2llLgotIEthxbxkeSBLbGllbnQgb3RyenltdWplIGRlZHlrb3dhbmVnbyBrc2nEmWdvd2Vn
bywga3TDs3J5IHPFgnXFvHkgd3NwYXJjaWVtIG5hIGthxbxkeW0gZXRhcGllIGR6aWHFgmFsbm/F
m2NpLgotIE5hc3plIGJpdXJvIHpuYWpkdWplIHNpxJkgdyBkb2dvZG5laiBsb2thbGl6YWNqaSB3
IGNlbnRydW0gR2RhxYRza2EtUHJ6eW1vcnphLgotIE9ic8WCdWd1amVteSBmaXJteSB3IFBvbHNj
ZSBpIG5hIHRlcmVuaWUgVUUsIGtvbXVuaWt1asSFYyBzacSZIHLDs3duaWXFvCB3IGrEmXp5a3Ug
YW5naWVsc2tpbS4KClphcHJhc3phbXkgZG8gcm96bW93eSBpIGRvxYLEhWN6ZW5pYSBkbyBncm9u
YSB6YWRvd29sb255Y2ggS2xpZW50w7N3LCBkbGEga3TDs3J5Y2ggamVzdGXFm215IG5pZSB0eWxr
byBkb3N0YXdjxIUgdXPFgnVnIGtzacSZZ293eWNoLCBhbGUgcsOzd25pZcW8IHBhcnRuZXJlbSBi
aXpuZXNvd3ltLgoKClogcG93YcW8YW5pZW0KU3lsd2lhIE9yemVjaAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQz
LWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYjQzLWRldgo=
