Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB30BC7EE29
	for <b43-dev@archiver.kernel.org>; Thu, 25 May 2023 19:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIjynZnHr0oSLoFsmqqofULOOTXdCj0rQxa3db3CbLA=; b=xGQzGpUnRf15DL
	ZzlKgIohTani85WfRy3I+gopXmSf6iO3hHWLM7/HRPtq/GbOAA7pUobEb4ICtqRrvzFTjdQ2P6YQx
	31GS2S/UYB9QgP/JPRCnGBIXIMv6NmvPyFl4iyvBT2f3Idp1MX0xVzpKeVvzY4858vkTrq+s45iLf
	283kZma98ILU5gwHLFZ4trHL4Hh41yEEWWzMIcEQDrNkLsfvJSqbdveZsKhKvtCt1rkdH0V1QVRoA
	ICECsJfAm7JQpDkbuYSDkSbzuHUX13idtluQ+BbFx64n5yqtnGi8fAd6dinrwloopCvc8q5tooyKZ
	nZseCRGb3EVMb3G7UXsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2GtK-0000Ks-26;
	Thu, 25 May 2023 19:44:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2GtJ-0000KR-0v
	for b43-dev@bombadil.infradead.org;
	Thu, 25 May 2023 19:44:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=1nfDnGj77TD4L643z5eWkf8Ytjm3aqu2DyJv2vT/JLc=; b=E6IT6ICf96DzykrchfWATy9OIq
	i7rFweCJrUnP6r7iS+EelD77++49Ox2X2NBCSzG6yBsqoWSqrYVwD9OTXEhLgkYKdj12CPvGPe4p0
	xqmrDEOlXds0p4XgpQ/hZgzBGJ211mI26czw7Xc6DOICo63JC2G4o7VNBxSnpQTNOBaQHQjkVLlXq
	nE7LoRM/BYbGDTA8yEZOAXuxVfTQE51uvsl1TViFXiXrPCSWeXGDiF6AH2qCOFisL5wkGM3QytKTs
	qCUDeCTDqniP10zAto8NVJ324PH3Ab4eNTKwc9rjZXQ2W0Pbmpng3B7MvSau/b9IHPyh87Fl5/ZdG
	NLtk6vgg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Fw8-006e5e-35
	for b43-dev@lists.infradead.org;
	Thu, 25 May 2023 18:43:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9E20A6496D;
	Thu, 25 May 2023 18:43:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B69D6C433EF;
	Thu, 25 May 2023 18:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685040223;
	bh=ODzEe5MTMPERDf+zXbuLdOTQOBegDNhuK6ZJ0a/0Ze4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UGFYXzNfBZtr9YlhBRqOMkscEE0JLRZmtuLWWgKjNIsO6hIqfBEqucoEoVWVZa5b1
	 fZycht2qRt4hl0x7zyMsuKUwzDPA/vaEAe6Q4glA069gDzYkmVm1UAhaV1wX/a+PZ4
	 kcfdjkmdK6pklfOW+h27JIhqiv77ugxp5+WeT5fyG1+dP3ttN3xvHOsT+B4zc4CjMc
	 Xmm87kAiBcW6Mj8r0ORKp/2ZTonsMDtqnf8JlLgW7yohoSA2GKRGzo4dRE05PUyg+x
	 oRRTbfRCpfIZyodGCSj9ZNPEgcmLlqpyIJP/KbQEtwnd3X61eUREbBrsxOO193qb6E
	 GLdlwGtJqi9hw==
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
Subject: [PATCH AUTOSEL 5.4 23/27] wifi: b43: fix incorrect __packed annotation
Date: Thu, 25 May 2023 14:42:32 -0400
Message-Id: <20230525184238.1943072-23-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230525184238.1943072-1-sashal@kernel.org>
References: <20230525184238.1943072-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_194345_389370_AC8C5ACA 
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
