From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 21 Apr 2013 23:53:13 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <alpine.DEB.2.02.1304212205360.13040@kelly.ryd.net>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <CAOiHx=mJ+6Fkxx_fooA+QhUb+Kmodp_Fhr+K=uQjhM1VVfE9fQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
 <20130420215056.3d0b0dbb@milhouse>
 <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
 <CAFzhf4rSUO9mn_RKw4Vehw2LKggFdC_W0v-K_KKCZJez1AwynQ@mail.gmail.com>
 <alpine.DEB.2.02.1304202252460.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202305470.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202314190.19161@kelly.ryd.net>
 <20130421083822.5d6599e3@milhouse>
 <alpine.DEB.2.02.1304211006190.19161@kelly.ryd.net>
 <20130421104440.48a3e006@milhouse>
 <alpine.DEB.2.02.1304211951130.13040@kelly.ryd.net>
 <20130421202601.179eaf44@milhouse>
 <CAOTQ16LCWpAOndQsHBxN1-X_8SLpcU8V=mM41gvcNRocA=GhsA@mail.gmail.com>
 <20130421204439.2fa95ecf@milhouse>
 <alpine.DEB.2.02.1304212205360.13040@kelly.ryd.net>
Message-ID: <20130421235313.22d47edb@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 21 Apr 2013 22:13:43 +0200 (CEST)
Thommy Jakobsson <thommyj@gmail.com> wrote:

>  struct b43_stats {
>  	u8 link_noise;
> +	u32 rxdesc_underruns;

Why do we add that? It's not incremented and used anywhere.

The rest looks good.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130421/8eb7d860/attachment.sig>
