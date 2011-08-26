From: James Anslow <james@jamesanslow.net>
Date: Fri, 26 Aug 2011 20:56:59 +0100
Subject: [wireless-next][PATCH 0/3][ANNOUNCE] b43 the first Linux driver
	supporting HT-PHY (BCM4331)!
In-Reply-To: <1314384081-3460-1-git-send-email-zajec5@gmail.com>
References: <1314384081-3460-1-git-send-email-zajec5@gmail.com>
Message-ID: <4E57FA8B.1000608@jamesanslow.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 26/08/11 19:41, Rafa? Mi?ecki wrote:
> After improving DMA (the important patch for BCM4331 is my one) we can finally
> enable support for HT-PHY. The whole code has been written from MMIO dumps
> grabbed from ndiswrapper+windows driver, but seems to be stable and was tested
> by 3 people. Unfortunately there are still some missing conditions that can't
> be fixed without RE the closed driver or having Broadcom co-operating. However
> it seems we live with that well enough for basic usage :)
>
> BCM4331 doesn't have any Linux driver yet, both: wl and brcm80211 don't support
> it. So we can be really proud of it ;) Ah, and I should mention that ndiswrapper
> was frequently reported to lock up machines when working with this card (see
> Ubuntu's forum about MacBook 8.1).
>
> To use b43 with BCM4331 you will need to grab the newest b43-fwcutter and
> extract firmware from some recent closed source driver. See our wiki page in
> few hours for nice howto.
>
> Big thanks go to David Woodhouse for providing me access to his MacBook, letting
> grab the dumps, test patches and debugging a lot of hard cases with me (and
> sometime without ;) ).
>
> Larry Finger (1):
>   b43: Relax requirement for descriptors to be in the DMA zone
>
> Rafa? Mi?ecki (2):
>   b43: use 8K buffers for 64-bit DMA to workaround hardware bug
>   b43: make HT-PHY support experimental
>
>  drivers/net/wireless/b43/Kconfig |    6 +++---
>  drivers/net/wireless/b43/dma.c   |   31 ++++++++++++++++---------------
>  drivers/net/wireless/b43/dma.h   |    3 ++-
>  3 files changed, 21 insertions(+), 19 deletions(-)
>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
Massive congratulations. I can confirm that the 4331 does indeed lock up
the MBP 8,1 with ndiswrapper so this is hugely appreciated.

Good job.

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 900 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110826/eb0a0995/attachment.sig>
