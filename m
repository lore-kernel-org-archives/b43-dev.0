Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3103BC3DA6E
	for <b43-dev@archiver.kernel.org>; Sun, 31 Dec 2023 05:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wC6NyO9e4DbJjXOpYLC4jL6Jomjf+2qbJHLOjHgPv/8=; b=g/ZoIwkwa/dDyv
	praKRFrhDUujetyjuIQLEbZWYis6Alm9q0mYk80d5AOj3kVlvmgyVsXeqjuEdynvIXfO5gAY2L4wb
	cNy0G0iUvhUgCHgQsNsgtHz9bXfSKcpoex6SfqehWxzEjacSLFBA4eV+SO6VH0WgluNkVZ5Wbg9Sb
	kJodvPDvYJUL2OxWdj32EUtfy69FJj5Pf5r8LtXnqu00bsC1ZbIz9LrgKrECvZby2PtxAr69nfqLG
	htVffohUl+XpEXe8Ai2iTxQ1AjpTnBntBKWTTqOiHq+HdZPsEbOElT1Sbn5DCU/OfJYq37ANcIO8w
	BNYxfPaS33XaA1RqEq8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnzk-003yO2-0V;
	Sun, 31 Dec 2023 05:04:16 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnzh-003yMu-0s
	for b43-dev@lists.infradead.org;
	Sun, 31 Dec 2023 05:04:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703999051; x=1704258251;
	bh=lFqzWO9IoWJvWf0zvyPqX/iTXV5Tg5hARwJdoUqbE50=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=KYp4vBy8y1jA1fcOQ60rmUC+TkiGIDOXUGAA6ry296whZr8UaibPGJ7vtGg69MNLv
	 ZtkXKuYbqZ8srsu5C5AAMs6oTyOwuMqV1lJbAQl8kIL3BSt7cHF9KwSYjB6tyY2V0Z
	 OSxkOLQCqzIisMeYGnFEYdFCriE6uZzMPWkcfkZrW9QP07RaisEGybyWbFflqySkX4
	 gx1mdBnQwf3X6vkGCjPajDuERTpYxkfbHLQUuUcJQ95PtZtiMB2KdlXtgxtMoK08pp
	 BrRBStg5hVluzJTPSzWiNTxvENQhPKBIXQGEPPnmNuD55JE6FPUFyjCcCMpdheMkuU
	 Njb39fRsZynwA==
Date: Sun, 31 Dec 2023 05:03:58 +0000
To: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, Julian Calaby <julian.calaby@gmail.com>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Rahul Rameshbabu <sergeantsagara@protonmail.com>
Subject: [PATCH wireless v2 4/4] wifi: b43: Disable QoS for bcm4331
Message-ID: <20231231050300.122806-5-sergeantsagara@protonmail.com>
In-Reply-To: <20231231050300.122806-1-sergeantsagara@protonmail.com>
References: <20231231050300.122806-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_210413_506394_BB39F27C 
X-CRM114-Status: GOOD (  10.15  )
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

YmNtNDMzMSBzZWVtcyB0byBub3QgZnVuY3Rpb24gY29ycmVjdGx5IHdpdGggUW9TIHN1cHBvcnQu
IFRoaXMgbWF5IGJlIGR1ZQp0byBpc3N1ZXMgd2l0aCBjdXJyZW50bHkgYXZhaWxhYmxlIGZpcm13
YXJlIG9yIHBvdGVudGlhbGx5IGEgZGV2aWNlCnNwZWNpZmljIGlzc3VlLgoKV2hlbiBxdWV1ZXMg
dGhhdCBhcmUgbm90IG9mIHRoZSBkZWZhdWx0ICJiZXN0IGVmZm9ydCIgcHJpb3JpdHkgYXJlCnNl
bGVjdGVkLCB0cmFmZmljIGFwcGVhcnMgdG8gbm90IHRyYW5zbWl0IG91dCBvZiB0aGUgaGFyZHdh
cmUgd2hpbGUgbm8KZXJyb3JzIGFyZSByZXR1cm5lZC4gVGhpcyBiZWhhdmlvciBpcyBwcmVzZW50
IGFtb25nIGFsbCB0aGUgb3RoZXIgcHJpb3JpdHkKcXVldWVzOiB2aWRlbywgdm9pY2UsIGFuZCBi
YWNrZ3JvdW5kLiBXaGlsZSB0aGlzIGNhbiBiZSB3b3JrZWQgYXJvdW5kIGJ5CnNldHRpbmcgYSBr
ZXJuZWwgcGFyYW1ldGVyLCB0aGUgZGVmYXVsdCBiZWhhdmlvciBpcyBwcm9ibGVtYXRpYyBmb3Ig
bW9zdAp1c2VycyBhbmQgbWF5IGJlIGRpZmZpY3VsdCB0byBkZWJ1Zy4gVGhpcyBwYXRjaCBvZmZl
cnMgYSB3b3JraW5nIG91dC1vZi1ib3gKZXhwZXJpZW5jZSBmb3IgYmNtNDMzMSB1c2Vycy4KCkxv
ZyBvZiB0aGUgaXNzdWUgKHVzaW5nIHNzaCBsb3ctcHJpb3JpdHkgdHJhZmZpYyBhcyBhbiBleGFt
cGxlKToKICAgIHNzaCAtVCAtdnZ2diBnaXRAZ2l0aHViLmNvbQogICAgT3BlblNTSF85LjZwMSwg
T3BlblNTTCAzLjAuMTIgMjQgT2N0IDIwMjMKICAgIGRlYnVnMTogUmVhZGluZyBjb25maWd1cmF0
aW9uIGRhdGEgL2V0Yy9zc2gvc3NoX2NvbmZpZwogICAgZGVidWcyOiBjaGVja2luZyBtYXRjaCBm
b3IgJ2hvc3QgKiBleGVjICIvbml4L3N0b3JlL3ExYzJmbGN5a2dyNHd3ZzVhNmg0NTBoeGJrNGNo
NTg5LWJhc2gtNS4yLXAxNS9iaW4vYmFzaCAtYyAnL25peC9zdG9yZS9jMDE1YXJtbmtocjZ2MTh6
YTByeXBtN3NoMWk4anM4dy1nbnVwZy0yLjQuMS9iaW4vZ3BnLWNvbm5lY3QtYWdlbnQgLS1xdWll
dCB1cGRhdGVzdGFydHVwdHR5IC9ieWUgPi9kZXYvbnVsbCAyPiYxJyInIGhvc3QgZ2l0aHViLmNv
bSBvcmlnaW5hbGx5IGdpdGh1Yi5jb20KICAgIGRlYnVnMzogL2V0Yy9zc2gvc3NoX2NvbmZpZyBs
aW5lIDU6IG1hdGNoZWQgJ2hvc3QgImdpdGh1Yi5jb20iJwogICAgZGVidWcxOiBFeGVjdXRpbmcg
Y29tbWFuZDogJy9uaXgvc3RvcmUvcTFjMmZsY3lrZ3I0d3dnNWE2aDQ1MGh4Yms0Y2g1ODktYmFz
aC01LjItcDE1L2Jpbi9iYXNoIC1jICcvbml4L3N0b3JlL2MwMTVhcm1ua2hyNnYxOHphMHJ5cG03
c2gxaThqczh3LWdudXBnLTIuNC4xL2Jpbi9ncGctY29ubmVjdC1hZ2VudCAtLXF1aWV0IHVwZGF0
ZXN0YXJ0dXB0dHkgL2J5ZSA+L2Rldi9udWxsIDI+JjEnJwogICAgZGVidWczOiBjb21tYW5kIHJl
dHVybmVkIHN0YXR1cyAwCiAgICBkZWJ1ZzM6IC9ldGMvc3NoL3NzaF9jb25maWcgbGluZSA1OiBt
YXRjaGVkICdleGVjICIvbml4L3N0b3JlL3ExYzJmbGN5a2dyNHd3ZzVhNmg0NTBoeGJrNGNoNTg5
LWJhc2gtNS4yLXAxNS9iaW4vYmFzaCAtYyAnL25peC9zdG9yZS9jMDE1YXJtbmtocjZ2MTh6YTBy
IicKICAgIGRlYnVnMjogbWF0Y2ggZm91bmQKICAgIGRlYnVnMTogL2V0Yy9zc2gvc3NoX2NvbmZp
ZyBsaW5lIDk6IEFwcGx5aW5nIG9wdGlvbnMgZm9yICoKICAgIGRlYnVnMzogZXhwYW5kZWQgVXNl
cktub3duSG9zdHNGaWxlICd+Ly5zc2gva25vd25faG9zdHMnIC0+ICcvaG9tZS9iaW5hcnktZWF0
ZXIvLnNzaC9rbm93bl9ob3N0cycKICAgIGRlYnVnMzogZXhwYW5kZWQgVXNlcktub3duSG9zdHNG
aWxlICd+Ly5zc2gva25vd25faG9zdHMyJyAtPiAnL2hvbWUvYmluYXJ5LWVhdGVyLy5zc2gva25v
d25faG9zdHMyJwogICAgZGVidWcyOiByZXNvbHZpbmcgImdpdGh1Yi5jb20iIHBvcnQgMjIKICAg
IGRlYnVnMzogcmVzb2x2ZV9ob3N0OiBsb29rdXAgZ2l0aHViLmNvbToyMgogICAgZGVidWczOiBj
aGFubmVsX2NsZWFyX3RpbWVvdXRzOiBjbGVhcmluZwogICAgZGVidWczOiBzc2hfY29ubmVjdF9k
aXJlY3Q6IGVudGVyaW5nCiAgICBkZWJ1ZzE6IENvbm5lY3RpbmcgdG8gZ2l0aHViLmNvbSBbMTky
LjMwLjI1NS4xMTNdIHBvcnQgMjIuCiAgICBkZWJ1ZzM6IHNldF9zb2NrX3Rvczogc2V0IHNvY2tl
dCAzIElQX1RPUyAweDQ4CgpGaXhlczogZTZmNWI5MzRmYmE4ICgiYjQzOiBBZGQgUU9TIHN1cHBv
cnQiKQpTaWduZWQtb2ZmLWJ5OiBSYWh1bCBSYW1lc2hiYWJ1IDxzZXJnZWFudHNhZ2FyYUBwcm90
b25tYWlsLmNvbT4KLS0tCgpOb3RlczoKICAgIENoYW5nZXM6CiAgICAKICAgICAgICB2MS0+djI6
CiAgICAgICAgICAgIC0gU2ltcGxpZmllZCBsb2dpYyB0byBzb2xlbHkganVzdCBkaXNhYmxlIFFv
UyBmb3IKICAgICAgICAgICAgICBiY200MzMxIChzdWdnZXN0ZWQgYnkgTWljaGFlbCBCw7xzY2gg
PG1AYnVlcy5jaD4pCgogZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL21haW4uYyB8
IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL21haW4uYyBiL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9tYWluLmMKaW5kZXggOTdkOGJkZWFhMDZj
Li5lZmZiNmMyM2Y4MjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29t
L2I0My9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL21haW4u
YwpAQCAtMjU4Nyw3ICsyNTg3LDggQEAgc3RhdGljIHZvaWQgYjQzX3JlcXVlc3RfZmlybXdhcmUo
c3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCiBzdGFydF9pZWVlODAyMTE6CiAJd2wtPmh3LT5x
dWV1ZXMgPSBCNDNfUU9TX1FVRVVFX05VTTsKLQlpZiAoIW1vZHBhcmFtX3FvcyB8fCBkZXYtPmZ3
Lm9wZW5zb3VyY2UpCisJaWYgKCFtb2RwYXJhbV9xb3MgfHwgZGV2LT5mdy5vcGVuc291cmNlIHx8
CisJICAgIGRldi0+ZGV2LT5jaGlwX2lkID09IEJDTUFfQ0hJUF9JRF9CQ000MzMxKQogCQl3bC0+
aHctPnF1ZXVlcyA9IDE7CiAKIAllcnIgPSBpZWVlODAyMTFfcmVnaXN0ZXJfaHcod2wtPmh3KTsK
LS0gCjIuNDIuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
