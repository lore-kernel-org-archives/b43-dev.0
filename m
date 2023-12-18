Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1184BC35274
	for <b43-dev@archiver.kernel.org>; Mon, 18 Dec 2023 13:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IHrwW/yAx9bwNYI7LZi40NGO4yKn0XjAtcUOg5bxbk=; b=b84LAHCumvdh8P
	Ha19mDt+wsnrKx9PJvjIoLC61LpQ5x0TZM/TixQIMTB+n4dcNE8pj2eWuC03IAiZdKYD3A9PwyIL4
	yPP5Sto7V7FxRG0ZDRXDXEwIWnlAeF8N6xv4USakfhrOpwIoOU077gBItYy+RCazbUmlp75qrU7XQ
	coz7tv5d/LxoO0bu2dt6dRaU6KACf2pAUHZgjJjsr1b7kXMz9Td/aCt+0tm4r5Wz2a9rxJT5Pnzbd
	KuM+zeIvcjm/mcNGgmNqjP5+xYd1BBHXtuwJiX7kfJ5K+EwAh4BbYjRYuEXNndYi+xr0NlGtxTJ4V
	6lBO6OPSsWb9KpJ9+igg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFDVi-00ApvD-0Y;
	Mon, 18 Dec 2023 13:18:18 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFDVc-00Apsz-2l
	for b43-dev@lists.infradead.org;
	Mon, 18 Dec 2023 13:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=CbJYyBnHSJO5HpsM1rF1MdLZBV/rqZTitFQxv3HNgg4=;
	t=1702905488; x=1704115088; b=WemV3SQqcA+Pl+KnlRtqjPmLiOp5moOVHiJX4xCxhH0yxAl
	m716wZikJhPRqcjnrzGav8yxz0WBWpTKhvibH13LcWmhwy3biB8YhHU+M3OCb2EyqCA9OKO5GYmj7
	cFvBEUy+hEXRjs0dEaBViII51KoM4KgfJVMarOZ/pSs2oB2VlyEnAY8IH8+IzTLv8JPPJZB/dc4Qr
	DvV14qbQf7n2wfupLF+NPgi39/jFhR1FrluOZGhYZ9hyf1GyqmS6sQPKDeAsqYeJVFVMYaXls6ZU8
	OJVyHi6i/ezsRKb4U5HEvLYpEhAJAYUCTxTv9ZYN+xKiZKQbsrIeiOTttjCSpt0A==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.97)
	(envelope-from <johannes@sipsolutions.net>)
	id 1rFDVR-0000000GE7Q-0yMv;
	Mon, 18 Dec 2023 14:18:01 +0100
Message-ID: <26207725d5025318b831dd5a5feca67248aaa221.camel@sipsolutions.net>
Subject: Re: [PATCH] bcma,ssb: simplify dependency handling for bcma and ssb
 drivers
From: Johannes Berg <johannes@sipsolutions.net>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kalle Valo
 <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, Arend van
 Spriel <aspriel@gmail.com>, Franky Lin <franky.lin@broadcom.com>, Hante
 Meuleman <hante.meuleman@broadcom.com>,  Michael Buesch <m@bues.ch>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
 b43-dev@lists.infradead.org, brcm80211-dev-list.pdl@broadcom.com, 
 SHA-cyfmac-dev-list@infineon.com
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 18 Dec 2023 14:17:59 +0100
In-Reply-To: <20231218115802.15859-1-lukas.bulwahn@gmail.com>
References: <20231218115802.15859-1-lukas.bulwahn@gmail.com>
User-Agent: Evolution 3.50.2 (3.50.2-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_051813_744977_E003A3DF 
X-CRM114-Status: GOOD (  10.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On Mon, 2023-12-18 at 12:58 +0100, Lukas Bulwahn wrote:

Dunno, I'm not super involved with this but ...

> +++ b/drivers/bcma/Kconfig
> @@ -1,12 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
> -config BCMA_POSSIBLE
> -	bool
> -	depends on HAS_IOMEM && HAS_DMA
> -	default y
> -
>  menuconfig BCMA
>  	tristate "Broadcom specific AMBA"
> -	depends on BCMA_POSSIBLE
> +	depends on HAS_IOMEM && HAS_DMA

[...]
>  config BRCMSMAC
>  	tristate "Broadcom IEEE802.11n PCIe SoftMAC WLAN driver"
> -	depends on MAC80211
> -	depends on BCMA_POSSIBLE
> +	depends on HAS_IOMEM && HAS_DMA && MAC80211
>  	select BCMA

to me it kind of seems more obvious for example in this case to say
"depend on BCMA_POSSIBLE and select BCMA" rather than open-coding the
BCMA dependencies both here and in BCMA? Now granted, they're rather
unlikely to _change_, but it still seems more obvious?

johannes

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
