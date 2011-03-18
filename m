From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 18 Mar 2011 15:50:22 +0100
Subject: [RFC][PATCH] ssb: separate common scanning functions
In-Reply-To: <AANLkTimG8G_BsqoAUYWfRETfU1ndu_i87WjkXx+v_sNE@mail.gmail.com>
References: <1300449773-11255-1-git-send-email-zajec5@gmail.com>
	<1300453433.13499.18.camel@dev.znau.edu.ua>
	<AANLkTimG8G_BsqoAUYWfRETfU1ndu_i87WjkXx+v_sNE@mail.gmail.com>
Message-ID: <AANLkTi=EeMKNsi9bxNg4RJre-pP=jqcGpbLPNtggSK0N@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: George Kashperko <george@znau.edu.ua>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, b43-dev@lists.infradead.org

2011/3/18 Rafa? Mi?ecki <zajec5@gmail.com>:
> What for example about pci.c? Which functions from that file won't be
> duplicated in totally separated?

At first I though we will need to duplicate all pci routines like
ssb_pci_switch_coreidx and ssb_pci_xtal. But now I've checked
brcm80211 and it seems it reads SPROM even from AI bus-cards.

Do you really want to duplicate all the SPROM code in *totally
separated* driver for AI?!

-- 
Rafa?
