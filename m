Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F6D3C77B75
	for <b43-dev@archiver.kernel.org>; Wed, 17 May 2023 06:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXrIUIM10qKeflst/lrOmykX1U2A9xZ0N90+b2sMWBo=; b=2DAG6NEglR8kSh
	HrA1+TPFYI+zvMmAk3JpPrY60zrmR2LlvfdGxx0vG4RaCzqOT4BTLOHP1JBXM3fp2hohd3Pc6tACg
	rxCazx6MYl8xFV2P1ocApUQh9241AsEhDyMFUih3drm7T8Lm7k0TxlhxTyEbRMdfa6LV1hi760Q6Q
	ItTg1Od1vHaAbd7I19UglqtFsynqOBAI7zegQBVFFDAnxM7tY/zaDMsHBmBt0Kf/prGiVltKwgy4+
	vcggLTLHBak5vzkhjI3EX6pl4SmdKmJ+V/lI7ztOpVYiEa0piQi+ESScxvbXuIov/MoE4BHW5pjuZ
	KEZn3odIc98JkNK4y6lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzAaK-008Qqa-0z;
	Wed, 17 May 2023 06:24:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzAaF-008Qo8-2H
	for b43-dev@lists.infradead.org;
	Wed, 17 May 2023 06:24:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 015A164209;
	Wed, 17 May 2023 06:24:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1F3AC433D2;
	Wed, 17 May 2023 06:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684304661;
	bh=gMk6/EoGfuHArSq0Q8XKhHxU1olH0Y7/8YUqrbeK/Yc=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=FL8IyGRp6X7P8iL2t+MVz0jzW1UWUAYcxDsC/CE6eib1w50IkJqa54LgNvsl0kyWO
	 rzmbyK7nlkeaGwFZFHjEpaahPC5gwXeKJ00OwfL+dLuqxVuh03V2CUzJs1esJnDR6f
	 5HdNbKKPT8KUYlL3W7RoBuxNjQJY9bDLiO4/oJMmrwmWVvJDpWgyL6xiwcznhhvhvU
	 /1seolds4UBEwVzHC6MJnmJ3LQiD6aKW1K43ccdSZJLQ/Irqhb8f2CoRRZnGx6KPSa
	 FTw2fL9au1RYB/4VJsfNbSGJ6ABjpVqgeMTsPQJYaNBTPUxHZ3hg/uEcBpuNe5/9KT
	 n5L+7U11iM4kA==
MIME-Version: 1.0
Subject: Re: [PATCH] [v2] wifi: b43: fix incorrect __packed annotation
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <20230516183442.536589-1-arnd@kernel.org>
References: <20230516183442.536589-1-arnd@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, =?utf-8?q?Michael_B=C3=BCsch?= <m@bues.ch>,
 kernel test robot <lkp@intel.com>, Simon Horman <simon.horman@corigine.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, llvm@lists.linux.dev
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <168430465407.24096.14761627656437604341.kvalo@kernel.org>
Date: Wed, 17 May 2023 06:24:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_232423_807335_6776E2A7 
X-CRM114-Status: GOOD (  14.39  )
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

QXJuZCBCZXJnbWFubiA8YXJuZEBrZXJuZWwub3JnPiB3cm90ZToKCj4gRnJvbTogQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4KPiAKPiBjbGFuZyB3YXJucyBhYm91dCBhbiB1bnBhY2tlZCBz
dHJ1Y3R1cmUgaW5zaWRlIG9mIGEgcGFja2VkIG9uZToKPiAKPiBkcml2ZXJzL25ldC93aXJlbGVz
cy9icm9hZGNvbS9iNDMvYjQzLmg6NjU0OjQ6IGVycm9yOiBmaWVsZCBkYXRhIHdpdGhpbiAnc3Ry
dWN0IGI0M19pdicgaXMgbGVzcyBhbGlnbmVkIHRoYW4gJ3VuaW9uICh1bm5hbWVkIHVuaW9uIGF0
IC9ob21lL2FybmQvYXJtLXNvYy9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvYjQz
Lmg6NjUxOjIpJyBhbmQgaXMgdXN1YWxseSBkdWUgdG8gJ3N0cnVjdCBiNDNfaXYnIGJlaW5nIHBh
Y2tlZCwgd2hpY2ggY2FuIGxlYWQgdG8gdW5hbGlnbmVkIGFjY2Vzc2VzIFstV2Vycm9yLC1XdW5h
bGlnbmVkLWFjY2Vzc10KPiAKPiBUaGUgcHJvYmxlbSBoZXJlIGlzIHRoYXQgdGhlIGFub255bW91
cyB1bmlvbiBoYXMgdGhlIGRlZmF1bHQgYWxpZ25tZW50Cj4gZnJvbSBpdHMgbWVtYmVycywgYXBw
YXJlbnRseSBiZWNhdXNlIHRoZSBvcmlnaW5hbCBhdXRob3IgbWl4ZWQgdXAgdGhlCj4gcGxhY2Vt
ZW50IG9mIHRoZSBfX3BhY2tlZCBhdHRyaWJ1dGUgYnkgcGxhY2luZyBpdCBuZXh0IHRvIHRoZSBz
dHJ1Y3QKPiBtZW1iZXIgcmF0aGVyIHRoYW4gdGhlIHVuaW9uIGRlZmluaXRpb24uIEFzIHRoZSBz
dHJ1Y3QgaXRzZWxmIGlzCj4gYWxzbyBtYXJrZWQgYXMgX19wYWNrZWQsIHRoZXJlIGlzIG5vIG5l
ZWQgdG8gbWFyayBpdHMgbWVtYmVycywgc28ganVzdAo+IG1vdmUgdGhlIGFubm90YXRpb24gdG8g
dGhlIGlubmVyIHR5cGUgaW5zdGVhZC4KPiAKPiBBcyBNaWNoYWVsIG5vdGVkLCB0aGUgc2FtZSBw
cm9ibGVtIGlzIHByZXNlbnQgaW4gYjQzbGVnYWN5LCBzbwo+IGNoYW5nZSBib3RoIGF0IHRoZSBz
YW1lIHRpbWUuCj4gCj4gQWNrZWQtYnk6IE1pY2hhZWwgQsO8c2NoIDxtQGJ1ZXMuY2g+Cj4gUmVw
b3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5
OiBTaW1vbiBIb3JtYW4gPHNpbW9uLmhvcm1hbkBjb3JpZ2luZS5jb20+Cj4gVGVzdGVkLWJ5OiBM
YXJyeSBGaW5nZXIgPExhcnJ5LkZpbmdlckBsd2Zpbmdlci5uZXQ+Cj4gTGluazogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvb2Uta2J1aWxkLWFsbC8yMDIzMDUxNjA3NDkuYXkxSEFveVAtbGtwQGlu
dGVsLmNvbS8KPiBTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgoK
UGF0Y2ggYXBwbGllZCB0byB3aXJlbGVzcy5naXQsIHRoYW5rcy4KCjIxMjQ1N2NjYmQ2MCB3aWZp
OiBiNDM6IGZpeCBpbmNvcnJlY3QgX19wYWNrZWQgYW5ub3RhdGlvbgoKLS0gCmh0dHBzOi8vcGF0
Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9wYXRjaC8yMDIzMDUxNjE4
MzQ0Mi41MzY1ODktMS1hcm5kQGtlcm5lbC5vcmcvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2Vy
bmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1h
aWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
