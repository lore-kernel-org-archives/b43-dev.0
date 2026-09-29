Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33579CA5FA5
	for <b43-dev@archiver.kernel.org>; Tue, 29 Sep 2026 20:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9deY0AkBWSpFW51JtW2NLlFwsBHaFV+WEgVLyPhz7A0=; b=PBbT5K+TlQkZqp
	76kqSLdlkaiCwO4/Z2psnTDBlbp/1GsWmjfgd1MZ3KEZf4MaqFaqecCLa404LmLihf4s7gGDlS125
	L4eflgvc8rM1RxTbrbtLV8Yxiq2qkshwZ5QQ8d+qPsMauf/10Yl5dMJroP++RnicQkTO8uaIQMzwW
	r0EcxAND1+ndyegxMAzm1ASTS5sGNNJOoZQ4L80b93z0bnbuiOfJYlqCe/9R2L+s+YsMa+awFMssZ
	GLZmRYuOD9+YmeJ0jhxPy1tC7CYB/on5peN/OSUG7JjrujWPqwtqEU2qnFHeunlUlKACoFTVOM36X
	d/1ggWRqf+Di8DpkTv5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBeCi-00000004S6R-3kqg;
	Tue, 29 Sep 2026 20:13:32 +0000
Received: from smtpdh18-1.aruba.it ([62.149.155.132])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBeCf-00000004S62-1L20
	for b43-dev@lists.infradead.org;
	Tue, 29 Sep 2026 20:13:31 +0000
Received: from localhost ([79.19.61.120])
	by Aruba SMTP with ESMTPSA
	id BeCXxQzwGYPtrBeCaxG1ea; Tue, 29 Sep 2026 22:13:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1790712804; bh=/qrgO6k+8ZErwEGk1+4A8p5yGj0VnNeeV0nEjm0TzKc=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=BAGGDXQS0OU5GO05T5nrHDbquOict97NrDdk3NAtVk1H4KoFHnT5Pfji4PiYK8unI
	 G3SYGfjqkHirtGddSxtezJQuUOJ9fkUFnjuH+no+Uq/4JG86MIwVnaVKAHzZ1FDDg3
	 /gKeVADROG7U2RECw7myIX7Re3qlTTAWzJpoHLrdO+BJdEL6lqR5aNNB4lTPK7iWKh
	 r6K15Mk4jM7lPyI4Axq6Y6VSZXj7LQeixpDzrWlyHAHXxHpMABrEZ0NqlEKJqP+/NH
	 8A46+SxhnPt3qt8PdIkQY0rpXGCFswMAQ2Bv1Px0bxSgowryydDsMPnvpe9EggC/it
	 JBktmMf3Pv/Qw==
Date: Tue, 29 Sep 2026 22:13:21 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: BCM4360 AC-PHY support for b43 =?utf-8?Q?=E2=80=94?=
 reverse-engineered, seeking guidance on a clean path upstream
Message-ID: <20260929221321.000023a7@mythread.it>
In-Reply-To: <OG0AU4A6pMu865qvxpXQjF7NvEP6p2bwR_IZRaLxONsn_3Gdxm00PiOOaGuWbYy-AmxhLGRyz29ZPtUKzDwsKJk_UjTLAU1bctgCzdWlNlE=@proton.me>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me>
	<20260929081403.6076a6da@barney>
	<20260929093405.79d9f4ec@DELL-MOBILE03.ad.smart.it>
	<hCBGuqVmDlV3Y7f2t6L8DtnoyBNbC8KghHXm0fZCHLDLrtfaoYw9e0UcCCsQHHK1X4TBz0DuvSL4zmAx_dVS3q54BZ0JZXtjXXNnuSAFtyo=@proton.me>
	<20260929100544.343ce6d2@DELL-MOBILE03.ad.smart.it>
	<d6tVX7HBAW4Qnebx5Enj79edWG_LVmnRT0bjhcfv9bb1h0cewrTEDHK-VVoSy0NZcMzv3FB8OVEyTFNgA7rs_zaplEfiLXdwcCqhYDeonMo=@proton.me>
	<20260929105859.364ea71b@DELL-MOBILE03.ad.smart.it>
	<oYmDL00YinKfSdWHxkjmqPRGHWmeA_0SCR6tpafsgCvGyqYAEKuCt0kg7w_C47be5hm7IwFsxRnulMhvPFJEXQNDaDPgZNzMIQ0vfRKnOLw=@proton.me>
	<20260929113109.2c561844@DELL-MOBILE03.ad.smart.it>
	<OG0AU4A6pMu865qvxpXQjF7NvEP6p2bwR_IZRaLxONsn_3Gdxm00PiOOaGuWbYy-AmxhLGRyz29ZPtUKzDwsKJk_UjTLAU1bctgCzdWlNlE=@proton.me>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfPrvVn96Oxxw/iowOCKtpz4nOtvxaE8GW60fcCjb3UIsdvufJARl6Epxk7oiDt8LuHgB9fj/3/UCRjJorcXoxr41wHoStlAf6lxQL3yPxw4eW/SwGfku
 blS6OBHPMZ2UP2liOmHvsAvzZsX/YZ5zQppYRNbMMM94/z9o6fGCjtyDtLQYkxY/tIFMu8PeU2vKZI1wBQ0NcfB+qUHkiKQUBFLwtFgWfQL79wRq1suUDTVO
 icaI0QS8e2MYtP8a0MsYR/lU0HwLjyjHN3ekahs03dNe8ETjjev4WIrxi35xl5yk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_131329_975173_46E8F92A 
X-CRM114-Status: GOOD (  13.16  )
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

SWwgZ2lvcm5vIFR1ZSwgMjkgU2VwIDIwMjYgMTQ6NDU6NDEgKzAwMDAKImFuZHJlYXMud2VuZGxl
ZGVyIiA8YW5kcmVhcy53ZW5kbGVkZXJAcHJvdG9uLm1lPiBoYSBzY3JpdHRvOgoKPiA+IElmIHlv
dSBhcmUgdXNpbmcgYW4gb2xkZXIgdWNvZGUsIHByb2JhYmx5IG15IGRyaXZlciBkb24ndCB3b3Jr
IG9uCj4gPiB5b3VyIGRldmljZSBiZWNhdXNlIGl0IGludGVyYWN0IHdpdGggbmV3ZXIgdWNvZGUs
IGNhbiB5b3UgbG9vayBmb3IKPiA+IG1hYyBiZWhhdmlvdXIgZGlmZiBmcm9tIHlvdXJzPyBNYXli
ZSB3ZSBjYW4gbWVyZ2UgdGhlIGhhbmRsaW5nIHdpdGgKPiA+IHNvbWUgaWZzLCByZXBvIGhlcmU6
IGh0dHBzOi8vZ2l0aHViLmNvbS9hbGVmZXJyaS9iNDMtYWMtd2lwICAKPiAKPiAgSSdtIG9uIHVj
b2RlNDIuZncgKEQxMSBjb3JlIHJldiA0MiksIGZpcm13YXJlIDgzMi4xMjcgKDIwMTQtMDktMTkp
Owo+IG15IGRyaXZlciBjaGVja3MgU0hNIFVDT0RFUkVWIGFnYWluc3Qg4omkMHgxMjguIEkgZG9u
J3QgaGF2ZSBhIGNhcHR1cmVkCj4gcmV2IG51bWJlciB0byBjb21wYXJlIGFnYWluc3QgeW91cnMg
b2ZmLWhhbmQg4oCUIHdoYXQgdWNvZGUgcmV2L2RhdGUKPiBkb2VzIHlvdXIgZHJpdmVyIHRhcmdl
dD8gSSd2ZSBtYXBwZWQgYSBkZWNlbnQgY2h1bmsgb2YgdGhlIHJlYWwgTUFDCj4gZXZlbnQgbG9v
cCAoZGlzcGF0Y2hlciArIHdhaXQgcG9pbnRzKSBhbmQgdGhlIHdhdGNoZG9nIHRpY2sgKFNITQo+
IDB4MTU4LCB+MS4wMjRzKSBieSBkZWNvbXBpbGluZyB3bCwgc28gYSBkaWZmIGlzIGRvYWJsZSBp
ZiBJIGtub3cgd2hhdAo+IHRvIGRpZmYgYWdhaW5zdC4gR2FtZSBmb3IgbWVyZ2luZyB3aXRoICNp
ZmRlZnMgaWYgdGhlIGRpdmVyZ2VuY2UgaXMKPiBzbWFsbC4KCgppIGhhdmUgZmlybXdhcmUgOTM4
LjE1MDIsIE9jdG9iZXIgMjAxNywgYXMgdGhlICJ0YXJnZXQiLCBidXQgaSByYW4gYQpzaW1pbGFy
aXR5IHNjYW4gYmV0d2VlbiA5MzguMTUwMiB1Y29kZSBhbmQgOTM4LjEwMDA1IGFuZCB0aGVyZSBh
cmUgbm8KY2hhbmdlcyBleGNlcHQgZm9yIHRoZSB2ZXJzaW9uLiBUaGUgOTM4LjEyMDEgbGlrZXdp
c2UgaXMgYWxzbyB2ZXJ5CnNpbWlsYXIsIGFzIGZhciBhcyB0aGUgc2ltaWxhcml0eSB0b29sIGlz
IGNvbmNlcm5lZC4gV2hpbGUgdGhleSBhcmUgYWxsCnZlcnkgZGlmZmVyZW50IGZyb20gdGhlIDc4
NC4yIGZyb20gbXkgRCBMaW5rIGRzbCAzNTgwTCByb3V0ZXIuClNvIGF0IHRoaXMgcG9pbnQgdGhl
cmUgYXJlIDMgdmVyc2lvbiBvZiB1Y29kZSBmb3IgQUM6Ci0gNzg0LjIgaXMgdGhlIG9yaWdpbmFs
IG9uZSwgZGF0ZWQgMjAxMgotIDgzMi4xMjcgaXMgdGhlIGJyb2FkY29tIHN0YSBmb3IgbGludXgg
b25lCi0gOTM4LjF4eHggaXMgdGhlIG1vc3QgcmVjZW50IG9uZQoKWW91IHNlZW1zIHRvIGhhdmUg
ZGVjb2RlZCBmYWlybHkgd2VsbCB0aGUgcngvdHggcGF0aCwgaSBoYXZlIGluc3RlYWQKdW5kZXJz
dG9vZCBxdWl0ZSBhIGxvdCBvZiB0aGUgcGh5L3JhZGlvIGxldmVsLCB5b3UgY291bGQgdHJ5IHRv
CmluY29ycG9yYXRlIG15IHdvcmsgZm9yIHRoZSBwaHkgYW5kIHRlc3QgaWYgeW91IGl0IGNhbiBp
bXByb3ZlIHlvdXIgb3duCnJlc3VsdHMuIEkgd2lsbCB0YWtlIHlvdXIgZGVjb2Rpbmcgb2YgdGhl
IG1hYyBoYW5kbGluZyB0byB0ZXN0IDc4NC4yCmFuZCA5MzguMXh4eCB1Y29kZXMuIAoKSWYgeW91
IHNlbmQgbWUgeW91ciByYXcgYml0cyBvZiBzcm9tIGFuZCBvcHQgd2l0aCBhIGZ1bGwgdHJhY2Ug
ZnJvbSB3bAp1bmxvYWRlZCB0byB3bCBsb2FkZWQsIGJzcyB1cCBhbmQgcnVubmluZywgaSBjYW4g
dGVsbCB5b3UgaWYgdGhlcmUgYXJlCnN0aWxsIGJsaW5kc3BvdHMgaW4gbXkgcGh5IGNvZGUgb3Ig
aWYgeW91IHNob3VsZCBiZSBnb29kIHRvIGdvLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YjQzLWRldgo=
