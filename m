Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E07ECC6B38
	for <b43-dev@archiver.kernel.org>; Thu, 15 Oct 2026 21:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHtR8YMPwzGdtS9cg/1AYQLpT7nP9nCLdoH1rdkuB5Y=; b=HlXSdIVc0eQDgr
	5nSK8LXljKm8xnrWNxkCvNdvoALNAH6DrglVYSdMQDagCCfXTEBYwgNSoNTBHwAqtX7NYCxuEcQYg
	fSBjaZfB1ZhJJIB3EE+Vd7FMpG+FKxhYldyvKNaVeh8y0QY+QFTydT96wQ53Tz/DzQnvEB+rT929X
	PiSqaSzAkwhTf6Z1MUN5uTWW4R5tifOpjn1J/6ZFo2eol3C0dPgWTh8xKD+sNinCZBbOg8qHhzTn3
	RiHUVmSKrDRqCK98Cd6U9eh48jFovEFEWpVr2FrwHB9rF8RdXX0LWxS5WoPX3ZvGQsI7WC32MvXT2
	229U3/kh1S+eYOql7SjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHTLl-00000001Sfd-2aeB;
	Thu, 15 Oct 2026 21:50:57 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHTLh-00000001SfC-3ZqY
	for b43-dev@lists.infradead.org;
	Thu, 15 Oct 2026 21:50:55 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-6b1a86c0316so7428640a12.0
        for <b43-dev@lists.infradead.org>; Thu, 15 Oct 2026 14:50:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792101052; cv=none;
        d=google.com; s=arc-20260327;
        b=B2c6e5SNfLySa/U0GtCZqM48jlTBH38tk1yUUHl7I/RRPy997Lr3KIN6vvWIarKZyH
         Gon5iKD4iiXMDhgCiEIBm/4Mkj3AQmHooOMjkVyceuOo56PZXnQ1FGhBBp9RZ4IAg/Mk
         /zOq3h75QuodprHiY3jPBjEA4aNqHqOQ2JToLPY0VTZcQoIQL+PdwZiKz2Aq7qFwDfrB
         Bip7y5PIsT8Ho5wx0gUh9LV6Rz7UBjAodAJWjx56eSN7tWiLJNsSouAb2ZjAEtgSUbEH
         D7b/A95EeNTHsLMWoLC4rBjjmZRfvfUlFqqUwQLO+OQjMbhTxY+J2xHspKQRwkpzVomi
         W2lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=z3l/JvkYfEQXOwbbGLlrfyh3SUMFiLYxwMbPJvYgs3E=;
        fh=TtN0u13N4ECrdOoVhTA3VUbUXkMZXRC2s/kA8YnUPyk=;
        b=Tg6hhDGONmab8EXL6IYqpL79H+QcIMVHXU0O14AtZkxJeww91EGqIbIefzX3tFUfOx
         jSxWbl0UhpNyihCS5sPiI10acjWKYoqGOazr1YyJ/Hz/ZhHubHi+CaK8vhL9wlQpuBsR
         698Oqkgegk5olCs1eunBCoZ5f7tjiISeIMW51l6qKcXr3nQ3xYYe6u2bFdiCfAEE9Foa
         kxP4P9cyWXsbGc+48xF4FCplqt1yWi28HixvtfOBuskoV9G8BdQvtC+/PXe9dFzITYcF
         myBXJMmfd3Fc9AEs1cX6yhvv9O0o3sME9HiOyuelpIKo1xRw+T4r8gtMnTnT9LkJz9zI
         zvNg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792101052; x=1792705852; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=z3l/JvkYfEQXOwbbGLlrfyh3SUMFiLYxwMbPJvYgs3E=;
        b=nVDnDKYdzpCBKsU6Fkcnzlf0+fPCRV7E5L7TL9oXtJi+aW0JB2QQHXxK8xS+LPJDN2
         dMs+IwhKJW3J4tyWx1dszJzkGKH/TCyiMFvmIkG+wk+zIctX8lJi5pusqU0yDVG+FQQp
         PcM5SYILRRmRGqkSL7TxPf6rh3T0KD0+P57FbVA8uSdPlCNwcEvvIBqDJSEGYusxqE9L
         LDaFtepysuUpMfT6dY8GC2CnQ9ctYeY3aVPWy0JeFILl0Gm7ZYEkYY7SnFqQeObcZLO0
         QJgv53F2ahaRFXmTEmnS0dmxl2uAkXW+8cIbbuG0jyXFv+A+7tOPRO1Icm0XYJ76SLSY
         kUMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792101052; x=1792705852;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z3l/JvkYfEQXOwbbGLlrfyh3SUMFiLYxwMbPJvYgs3E=;
        b=fwFzo5/I3gayVMBiJ4nvxyE+S/EgCZKrLmK7z6E6lY4REcS68UBiSMO+gs0gL7gnpx
         chiahx9uyDJ7zbg+XrwBVWCy321lTVqPxTy2YtRhmM8Txnaq2zDC1lhkBKRnjwoCASAr
         Gbay4kKGdlJN9wqLcGN9Ot18dx8x+D+TWALyAN+T8TvCh5haf5EMuuXpoWGFgu9Q3Ggl
         rGLcC74QGjwSJMnREGLUOab3oW4D377hmXNztBi+jj5hqNyAoMcsenO195UpsEz1nlXq
         tCwbM+0cLzoccA52MNE5NvCLDs+F/bK2BBprn3Td21biETOy9B50Q6m/A1ZGCCqtSF0u
         Zbdg==
X-Forwarded-Encrypted: i=1; AKwUvBzsJkHA0wrl0pnSlfTAjYLY9nZXetakiyxgbjwEiXZSY887aIVzl8lQkLXy/8v3gltVT1VZnjkA@lists.infradead.org
X-Gm-Message-State: AFq9FYJx2PROivu1sAWeRAA8CWCiqrAQK/jErLQfe/BuWApxOLefTvAz
	gfW+gbomNW++wqHLYZScuXQ90/jvyGBs0ipzFPoci90nM8+nGDEghCgf5hmZsMW9wo0dgwRHyqp
	kKhpKQiS055eXH0uXJQT9Q8Rmi/XEQj0=
X-Gm-Gg: AYBFou2ncFEx26HYY93CgFJssivLYEPRZFQ6u4/O3XnwRY0EeMYzrEtAdp7wtpDxQl3
	ELs15I9lJbkSeJmJYdM8Pfmf2TUrSWS1gNotiMvG0PphftBoHn+vPPvXDsvyPWurqzB0nYuFEDm
	n4x9ko/dMZjnEDlKVcNm2N/2wV4ZIGbp6VMqDV4BXUeCQIFSs1gO7uOZe2GAdrPkIqedYfdJgPE
	KOe/EeXPEAocrKK/ew74HbZuaYO/uBOg+iXwtLgFVb3M2q5pT/xpH7dJHJhdzoD2pXazzX/Ov9p
	qpDz7mM/c6phs/5pIIDozCLd85OjjpFqqzEtuwDUIg9XKIvzI4/wPfu5QDgY5wa4pVkkL4jQnO2
	bjbMzyGs1HgGcVQOkQoO8LISDy27rS8bNW6GHVkzxlFg0ZBbua467BhSlbgnxFk2cNad8dl7apo
	FMxW4aOGSiMlaAReX+GdnuDWEL2p8LA16ZxORKtEi0RqQJyruQtKnhYZm+q3++YFDE9Q4Gpaan8
	zb4
X-Received: by 2002:a05:6402:46c4:b0:6b1:b16d:acaf with SMTP id
 4fb4d7f45d1cf-6b1b16dae69mr11532575a12.42.1792101051502; Thu, 15 Oct 2026
 14:50:51 -0700 (PDT)
MIME-Version: 1.0
References: <20261015175928.3558057-1-rosenp@gmail.com> <20261015221110.000078b3@mythread.it>
In-Reply-To: <20261015221110.000078b3@mythread.it>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 15 Oct 2026 14:50:40 -0700
X-Gm-Features: AclHuK8liOXgbxfojrksuCyNWz7nnSVwi1wLqz12WnOn5wyiTfwv03gx2MILWks
Message-ID: <CAKxU2N_J0Rkj1k+EutCRZGui0YKMAxeq5KhOH94e8_x0apY1Ng@mail.gmail.com>
Subject: Re: [PATCH wireless] wifi: b43: back off the N-PHY TX power per rate
To: Alessio Ferri <alessio.ferri@mythread.it>
Cc: linux-kernel@vger.kernel.org, 
	"open list:B43 WIRELESS DRIVER" <linux-wireless@vger.kernel.org>, 
	"John W. Linville" <linville@tuxdriver.com>, 
	"open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_145053_920555_57307EE3 
X-CRM114-Status: GOOD (  31.82  )
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

T24gVGh1LCBPY3QgMTUsIDIwMjYgYXQgMToxMeKAr1BNIEFsZXNzaW8gRmVycmkgPGFsZXNzaW8u
ZmVycmlAbXl0aHJlYWQuaXQ+IHdyb3RlOgo+Cj4gSWwgZ2lvcm5vIFRodSwgMTUgT2N0IDIwMjYg
MTA6NTk6MjggLTA3MDAKPiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4gaGEgc2NyaXR0
bzoKPgo+ID4gT24gTi1QSFkgcmV2IDMrIHRoZSBoYXJkd2FyZSBUWCBwb3dlciBjb250cm9sIGFp
bXMgYXQgdGhlIGhpZ2hlc3QKPiA+IHBlci1yYXRlIHRhcmdldCwgYW5kIGFuIGFkanVzdGVkIHBv
d2VyIHRhYmxlIGJhY2tzIGVhY2ggcmF0ZSBncm91cCBvZmYKPiA+IGZyb20gaXQuIGI0MyBmaWxs
cyB0aGF0IHRhYmxlIGZyb20gbnBoeS0+dHhfcG93ZXJfb2Zmc2V0W10sIGJ1dCBuZXZlcgo+ID4g
c2V0cyB0aGUgb2Zmc2V0cywgc28gdGhleSBzdGF5IHplcm8gYW5kIGV2ZXJ5IHJhdGUgaXMgc2Vu
dCBhdCB0aGUKPiA+IHBvd2VyIGFsbG93ZWQgZm9yIENDSy4KPiA+Cj4gPiBUaGUgU1BST00gcG93
ZXIgb2Zmc2V0cyBleGlzdCB0byBhdm9pZCB0aGlzOiBvbiBib2FyZHMgd2l0aCBleHRlcm5hbAo+
ID4gUEFzLCBPRkRNIGFuZCBNQ1MgcmF0ZXMgaGF2ZSB0byBiZSBzZW50IGEgZmV3IGRCIGxvd2Vy
IHRoYW4gQ0NLIHRvCj4gPiBrZWVwIHRoZSBQQSBsaW5lYXIuIFNlbnQgYXQgZnVsbCBwb3dlciwg
MTYtUUFNIGFuZCA2NC1RQU0gZnJhbWVzIGFyZQo+ID4gdG9vIGRpc3RvcnRlZCB0byBkZWNvZGUu
IE9uIGFuIEFTVVMgUlQtTjE2IChCQ000NzE4LCBOLVBIWSByZXYgNSwKPiA+IHJhZGlvIDIwNTYs
IG9mZG0yZ3BvIDB4NjY2NjY2NjYpIHRoZSByb3V0ZXIgY291bGQgb25seSBzZW5kIGF0IDYtMTgK
PiA+IE1iaXQvcyBhbmQgTUNTIDAtMiwgZXZlbiBhdCAtNTAgZEJtLCBhbmQgMjQgTWJpdC9zIGFu
ZCB1cCBvciBNQ1MgMyBhbmQKPiA+IHVwIGRlbGl2ZXJlZCBub3RoaW5nLgo+ID4KPiA+IFNldCB0
aGUgb2Zmc2V0cyBmcm9tIHRoZSBwZXItcmF0ZSB0YXJnZXRzIGI0MyBhbHJlYWR5IGNvbXB1dGVz
IGZyb20KPiA+IHRoZSBTUFJPTSwgYXMgYnJjbXNtYWMgZG9lcywgYmVmb3JlIHRoZSB0YWJsZSBp
cyBidWlsdC4KPiA+Cj4gPiBXaXRoIHRoaXMsIHRoZSBSVC1OMTYgc2VuZHMgYXQgNTQgTWJpdC9z
LCBhbmQgYXQgTUNTIDcgd2l0aCBIVAo+ID4gZW5hYmxlZCwgYW5kIFRDUCBmcm9tIHRoZSByb3V0
ZXIgdG8gYSBjbGllbnQgZ29lcyBmcm9tIDkgdG8gMTctMTgKPiA+IE1iaXQvcy4KPiA+Cj4gPiBG
aXhlczogODYxNWViMjg3MGYxICgiYjQzOiBOLVBIWTogc3VwcG9ydCBzZXR0aW5nIGN1c3RvbSBU
WCBwb3dlciIpCj4gPiBBc3Npc3RlZC1ieTogTExNCj4gPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQ
ZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbmV0L3dpcmVsZXNz
L2Jyb2FkY29tL2I0My9waHlfbi5jIHwgMTEgKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMTEgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJl
bGVzcy9icm9hZGNvbS9iNDMvcGh5X24uYwo+ID4gYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9h
ZGNvbS9iNDMvcGh5X24uYyBpbmRleAo+ID4gMjIzNTliZDlkYjQ3Li5jOWIyYjc0OTY5ODMgMTAw
NjQ0IC0tLQo+ID4gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMvcGh5X24uYyAr
KysKPiA+IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL3BoeV9uLmMgQEAgLTU4
MzQsNiArNTgzNCw3IEBACj4gPiBzdGF0aWMgZW51bSBiNDNfdHhwd3JfcmVzdWx0IGI0M19ucGh5
X29wX3JlY2FsY190eHBvd2VyKHN0cnVjdAo+ID4gYjQzX3dsZGV2ICpkZXYsIHN0cnVjdCBpZWVl
ODAyMTFfY2hhbm5lbCAqY2hhbm5lbCA9Cj4gPiBkZXYtPndsLT5ody0+Y29uZi5jaGFuZGVmLmNo
YW47IHN0cnVjdCBiNDNfcHByICpwcHIgPQo+ID4gJm5waHktPnR4X3B3cl9tYXhfcHByOyB1OCBt
YXg7IC8qIHFkQm0gKi8KPiA+ICsgICAgIGludCBpOwo+ID4KPiA+ICAgICAgIGlmIChucGh5LT50
eF9wd3JfbGFzdF9yZWNhbGNfZnJlcSA9PSBjaGFubmVsLT5jZW50ZXJfZnJlcSAmJgo+ID4gICAg
ICAgICAgIG5waHktPnR4X3B3cl9sYXN0X3JlY2FsY19saW1pdCA9PSBwaHktPmRlc2lyZWRfdHhw
b3dlcikKPiA+IEBAIC01ODY4LDYgKzU4NjksMTYgQEAgc3RhdGljIGVudW0gYjQzX3R4cHdyX3Jl
c3VsdAo+ID4gYjQzX25waHlfb3BfcmVjYWxjX3R4cG93ZXIoc3RydWN0IGI0M193bGRldiAqZGV2
LCAvKiBNYWtlIHN1cmUgd2UKPiA+IGRpZG4ndCBnbyB0b28gbG93ICovIGI0M19wcHJfYXBwbHlf
bWluKGRldiwgcHByLCBJTlRfVE9fUTUyKDgpKTsKPiA+Cj4gPiArICAgICAvKgo+ID4gKyAgICAg
ICogVGhlIGhhcmR3YXJlIHBvd2VyIGNvbnRyb2wgYWltcyBhdCB0aGUgaGlnaGVzdCBwZXItcmF0
ZQo+ID4gdGFyZ2V0Lgo+ID4gKyAgICAgICogVGhlIGFkanVzdGVkIHBvd2VyIHRhYmxlIGJhY2tz
IG90aGVyIHJhdGVzIG9mZiBmcm9tIGl0LAo+ID4gc28gdGhhdAo+ID4gKyAgICAgICogZS5nLiA2
NC1RQU0gaXNuJ3Qgc2VudCBhdCB0aGUgcG93ZXIgYWxsb3dlZCBmb3IgQ0NLLgo+ID4gKyAgICAg
ICovCj4gPiArICAgICBtYXggPSBiNDNfcHByX2dldF9tYXgoZGV2LCBwcHIpOwo+ID4gKyAgICAg
bWVtc2V0KG5waHktPnR4X3Bvd2VyX29mZnNldCwgMCwKPiA+IHNpemVvZihucGh5LT50eF9wb3dl
cl9vZmZzZXQpKTsKPiA+ICsgICAgIGZvciAoaSA9IDA7IGkgPCBCNDNfUFBSX1JBVEVTX05VTTsg
aSsrKQo+ID4gKyAgICAgICAgICAgICBucGh5LT50eF9wb3dlcl9vZmZzZXRbaV0gPSBtYXggLSBw
cHItPl9fYWxsX3JhdGVzW2ldOwo+ID4gKwo+ID4gICAgICAgLyogQXBwbHkgKi8KPiA+ICAgICAg
IGI0M19tYWNfc3VzcGVuZChkZXYpOwo+ID4gICAgICAgYjQzX25waHlfdHhfcG93ZXJfY3RsX3Nl
dHVwKGRldik7Cj4KPiBJJ20gbm90IHRoZSBtYWludGFpbmVyLCBhbmQgaSBhbHNvIGhhdmUgdGhl
IHNhbWUgZXhhY3QgcGF0Y2ggaW4gbXkgcmVwbwo+IGh0dHBzOi8vZ2l0aHViLmNvbS9hbGVmZXJy
aS9iNDMtNjM2Mi13aXAvdHJlZS9tYWluL3BhdGNoZXMvbWFpbmxpbmUsIHNvCj4gaSdtIGFsbCBm
b3IgaXQsIGJ1dCBpc24ndCB0aGUgcHByIGN1cnJlbnRseSBwb3B1bGF0ZWQgd2l0aCAyR2h6IHNw
cm9tCj4gcGFyYW1zIGZvciBhbGwgYmFuZHM/ClRoaXMgcGF0Y2ggY29tZXMgZnJvbSB3b3JrIG9u
IGFuIFJULU4xNiwgd2hpY2ggaXMgMmdoeiBvbmx5LCBoZW5jZSB3aHkKNWdoeiBpcyBub3QgdG91
Y2hlZC4gSSBzdWJtaXR0ZWQgdGhpcyBzaW5jZSB0aGVyZSdzIGEgRml4ZXM6IHRhZwp0aGF0J3Mg
YXBwcm9wcmlhdGUgaGVyZS4gVGhlIGFjdHVhbCBmaXhlcyBJJ2xsIHN1Ym1pdCBpbiB0aGUgbmV4
dAptZXJnZSB3aW5kb3cuIEl0J3MgcXVpdGUgbGF0ZSBpbiB0aGUgY3ljbGUuCgpUaGVyZSdzIG5v
IG1haW50YWluZXIgaGVyZS4gSXQncyBhbiBvcnBoYW5lZCBkcml2ZXIuIEkgd2FudGVkIHRvIGZv
Y3VzCm9uIGJyY21zbWFjIGJ1dCB0aGF0IGRyaXZlciBpcyByZWFsbHkgc2xvdy4KPgo+IEFsZXNz
aW8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1k
ZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
