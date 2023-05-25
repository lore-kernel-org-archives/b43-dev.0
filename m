Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C574C7EE29
	for <b43-dev@archiver.kernel.org>; Thu, 25 May 2023 19:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIjynZnHr0oSLoFsmqqofULOOTXdCj0rQxa3db3CbLA=; b=j9kOXc0wGhoVtx
	2Mmxpfei7kfGf4Ib50jyqjpVLSj1d77lURfHCotl80626RrY1CwZrf75ZEiwIeVrdEUH+Qpb/3/ek
	UW77n1nj1LyMFlcNwssTYGKzAq3CsjyRHqVAAp4i27PiEef26JQJ3ojllk1toVTJFpkSCWlFOL9h1
	ndjrYEybkFFE3djTWsBe9JCNGDfuPbTBPM0SX6YcEE+SUO8GR9EiBV/9hP3rwFgALHKdWkvYABdLm
	94ccvA6QUQsx/ocMX0Qg+ccoXrmOKVs/HBgMQ8jvsUs7SdrLRQroOPe/kK7vU1SEL3H+y6x/6rn6E
	CfGzCMLu261rvW2fM8lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2GpF-00HaCd-1Y;
	Thu, 25 May 2023 19:40:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2GpD-00HaCE-0r
	for b43-dev@bombadil.infradead.org;
	Thu, 25 May 2023 19:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=1nfDnGj77TD4L643z5eWkf8Ytjm3aqu2DyJv2vT/JLc=; b=g1ZPLa9xbeckv5fTQy2qYKl7IL
	ewFOogy2jvdi3tywaI6Z2DUCAmkwWZFYy5AWt8RxAitPNL7mONX/knijSI9f5YDms4nlvPKLBHlpb
	t7GXTejLl/W5BJKZrlXE+t94Bb7G/RI6vtJTxjlXTM23upMrRd7lByoP+r662WSEjsOpghI9BZoZv
	Fe8xjJfESLkuRNmsQ2HwlMFqkiami/mLRy9mrwHb/3R+EEgPMIQ3uLjhAak/hPjBfG6u5MD2Ny8ol
	ZBhbuudPYDuXT3faPVT24eBMFfFuxvrY6SqPOZ0tK0u3640ACMVuVRyLjBm+rJQ6C/In/sJnBXR11
	GZTPA8zA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Fr1-006dft-2x
	for b43-dev@lists.infradead.org;
	Thu, 25 May 2023 18:38:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 63769610A1;
	Thu, 25 May 2023 18:38:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71968C433D2;
	Thu, 25 May 2023 18:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685039905;
	bh=ODzEe5MTMPERDf+zXbuLdOTQOBegDNhuK6ZJ0a/0Ze4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U9DY5M6ck3E5ag8RQsklK387inW7/k7EosKM7/KldBmfyETn7d8fJhzqXZo8Y+NJu
	 pDIKrhuuziFYGTtrSPlUajFvVwTWEP1ICWtqMLpZCriZhweaSIsIkdBCs0jwXY1l58
	 Se0gK4uaJboG0o39Ozi0djhyOaMlOVr5s9Hgs1oe5cbhGnVuHBrXVUAMmPN3sbjxPr
	 FoF+4cKgrvA8lQn1IwViQlUN+ktfSDQqFiLthXr0Cm64QbbNdw7mzz2F2AS+btlpH+
	 vz/krsqNtsZ5mIHovEwSN6FIUdazmT4JG+14JWTnkVmN2DjJB6mZ20uQP2a1ae9Wa3
	 XFGER8nbTBwYA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	=?UTF-8?q?Michael=20B=C3=BCsch?= <m@bues.ch>,
	kernel test robot <lkp@intel.com>,
	Simon Horman <simon.horman@corigine.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Kalle Valo <kvalo@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	llvm@lists.linux.dev
Subject: [PATCH AUTOSEL 6.1 44/57] wifi: b43: fix incorrect __packed annotation
Date: Thu, 25 May 2023 14:35:54 -0400
Message-Id: <20230525183607.1793983-44-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230525183607.1793983-1-sashal@kernel.org>
References: <20230525183607.1793983-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_193828_510576_6FB3821F 
X-CRM114-Status: GOOD (  16.03  )
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

RnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KClsgVXBzdHJlYW0gY29tbWl0IDIx
MjQ1N2NjYmQ2MGRiYTM0Zjk2NWU0ZmZiZTYyZjBlNGY5NzA1MzggXQoKY2xhbmcgd2FybnMgYWJv
dXQgYW4gdW5wYWNrZWQgc3RydWN0dXJlIGluc2lkZSBvZiBhIHBhY2tlZCBvbmU6Cgpkcml2ZXJz
L25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvYjQzLmg6NjU0OjQ6IGVycm9yOiBmaWVsZCBkYXRh
IHdpdGhpbiAnc3RydWN0IGI0M19pdicgaXMgbGVzcyBhbGlnbmVkIHRoYW4gJ3VuaW9uICh1bm5h
bWVkIHVuaW9uIGF0IC9ob21lL2FybmQvYXJtLXNvYy9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9h
ZGNvbS9iNDMvYjQzLmg6NjUxOjIpJyBhbmQgaXMgdXN1YWxseSBkdWUgdG8gJ3N0cnVjdCBiNDNf
aXYnIGJlaW5nIHBhY2tlZCwgd2hpY2ggY2FuIGxlYWQgdG8gdW5hbGlnbmVkIGFjY2Vzc2VzIFst
V2Vycm9yLC1XdW5hbGlnbmVkLWFjY2Vzc10KClRoZSBwcm9ibGVtIGhlcmUgaXMgdGhhdCB0aGUg
YW5vbnltb3VzIHVuaW9uIGhhcyB0aGUgZGVmYXVsdCBhbGlnbm1lbnQKZnJvbSBpdHMgbWVtYmVy
cywgYXBwYXJlbnRseSBiZWNhdXNlIHRoZSBvcmlnaW5hbCBhdXRob3IgbWl4ZWQgdXAgdGhlCnBs
YWNlbWVudCBvZiB0aGUgX19wYWNrZWQgYXR0cmlidXRlIGJ5IHBsYWNpbmcgaXQgbmV4dCB0byB0
aGUgc3RydWN0Cm1lbWJlciByYXRoZXIgdGhhbiB0aGUgdW5pb24gZGVmaW5pdGlvbi4gQXMgdGhl
IHN0cnVjdCBpdHNlbGYgaXMKYWxzbyBtYXJrZWQgYXMgX19wYWNrZWQsIHRoZXJlIGlzIG5vIG5l
ZWQgdG8gbWFyayBpdHMgbWVtYmVycywgc28ganVzdAptb3ZlIHRoZSBhbm5vdGF0aW9uIHRvIHRo
ZSBpbm5lciB0eXBlIGluc3RlYWQuCgpBcyBNaWNoYWVsIG5vdGVkLCB0aGUgc2FtZSBwcm9ibGVt
IGlzIHByZXNlbnQgaW4gYjQzbGVnYWN5LCBzbwpjaGFuZ2UgYm90aCBhdCB0aGUgc2FtZSB0aW1l
LgoKQWNrZWQtYnk6IE1pY2hhZWwgQsO8c2NoIDxtQGJ1ZXMuY2g+ClJlcG9ydGVkLWJ5OiBrZXJu
ZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFNpbW9uIEhvcm1hbiA8
c2ltb24uaG9ybWFuQGNvcmlnaW5lLmNvbT4KVGVzdGVkLWJ5OiBMYXJyeSBGaW5nZXIgPExhcnJ5
LkZpbmdlckBsd2Zpbmdlci5uZXQ+Ckxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL29lLWti
dWlsZC1hbGwvMjAyMzA1MTYwNzQ5LmF5MUhBb3lQLWxrcEBpbnRlbC5jb20vClNpZ25lZC1vZmYt
Ynk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+ClNpZ25lZC1vZmYtYnk6IEthbGxlIFZh
bG8gPGt2YWxvQGtlcm5lbC5vcmc+Ckxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAy
MzA1MTYxODM0NDIuNTM2NTg5LTEtYXJuZEBrZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IFNhc2hh
IExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL25ldC93aXJlbGVzcy9icm9h
ZGNvbS9iNDMvYjQzLmggICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL25ldC93aXJlbGVzcy9i
cm9hZGNvbS9iNDNsZWdhY3kvYjQzbGVnYWN5LmggfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93
aXJlbGVzcy9icm9hZGNvbS9iNDMvYjQzLmggYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNv
bS9iNDMvYjQzLmgKaW5kZXggOWZjN2MwODhhNTM5ZS4uNjdiNGJhYzA0OGU1OCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL2I0My5oCisrKyBiL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9iNDMuaApAQCAtNjUxLDcgKzY1MSw3IEBAIHN0cnVj
dCBiNDNfaXYgewogCXVuaW9uIHsKIAkJX19iZTE2IGQxNjsKIAkJX19iZTMyIGQzMjsKLQl9IGRh
dGEgX19wYWNrZWQ7CisJfSBfX3BhY2tlZCBkYXRhOwogfSBfX3BhY2tlZDsKIAogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDNsZWdhY3kvYjQzbGVnYWN5Lmgg
Yi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDNsZWdhY3kvYjQzbGVnYWN5LmgKaW5k
ZXggNmIwY2VjNDY3OTM4Zi4uZjQ5MzY1ZDE0NjE5ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQv
d2lyZWxlc3MvYnJvYWRjb20vYjQzbGVnYWN5L2I0M2xlZ2FjeS5oCisrKyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2Jyb2FkY29tL2I0M2xlZ2FjeS9iNDNsZWdhY3kuaApAQCAtMzc5LDcgKzM3OSw3
IEBAIHN0cnVjdCBiNDNsZWdhY3lfaXYgewogCXVuaW9uIHsKIAkJX19iZTE2IGQxNjsKIAkJX19i
ZTMyIGQzMjsKLQl9IGRhdGEgX19wYWNrZWQ7CisJfSBfX3BhY2tlZCBkYXRhOwogfSBfX3BhY2tl
ZDsKIAogI2RlZmluZSBCNDNsZWdhY3lfUEhZTU9ERShwaHl0eXBlKQkoMSA8PCAocGh5dHlwZSkp
Ci0tIAoyLjM5LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
