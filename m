Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC99AF4384C
	for <b43-dev@archiver.kernel.org>; Thu, 16 Apr 2026 06:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkF/uzSVt18WvJPtRoWJb/dPSxQoQoc/5IdTXFK3G/E=; b=GayWszWlnjlVcy
	q5X43/7rllTA35dxSJ/xaQxVX+zPGgzKJTJQNOIMqddes0RnVo1+Ud193ZQfXL9HXlpblb/n7eUYH
	KK3Hw0SoyXDesmDAbW8yttRw9frmt6Kpi19HbJ9EXPO+eF83UHwy2xOv56iK9xGoJG4tLYV5Sf8VR
	UJ7/N1BOe7W4AEe1FR41QY8xYu063cA+ZR2WwlyVBF1s/b+ufb9PYA2ZpsFxxSH7kxNAa0V4ehc7R
	Rt6+lCiwEp/p9rnENIwwpmJSyAhKNxeQ82SGhwr/cyq37b9t1+mjlMKrcSIH9nAlSayWgOgKLgCBz
	5ioGntL4xJNaS9UVowFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGJ0-000000023Mb-2BaW;
	Thu, 16 Apr 2026 06:34:26 +0000
Received: from mail-yx1-xb129.google.com ([2607:f8b0:4864:20::b129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGIx-000000023Lk-2oMG
	for b43-dev@lists.infradead.org;
	Thu, 16 Apr 2026 06:34:24 +0000
Received: by mail-yx1-xb129.google.com with SMTP id 956f58d0204a3-651c366f7efso4440054d50.1
        for <b43-dev@lists.infradead.org>; Wed, 15 Apr 2026 23:34:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776321262; cv=none;
        d=google.com; s=arc-20240605;
        b=My0iw6XH0OWgQOL1miqGE+ZZHpQDx+51CT2TDm0JbNs6t7jJnHusJsi5/sIkcJJ9Eq
         VkM2kzZ3Mpn9U1Iyh63ieM4K253SyALgD7KfjmffOPQ8O+Mu5YgI68ybEY4ykVZCb1FF
         cV3YaxHAGfytPomV0GvaVeh2yP8BRJSzdAsZu+XXrLDK4vdj6yOSzQ8nL4Z76wO/vE/x
         b9IhWzvWvRJBAcQjYTcGk9ICG5DMFTo759G/5goEascHQwid5FPxm1gy43c8VdLUFyaz
         GquXCKGzFUtTlhx6IqO5cqpRgv1Txz5KC+70qaFZ0SxFQyLSVGbMY5dUIiNNLX2OWjUO
         KkFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7RYmBpi8DAAjfdBJ9S/wjNWLah959PM2SroLcRHKoFc=;
        fh=mCGlB3NdWdReyBWG57sEpUr7/uP0BQvLaAs1pC/QXEI=;
        b=LB3o9tVucRHXWjaI0KKMZPy1HdJE+RDtdzWOxJCG7vnDB3e4gVL90IsCPOnF6c7+12
         iytGpyll9krozj7I08yJFHFyTHszB51qt5uzZHey9+r6l6j9vuDaC/gOKknxgTGxy1ah
         +EyaXeloW6MTS0b3x6uBqiOhGd4kKOuCX6BIFdK6Ddl77oX8xf0aucIhLmDoZoaL2SFF
         spwTH9z4od72b4kLycA8451zFMg6NXwpri5Dk6/sTQdPtLUm1z0E5u7EjC7xPXXVj3e/
         cxHAbQEql+8ISQbBz+E9wRgBUh2tH+a7/1/WBMflIrZhgFPQPeJ2ZY3szld5Vck8o2hF
         OAxQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776321262; x=1776926062; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7RYmBpi8DAAjfdBJ9S/wjNWLah959PM2SroLcRHKoFc=;
        b=c9jTlpRN184+QFwn0llXKiFWJ3AqvM4dSNYtymeeOcrwGHTEjRCuB9XhlqXqZ55gLb
         XCfK8P+iiFac002Ve6ytkngOPvwhM0na9HW6nuWW5qzg//miGhKFAcGNbMbe9cO4kfxJ
         A92gr1SHyN6rcGG1aIPHXepkG/u+2JjSHiaMbT9mW4hgYTVj4T0sWy9083Z24N0f7tRs
         yH+J1pgXy2SWqQ2aGfRX8u+CXAnhcgjywfa44L4mJPpXXoUYYrFvbN2FHvsPADHJKBEg
         W4SGGnbv6K+m9AkXVHcQg7Gm2PT+auziw7AkvmrC6X2Xm8mi/SX3Jtq9lKRrt9Aa/neK
         q9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776321262; x=1776926062;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7RYmBpi8DAAjfdBJ9S/wjNWLah959PM2SroLcRHKoFc=;
        b=V8oUGWf8p18nw0KJK795Hdv0T2KRU8ssacxUc8r7elEi1Bd3U8Y3kGt2OS5a/2TPXi
         ks5R/5sW0OMmA0mvoPso+AWIdesdQakskv7nKsz1jBIHjyWktD+9sSAEC1sk/SmetC7r
         BtiBW7IiXAk1ZfTXki3BtmuVD8JhoL5ZCyybcHv4mNMcacnhlytvlNdjM0dus0t2kLB8
         4RacM+1yxVjg8sFw1KAzJpDXLXa+rkmBO9PjkoYxqKqEBPKqWqcGlQaMEkI/jnSKtRqR
         vSJ0GkJfuIhoUNEo66q5yAEdqFgZnUaOMgdizYNT3065MpmbNGNjOtonjHB8v9R7gCS5
         NdiA==
X-Forwarded-Encrypted: i=1; AFNElJ9j9b23bLwa430mgee5+hM/f6jwrX6MHFxJvpSr+sNXxY+EV1YXWJefygLZraYBkV7201FzG5y0@lists.infradead.org
X-Gm-Message-State: AOJu0YyT7ogulI7YpgtAi2E5VZk39Bd3lu4ifG3iWzaOK7a326fJidTy
	4KTb03ubsTW3bQvNZfsw+rm07+3KcScCgw7or/ep3oaMVE/CtrLwtnuFWhD5DnYENNYT8C9YL75
	MeUDH6gbSRr+S3zyKVCGtmjPzP7F4/F0=
X-Gm-Gg: AeBDietU3JBReIZ1PPlgEPfkG4OGGfHoSJtn/vIgDxZYC8kKile7GqFXJyfJejQdpw6
	XRILU6dCmUfRMr1QBENUmF7ksoe36LPxlDsOtr1CM7NPvUq39ko/ZJI2cgA58O5Tl2QJjjP1+jQ
	Q+gdBws8ok87qRq76zuVj53IgAwWXLlcIGi0LMvsmJythxhG2EOqmFmX9M7YwZJBhuv0X1mZxrf
	kGRF3qHIAGn77E1ulWWVbZoljYO312ANeiMwO9OO6FOfFI7OstXldLGvoCr+0Djsn/zlCXCY+nN
	CjA4Pkj+IL/GCfe/U0G3xmtIenON9OGhIDu6pRS/JG4Lj1Dsx+2zP5/MOI19u38sInIbC6Qv8dF
	3
X-Received: by 2002:a53:bb86:0:b0:650:7a79:219 with SMTP id
 956f58d0204a3-65198aad325mr16661486d50.11.1776321262631; Wed, 15 Apr 2026
 23:34:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260415222425.1544638-1-tristmd@gmail.com> <20260415222425.1544638-3-tristmd@gmail.com>
In-Reply-To: <20260415222425.1544638-3-tristmd@gmail.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Thu, 16 Apr 2026 08:34:11 +0200
X-Gm-Features: AQROBzAWONLGXD2falmbEIGrHCNW_JP_y1RhkenRsVimwwENFZRAJONitowHj0Q
Message-ID: <CAOiHx=kpVH3jq_XuDKp==13yNx1AMcvVaRe4R2-bScOo5otMaA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] wifi: b43: fix OOB read from hardware key index in b43_rx()
To: Tristan Madani <tristmd@gmail.com>
Cc: Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, 
	b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_233423_719793_58958B00 
X-CRM114-Status: GOOD (  17.76  )
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
bkB0YWxlbmNlc2VjdXJpdHkuY29tPgo+Cj4gVGhlIGZpcm13YXJlLWNvbnRyb2xsZWQga2V5IGlu
ZGV4IGluIGI0M19yeCgpIGNhbiBleGNlZWQgdGhlIGRldi0+a2V5W10KPiBhcnJheSBzaXplICg1
OCBlbnRyaWVzKS4gVGhlIGV4aXN0aW5nIEI0M19XQVJOX09OIGlzIG5vbi1lbmZvcmNpbmcgaW4K
PiBwcm9kdWN0aW9uIGJ1aWxkcywgYWxsb3dpbmcgYW4gb3V0LW9mLWJvdW5kcyByZWFkIG9mIDEg
Ynl0ZSBmcm9tIHN0cnVjdAo+IGI0M19maXJtd2FyZS4gQSBub24temVybyBPT0IgdmFsdWUgY2F1
c2VzIFJYX0ZMQUdfREVDUllQVEVEIHRvIGJlCj4gaW5jb3JyZWN0bHkgc2V0IG9uIHVuLWRlY3J5
cHRlZCBmcmFtZXMuCj4KPiBSZXBsYWNlIHdpdGggYW4gZW5mb3JjaW5nIGNoZWNrIHRoYXQgc2tp
cHMgdGhlIGtleSBsb29rdXAgZm9yIGludmFsaWQKPiBpbmRpY2VzLgo+Cj4gRml4ZXM6IGU0ZDZi
Nzk1MTgxMiAoIltCNDNdOiBhZGQgbWFjODAyMTEtYmFzZWQgZHJpdmVyIGZvciBtb2Rlcm4gQkNN
NDN4eCBkZXZpY2VzIikKPiBTaWduZWQtb2ZmLWJ5OiBUcmlzdGFuIE1hZGFuaSA8dHJpc3RhbkB0
YWxlbmNlc2VjdXJpdHkuY29tPgo+IC0tLQo+IGRyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29t
L2I0My94bWl0LmMgfCA1ICsrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9h
ZGNvbS9iNDMveG1pdC5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL3htaXQu
Ywo+IGluZGV4IFhYWFhYWFguLlhYWFhYWFggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvd2ly
ZWxlc3MvYnJvYWRjb20vYjQzL3htaXQuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jy
b2FkY29tL2I0My94bWl0LmMKPiBAQCAtNzA0LDcgKzcwNCwxMCBAQCB2b2lkIGI0M19yeChzdHJ1
Y3QgYjQzX3dsZGV2ICpkZXYsIHN0cnVjdCBza19idWZmICpza2IsIGNvbnN0IHZvaWQgKl9yeGhk
cikKPiAgICAgICAgICAgICAgICAgICovCj4gICAgICAgICAgICAgICAgIGtleWlkeCA9IGI0M19r
aWR4X3RvX3JhdyhkZXYsIGtleWlkeCk7Cj4gLSAgICAgICAgICAgICAgIEI0M19XQVJOX09OKGtl
eWlkeCA+PSBBUlJBWV9TSVpFKGRldi0+a2V5KSk7Cj4gKyAgICAgICAgICAgICAgIGlmIChrZXlp
ZHggPj0gQVJSQVlfU0laRShkZXYtPmtleSkpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBi
NDNkYmcoZGV2LT53bCwgIlJYOiBpbnZhbGlkIGtleSBpbmRleCAldVxuIiwga2V5aWR4KTsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGRyb3A7Cj4gKyAgICAgICAgICAgICAgIH0KCkI0
M19XQVJOX09OKCkgcmV0dXJucyB0aGUgY29uZGl0aW9uJ3MgcmVzdWx0LCBzbyBpZiB5b3Uga2Vl
cCBpdCB5b3UKY2FuIHNob3J0ZW4gdGhpcyB0bwoKaWYgKEI0M19XQVJOX09OKGtleWlkeCA+PSBB
UlJBWV9TSVpFKGRldi0+a2V5KSkpCiAgICAgICAgZ290byBkcm9wOwoKQmVzdCByZWdhcmRzLApK
b25hcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQz
LWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
