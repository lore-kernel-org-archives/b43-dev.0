Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE27CA5FB3
	for <b43-dev@archiver.kernel.org>; Thu,  1 Oct 2026 06:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQEbn6veBkUDVpIEj1ua5osjBQRQqrxcuFBOLywLNho=; b=VGu32fuGBUQ1AO
	J5/2lyWV+rt8ZWxRhJwF3nmP8iHV7L5oytEztERuxN4V/L9Q+mNhHaLqfNf5tw6yA/wm1BbHAIQA+
	rgOo5zG0IXZxHQhUttD4Q1gzz//rybUxB9ZSx+EZmbN7oTM5AeIrd4+GAEHeKkgTvLcgHDRYnvxUc
	weH+WVNebaEc5TYFnlZoNHta/QHF2nCJvQDnZR4V00u6who3zQbL8ibHsdWzI39J+G0KYES1N1vj5
	Qu5iz+dvE0V08pKD8UHF3n8jU0Tzb97K//DmOOxXv8MWlf5gFn30Uay3Hg4+ohl7RcxP3pm8M3C40
	4UQOZiQ6PiDKnzsVFwmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC9sP-00000007rTA-1EFS;
	Thu, 01 Oct 2026 06:02:41 +0000
Received: from smtpweb147.aruba.it ([62.149.158.147])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC9sG-00000007rSc-3a9U
	for b43-dev@lists.infradead.org;
	Thu, 01 Oct 2026 06:02:34 +0000
Received: from localhost ([79.19.61.120])
	by Aruba SMTP with ESMTPSA
	id C9sAxg0TsvPyqC9sAxZQAO; Thu, 01 Oct 2026 08:02:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1790834546; bh=wWRU4eHK3PVax3ymH78GWBxhKixk/D0CiifSXcxtzt4=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=cfyOgne9p0woRxuXIU8VkSSIXRqwjF7YJ64u96dwCV5GhAAVzGJ3FT3G2fRoLAy5i
	 Tag1oHxb4nZFRNZLkoWdMB8qBwX9N3x+EUhXFlIuhJDas4lABUG5If0zO0Edlh/vqk
	 ANQS8/RHpG5KR20nBOuWhQl7NMvw4ooX5iqAL15JTllLXtjYQWkFaxUs1+/tlqgLW1
	 bkAb0n/d1rH3q+0R90kdr0TPh0e7CmrycdKapq1zU0y00LT0lB/oQvZwEVVZFMavqK
	 3dS15hT0hHDwgGpDT+J2UJppohzA6sNvRc4LoaQ5TEK2suPzUaCzBz6C8MaX+c7YLa
	 2lVzdh1vmcNPw==
Date: Thu, 1 Oct 2026 08:02:25 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: BCM4360 AC-PHY support for b43 =?utf-8?Q?=E2=80=94?=
 reverse-engineered, seeking guidance on a clean path upstream
Message-ID: <20261001080225.000011d9@mythread.it>
In-Reply-To: <e3-qmDjhrTX2hFaCfmyNZHcixISRArPiYm-26_-33mbTBdryG2n375GF-6ewiqoXzodKocGBPYO2l3kWmr2wlJ9X8GK9-F3lUqmhnDP_TXI=@proton.me>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me>
	<hCBGuqVmDlV3Y7f2t6L8DtnoyBNbC8KghHXm0fZCHLDLrtfaoYw9e0UcCCsQHHK1X4TBz0DuvSL4zmAx_dVS3q54BZ0JZXtjXXNnuSAFtyo=@proton.me>
	<20260929100544.343ce6d2@DELL-MOBILE03.ad.smart.it>
	<d6tVX7HBAW4Qnebx5Enj79edWG_LVmnRT0bjhcfv9bb1h0cewrTEDHK-VVoSy0NZcMzv3FB8OVEyTFNgA7rs_zaplEfiLXdwcCqhYDeonMo=@proton.me>
	<20260929105859.364ea71b@DELL-MOBILE03.ad.smart.it>
	<oYmDL00YinKfSdWHxkjmqPRGHWmeA_0SCR6tpafsgCvGyqYAEKuCt0kg7w_C47be5hm7IwFsxRnulMhvPFJEXQNDaDPgZNzMIQ0vfRKnOLw=@proton.me>
	<20260929113109.2c561844@DELL-MOBILE03.ad.smart.it>
	<OG0AU4A6pMu865qvxpXQjF7NvEP6p2bwR_IZRaLxONsn_3Gdxm00PiOOaGuWbYy-AmxhLGRyz29ZPtUKzDwsKJk_UjTLAU1bctgCzdWlNlE=@proton.me>
	<20260929221321.000023a7@mythread.it>
	<e3-qmDjhrTX2hFaCfmyNZHcixISRArPiYm-26_-33mbTBdryG2n375GF-6ewiqoXzodKocGBPYO2l3kWmr2wlJ9X8GK9-F3lUqmhnDP_TXI=@proton.me>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfPSng8mybR4KRCqQYhZPZMnjWfHJSW8maGmmOhqWAEZ7MTqLoruKSM9mInKc4LdL3je/nXIaFMsdg/XD+eWyopcAOJfC+IJyP0jYFcqUgc0+YEQGEP2j
 PcXO2Gkqf1DaNvTQEd+l6y8z4hrIDSXr1zsgAfu6fSwgLuNoPDPRFu+k7f/1J/tX7dUMNK8oEDi3VI7yzf9FXYzXYPrcT3zEHCJCLTmlVA03be+vG4bAYZY+
 6xtG8tGUGTUm7LvJ5s/Toi0iV3PsLQ4z52XDSSBcso1pA+9xc/7WZCD2tRXCnHpK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_230233_380721_8B7B52A5 
X-CRM114-Status: GOOD (  18.84  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Il giorno Thu, 01 Oct 2026 01:31:24 +0000
"andreas.wendleder" <andreas.wendleder@proton.me> ha scritto:

> Hi Alessio,
> =

> Thanks again, and sorry for the delay. I've gone through your repo
> and am working with it. Attached are the SROM dump and the wl traces
> you asked for, then one concrete question.
> =

> Attached (see README.txt inside for formats and conditions):
>  - the raw SROM words of this MacBookAir6,1 (BCM4360, core rev 42,
> radio 2069 rev=A04), a rev 11 image, plus the ChipCommon/PMU state with
> our port loaded;
>  - four wl 6.30.223.271 traces, from "unloaded" to BSS up on 2.4 GHz
> and on 5 GHz, plus one with traffic, and an ifdown/ifup;
>  - MAC register snapshots under wl and under our port.
> =

> I have no OTP dump. Our port never reads it and I can't reload wl
> here without a reboot. If you can tell me the ChipCommon OTP read
> sequence for this chip, I'll dump it.

Thank you!

> =

> State. Our port associates and passes traffic on 2.4 GHz (ch11), but
> only about 20-30% of fresh inits come up clean. In the other cases
> the PHY holds carrier sense (phydebug 0x5 =3D CRS|TXF) with a TX frame
> posted, MAC suspend failed follows, and the ucode sits in NAP (PSM PC
> 0x000f, the end of its scheduler loop). It wakes only about every
> 1-2.5 s. A clean init stays clean for a long time.
> =

> Already tried from your repo, all with no effect on that rate: TX
> FIFO geometry (we already match 0019), object-address read-back
> (0020), MAC setup before PHY plus TSF fraction 0x6614b, the
> PSM_PHY_HDR/FGC pairing, PMU (PLL words already 0x0c31/0x100e,
> max_res_mask forced to 0x7ff), and the CRS threshold forced to 68 and
> 120. A post-init register snapshot of 50 inits shows no static PHY or
> radio difference between good and bad ones, so it looks like a
> runtime wake problem, not an init-state one.
> =

> Question. In your bus captures, what does the stock driver do to keep
> or wake the ucode when it posts TX frames, beyond the single DMA
> pointer write? In our wl trace that write is the only MMIO at a TX
> post, and MACCTL goes 0x44020403 during suspend/enable windows and
> back to 0x40020403 between them. Do you see anything similar, or
> another register (IHR event mask at 0x40, an AWAKE/HWPS rule, a
> periodic wake) that we don't?

WL program the awake bit during every mac suspension to prevent the
ucode from entering sleep. B43 don't do it by default, you have to
patch it.

> =

> Also, if you can share it, the MacBookAir6,1 bus capture of wl 6.30
> from your README would be very useful, since it's our exact hardware.

That is one of your early trace, in fact, i picked up when you wrote to
b43. If you want to see something new, you are better off with T5E
trace, it is the same 6.30 driver on different hardware

> Your PHY code is 5 GHz only so far. Is 2.4 GHz planned?

Yes, since you are giving me a complete 2.4Ghz trace, now i can look on
it. Most logic should be already there, but some fixes maybe be
needed.

> =

> Thanks,
> Andreas


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
