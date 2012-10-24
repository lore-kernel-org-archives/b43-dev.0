From: Markus Kanet <dvmailing@gmx.eu>
Date: Wed, 24 Oct 2012 05:21:19 +0200
Subject: b43 driver NULL pointer dereference on 3.4.15
In-Reply-To: <5086F45D.9080204@lwfinger.net>
References: <50861EE6.70902@gmx.eu> <5086AF4D.5070404@lwfinger.net>
 <5086EBC0.6010701@gmx.eu> <5086F45D.9080204@lwfinger.net>
Message-ID: <50875EAF.2070609@gmx.eu>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Am 23.10.2012 21:47, schrieb Larry Finger:
> I don't run kernel 3.4.15. My patch was for wireless-testing, which is
> the one that would be needed for submission. In addition, the hunk I
> supplied was for b43_bcma_remove() and one is also needed for
> b43_ssb_remove(). I will annotate the patch for porting to stable. When
> that happens, I will need to modify the patch for 3.4.X.
Ah, ok... if needed i can test the modified patch.

> Thanks for testing.
>
> Is it OK if I add a "Tested-by: Markus Kanet <dvmailing@gmx.eu> to the
> submitted patch?
Sure...

Markus
