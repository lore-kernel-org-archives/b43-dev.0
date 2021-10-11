Return-Path: <SRS0=vuk/=O7=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D9EC433EF
	for <b43-dev@archiver.kernel.org>; Mon, 11 Oct 2021 06:10:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 278B060EE7
	for <b43-dev@archiver.kernel.org>; Mon, 11 Oct 2021 06:10:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 278B060EE7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsXuiv2MD56jkk9FLKxZ4tg0lpUmBe6/HjcRUv0x3Zc=; b=t2La55/mV283fZ
	d+YMHTwz3O+e0dHynQI1lgiczHnyAW2MSxKetb1zOoQVXaNEGeGHabfPjeBL4gkOTXpo001BCY79V
	vhvJw7XG6lX/jDMR9GgSwQWrEoxtjlWhqh6NY79eEvS7m54U+5joBxp0AzGZvsdpZX73ZDZLXmXEh
	mIAvdPrazTrkz+we7AugRhRBGkZLNZ2kmvZr8RcxXW9k/OXGDFNHNsCQSvUsVsWmaZ1r1MBl3CbL+
	bFIkUmwcp30i+YKOXOwU5BX8wk8LiwdxvdyoqHZUYNTS3rMLF9h1TTd+Diq/CAnV9Fb44xO2RwcsI
	LDpk7l3eX0R0rXu1XArQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZoW1-007txX-II; Mon, 11 Oct 2021 06:10:25 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZoVu-007twX-FC
 for b43-dev@lists.infradead.org; Mon, 11 Oct 2021 06:10:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633932619; h=Date: Message-ID: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=TpfG1WYDfAVppP0rLatznHaMsvv90u64ZEh5Fo6Gw3Y=;
 b=TihaPoHJwPwZfA60+2SLbOqITpmj2ZOhZfG1Vpfi1bRZQKBpNtbkPBqFFIdOphLxGPFBru+w
 0qPtDbi06yOJ6c++iY+9vxhXeGfh46b2ZPsxSxy15hRzln/0udMkUy4GgC5IrAso4pvHP8up
 2FmS2hiDWzMa8lHa5/AO+kWijHQ=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIxODVhOSIsICJiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 6163d5320605239689880e5a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 11 Oct 2021 06:09:54
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 80238C4360D; Mon, 11 Oct 2021 06:09:53 +0000 (UTC)
Received: from tykki.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id AB4ABC4338F;
 Mon, 11 Oct 2021 06:09:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org AB4ABC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] b43legacy: fix a lower bounds test
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20211006073542.GD8404@kili>
References: <20211006073542.GD8404@kili>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, linux-wireless@vger.kernel.org, 
 b43-dev@lists.infradead.org, kernel-janitors@vger.kernel.org
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <163393258963.11913.9834603879232230405.kvalo@codeaurora.org>
Date: Mon, 11 Oct 2021 06:09:53 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211010_231019_957893_F911D404 
X-CRM114-Status: GOOD (  10.75  )
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

RGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPiB3cm90ZToKCj4gVGhlIHBy
b2JsZW0gaXMgdGhhdCAiY2hhbm5lbCIgaXMgYW4gdW5zaWduZWQgaW50LCB3aGVuIGl0J3MgbGVz
cyA1IHRoZQo+IHZhbHVlIG9mICJjaGFubmVsIC0gNSIgaXMgbm90IGEgbmVnYXRpdmUgbnVtYmVy
IGFzIG9uZSB3b3VsZCBleHBlY3QgYnV0Cj4gaXMgdmVyeSBoaWdoIHBvc2l0aXZlIHZhbHVlIGlu
c3RlYWQuCj4gCj4gVGhpcyBtZWFucyB0aGF0ICJzdGFydCIgYmVjb21lcyBhIHZlcnkgaGlnaCBw
b3NpdGl2ZSB2YWx1ZS4gIFRoZSByZXN1bHQKPiBvZiB0aGF0IGlzIHRoYXQgd2UgbmV2ZXIgZW50
ZXIgdGhlICJmb3IgKGkgPSBzdGFydDsgaSA8PSBlbmQ7IGkrKykgeyIKPiBsb29wLiAgSW5zdGVh
ZCBvZiBzdG9yaW5nIHRoZSByZXN1bHQgZnJvbSBiNDNsZWdhY3lfcmFkaW9fYWNpX2RldGVjdCgp
Cj4gaXQganVzdCB1c2VzIHplcm8uCj4gCj4gRml4ZXM6IDc1Mzg4YWNkMGNkOCAoIltCNDNMRUdB
Q1ldOiBhZGQgbWFjODAyMTEtYmFzZWQgZHJpdmVyIGZvciBsZWdhY3kgQkNNNDN4eCBkZXZpY2Vz
IikKPiBTaWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5j
b20+Cj4gQWNrZWQtYnk6IE1pY2hhZWwgQsO8c2NoIDxtQGJ1ZXMuY2g+CgoyIHBhdGNoZXMgYXBw
bGllZCB0byB3aXJlbGVzcy1kcml2ZXJzLW5leHQuZ2l0LCB0aGFua3MuCgpjMWM4MzgwYjAzMjAg
YjQzbGVnYWN5OiBmaXggYSBsb3dlciBib3VuZHMgdGVzdAo5Yjc5M2RiNWZjYTQgYjQzOiBmaXgg
YSBsb3dlciBib3VuZHMgdGVzdAoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJv
amVjdC9saW51eC13aXJlbGVzcy9wYXRjaC8yMDIxMTAwNjA3MzU0Mi5HRDg0MDRAa2lsaS8KCmh0
dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlv
bi9zdWJtaXR0aW5ncGF0Y2hlcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
