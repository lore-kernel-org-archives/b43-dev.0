From: Daniel Klaffenbach <danielklaffenbach@gmail.com>
Date: Thu, 21 Oct 2010 00:43:19 +0200
Subject: BCM4318KFBG not recognized by b43
In-Reply-To: <AANLkTik_pkUw4B0yVXDpoXAOSeb-HqSb3VWbGLsNW_kA@mail.gmail.com>
References: <AANLkTinoQH52c33L2UMo3=03Oq2qGqNDcnQ3iiffZ334@mail.gmail.com>
	<AANLkTik_pkUw4B0yVXDpoXAOSeb-HqSb3VWbGLsNW_kA@mail.gmail.com>
Message-ID: <AANLkTi=FoL44CquvC68BU65HPXf4dtET0uq3cLO5Bgf1@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

> Hmm, that sounds like a defective card... I've previously seen an Asus
> WL-138G V2 identify itself, first as 14e4:4218, then after a repair
> attempt, 14e4:0008. It also produced errors like this when I forced
> its detection.
I've just tried the card with the proprietary Broadcom driver and it
is working quite well with it - so I can definitely say that the card
is working. With the "wl" driver the card is being recognized as "wl0:
Broadcom BCM4318 802.11 Wireless Controller 5.10.56.27".


Regards,
Daniel
