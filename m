Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C3260A260D
	for <b43-dev@archiver.kernel.org>; Sat, 31 Oct 2026 09:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4dCGjatS;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=AZkLuA0r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Message-Id:Date:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Xk22BvEVb8sIoLzJ5BzDflLYpA5R2CUQ/iTueltQZ/I=; b=4dCGjatSXM3vECH0lYkWXmpAba
	GVApzE2Td2O8l9PLMPtm6yr/4UIsT82aWNli+pCplqEHtr9aHVoxsfPkQK+4Q+4WyC5WNvA5JIaCr
	SmdV5ewsJLh3KkCxPglWpZxN6Q6ukijZULI8ud1FdHmSJm4l/lFE86BML/lOpw/zjZYl9jBoiqC24
	0JXJRgIPg+mwGxQCIHIckllKKnCdgXb+fYpCU4z6mFg3FrWU1Tx5zH0BAzGv64YEbZB/gM4yoMuzk
	/FOeDiIgmE21+IPjn4yjWQtu1bpi1wh40hAAMFkIf3f975MoGBkhqz30ofoL9lK7BsqcBlHVt/MQh
	05k+Ohww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5Bg-0000000D7WV-2WzU;
	Sat, 31 Oct 2026 09:15:44 +0000
Received: from smtpcmd0986.aruba.it ([62.149.156.86])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5BV-0000000D7Pb-3zo7
	for b43-dev@lists.infradead.org;
	Sat, 31 Oct 2026 09:15:38 +0000
Received: from [127.0.0.1] ([79.43.52.162])
	by Aruba SMTP with ESMTPSA
	id N5BMx1hYL6q8sN5BPxVoSe; Sat, 31 Oct 2026 10:15:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793438127; bh=HfN5B1zdByBYfML7ECe9pT8WMCncWhH5/RQHDDrcjxM=;
	h=From:Subject:Date:MIME-Version:Content-Type:To;
	b=AZkLuA0r9WxOjrHLimI+vPJqJyNjPmlZpHxgZ+mctxf+OZ2JfF8bGdBwJgQjDbaN9
	 MV7BcFLFJ8HhFzjXJRO5euGpdzi/H5a07TzwHbjLR8VbNh2OAb4bcEOsbXajmw+nSO
	 iCJe9TJwlAsoEPCfiEjbJahxlUQBtyrJoxH2Hr2mky3DjwTAq5myBOlGuF5ZQQDEDC
	 e21O/4dpxa7i+0IbRcdcKDOVDs0goO/2LGd8PRQgVBKutmE9bOcrAyc5OtQBu01qzN
	 7S+QSGcaFH9DZ774MsMFp/iZfwmFWkeCtBjQs7lJsRWkTXHldsVo62HaOQj5OL2G6r
	 ooBjR7PBYwbLg==
From: Alessio Ferri <alessio.ferri@mythread.it>
Subject: [PATCH wireless-next v3 00/10] bcma-ac-rev1: support 4352/4360
 rev3 chips
Date: Sat, 31 Oct 2026 10:15:22 +0100
Message-Id: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKqx5WoC/23NTQ6CMBAF4KuQrq1pCxbqynsYF/0ZpEbAtBUhh
 LtbykaNyWxeZr43M/LgLHh0zGbkYLDe9l0M+S5DupHdFbA1MSNGGKeEFljpVmKpcTym2MhKFLR
 gpSA1iuThoLZjqjujl3VwB+9xB2NAl23tn+oGOqyVK2isD72b0vuBJvb/UxyCFScVCGHy+sBP7
 RQaB9Ls7VY+sA/Oyh/OEheKU51Twcg3X5blDUxa3gQKAQAA
X-Change-ID: 20261014-bcma-ac-rev1-da894142790f
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>, vit9696 <vit9696@protonmail.com>
X-Mailer: b4 0.15.2
X-CMAE-Envelope: MS4xfOd7s3KzrSBYunUKqXBlJDC83HYowjIiUewPkbHeW9ZVuORYU494wfI6zThqAswEdw4W9F3uYvmFFKgX6oDzXxCorpkXWuE+5kvRCyqw8UtJqpYiBXZl
 5Zla5aRRVNnGEYNMdqqoHsJcnxqrH4NZvZvzxllFK7YBntGCG3UAtBd/qb76nhvfMWgSuXrp+bGS9/cpK9r2lwxihU+ibQRkSoLhfEYtC/VE8qp61GrlLI6M
 BIlaYhpSoA1zrZkmVPpVbaJsJip9e9OFVMRtqRAE815UJlFMxDluOV+zgMKZ8zKGbx64nkrhQSgHOujtwqFClvGncJrJ9/fPfK/C/cKzmyWBnb9mV+BQQVm6
 qRcVnNDQjIS7CMIoomNQhu6W2pqcz145DmEHpc/BrJvcAOt9QVxXBJrlD3OVTKtmwTwtkWH73ruilBTQMKW5SjR3TgcQew==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_021534_399328_B3DE925C 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	T_SPF_TEMPERROR,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

UHJlcGFyYXRvcnkgd29yayBpbiB0aGUgYnJpbmcgdXAgb2YgQUMgZmFtaWx5IHJldjEgY2hpcHMs
IGluIHBhcnRpY3VsYXIsCnRoZSBiY200MzUyIHJldjMgYW5kIGJjbTQzNjAgcmV2My4gV2hlbiBw
dWJsaWMgc291cmNlcyB3ZXJlIGZvdW5kLCB0aGUgCnNhbWUgZ2F0ZXMgYXBwbGllZCBmb3Igb3Bl
cmF0aW9ucyB3ZXJlIHBvcnRlZCBpbiB0aGlzIGNvZGUuCgpJbml0aWFsaXplIHRoZSBQTVUsIHRo
ZSBQQ0llMiBjb3JlIGFuZCBjaGlwY29tbW9uIG9mIHRoZSBCQ000MzUyL0JDTTQzNjAKZmFtaWx5
IG9uIGNoaXAgYmFzZWQgb24gdGhlIG9wZW4gc291cmNlIHZlcnNpb24gb2YgYnJvYWRjb20gZHJp
dmVyLCBwYXJzZSAKU1BST00gcmV2aXNpb24gMTEsIHJlYWQgdGhlIE5WUkFNIHZhcmlhYmxlcyBz
ZXQgb24gdG9wIG9mIHRoZSBTUFJPTSwgYW5kIApiaW5kIGJjbWEtcGNpLWJyaWRnZSB0byB0aGUg
QkNNNDM1Mi4KClNpZ25lZC1vZmYtYnk6IEFsZXNzaW8gRmVycmkgPGFsZXNzaW8uZmVycmlAbXl0
aHJlYWQuaXQ+Ci0tLQpDaGFuZ2VzIGluIHYzOgotIHJlZ2F0ZWQgbW9zdCBvZiB0aGUgY2hlY2tz
IG9uIHRoZSBwcm9wZXIgdmVyc2lvbi9mbGFnIHByZXNlbnQKICBpbnN0ZWFkIG9mIGZvcmNpbmcg
ZXZlcnl0aGluZyB0byBiZSByZXYzIG9ubHksIGFzIFZpdGFseSBzdWdnZXN0ZWQKLSBBZGRlZCBu
dnJhbSBwYXJzaW5nIGZvciBhbGwgcGFyYW1zIGZvdW5kIGluIGEgcmVhbCBub3J0aHN0YXIgcm91
dGVyCi0gUmVtb3ZlZCBBdlZtaWQgcGFyc2luZyBmcm9tIG52cmFtLCBhcyBpdCBkb2Vzbid0IHNl
ZW1zIHRvIGJlIHVzZWZ1bAotIEFkZGVkIG1pc3NpbmcgcGNpIGlkcyBmb3IgNDM1Mi80MzYwIHZh
cmlhbnRzCi0gTGluayB0byB2MjogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYxMDI3LWJj
bWEtYWMtcmV2MS12Mi0wLWI2OWI2MWMzMTkyMEBteXRocmVhZC5pdAoKQ2hhbmdlcyBpbiB2MjoK
LSBnYXRlZCBjaGlwY29tbW9uIGJlaGF2aW91ciBvbiBpdHMgb3duIHJldmlzaW9uIGluc3RlYWQg
b2YgY2hpcCByZXYgYXMKICBwb2ludGVkIG91dCBieSBWaXRhbHkKLSBMaW5rIHRvIHYxOiBodHRw
czovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjEwMTQtYmNtYS1hYy1yZXYxLXYxLTAtYjYwOGU5OWQz
ZjU2QG15dGhyZWFkLml0CgpUbzogUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21haWwuY29tPgpU
bzogTWljaGFlbCBCdWVzY2ggPG1AYnVlcy5jaD4KVG86IHZpdDk2OTYgPHZpdDk2OTZAcHJvdG9u
bWFpbC5jb20+CkNjOiBsaW51eC13aXJlbGVzc0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWtl
cm5lbEB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LW1pcHNAdmdlci5rZXJuZWwub3JnCkNjOiBi
NDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKCi0tLQpBbGVzc2lvIEZlcnJpICgxMCk6CiAgICAg
IGJjbWE6IGNvcmU6IGNsZWFyIG9ubHkgRk9SQ0VIVCBmb3IgQkNNQV9DTEtNT0RFX0RZTkFNSUMK
ICAgICAgYmNtYTogcG11OiBpbml0IFBMTCBhbmQgcmVzb3VyY2VzIG9uIEJDTTQzNTIvQkNNNDM2
MAogICAgICBiY21hOiBwY2llMjogcmVxdWVzdCBIVCBvbiBCQ000MzUyL0JDTTQzNjAKICAgICAg
YmNtYTogY2hpcGNvbW1vbjogZW5hYmxlIGFzeW5jaHJvbm91cyBHUElPIGludGVycnVwdHMKICAg
ICAgYmNtYTogZXh0cmFjdCBTUFJPTSByZXZpc2lvbiAxMQogICAgICBmaXJtd2FyZTogYmNtNDd4
eF9zcHJvbTogcmVhZCB0aGUgU1BST00gcmV2aXNpb24gMTEgZmllbGRzIGZyb20gTlZSQU0KICAg
ICAgZmlybXdhcmU6IGJjbTQ3eHhfc3Byb206IHJlYWQgbGVkYmg0Li5sZWRiaDE1IGZyb20gTlZS
QU0KICAgICAgZmlybXdhcmU6IGJjbTQ3eHhfc3Byb206IHJlYWQgYm9hcmRmbGFnczMgZnJvbSBO
VlJBTSBvdmVyIHRoZSBTUFJPTQogICAgICBiY21hOiBhZGQgdGhlIHNpbmdsZS1iYW5kIEJDTTQz
NTIvQkNNNDM2MCBQQ0kgSURzCiAgICAgIHdpZmk6IGI0MzogYWRkIHRoZSAyLjQgR0h6IEJDTTQz
NTIvQkNNNDM2MCB0byB0aGUgc3VwcG9ydGVkIGJhbmRzCgogZHJpdmVycy9iY21hL2NvcmUuYyAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9iY21hL2RyaXZlcl9jaGlw
Y29tbW9uLmMgICAgICAgICAgICB8ICAgMyArCiBkcml2ZXJzL2JjbWEvZHJpdmVyX2NoaXBjb21t
b25fcG11LmMgICAgICAgIHwgIDgxICsrKysrKysrKwogZHJpdmVycy9iY21hL2RyaXZlcl9wY2ll
Mi5jICAgICAgICAgICAgICAgICB8ICAgMyArCiBkcml2ZXJzL2JjbWEvaG9zdF9wY2kuYyAgICAg
ICAgICAgICAgICAgICAgIHwgICA4ICstCiBkcml2ZXJzL2JjbWEvc3Byb20uYyAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMjAwICsrKysrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZmlybXdh
cmUvYnJvYWRjb20vYmNtNDd4eF9zcHJvbS5jICAgfCAyNTMgKysrKysrKysrKysrKysrKysrKysr
KysrKy0tLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL21haW4uYyAgICB8ICAg
NiArCiBpbmNsdWRlL2xpbnV4L2JjbTQ3eHhfc3Byb20uaCAgICAgICAgICAgICAgIHwgIDE1ICsr
CiBpbmNsdWRlL2xpbnV4L2JjbWEvYmNtYV9kcml2ZXJfY2hpcGNvbW1vbi5oIHwgIDE1ICsrCiBp
bmNsdWRlL2xpbnV4L3NzYi9zc2IuaCAgICAgICAgICAgICAgICAgICAgIHwgIDcwICsrKysrKysr
CiBpbmNsdWRlL2xpbnV4L3NzYi9zc2JfcmVncy5oICAgICAgICAgICAgICAgIHwgIDk0ICsrKysr
KysrKysrCiAxMiBmaWxlcyBjaGFuZ2VkLCA3MjIgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25z
KC0pCi0tLQpiYXNlLWNvbW1pdDogMGZjYjA1YjcyMzQ0ZjQwODA2Y2JlODEwZGU4ODcyZjE2OThi
ZjA1MwpjaGFuZ2UtaWQ6IDIwMjYxMDE0LWJjbWEtYWMtcmV2MS1kYTg5NDE0Mjc5MGYKCkJlc3Qg
cmVnYXJkcywKLS0gIApBbGVzc2lvIEZlcnJpIDxhbGVzc2lvLmZlcnJpQG15dGhyZWFkLml0PgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYg
bWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
