From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 24 Aug 2014 09:20:21 +0200
Subject: B43 driver problem
In-Reply-To: <CA+FnnTzG_dWyVfA1s+AOXV9VpzhbmE5YkHX-nUg5RTYbKQNxtQ@mail.gmail.com>
References: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>
 <53F75312.60200@lwfinger.net>
 <CA+FnnTw=KFJrQNzK0sphH5bmr26uaQx39UUkVV6Pu+NMJ8JpyA@mail.gmail.com>
 <53F8B222.3080406@lwfinger.net>
 <CA+FnnTzG_dWyVfA1s+AOXV9VpzhbmE5YkHX-nUg5RTYbKQNxtQ@mail.gmail.com>
Message-ID: <20140824092021.6bfb718b@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 23 Aug 2014 20:56:17 -0700
Igor Korot <ikorot01@gmail.com> wrote:

> [    1.419227] b43-phy0 ERROR: FOUND UNSUPPORTED PHY (Analog 6, Type 5
> (LP), Revision 1)
> [    1.420925] b43: probe of ssb0:0 failed with error -95
> 
> What is "error -95"?

-EOPNOTSUPP
See below.

> Maybe I have wrong firmware?


No. You are using the wrong kernel.

The relevant code section, that throws the error is:

>	int unsupported = 0;
>...
> 	switch (phy_type) {
>...
> #ifdef CONFIG_B43_PHY_LP
> 	case B43_PHYTYPE_LP:
> 		if (phy_rev > 2)
> 			unsupported = 1;
> 		break;
> #endif
>...
> 	default:
> 		unsupported = 1;
> 	}
> 	if (unsupported) {
> 		b43err(dev->wl, "FOUND UNSUPPORTED PHY (Analog %u, Type %d (%s), Revision %u)\n",
> 		       analog_type, phy_type, b43_phy_name(dev, phy_type),
> 		       phy_rev);
> 		return -EOPNOTSUPP;
> 	}

So for this error to trigger, you would have to have revision 3 or later, which you don't,
or you would have to have a kernel without LP support compiled in.

Make sure you installed your kernel _and_ initramfs correctly.
Also make sure to boot the correct kernel.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140824/d1507799/attachment.sig>
