Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BE11C433EF
	for <b43-dev@archiver.kernel.org>; Sun, 26 Jun 2022 11:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfMHXjM7zN5WPEvn3QoRkc+dGQLHmiG6016VEXoamZQ=; b=2CHKX1oklMfIJo
	geRBjcCeKgunsOy4uhev4a9dTgHVz7Q5FHEtUPx/8cFc/WMxj57luvRNGls//T7ljxxjqMOtWzRCL
	/LrX+xWOc3F+Q0N/s2eSlnYKue06YigxJHxqfswY7shYuIZbqs6uTf87Yo4CWkw/Ao5xShz6WpEOa
	SyETqLWAO2tCa8A0G6bOtoC52MxxBm6nNhyXbEt0E1E5zoznDAOryg7EFBl+H9iuvaKau6LwCRVrd
	tX3Aj8UJ16Tvw3JvVK9CBjykIaoD7reffUo9yRPDrPoQGADH4cXEkKMBa37c14TxhaqSUiOTAsiVY
	yTTOgSqrRhl6IQL/qzPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5Q3o-00BM0f-B7; Sun, 26 Jun 2022 11:04:12 +0000
Received: from mail.as201155.net ([185.84.6.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5Q3k-00BLyw-UE
	for b43-dev@lists.infradead.org; Sun, 26 Jun 2022 11:04:10 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:59818 helo=webmail.newmedia-net.de)
	by mail.as201155.net with esmtps  (TLS1) tls TLS_DHE_RSA_WITH_AES_256_CBC_SHA
	(Exim 4.95)
	(envelope-from <s.gottschall@newmedia-net.de>)
	id 1o5Q3a-0008RK-2p;
	Sun, 26 Jun 2022 13:03:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=newmedia-net.de; s=mikd;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID; bh=XnI9Q3by0BUUWFODoPrHJkxlZ4k9cfSKEiKhN+gic24=;
	b=U7TcO6sQLVTGcG5hcmhwRI50yvKgjH1IPdo5PZUKh09HU2GT0Z5nzS3qk3131WVWaw1x2L0IWENtAfuSDeDCMwr3rRE0TH7NDCmX+AhXxSuELRK8wEoYBl3GseFhDF1QWdM1Ie+xCkF+011vzW7cb5OqSqV6qU/OyGq0XrGegTk=;
Message-ID: <458bd8dd-29c2-8029-20f5-f746db57740a@newmedia-net.de>
Date: Sun, 26 Jun 2022 13:03:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.0
Subject: Re: [PATCH] net: wireless/broadcom: fix possible condition with no
 effect
To: Praghadeesh T K S <praghadeeshthevendria@gmail.com>,
 Kalle Valo <kvalo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: praghadeeshtks@zohomail.in, skhan@linuxfoundation.org
References: <20220625192902.30050-1-praghadeeshthevendria@gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
In-Reply-To: <20220625192902.30050-1-praghadeeshthevendria@gmail.com>
X-Received: from [81.201.155.134] (helo=[172.21.254.4])
	by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.72)
	(envelope-from <s.gottschall@newmedia-net.de>)
	id 1o5Q3a-0007e2-HQ; Sun, 26 Jun 2022 13:03:58 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_040409_252182_CE843B26 
X-CRM114-Status: GOOD (  11.87  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Am 25.06.2022 um 21:29 schrieb Praghadeesh T K S:
> Fix a coccinelle warning by removing condition with no possible effect
>
> Signed-off-by: Praghadeesh T K S <praghadeeshthevendria@gmail.com>
> ---
>   drivers/net/wireless/broadcom/b43/xmit.c | 7 +------
>   1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wireless/broadcom/b43/xmit.c
> index 7651b1b..667a74b 100644
> --- a/drivers/net/wireless/broadcom/b43/xmit.c
> +++ b/drivers/net/wireless/broadcom/b43/xmit.c
> @@ -169,12 +169,7 @@ static u16 b43_generate_tx_phy_ctl1(struct b43_wldev *dev, u8 bitrate)
>   	const struct b43_phy *phy = &dev->phy;
>   	const struct b43_tx_legacy_rate_phy_ctl_entry *e;
>   	u16 control = 0;
> -	u16 bw;
> -
> -	if (phy->type == B43_PHYTYPE_LP)
> -		bw = B43_TXH_PHY1_BW_20;
> -	else /* FIXME */
> -		bw = B43_TXH_PHY1_BW_20;
> +	u16 bw = B43_TXH_PHY1_BW_20;
Can you check if this is a possible register typo?
>   
>   	if (0) { /* FIXME: MIMO */
>   	} else if (b43_is_cck_rate(bitrate) && phy->type != B43_PHYTYPE_LP) {

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
