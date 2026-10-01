Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7690ACA5FCF
	for <b43-dev@archiver.kernel.org>; Thu,  1 Oct 2026 17:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGTPD7xq6Zv/7yeNKXrrlr3LHfCmYUPbwEczT428GY4=; b=0ikhCOkm6lNejW
	Alvk2GjfVwE99xPJAV5hhnY1bZgCy/Mg4aRdDprvX5boMRVTlUi60HV3PK7Znkss/3C8bWUv9MA1N
	EMzYm4jRGyNWG3VYsjn6/SSrcprGUPhnrDukUPVj7ZeWajP63aE1yrD+4Yifj5qwqE5rgvnqMQGWG
	10ulua43kFXlMD8TNB6/pmEVnkiRNwRXYB0goVufCkWRY27CsuWKB0PV179JeaI6fmcqBVKaZquUB
	PCEzXPRPvoGd0/GoWDif17Hx3IxAZq0gw0/xu+YbCYnkcD7VpmoQaY35glyTdkba7xOC3AWaxzAs3
	PI5P6+0LPQ26m6hI+/og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCKih-00000009ss9-3ZHm;
	Thu, 01 Oct 2026 17:37:23 +0000
Received: from smtpcmd03116.aruba.it ([62.149.158.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCKic-00000009sqC-3rWA
	for b43-dev@lists.infradead.org;
	Thu, 01 Oct 2026 17:37:21 +0000
Received: from localhost ([79.19.61.120])
	by Aruba SMTP with ESMTPSA
	id CKiZxBr4VBqLeCKiaxxdEf; Thu, 01 Oct 2026 19:37:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1790876236; bh=nmGEjF4CTzLIqCj/vWD0XKLrcbQNRy56Bd3AV576V7Q=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=GyB6T08rG2om8OlcBFsIoIU7sr8UTX9GL5cc+rQPqp6XfZ3JB8ZJSl1yoskqKuh2j
	 auOgxJ9TGfXT0rQLOqDUJ5ddzRtue2FmgKXzSc0I51GQDgELFfMHTX+t7r8x/FVR6f
	 U47vA9gJjkikI6y6cQIAIGki9HGzHe0ukM0Q7xQogz5FsnLeeJnBO0/pZRpApBUb6O
	 L8WLNoJ0D5Byula68GTRshi1dF+GA8BlfbEYbJkAprRJ8XnO/jpmtuFrXuGzF68vBi
	 CNOLaEtzbDXHT41gs3OTm0fakLs4doLvMf3SON25VVzlaMDB8Muayt/wcp7fYK3LHp
	 OxlvASPF0ts0w==
Date: Thu, 1 Oct 2026 19:37:14 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: BCM4360 AC-PHY support for b43 =?utf-8?Q?=E2=80=94?=
 reverse-engineered, seeking guidance on a clean path upstream
Message-ID: <20261001193714.00005f36@mythread.it>
In-Reply-To: <BGzX01_Xw0eP0rtUaqPn6IyCeg06zqkSQ8qKQoE38fN4Pzu_QmUjvB-pw5RuEdVn3hXqB3UAMap8WSTwRa8i6Zfg8XUmkhUEBavoBwppNmM=@proton.me>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me>
	<d6tVX7HBAW4Qnebx5Enj79edWG_LVmnRT0bjhcfv9bb1h0cewrTEDHK-VVoSy0NZcMzv3FB8OVEyTFNgA7rs_zaplEfiLXdwcCqhYDeonMo=@proton.me>
	<20260929105859.364ea71b@DELL-MOBILE03.ad.smart.it>
	<oYmDL00YinKfSdWHxkjmqPRGHWmeA_0SCR6tpafsgCvGyqYAEKuCt0kg7w_C47be5hm7IwFsxRnulMhvPFJEXQNDaDPgZNzMIQ0vfRKnOLw=@proton.me>
	<20260929113109.2c561844@DELL-MOBILE03.ad.smart.it>
	<OG0AU4A6pMu865qvxpXQjF7NvEP6p2bwR_IZRaLxONsn_3Gdxm00PiOOaGuWbYy-AmxhLGRyz29ZPtUKzDwsKJk_UjTLAU1bctgCzdWlNlE=@proton.me>
	<20260929221321.000023a7@mythread.it>
	<e3-qmDjhrTX2hFaCfmyNZHcixISRArPiYm-26_-33mbTBdryG2n375GF-6ewiqoXzodKocGBPYO2l3kWmr2wlJ9X8GK9-F3lUqmhnDP_TXI=@proton.me>
	<20261001080225.000011d9@mythread.it>
	<BGzX01_Xw0eP0rtUaqPn6IyCeg06zqkSQ8qKQoE38fN4Pzu_QmUjvB-pw5RuEdVn3hXqB3UAMap8WSTwRa8i6Zfg8XUmkhUEBavoBwppNmM=@proton.me>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfKCXubytY/PO1dEMnnFYik3teCHW/iOAs6CvHs/14EHAeAyruyNNx795i6sRvSX8cchUyk36FsTy6akcU0/rI0D/lZLkI+UAn31n2Zmja5tw67vvMGsn
 7JIj6pe/9GPLec48mZfOp+uE6sWzmXCOiJyyxkEFs0iZBcYxxoyS4W8xmWQQj0VexA0tWSRNlVYlANbphjYSlxJ6Mrqgu3tK+aeZDrFfHEsYKRfGI8vW+xrn
 gfQtoMt5Et6hMCSARKN9FHkBDeEHGDzqaqEiqjJVtV9WiGFj7Z08CAtHDcXFpBVJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_103719_131982_C20CF55F 
X-CRM114-Status: GOOD (  14.33  )
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

Il giorno Thu, 01 Oct 2026 12:06:05 +0000
"andreas.wendleder" <andreas.wendleder@proton.me> ha scritto:

> Hi Alessio,
> =

> Thanks for the 2.4 GHz trace work. Short status, then the questions.
> =

> Status: b43 now runs as the daily connection on my MacBookAir6,1
> (BCM4360, core rev 42, radio 2069 rev 4). The 2.4 GHz station works
> with legacy rates and a TX status fix. Upload is about 18 Mbit/s and
> download about 10.
> =

> The open problem: only about 21% of fresh inits can transmit. The
> state is fixed at init. In a bad init the PHY holds CRS|TXF and every
> TX ends in a PHY transmission error, so auth frames are never ACKed.
> A reload wrapper retries until an init connects, which takes 2-5
> tries. I've ruled out temperature, DMA, ASPM, PLL lock, clocks, TX
> core mask, TX power control, the CRS threshold and the MAC setup
> order.
> =

> I've updated the clean-room spec (=A710 covers this) and can send it if
> it's useful.
> =

> Questions:
> =

> Do you have a bus-level trace (wl-mmio-trap) of a 2.4 GHz cold init
> and first transmit on a BCM4360 (agcombo or TG789vac), including the
> calibration phase? I'd diff it against mine at register level. Can
> your harness score our driver's register-write sequence against your
> captures? That would show where we diverge without hardware tests.
> Does stock wl ever give you a "bad init" on any of your boards (the
> PHY cannot transmit until the next reset)? That would tell us whether
> the cause is in our init or in the chip.
> =

> If your 2.4 GHz support lands, I'll test it on this laptop right away.
> =


Oh, i forgot, you have femctrl =3D 2, all of my boards have femctrl =3D 6,
so probably the calibration is wrong for your card, but now i try to
fix it. Thank again!

> Thanks,
> Andreas


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
