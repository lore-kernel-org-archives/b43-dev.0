Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84258CA5FD2
	for <b43-dev@archiver.kernel.org>; Thu,  1 Oct 2026 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpdGRtYX/nSXv13VN9+0GfVHkPjGnINemgOtm76reuI=; b=BQ4uCRz0xBiqCi
	St6C4iYpE0GjJWRQpaOq2KHsRjffTTOAnsFya/sOd7tZg++k+LGBy1YxoNif9WtjxncWpMadV6irq
	qeKXp8Le2HS6EOwsWp7nxjeO9x1HnEa0R7gb3aUaCx24Z3nv46Bril0oOJ7XjMZjukYMBwuUObflz
	63IAlpBU/I12sDOI+T/evmtXDpiLAv23Iq9sksq5y66wOobB2OwvqqSbrsdBnaSue6nk1DvSC1QRM
	g5N1eqAMMuAOiVpoVlSOcxi3L08W684+I2+/Obfd9sdluXEfio6bdVis4qOmhxxBoVF0p2C8ciNPt
	G7uLO0nh966FVPX8+Uww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCKKu-00000009pYU-0Ihw;
	Thu, 01 Oct 2026 17:12:48 +0000
Received: from smtpcmd03116.aruba.it ([62.149.158.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCKKn-00000009pWK-0yxf
	for b43-dev@lists.infradead.org;
	Thu, 01 Oct 2026 17:12:46 +0000
Received: from localhost ([79.19.61.120])
	by Aruba SMTP with ESMTPSA
	id CKKixBNw3BqLeCKKixxYFv; Thu, 01 Oct 2026 19:12:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1790874757; bh=1EIllXH8ZPZt1z/PvduSpDeCQmmfKDl/WSQqL0I3+/0=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=cGBf7OFtfXQ/CZ7zPww7Op42kz9g9jmepwu2AiAzUxMn9dt2ehZU2BG3Ra2aqlLQG
	 6fnyDlZ6kiczFf5PhvGIcSmbX87kJJKY0ifBXfpmHvnOxJw60B5ouvXmyXbNXQKFly
	 cIfmkUd7gwXqNKy6XcPs8KKPnIQKa3O0Z+U/GCrpv9/L2hehvBjEQS1qJjJXqRza6a
	 o+uCuxaABKMtF9ihZ0gCR13sJygFcRydg3ICslSmSPD87q9CfozVtXD12cmIk9s0iq
	 UhF0J01B/vhrcc6pZNOqtYY/9wZEPS8jf3vhKa8UHucWMn5ILXHVC+/4fMprzyGsZa
	 nBq2xaesXWKPw==
Date: Thu, 1 Oct 2026 19:12:34 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: BCM4360 AC-PHY support for b43 =?utf-8?Q?=E2=80=94?=
 reverse-engineered, seeking guidance on a clean path upstream
Message-ID: <20261001191234.00001cf5@mythread.it>
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
X-CMAE-Envelope: MS4xfCCgSFsVbt1DApD0f4FTXJ7rnuyr/1Kx6OlMGKy8MGVyd4V2XUxjIRTJnwaA7JqMgCjZNKpIEwKRRasC3TtaLSV2U7wE4twGTn+Zws3eE4qBfUWCVgBD
 RrFkNcH9RxwrKK1R0LX9FOuTwmEFb7fNQexF3pkA9i9K/OBV9xIv6OpYaHbQAKocLNpvaPgVZK6J8UU/tNMNd5Z6qKMiz1RQD4QL/0OU2HhhpU+Wx83MXT0w
 pO3XAnTpCAB5d87DyHy5i7K7eRpnK3sCU6m5CaQ0XpKfP1Tj/gamE9hGlOWE0O1K
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_101243_895655_E299D1A1 
X-CRM114-Status: GOOD (  16.45  )
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

Your phy initialization is still the verbatim copy taken from a run of
wl or you reconstructed the phy ops? Also, are you reading the srom
correctly as rev11? I have the bcma code to read it properly in my repo.

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

Only 5ghz for the 4360 with agcombo, one of the trace is configured
with wep auth, note that the 5Ghz only 4360 is a 3x3.

> =

> If your 2.4 GHz support lands, I'll test it on this laptop right away.

Thank you, i am trying to reconstruct the phy init for 2.4Ghz from your
trace

> =

> Thanks,
> Andreas


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
