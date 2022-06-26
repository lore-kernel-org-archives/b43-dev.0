Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65FE9C433EF
	for <b43-dev@archiver.kernel.org>; Sun, 26 Jun 2022 11:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWiGto0yi0OtCHXv2chMSkqLheLo3B1FMH4inY2oUjk=; b=BU/TPSbf5Rw9de
	HwO4J9RLB8bfcJJ1sHt3OpqlqUqNtaJ/68ZgTrK/mtHn+etKbwPRphBeu3F3nCQklfUtPMb8n6ZEB
	sHYjbCJcfzM1SiIVmI0h9Oe2oFX08QPhp2ImwoElVeWrIVCao3swzjtBe0x54niqxdxu1ekdfrCpT
	7vsyPKoTxddSxsetFsgA0H1d6Uhe2/iB24vtIms9NyGsDYZTXBTguyxp76dnx9QlbD5gYezD+Tad5
	JEtthJqDAsGks7ccK1opwTBq3heQipvfc9RMUaLG65wrkCPhdBnqyvH4Bdpyi1wBHtMbmM6jcAEca
	I3wsiL6t/eOCmDIjRtIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5QC8-00BO7r-4S; Sun, 26 Jun 2022 11:12:48 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5QC5-00BO42-NO
	for b43-dev@lists.infradead.org; Sun, 26 Jun 2022 11:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=o0GW7CA8KUZY6d8aF+3/YcEueAIlMj5T+JesYfgsKuc=; b=zqcujx+80DTsCWXxoP71ZqxRYi
	uCkXs9GDLZ1MhcvWG0Y8ygzDPxwYNDA+VblI5CwPMk/Dfe6PjWXVIf2zeuDaxgkML320qxcWC2ekB
	0LKBfFjCt2veWJeiYdqQo8uD10cpk0QhsZXz5h9bAdmMGz2FWhIiP0XrPuG9E6F/lG9E=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1o5QBp-008Hu5-5d; Sun, 26 Jun 2022 13:12:29 +0200
Date: Sun, 26 Jun 2022 13:12:29 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Cc: Praghadeesh T K S <praghadeeshthevendria@gmail.com>,
	Kalle Valo <kvalo@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	praghadeeshtks@zohomail.in, skhan@linuxfoundation.org
Subject: Re: [PATCH] net: wireless/broadcom: fix possible condition with no
 effect
Message-ID: <Yrg/HTOnVF53WRVV@lunn.ch>
References: <20220625192902.30050-1-praghadeeshthevendria@gmail.com>
 <458bd8dd-29c2-8029-20f5-f746db57740a@newmedia-net.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <458bd8dd-29c2-8029-20f5-f746db57740a@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_041245_798798_6EB45B5A 
X-CRM114-Status: GOOD (  16.34  )
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

On Sun, Jun 26, 2022 at 01:03:57PM +0200, Sebastian Gottschall wrote:
> Am 25.06.2022 um 21:29 schrieb Praghadeesh T K S:
> > Fix a coccinelle warning by removing condition with no possible effect
> > 
> > Signed-off-by: Praghadeesh T K S <praghadeeshthevendria@gmail.com>
> > ---
> >   drivers/net/wireless/broadcom/b43/xmit.c | 7 +------
> >   1 file changed, 1 insertion(+), 6 deletions(-)
> > 
> > diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wireless/broadcom/b43/xmit.c
> > index 7651b1b..667a74b 100644
> > --- a/drivers/net/wireless/broadcom/b43/xmit.c
> > +++ b/drivers/net/wireless/broadcom/b43/xmit.c
> > @@ -169,12 +169,7 @@ static u16 b43_generate_tx_phy_ctl1(struct b43_wldev *dev, u8 bitrate)
> >   	const struct b43_phy *phy = &dev->phy;
> >   	const struct b43_tx_legacy_rate_phy_ctl_entry *e;
> >   	u16 control = 0;
> > -	u16 bw;
> > -
> > -	if (phy->type == B43_PHYTYPE_LP)
> > -		bw = B43_TXH_PHY1_BW_20;
> > -	else /* FIXME */
> > -		bw = B43_TXH_PHY1_BW_20;
> > +	u16 bw = B43_TXH_PHY1_BW_20;

Hi Praghadeesh

I assume you took a deep look at the FIXME, understand why it is
there, looked at the datasheet etc, and decided it is not in fact
broken. Hence it is safe to remove the FIXME. Please could you
summarise your findings in the commit messages.

	  Andrew

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
