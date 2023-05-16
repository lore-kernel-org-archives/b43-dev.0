Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A24D6C77B75
	for <b43-dev@archiver.kernel.org>; Tue, 16 May 2023 17:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2c5gN+v+DurP0X3qdNhayGfmoImG9+D889zCe9U8dy8=; b=jtCXfuH6CZdpzGAwVomgXWo2pl
	Tyj1atZ3KVT24Tg1fhskIA8hnXArebeFVoKMEObGFcFDJY1H//Hw1jrybzWk010X7zH60O/a5BY8a
	iHUp7W64Y6rPzEKcdVopUGzTTlouZJT9WYDDMHp1ZFC9+weEEx1uouE0zYSqi2BLGcz1WzKCeb2xW
	4xbp4WGq22u/p60Q8uCXqE+gDdViWBHu2kuJs4Kx7K1qVcEHTT2ACctxiocmBzzA2lpoXMwrSmb1R
	ywxMjLO9g2CR8pVY9TYIBdsve7G82Bfkj1WhGIiQUf1XTm8odEK6Eu7Uawe9XpEO7UmbnRq0mQSkp
	y44ZMXIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyymr-006gEI-1H;
	Tue, 16 May 2023 17:48:37 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyymo-006gCX-0Z
	for b43-dev@lists.infradead.org;
	Tue, 16 May 2023 17:48:35 +0000
Received: by bues.ch with esmtpsa (Exim 4.94.2)
	(envelope-from <m@bues.ch>)
	id 1pyymf-000LJS-3V; Tue, 16 May 2023 19:48:24 +0200
Date: Tue, 16 May 2023 19:47:52 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: "Arnd Bergmann" <arnd@arndb.de>
Cc: "Arnd Bergmann" <arnd@kernel.org>, "Kalle Valo" <kvalo@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, "Eric Dumazet"
 <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>, "Paolo Abeni"
 <pabeni@redhat.com>, "Nathan Chancellor" <nathan@kernel.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>, "Tom Rix" <trix@redhat.com>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Netdev
 <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev
Subject: Re: [PATCH] wifi: b43: fix incorrect __packed annotation
Message-ID: <20230516194752.50ae12db@barney>
In-Reply-To: <b53f3673-f6b1-4071-9bcf-9ae5815593eb@app.fastmail.com>
References: <20230516074554.1674536-1-arnd@kernel.org>
	<20230516191245.4149c51a@barney>
	<b53f3673-f6b1-4071-9bcf-9ae5815593eb@app.fastmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_104834_213733_90E7A684 
X-CRM114-Status: UNSURE (   8.02  )
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
Content-Type: multipart/mixed; boundary="===============2308894391198576246=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============2308894391198576246==
Content-Type: multipart/signed; boundary="Sig_/LydMZaBgIzo3HKHo7_xf/iA";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/LydMZaBgIzo3HKHo7_xf/iA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 16 May 2023 19:45:16 +0200
"Arnd Bergmann" <arnd@arndb.de> wrote:

> Should I resend this as a combined patch for both drivers?

I think that would be fine, yes.
Thank you for checking.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/LydMZaBgIzo3HKHo7_xf/iA
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmRjwcgACgkQ9TK+HZCN
iw5T+g/8DVJ2wyaO2Xg8k2CkNMDjP5bFJVvaUnLUQoYFT22CY2Rlkop53SsVpkgL
A7/SxrptKK4vPNgO0QjwN8+Nl8KbL320XH+YEFi+f64uJUBrpAusuVOmK5BZ13Il
V5ljNaJCWQyAVuYV7YlHFoe/EfSOZI5Ca/KVGzmJbcjCbt9vs9MiRIG8ClBdCS39
NHCDvWw+o7HzmExK9dfeO2puN9dHW54U6Np7sDQ9CBLrM3PDB6STBiIVSNnDvG1Q
b2M9mQEcK382pf53+6IJP6xuXppT94TDihTWTzeAmlRIQyMKAkDA7PgSYxr3T6+m
U4vPiCjq9mFZO1Mw8BZbLoVkG0JrX3ffO1LisjKqrLw7y6V4CischbnV4Ye6hTaH
dw8Fx2QPIsAIjb3kLgEY3BezcURQbRqLb3GPRdFHAS+pi8QbE9Hg5epbkxqW7iLS
ff9VDUXftth7fdv0+bMQ8YUuox5unQno/Dc0xaKXshxE4LpXowMlm1RIl+/CyUJ+
+eG1+cdd/NIt6Qw+ped8XxDOCEDeXfwWTrsjMK0WHMUnzItLKeFBJy6yDW9qj+6Y
RikXtPHZkrgJA3+Cfc8HWnuo8WFhIQvawGBjqenbVyI0FnuIFnzpys/ukNe/TiQd
g7yDBD5EJtNoyK0ez+/NJHOKt0lmcUKselAFpE7DZisStWWnLRs=
=syVX
-----END PGP SIGNATURE-----

--Sig_/LydMZaBgIzo3HKHo7_xf/iA--


--===============2308894391198576246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============2308894391198576246==--

