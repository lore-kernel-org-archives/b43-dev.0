Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C6DCC52D73
	for <b43-dev@archiver.kernel.org>; Wed,  7 Aug 2024 17:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYcXI4GDh7evMRWfiutjpTAFNpQ6Rx/VbIufiGy5psc=; b=FGxDkMOxaA6GQY
	YQnkNn7L+IYgdG+aiBsOvgYAkGe4InqcMc3qlS+eM5ca3EoeYC9F/iB3UQQZ445PZ7uTmqaiM8yzs
	M1ld5ldbogidbAKqy0gN4eXfap/PvwwKwE2+HRBMir53SQG/1Z89jt9rxTih0PByHGaAxPgKe6+VF
	6YS2itRrzJVyHxT9FNihSTUCtwrM8zl7qwoU12xHDenkKv1y5lmwxuZLOdAWSXlJ+qAvFMyKiGCNQ
	BTJWL3bi1P4Yz0Duu/ROpDdzGanlndADAFXz3h9TyXu68AvqO1g7IXseAez3zHhZcJUJsQS+TEh0j
	6arDx+lUvN877iz5NPJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkGm-00000005nWU-3Fyb;
	Wed, 07 Aug 2024 17:16:16 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkGg-00000005nVm-3YEV
	for b43-dev@lists.infradead.org;
	Wed, 07 Aug 2024 17:16:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 36680CE0CF9;
	Wed,  7 Aug 2024 17:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2366C32781;
	Wed,  7 Aug 2024 17:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723050967;
	bh=cWKrncZt2zOBu3pqcDgz+fbft24xEjW2Qrp8Xkgbih4=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=uEBsi1kUEkLOHMxUAwcccwlQSuwVqLPph8vyaAgd+Sck0r8krGOabB5IJy0LDPjEw
	 Gz5SF8IShaoDkIXc9K1svCQJnjAy25Myk2CucOBS7AriRJlMjPNX1tUEflLzyMQZDW
	 dgj0Hp7u55PFvMWHOkmNHHmJmpPrpmUvMokZ63fbnveE0Gr1dy0q1RyykxcueM1Clo
	 a9ja5IdIgpYH1bbGvfXrKfWCCxdRaTOt0yqlXn+fevLkE2QcfUoGLr3ulRPCwZRy6g
	 qxNKJEiCgZdYSRNEYU8fmLgPlCKFfHrGceNVCqOqBQzJZ4uNPNKq/EeD8QzuneB3XY
	 LwO+W+IvGdzKA==
MIME-Version: 1.0
Subject: Re: [PATCH v2] wifi: b43: Constify struct lpphy_tx_gain_table_entry
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <e33bc9e6dff4a5b6cd8d0ab5399aa1abac5bef9d.1722753127.git.christophe.jaillet@wanadoo.fr>
References: <e33bc9e6dff4a5b6cd8d0ab5399aa1abac5bef9d.1722753127.git.christophe.jaillet@wanadoo.fr>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.11.2
Message-ID: <172305096402.4000819.13600350959712094717.kvalo@kernel.org>
Date: Wed,  7 Aug 2024 17:16:05 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_101611_172099_B9F5C048 
X-CRM114-Status: UNSURE (   7.55  )
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

Q2hyaXN0b3BoZSBKQUlMTEVUIDxjaHJpc3RvcGhlLmphaWxsZXRAd2FuYWRvby5mcj4gd3JvdGU6
Cgo+ICdzdHJ1Y3QgbHBwaHlfdHhfZ2Fpbl90YWJsZV9lbnRyeScgYXJlIG5vdCBtb2RpZmllZCBp
biB0aGlzIGRyaXZlci4KPiAKPiBDb25zdGlmeWluZyB0aGlzIHN0cnVjdHVyZSBtb3ZlcyBzb21l
IGRhdGEgdG8gYSByZWFkLW9ubHkgc2VjdGlvbiwgc28KPiBpbmNyZWFzZSBvdmVyYWxsIHNlY3Vy
aXR5Lgo+IAo+IE9uIGEgeDg2XzY0LCB3aXRoIGFsbG1vZGNvbmZpZzoKPiBCZWZvcmU6Cj4gPT09
PT09Cj4gICAgdGV4dAkgICBkYXRhCSAgICBic3MJICAgIGRlYwkgICAgaGV4CWZpbGVuYW1lCj4g
ICAxNjQ4MQkgICA2MjMyCSAgICAgIDAJICAyMjcxMwkgICA1OGI5CWRyaXZlcnMvbmV0L3dpcmVs
ZXNzL2Jyb2FkY29tL2I0My90YWJsZXNfbHBwaHkubwo+IAo+IEFmdGVyOgo+ID09PT09Cj4gICAg
dGV4dAkgICBkYXRhCSAgICBic3MJICAgIGRlYwkgICAgaGV4CWZpbGVuYW1lCj4gICAyMjMwNQkg
ICAgMzk1CSAgICAgIDAJICAyMjcwMAkgICA1OGFjCWRyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2Fk
Y29tL2I0My90YWJsZXNfbHBwaHkubwo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJ
TExFVCA8Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+Cj4gQWNrZWQtQnk6IE1pY2hhZWwg
QsO8c2NoIDxtQGJ1ZXMuY2g+CgpQYXRjaCBhcHBsaWVkIHRvIHdpcmVsZXNzLW5leHQuZ2l0LCB0
aGFua3MuCgo0YWI5Zjg3MGE2MzMgd2lmaTogYjQzOiBDb25zdGlmeSBzdHJ1Y3QgbHBwaHlfdHhf
Z2Fpbl90YWJsZV9lbnRyeQoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVj
dC9saW51eC13aXJlbGVzcy9wYXRjaC9lMzNiYzllNmRmZjRhNWI2Y2Q4ZDBhYjUzOTlhYTFhYmFj
NWJlZjlkLjE3MjI3NTMxMjcuZ2l0LmNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyLwoKaHR0
cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9u
L3N1Ym1pdHRpbmdwYXRjaGVzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
