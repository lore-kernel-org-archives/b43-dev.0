Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DE5ECAAD5
	for <b43-dev@archiver.kernel.org>; Fri,  2 Sep 2022 08:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Cc:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLIZQiB5qoakqyduaCiW3uyr/hN3oTTlgv9I64pejOk=; b=m2znTKlXU3bBCw
	+hWk+ty6r07xGnHb6LU08L6OO9x7YElJ2DudVysikw9BkwBhlm91th4A24Iwz7NIYtKkCT6bR5PJ8
	eWnklgxS7WffwAqIFD/TKkY5VoBwPNWoio5IikH/5TbTX/ykMIWp3BN9AF0lR8Lg6ndqTkghz6GmB
	F74MEbfhjJNLJNtf6zhUpZrIiDR+0JXgCNeT2oT9HJu993lgBB2+Jxo6izvP32VSq5L0q/y1aUmso
	xjUZrgvD0hcwffE/1ctc4hzd0emDGzWE4PgzIHc4FivCHgwfGRP48OyCBzGStRD4vtNIu2k9xnBAL
	7iHhmjj2/GdGc9XU8tpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2Ms-00275I-R4; Fri, 02 Sep 2022 08:49:38 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2L7-00256L-Ll; Fri, 02 Sep 2022 08:47:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3BA12B82A21;
	Fri,  2 Sep 2022 08:47:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 539C3C433D7;
	Fri,  2 Sep 2022 08:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662108467;
	bh=IDUrnjPz+nOb4YlnVezby/KSL+PqY47LilgBkDdd/dk=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=dO8ur7l9H8qbVFAgTGS6wDY3thHyTWcmKBMckSIwiX7FWRhEGPmy4QYn+xGsvSjm2
	 YxOBzy5Hi5ydgRVP2ZYZOuL1kvDZXfrTxD76uvAvnLwCY5n9vcouL8Q9leKA8xH7SU
	 5psK7leaKhJvdeIDMdCrT1vTpi1ckAxdt7nQn7rBkyUHnlE1OicQ88+cUs67y2TOrm
	 sfRR8tkDm6U29H4YX0Sc4lgAPfQumn1T9bptyOmG1lsDzRPgAwgaz8qGNHhreUN9U6
	 WwgHO4Kx3T9/dp5kq6XnTSj9ELIH/65p5XoXaHet2BZaMR+1cNAtCqSd/lkfx8pbYq
	 hxPDm+bguHkQg==
MIME-Version: 1.0
Subject: Re: [v2,2/3] wifi: move from strlcpy with unused retval to strscpy
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <20220830201457.7984-2-wsa+renesas@sang-engineering.com>
References: <20220830201457.7984-2-wsa+renesas@sang-engineering.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Christian Lamparter <chunkeey@googlemail.com>,
 Simon Kelley <simon@thekelleys.org.uk>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Arend van Spriel <aspriel@gmail.com>, Franky Lin <franky.lin@broadcom.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Ajay Singh <ajay.kathat@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>,
 Sergey Matyukevich <geomatsi@gmail.com>,
 Herton Ronaldo Krzesinski <herton@canonical.com>,
 Hin-Tak Leung <htl10@users.sourceforge.net>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, b43-dev@lists.infradead.org,
 brcm80211-dev-list.pdl@broadcom.com, SHA-cyfmac-dev-list@infineon.com,
 libertas-dev@lists.infradead.org
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <166210845943.24345.11339520901583548559.kvalo@kernel.org>
Date: Fri,  2 Sep 2022 08:47:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_014749_949414_A825C1F1 
X-CRM114-Status: GOOD (  10.61  )
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

Wolfram Sang <wsa+renesas@sang-engineering.com> wrote:

> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not used.
> Generated by a coccinelle script.
> 
> Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Patch applied to wireless-next.git, thanks.

bf99f11df4de wifi: move from strlcpy with unused retval to strscpy

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20220830201457.7984-2-wsa+renesas@sang-engineering.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
