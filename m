Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13938C4706F
	for <b43-dev@archiver.kernel.org>; Sun, 31 Dec 2023 17:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUQ2Se5isQpjGMnt8AfwGtULEdNVxlm72trQhLd3byY=; b=BneAkAol2AMHnh
	32XNizM4McHEwleAn7hU2slR3WkcQkBEud9VEhmcq3KmidJd4NwkdtqdDA4vDlgzrjSK5CeoKAv0Y
	yzvqRHN21cIvDHIZGI7mOuG5YZ8IN3xCMnzOOoMpxzo7QEhzJq6+Bw+VA+b7HzCsvKyMEhfdoAaww
	OiN5bzXfj03xZ0IRJxU+oiJG9sHZpenZdull66tOB3liO+5c04V7XYI91aDfNQ2sVU/MEJ0X3RmdK
	5WeW8uhqwAIa064qXLJBZ6hSGQWp1id9Q5K3Bx7Jb+jgKF3wZ0RadgcE0ish5lVAlOL2TpVKT7HQW
	rYFHBFmQlAwI58YwSDIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJzdA-004uyD-2B;
	Sun, 31 Dec 2023 17:29:44 +0000
Received: from mail-4316.protonmail.ch ([185.70.43.16])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJzd7-004uxY-0z
	for b43-dev@lists.infradead.org;
	Sun, 31 Dec 2023 17:29:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1704043773; x=1704302973;
	bh=hU+O3O0WZy59tVU9PtFRXLLdlxK59XaCKjJYfsYMEPY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=mOARG1PVmRQaf7Zhnnrdn7cfcZpEoJKtv2dOnFYbBACfCnhTkfEZ3xRcJ+hVp4ioZ
	 8anPHtZ+xlmHR1XZ26EJn6BsQSHyOO8XLJyzyud1naAxRxGeuc+h1BA4YOlOYIu0L5
	 RLceeNf7lGn7GJpdKbgtoUjIJQlf9wWiL979J/sco7XMtGTToJLaZTWzM2NZE4oZcd
	 PNafsdnxLdU525kXHVqPVpYTQq1GGLZx1wVNGIqAAXXkn72QW1o8DzextZyfP2wZ/C
	 FIZRGjFLULgkY+foKItIeiA7lhedDswK/FbwCl8S55cxdKvn49nSx7tlg6gjSh6mYk
	 GVlgmOEME0lHw==
Date: Sun, 31 Dec 2023 17:29:14 +0000
To: =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 3/5] wifi: b43: Stop/wake correct queue in PIO Tx path when QoS is disabled
Message-ID: <87sf3iz3ff.fsf@protonmail.com>
In-Reply-To: <20231231103302.04cc37ae@barney>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com> <20231230045105.91351-4-sergeantsagara@protonmail.com> <cb9dcb49-ad94-40df-9f01-a28df3daf6c3@lwfinger.net> <877ckvwk5v.fsf@protonmail.com> <ca357d13-7da9-490f-9e69-4674c6ede057@lwfinger.net> <874jfzutm5.fsf@protonmail.com> <20231231103302.04cc37ae@barney>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231231_092941_518244_27740E0A 
X-CRM114-Status: GOOD (  16.94  )
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

T24gU3VuLCAzMSBEZWMsIDIwMjMgMTA6MzM6MDIgKzAxMDAgTWljaGFlbCBCw7xzY2ggPG1AYnVl
cy5jaD4gd3JvdGU6Cj4gW1tQR1AgU2lnbmVkIFBhcnQ6VW5kZWNpZGVkXV0KPiBPbiBTdW4sIDMx
IERlYyAyMDIzIDAwOjAyOjMyICswMDAwCj4gUmFodWwgUmFtZXNoYmFidSA8c2VyZ2VhbnRzYWdh
cmFAcHJvdG9ubWFpbC5jb20+IHdyb3RlOgo+Cj4+ID4gVW5mb3J0dW5hdGVseSwgaXQgaXMgdmVy
eSBkaWZmaWN1bHQgdG8gZ2V0IHRoZSBwYXJhbWV0ZXJzIGZvciBmd2N1dHRlciBmcm9tIGFuCj4+
ID4geDg2IGJpbmFyeS4gU29tZSBvZiB0aGUgb3RoZXIgYXJjaGl0ZWN0dXJlcyBhcmUgZWFzaWVy
LiAgCj4+IAo+PiBKdXN0IHRyaWVkIHRoaXMgd2l0aCB0aGUgeDg2IGJpbmFyeSBqdXN0IGJlY2F1
c2UgYW5kIHJhbiBpbnRvIGV4dHJhY3Rpb24KPj4gaXNzdWVzIGFzIGV4cGVjdGVkLiBJIGNvdWxk
IG5vdCBmaW5kIG90aGVyIGFyY2hpdGVjdHVyZSBvcHRpb25zIGZyb20KPj4gQnJvYWRjb20ncyBk
b3dubG9hZCBwYWdlLCBidXQgSSBtYXkgbm90IGhhdmUgYmVlbiBsb29raW5nIHdlbGwgZW5vdWdo
Li4uCj4+IAo+PiAgIOKdryBiNDMtZndjdXR0ZXIgLi93bGNfaHlicmlkLm9fc2hpcHBlZAo+PiAg
IFNvcnJ5LCB0aGUgaW5wdXQgZmlsZSBpcyBlaXRoZXIgd3Jvbmcgb3Igbm90IHN1cHBvcnRlZCBi
eSBiNDMtZndjdXR0ZXIuCj4+ICAgVGhpcyBmaWxlIGhhcyBhbiB1bmtub3duIE1ENXN1bSA2ODg5
ZGJkMjRhYmY4MDA2ZGU1Y2M2ZWRkZDEzODUxOC4KPgo+IGI0My1md2N1dHRlciB3b3JrcyBvbmx5
IG9uIGtub3duIGZpbGVzLiBJdCBoYXMgYSB0YWJsZSBvZiBoYXNoZXMgb2YgdGhlc2UgZmlsZXMu
Cj4KPiBCdXQgdGhlcmUgaXMgYSBzY3JpcHQgdGhhdCBjYW4gYmUgdXNlZCB0byBjcmVhdGUgYSBo
YXNoIHRhYmxlIGVudHJ5IGZvciBhIC5vIGZpbGU6Cj4gaHR0cHM6Ly9idWVzLmNoL2NnaXQvYjQz
LXRvb2xzLmdpdC9wbGFpbi9md2N1dHRlci9ta2xpc3QucHkKPgo+IFRoaXMgcHJvYmFibHkgZG9l
c24ndCB3b3JrIG9uIHg4NiBiaW5hcmllcywgdGhvdWdoLgo+IEJ1dCBtYXliZSBieSByZWFkaW5n
IHRoZSBzY3JpcHQgeW91IGNhbiBnZXQgYW4gaWRlYSBob3cgdGhpcyB3b3Jrcy4KClRoYW5rcyBm
b3IgdGhlIHBvaW50ZXIuIEkgd2lsbCB0YWtlIGEgbG9vayBhbmQgZm9sbG93IHVwIHdpdGggeW91
IGFuZApMYXJyeSB3aXRoIHRoZSBiNDMtZGV2IG1haWxpbmcgbGlzdCBDQ2VkLiBJZiB3ZSBjYW4g
Z2V0IFFvUyB3b3JraW5nIG9uCmJjbTQzMzEsIHRoZW4gSSBjYW4gc2VuZCBhIHJldmVydCBmb3Ig
dGhlIGRpc2FibGVtZW50IHBhdGNoLgoKLS0KVGhhbmtzLAoKUmFodWwgUmFtZXNoYmFidQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFp
bGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
