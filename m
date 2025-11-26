Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A725AD10397
	for <b43-dev@archiver.kernel.org>; Wed, 26 Nov 2025 09:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PuzW0tYtqqFZcOqkC8WJ5p75cEBoxblbgaa/yFpKDI4=; b=3Gn1fgiIBL7OYm
	owdntvvwwIFRW3bx9j/wApbsa7FS/zMOTt53m0K002uYZghosqadMRAAnC3V1B8llcki4FLoLhirq
	PziB3w6Ohf/RAS6VsktCx8RnH1zko71MIZikZJ0eDi61pNV1fXhwiz9Ib51viAbMT7UcFRu/XNu97
	ytHJWgZl+82Gf6f+kBg9PjZSka15RgTFyy4Ivvst4sAZ3jqzSD0dazUVWtunhjb6Kh5A3qL3zz/bm
	989oDBFIzt1zazPM9JD+Ff0eL/wi9513zHgvK+pmNqhmUcwwYs+k7gkzZk8ZUSTM1XUdOoBFOKW8J
	wyEzwNGwG2AZSt60ZnEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOBTf-0000000EgIF-1hIX;
	Wed, 26 Nov 2025 09:06:19 +0000
Received: from mail.traksy.pl ([37.187.225.180])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOBTa-0000000EgHf-2EEW
	for b43-dev@lists.infradead.org;
	Wed, 26 Nov 2025 09:06:15 +0000
Received: by mail.traksy.pl (Postfix, from userid 1002)
	id 1738E22ED4; Wed, 26 Nov 2025 10:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=traksy.pl; s=mail;
	t=1764147969; bh=h/tMd3Fmva2aWv3ZncwumZun0fgHUvfIhd5NrSFYPpg=;
	h=Date:From:To:Subject:From;
	b=NZYENl8/vURHoGN+NuXA9VJE9rsx9zK3B6g4yHV9lCm/oX7QxfdjQ4Q5y12gz0EQN
	 LIRMHyob/B2pVfbC4gKI+zsllQkfy/VZgGzh8xGS8aWtFQzl9LNlMo8ibYdJO1U075
	 pgrEE0kTbjoEdMf7dHRziGA13j5lzrPhZhcCP32KXFcy4U2dMSskxxlhVBRhv+Qh+G
	 ii035M7eDf8lIElZ7Tlh+Z9lhjWq8mNc+R5Z4f+CTK7rIBYSnutEp1XX1a4A4jebpn
	 CHO4S2CXHWkdaW7iyLUSuPWOdSo8i+IKDmrMlExciSqofvI1Ts4Fys4W82iuncx6eY
	 mloC6FjCNycKA==
Received: by mail.traksy.pl for <b43-dev@lists.infradead.org>; Wed, 26 Nov 2025 09:05:31 GMT
Message-ID: <20251126084500-0.1.o9.31uy2.0.dxqre0paqk@traksy.pl>
Date: Wed, 26 Nov 2025 09:05:31 GMT
From: "Karolina Dylkiewicz" <karolina.dylkiewicz@traksy.pl>
To: <b43-dev@lists.infradead.org>
Subject: Ochrona pracodawcy - prawo pracy
X-Mailer: mail.traksy.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_010614_834598_D99DCF6E 
X-CRM114-Status: UNSURE (   2.83  )
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

U3phbm93bmkgUGHFhHN0d28sCgp3IHJlbGFjamFjaCBwcmFjb2Rhd2Nh4oCTcHJhY293bmlrIHBv
em9ybmllIGRyb2JuZSBuaWVkb3BhdHJ6ZW5pZSB3IGRva3VtZW50YWNqaSBtb8W8ZSBwcm93YWR6
acSHIGRvIHBvd2HFvG55Y2ggcHJvYmxlbcOzdyBwcmF3bnljaCBpIGZpbmFuc293eWNoLgoKxZp3
aWFkY3rEmSBzdGHFgsSFIG9ic8WCdWfEmSBwcmF3bsSFIGRsYSBwcnplZHNpxJliaW9yY8OzdyB3
IHpha3Jlc2llIGluZHl3aWR1YWxuZWdvIGkgemJpb3Jvd2VnbyBwcmF3YSBwcmFjeS4gV3JheiB6
IHplc3BvxYJlbSB6YWptdWplbXkgc2nEmSBwcnp5Z290b3dhbmllbSBpIG5lZ29jamFjamFtaSB1
bcOzdyBvcmF6IGtvbnRyYWt0w7N3LCB3c3BpZXJhbXkgdyBwcm9jZXNhY2ggemF0cnVkbmllbmlh
IGkgcmVzdHJ1a3R1cnl6YWNqaSwgYSB0YWvFvGUgcHJ6ZXByb3dhZHphbXkgYXVkeXR5IHByYXdu
b3ByYWNvd25pY3plIChkdWUgZGlsaWdlbmNlKS4KCk5hc3p5bSBjZWxlbSBqZXN0LCBieSBUd29q
ZSBkemlhxYJhbmlhIGpha28gcHJhY29kYXdjeSBiecWCeSBiZXpwaWVjem5lLCB6Z29kbmUgeiBw
cnplcGlzYW1pIGkgZG9icnplIHVkb2t1bWVudG93YW5lLgoKQ3p5IG1vZ8SZIG9wb3dpZWR6aWXE
hyB3acSZY2VqIG8gdHltLCBqYWsgd3lnbMSFZGEgdGFrYSB3c3DDs8WCcHJhY2EgdyBwcmFrdHlj
ZT8KCgpQb3pkcmF3aWFtCkthcm9saW5hIER5bGtpZXdpY3oKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2I0My1kZXYK
