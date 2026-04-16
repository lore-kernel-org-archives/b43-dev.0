Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42FB1F4384C
	for <b43-dev@archiver.kernel.org>; Thu, 16 Apr 2026 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uigAnC9y6CBKrzIhl8WW5JHDcDxt9IPILjpfJ2QNVO8=; b=x9GyujZl609Jdj
	SNtUWbcL20U79/lAGq+tdis2Sh8E5vKM/2rb2yQM+2N00M9yQfgW5buSquoZ76vVjPf6/BydswUbr
	BBBOoYR7YFxb42ei/g4bfOZC7KWimwqMa8eqGICbhTXKkIMhnaBtzuVVFthIJfsr6dxdxIQpQVD9x
	8zRVJ7AbZ34EsoC/bCeeQPaamKSE4NoaeiesvE6y1IBuKyfCrQXfcRVMVp7eAlCLDIUokMvkX+5fh
	QgPXSN4krEqU9+gk8RDH+xsjtB2Vbl8F6ufaQnMev0Rql1yQ+79E0mdteRw8HI1Jkq9We9NXnIYGj
	fJASrULJNPtX/IVSB9nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGIq-000000023Js-30gJ;
	Thu, 16 Apr 2026 06:34:16 +0000
Received: from mail-yx1-xb12d.google.com ([2607:f8b0:4864:20::b12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGIn-000000023JN-28TC
	for b43-dev@lists.infradead.org;
	Thu, 16 Apr 2026 06:34:14 +0000
Received: by mail-yx1-xb12d.google.com with SMTP id 956f58d0204a3-652f220595fso1025062d50.0
        for <b43-dev@lists.infradead.org>; Wed, 15 Apr 2026 23:34:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776321252; cv=none;
        d=google.com; s=arc-20240605;
        b=J4tGT3lN8RWELrrOpmrjYqJu+QdjtcmV+ZP6H5Aiv/TFcRvmSQqoA+FvHiS68VBo1G
         RF82y6qCDomVEtQDlKIDmtlC0BEXrbp0yRSJ78Acvg5zJVEyh5ALiQLDFk+ra27CkOeE
         GvPrtHMMymWg86kHlfuWoh3uXK5pPtfJb6ConNkaoCTgw/Sw0xZTy7q4YS68twt5mV3I
         DNmkEKttIUdPJNclW1QJlZagRv7Fe0Nr4vAhswvMt7LlNtZNN8IarM425KI5fqrTh/HR
         LJVDxaQN07D+BVmI9yf+05cPDpyReUBTsjXB4QXzb6NsNPl1Eoexc/eJObxcdClAZfok
         WZog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ohAIqVNFWeW5tgnSvTKQEG5CsHX/rC4S8Y4fjn1RWXM=;
        fh=nSIbVfFPKmlu1qqZ80rQ6yztsZwREEDOafpjy16VJjI=;
        b=b3gYp6TMlt2r2NTfXflgGue171YPsf0JW6uG86BH+R1WU9jKqWQ4Mwogi7yooU8Z50
         royuxY+C5kyL5JbS6qzgTMq7+A1JXBDqX1CgF5JNerdSQqnXm4mhOw5HUfk869qsd5Bc
         E3uzriPPZEWY7xz6piYDUxb6VtUsqQo2zjq1eS0AvL5EuF51ObU0ZSFPLGtcmDOEse4M
         VPn+9bMdwinisQQ694nrKSD04ed7ufkTiN6xOgf0laIlQ6LwqOUQnaH8bOrAiGk3wKCU
         Ydf4Mqu3bGLq6dMas20pRfOus/bw4unc35kzNaxxR6SrSm3o2ePX21gajGCIVuJw6SkK
         8JOA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776321252; x=1776926052; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ohAIqVNFWeW5tgnSvTKQEG5CsHX/rC4S8Y4fjn1RWXM=;
        b=aMMasxe3EwQJikveVG100D1GNWd/5UHpQBsEu/qgjqe5jtngv7T5U6UK77OsRxeRO7
         5lh2x1IdX2lqfTAAQwaU99x/dU6Lg/eS3IXNADYxjD2BWoTHz/vEEXUI192zyiCGP8Qn
         rRN5kmYLx1F8inZ7QfHCbcNa2/7TeweIH2ySJ7WTV/B+V8P4zqDSJOK2IO5ZD5akb2zZ
         DjTFj3qJ9V4q+ksj/jcvINY+/iaE3SqcYIGLh8H8id6VDL0l+PRdR6oMJvdUH2tUpbPd
         jRKCnsyQThi/5fwYVEeEcB3/lYw+3uloIFEvvB10bCHbFQzaq4510gkdj3QURNFU+btv
         d8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776321252; x=1776926052;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ohAIqVNFWeW5tgnSvTKQEG5CsHX/rC4S8Y4fjn1RWXM=;
        b=Z8Oxmaq8UnkGHNTccufbjjgerOWzbN8C6NIXWrmVzCHIUHeWm71qRKXZGEme2zTgHp
         j6fnQ01vvOETidSxVFZ1ibUniX9bZYC323kh0zSFAa+I/bw2TF7Gp0up+l4kusiwmrAB
         rPhU85bpkZgv4wn5g3851Y2tMD9266hUUWQV0WHzibjnTCn7nqOzCbm0h05Sk8RTTkQd
         RisOLhscGwPkhlleLdJp+dyFR1kMYMoltGypEIPTjtP1nEsgffFAc5pdcAJiRmQ2TLGn
         H0ntCTS+/iJ36GMNIwP56eWYo2aBgHP7cReLgcoPqkzK4BtqB03rWyl1/f3PLkCzI1cw
         9UHA==
X-Forwarded-Encrypted: i=1; AFNElJ/75kAP6UdQ0QnHJi2yirs3VCs5Wcf1Ggs8UrEW9ZupCK0Qmd0pnIthz4TEm9hCH38J9KgCzTEy@lists.infradead.org
X-Gm-Message-State: AOJu0YyBvGorRVbQ5omadPg7AqIeWeds2NL1Hcpy2oiO1OdrBFUBlOix
	JsoUvYjkBkSVFfUYGJfh1c9SB/MQiC/IabvqlelSjo7N3WKwx1KbU8Z2WakxM3PAQutQjcX8z8/
	k1vwEMoVCZxjLtfm9G9IyeBfRQbT2mss=
X-Gm-Gg: AeBDiesjbd75ZwUW+X+GShHJ7kYld8+1L6akIO8PqqxscaGC7vbzDOXHZLzgLqCCwR9
	XAJDhcWdI77K0QwoARW0Xby+VIk9ReGIgtktUQ3hv3FY/IM0MVeEhSgXhIUC4qSvI2TOCGwBO5A
	gh/QeUGtdSEBUCB6IoK7uU2RMPSeeB95Y7jJjqlxxkYURrzuo4EI4c01rYbNEJVFXgGIjKg+q1y
	li9tMcWThgTs0I81IwB3VTQV2N8wneuvyPUo9LxdFpL6sayDof3zVwE+4ctDeIK3VxGSrYBDTdV
	/hwouCkQe4XEQeoMaYD/1gQmVzTHgCzbONIAT4Ne2+bV9ohLCLDuux/X2uemmekzZw==
X-Received: by 2002:a05:690e:b48:b0:651:b73f:2046 with SMTP id
 956f58d0204a3-651b73f26fbmr15448092d50.59.1776321252113; Wed, 15 Apr 2026
 23:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260415222425.1544638-1-tristmd@gmail.com> <20260415222425.1544638-2-tristmd@gmail.com>
In-Reply-To: <20260415222425.1544638-2-tristmd@gmail.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Thu, 16 Apr 2026 08:34:00 +0200
X-Gm-Features: AQROBzCQGSycL_FiW1klCKpwdUQrdt6fQm8Yx0hL54YnaAFFXmZplvFsiMyW7iU
Message-ID: <CAOiHx=nuUvf31J5khj4e4Kzv2wK4++TeZevXu3Z53qB66RagdQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] wifi: b43: fix infinite loop from invalid hardware
 DMA RX slot
To: Tristan Madani <tristmd@gmail.com>
Cc: Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, 
	b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_233413_558813_E494976A 
X-CRM114-Status: GOOD (  18.09  )
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

SGksCgpPbiBUaHUsIEFwciAxNiwgMjAyNiBhdCAxMjoyNOKAr0FNIFRyaXN0YW4gTWFkYW5pIDx0
cmlzdG1kQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBUcmlzdGFuIE1hZGFuaSA8dHJpc3Rh
bkB0YWxlbmNlc2VjdXJpdHkuY29tPgo+Cj4gYjQzX2RtYV9yeCgpIHJlYWRzIGN1cnJlbnRfc2xv
dCBmcm9tIGhhcmR3YXJlIHZpYSBnZXRfY3VycmVudF9yeHNsb3QoKS4KPiBJZiB0aGUgdmFsdWUg
aXMgPj0gcmluZy0+bnJfc2xvdHMsIHRoZSBCNDNfV0FSTl9PTiBvbmx5IHdhcm5zIGJ1dAo+IGNv
bnRpbnVlcy4gVGhlIGZvciBsb29wIHRoZW4gbmV2ZXIgdGVybWluYXRlcyBiZWNhdXNlIG5leHRf
c2xvdCgpIHdyYXBzCj4gbW9kdWxvIG5yX3Nsb3RzIGFuZCBjYW4gbmV2ZXIgcmVhY2ggdGhlIG91
dC1vZi1yYW5nZSBjdXJyZW50X3Nsb3QuCj4KPiBSZXBsYWNlIHRoZSBCNDNfV0FSTl9PTiB3aXRo
IGFuIGV4cGxpY2l0IGJvdW5kcyBjaGVjayB0aGF0IHJldHVybnMKPiBlYXJseSB3aGVuIHRoZSBo
YXJkd2FyZSByZXBvcnRzIGFuIGludmFsaWQgc2xvdCBpbmRleC4KPgo+IEZpeGVzOiBlNGQ2Yjc5
NTE4MTIgKCJbQjQzXTogYWRkIG1hYzgwMjExLWJhc2VkIGRyaXZlciBmb3IgbW9kZXJuIEJDTTQz
eHggZGV2aWNlcyIpCj4gU2lnbmVkLW9mZi1ieTogVHJpc3RhbiBNYWRhbmkgPHRyaXN0YW5AdGFs
ZW5jZXNlY3VyaXR5LmNvbT4KPiAtLS0KPiBkcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9i
NDMvZG1hLmMgfCA1ICsrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNv
bS9iNDMvZG1hLmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvZG1hLmMKPiBp
bmRleCBYWFhYWFhYLi5YWFhYWFhYIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2Jyb2FkY29tL2I0My9kbWEuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29t
L2I0My9kbWEuYwo+IEBAIC0xNjkzLDcgKzE2OTMsMTAgQEAgdm9pZCBiNDNfZG1hX3J4KHN0cnVj
dCBiNDNfZG1hcmluZyAqcmluZykKPiAgICAgICAgIEI0M19XQVJOX09OKHJpbmctPnR4KTsKPiAg
ICAgICAgIGN1cnJlbnRfc2xvdCA9IG9wcy0+Z2V0X2N1cnJlbnRfcnhzbG90KHJpbmcpOwo+IC0g
ICAgICAgQjQzX1dBUk5fT04oIShjdXJyZW50X3Nsb3QgPj0gMCAmJiBjdXJyZW50X3Nsb3QgPCBy
aW5nLT5ucl9zbG90cykpOwo+ICsgICAgICAgaWYgKCEoY3VycmVudF9zbG90ID49IDAgJiYgY3Vy
cmVudF9zbG90IDwgcmluZy0+bnJfc2xvdHMpKSB7Cj4gKyAgICAgICAgICAgICAgIEI0M19XQVJO
X09OKDEpOwo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICB9CgpCNDNfV0FSTl9P
TigpIHJldHVybnMgdGhlIGNvbmRpdGlvbidzIHJlc3VsdCwgc28geW91IGNhbiBzaG9ydGVuIHRo
aXMgdG8KCmlmIChCNDNfV0FSTl9PTighKGN1cnJlbnRfc2xvdCA+PSAwICYmIGN1cnJlbnRfc2xv
dCA8IHJpbmctPm5yX3Nsb3RzKSkpCiAgICAgICAgcmV0dXJuOwoKQmVzdCByZWdhcmRzLApKb25h
cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRl
diBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
