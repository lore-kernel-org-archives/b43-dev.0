From: Francesco Gringoli <francesco.gringoli@ing.unibs.it>
Date: Thu, 3 Feb 2011 16:49:34 +0100
Subject: Broadcom 14e4:4727 card
In-Reply-To: <AANLkTinM3rASTNYw+5vg7gBo5FigRwd1AohVwySQxRhQ@mail.gmail.com>
References: <AANLkTinM3rASTNYw+5vg7gBo5FigRwd1AohVwySQxRhQ@mail.gmail.com>
Message-ID: <1EB393CE-CE3E-4DA1-97EF-CD4C62B61A26@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Feb 3, 2011, at 4:34 PM, Rafa? Mi?ecki wrote:

> Hi,
> 
> My girlfriend just showed me her new notebook and... wohoo, it
> contains 14e4:4727 I couldn't really find or Google! :)
> 
> This card is visible as:
> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4313
> 802.11b/g LP-PHY [14e4:4727] (rev 01)
> however loading ssb debug-less doesn't result in displaying anything in dmesg.
> 
> Does it mean this is SSB less Broadcom card? Or is this SSB based but
> ssb module can not handle it for some reason? Right now I'm running
> just LiveCD, can not recompile ssb modules with debugging enabled.
> I'll borrow that card when I'll have something to insert instead (I
> didn't take any card with me).
> 
> This is surely 802.11n card, so don't focus on lspci output.
Hi Rafa?,

it should one of those devices handled by brcm80211 driver. Did you test it?

Cheers,
-Francesco

> 
> -- 
> Rafa?
> 
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
