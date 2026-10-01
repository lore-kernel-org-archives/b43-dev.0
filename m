Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25FB5CA5FB3
	for <b43-dev@archiver.kernel.org>; Thu,  1 Oct 2026 12:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JisWDGwUkI/a+eG3ODjl7LY5kHTEE0piFfNHdFmFzmM=; b=ohljhHjZODEOP2
	30w4wl0sZj1vqdsGE4sJJIi5k6RWRrbEuCiZn2xLn8lhlvM8lmrcVwkdLguPAAtX55FC1FhqFnSE7
	+1MdWDdrr3485QfAPlLb3jOeENOfGZ4rZIskOeyWitG/66m7V3Qxkl7/9Qh8xq2GkUfDW6g4mV1Kh
	IufO0lOsZDuF9w6MdGUMXf6zKaD4VAPOZVWA4/6A+7jbY5nhVC4zXNlIfntjE+PKMiNtAzzlj/xWj
	7ORfOo0LsFtdhk8wcSpoQLbpW9JcraUhxwSIsEvJm8drF7ps3gCftzW/smgjwK3Sja7OPxLxkGgqo
	8dj6QL96RutVo4VzAe1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCFb9-00000008ykL-1gEF;
	Thu, 01 Oct 2026 12:09:15 +0000
Received: from mail-24426.protonmail.ch ([109.224.244.26])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCFYC-00000008sBr-3Ex8
	for b43-dev@lists.infradead.org;
	Thu, 01 Oct 2026 12:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=pkwlngjezrc55cpgk2kl6o2nye.protonmail2; t=1790856369;
	x=1791115569; bh=yCNvhw0ESgJSzLHMeRdALP7byAYkz+hVEMOqeWIptR8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=WreAFIcl+KJXRYeohDn0Nh1PVT8Oxqi5sXz4X5uIEVz8lMsJ4W823KFavDCbwuPqd
	 BrM5CXUcgQM7ciiW+KMJmCQdbUETo4jxxiJSfRzXpsW1P4XMKZfoZ4/90o6kcPNvIf
	 rig11QZZIRWRBAMprKf2lPH+V150zMw/S3lDq7rVv13awIVjnhAQ+WO2OLAffOebQF
	 ziiLwNK8jdDefs67y7sJt4jiGuicFRbEPOuFry0ewxwDK3KhCQiPxhH1GUZfg5llms
	 Rp/9Q7DNzCdY/73xKMRzMn74Kj/Ulja6xpVcHGwtAS4S2gwOX3gBTPuHTJdTMqDjg5
	 zsiePUSxIyPMw==
Date: Thu, 01 Oct 2026 12:06:05 +0000
To: Alessio Ferri <alessio.ferri@mythread.it>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: =?utf-8?Q?AW:_Re:_BCM4360_AC-PHY_support_for_b43_=E2=80=94_reverse-engineered,_seeking_guidance_on_a_clean_path_upstream?=
Message-ID: <BGzX01_Xw0eP0rtUaqPn6IyCeg06zqkSQ8qKQoE38fN4Pzu_QmUjvB-pw5RuEdVn3hXqB3UAMap8WSTwRa8i6Zfg8XUmkhUEBavoBwppNmM=@proton.me>
In-Reply-To: <20261001080225.000011d9@mythread.it>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me> <d6tVX7HBAW4Qnebx5Enj79edWG_LVmnRT0bjhcfv9bb1h0cewrTEDHK-VVoSy0NZcMzv3FB8OVEyTFNgA7rs_zaplEfiLXdwcCqhYDeonMo=@proton.me> <20260929105859.364ea71b@DELL-MOBILE03.ad.smart.it> <oYmDL00YinKfSdWHxkjmqPRGHWmeA_0SCR6tpafsgCvGyqYAEKuCt0kg7w_C47be5hm7IwFsxRnulMhvPFJEXQNDaDPgZNzMIQ0vfRKnOLw=@proton.me> <20260929113109.2c561844@DELL-MOBILE03.ad.smart.it> <OG0AU4A6pMu865qvxpXQjF7NvEP6p2bwR_IZRaLxONsn_3Gdxm00PiOOaGuWbYy-AmxhLGRyz29ZPtUKzDwsKJk_UjTLAU1bctgCzdWlNlE=@proton.me> <20260929221321.000023a7@mythread.it> <e3-qmDjhrTX2hFaCfmyNZHcixISRArPiYm-26_-33mbTBdryG2n375GF-6ewiqoXzodKocGBPYO2l3kWmr2wlJ9X8GK9-F3lUqmhnDP_TXI=@proton.me> <20261001080225.000011d9@mythread.it>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: 21d4d098aa2330498780e262331bf02ad6f12de0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_050613_740539_62C21DFF 
X-CRM114-Status: UNSURE (   5.85  )
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

SGkgQWxlc3NpbywKClRoYW5rcyBmb3IgdGhlIDIuNCBHSHogdHJhY2Ugd29yay4gU2hvcnQgc3Rh
dHVzLCB0aGVuIHRoZSBxdWVzdGlvbnMuCgpTdGF0dXM6IGI0MyBub3cgcnVucyBhcyB0aGUgZGFp
bHkgY29ubmVjdGlvbiBvbiBteSBNYWNCb29rQWlyNiwxIChCQ000MzYwLCBjb3JlIHJldiA0Miwg
cmFkaW8gMjA2OSByZXYgNCkuIFRoZSAyLjQgR0h6IHN0YXRpb24gd29ya3Mgd2l0aCBsZWdhY3kg
cmF0ZXMgYW5kIGEgVFggc3RhdHVzIGZpeC4gVXBsb2FkIGlzIGFib3V0IDE4IE1iaXQvcyBhbmQg
ZG93bmxvYWQgYWJvdXQgMTAuCgpUaGUgb3BlbiBwcm9ibGVtOiBvbmx5IGFib3V0IDIxJSBvZiBm
cmVzaCBpbml0cyBjYW4gdHJhbnNtaXQuIFRoZSBzdGF0ZSBpcyBmaXhlZCBhdCBpbml0LiBJbiBh
IGJhZCBpbml0IHRoZSBQSFkgaG9sZHMgQ1JTfFRYRiBhbmQgZXZlcnkgVFggZW5kcyBpbiBhIFBI
WSB0cmFuc21pc3Npb24gZXJyb3IsIHNvIGF1dGggZnJhbWVzIGFyZSBuZXZlciBBQ0tlZC4gQSBy
ZWxvYWQgd3JhcHBlciByZXRyaWVzIHVudGlsIGFuIGluaXQgY29ubmVjdHMsIHdoaWNoIHRha2Vz
IDItNSB0cmllcy4gSSd2ZSBydWxlZCBvdXQgdGVtcGVyYXR1cmUsIERNQSwgQVNQTSwgUExMIGxv
Y2ssIGNsb2NrcywgVFggY29yZSBtYXNrLCBUWCBwb3dlciBjb250cm9sLCB0aGUgQ1JTIHRocmVz
aG9sZCBhbmQgdGhlIE1BQyBzZXR1cCBvcmRlci4KCkkndmUgdXBkYXRlZCB0aGUgY2xlYW4tcm9v
bSBzcGVjICjCpzEwIGNvdmVycyB0aGlzKSBhbmQgY2FuIHNlbmQgaXQgaWYgaXQncyB1c2VmdWwu
CgpRdWVzdGlvbnM6CgpEbyB5b3UgaGF2ZSBhIGJ1cy1sZXZlbCB0cmFjZSAod2wtbW1pby10cmFw
KSBvZiBhIDIuNCBHSHogY29sZCBpbml0IGFuZCBmaXJzdCB0cmFuc21pdCBvbiBhIEJDTTQzNjAg
KGFnY29tYm8gb3IgVEc3ODl2YWMpLCBpbmNsdWRpbmcgdGhlIGNhbGlicmF0aW9uIHBoYXNlPyBJ
J2QgZGlmZiBpdCBhZ2FpbnN0IG1pbmUgYXQgcmVnaXN0ZXIgbGV2ZWwuCkNhbiB5b3VyIGhhcm5l
c3Mgc2NvcmUgb3VyIGRyaXZlcidzIHJlZ2lzdGVyLXdyaXRlIHNlcXVlbmNlIGFnYWluc3QgeW91
ciBjYXB0dXJlcz8gVGhhdCB3b3VsZCBzaG93IHdoZXJlIHdlIGRpdmVyZ2Ugd2l0aG91dCBoYXJk
d2FyZSB0ZXN0cy4KRG9lcyBzdG9jayB3bCBldmVyIGdpdmUgeW91IGEgImJhZCBpbml0IiBvbiBh
bnkgb2YgeW91ciBib2FyZHMgKHRoZSBQSFkgY2Fubm90IHRyYW5zbWl0IHVudGlsIHRoZSBuZXh0
IHJlc2V0KT8gVGhhdCB3b3VsZCB0ZWxsIHVzIHdoZXRoZXIgdGhlIGNhdXNlIGlzIGluIG91ciBp
bml0IG9yIGluIHRoZSBjaGlwLgoKSWYgeW91ciAyLjQgR0h6IHN1cHBvcnQgbGFuZHMsIEknbGwg
dGVzdCBpdCBvbiB0aGlzIGxhcHRvcCByaWdodCBhd2F5LgoKVGhhbmtzLApBbmRyZWFzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxp
bmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
