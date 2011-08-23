From: Maxime Vincent <maxime.vince@gmail.com>
Date: Tue, 23 Aug 2011 13:40:56 +0200
Subject: [QUESTION] 4331 support
In-Reply-To: <CACna6rw9ShpOL9-fmFNjPS5AsheWYVhjWf56ZNL-OgL=izGdGg@mail.gmail.com>
References: <CACBz148HiqaUWqxNOddxhTH5qYUKTg6Gk6gk7W2Mb_t7jRX=nQ@mail.gmail.com>
	<CACna6rw9ShpOL9-fmFNjPS5AsheWYVhjWf56ZNL-OgL=izGdGg@mail.gmail.com>
Message-ID: <CACBz14_ky-eFow2+gL8YBPEYLZ-Z=fLx7N6Rdg9h_0yMvGOfPA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Awesome guys,
thanks for the pointers, it worked! (i m sending this email using the b43
driver!)

I used the wireless-next git, and then additionally applied the "b43:
HT-PHY: allow writing longer tables with a single call" patch.
(and the ones in Rafal's last mail)

Thanks for the great support and fast answers!
Congratulations on hacking a driver like this together, I am impressed!

Best regards,
Maxime

2011/8/22 Rafa? Mi?ecki <zajec5@gmail.com>

> Hi Maxime,
>
> 2011/8/22 Maxime Vincent <maxime.vince@gmail.com>:
> > I'm sorry if this is a noobish question, or asking this kind of questions
> is
> > not done.
> > I'm not really familiar with dev mailing lists.
> > I'm new to kernel development, not new to linux.
> >
> > I was wondering what the status of support for the 4331 wifi chipset was?
> > As I can see there's already quite some code for the 4331 chipset, but I
> > can't really make up from that if it's supposed to work or not, or maybe
> > partially?
> >
> > I have compiled latest linux-next kernel including the b43 driver,
> extracted
> > firmware, but I can't seem to see an interface registering.
> > Only thing I can see in dmesg:
> > Broadcom 43xx driver loaded [ Features: PMNLS, Firmware-ID:  FW13 ]
>
> I'm going to clean HT-PHY (BCM4331) support in about a week, as David
> wrote, it should be quite stable.
>
> Most of the patches are already in wireless-next, I just need to test
> that tree, see if everything was sent&applied correctly and drop
> BROKEN from B43_PHY_HT.
>
> If you're "brave" enough, you can:
> 1) Edit Kconfig and drop BROKEN from B43_PHY_HT
> 2) Edit dma.h and define B43_DMA_RINGMEMSIZE to "2 * PAGE_SIZE"
> (or just wait a week).
>
>
> I think I will start some b43 tree at git.kernel.org finally, but I
> need to spend some time on learning merging & resolving problems.
>
> --
> Rafa?
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110823/94890c5a/attachment.html>
