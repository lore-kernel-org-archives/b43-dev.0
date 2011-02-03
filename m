From: Stefan Lippers-Hollmann <s.L-H@gmx.de>
Date: Thu, 3 Feb 2011 16:50:52 +0100
Subject: Broadcom 14e4:4727 card
In-Reply-To: <AANLkTinM3rASTNYw+5vg7gBo5FigRwd1AohVwySQxRhQ@mail.gmail.com>
References: <AANLkTinM3rASTNYw+5vg7gBo5FigRwd1AohVwySQxRhQ@mail.gmail.com>
Message-ID: <201102031650.54903.s.L-H@gmx.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi

On Thursday 03 February 2011, Rafa? Mi?ecki wrote:
> Hi,
> 
> My girlfriend just showed me her new notebook and... wohoo, it
> contains 14e4:4727 I couldn't really find or Google! :)
> 
> This card is visible as:
> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4313
> 802.11b/g LP-PHY [14e4:4727] (rev 01)
> however loading ssb debug-less doesn't result in displaying anything in dmesg.

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=drivers/staging/brcm80211/README

> Does it mean this is SSB less Broadcom card? Or is this SSB based but
> ssb module can not handle it for some reason? Right now I'm running
> just LiveCD, can not recompile ssb modules with debugging enabled.
> I'll borrow that card when I'll have something to insert instead (I
> didn't take any card with me).

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=drivers/staging/brcm80211/sys/wl_mac80211.c;h=f1235884cc5d24f15d3619b8678e0a2751754563;hb=HEAD#l121
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=blob;f=drivers/staging/brcm80211/include/bcmdevs.h;h=075883a935291b58c832038e7fe400a5708edf97;hb=HEAD#l47

So it pretty much looks like being SSB less and using brcm80211 instead.

Regards
	Stefan Lippers-Hollmann
