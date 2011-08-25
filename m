From: james at jamesanslow.net <james@jamesanslow.net>
Date: Fri, 26 Aug 2011 00:27:31 +0100
Subject: 4331 support
In-Reply-To: <4E56D231.5080306@lwfinger.net>
References: <20110825233820.14231gncpwmacjdw@jamesanslow.net>
	<4E56D231.5080306@lwfinger.net>
Message-ID: <20110826002731.55067eao70ovewg8@jamesanslow.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Larry,

Thanks for getting back to me on this. I'm not overly experienced when  
it comes to driver development and so I may be best suited to waiting  
until this is made live. That is, unless compiling and patching  
experimental drivers is an easy thing to do (but from what I  
understand it's not?)

Kind regards,
James

Quoting Larry Finger <Larry.Finger@lwfinger.net>:

> On 08/25/2011 05:38 PM, james at jamesanslow.net wrote:
>> Can anyone provide me with an update as to the current status of BCM 4331
>> support? Is support going to be coming eventually? Is anyone working on it?
>
> If you pull the wireless-testing git tree, it is working, perhaps  
> with minor changes. See a recent mail message:
>
> ========================================
> Awesome guys,
> thanks for the pointers, it worked! (i m sending this email using  
> the b43 driver!)
>
> I used the wireless-next git, and then additionally applied the  
> "b43: HT-PHY: allow writing longer tables with a single call" patch.
> (and the ones in Rafal's last mail)
>
> Thanks for the great support and fast answers!
> Congratulations on hacking a driver like this together, I am impressed!
>
> Best regards,
> Maxime
>
> 2011/8/22 Rafa? Mi?ecki <zajec5@gmail.com>
>
>     Hi Maxime,
>
>     2011/8/22 Maxime Vincent <maxime.vince@gmail.com>:
>     > I'm sorry if this is a noobish question, or asking this kind  
> of questions is
>     > not done.
>     > I'm not really familiar with dev mailing lists.
>     > I'm new to kernel development, not new to linux.
>     >
>     > I was wondering what the status of support for the 4331 wifi  
> chipset was?
>     > As I can see there's already quite some code for the 4331  
> chipset, but I
>     > can't really make up from that if it's supposed to work or  
> not, or maybe
>     > partially?
>     >
>     > I have compiled latest linux-next kernel including the b43  
> driver, extracted
>     > firmware, but I can't seem to see an interface registering.
>     > Only thing I can see in dmesg:
>     > Broadcom 43xx driver loaded [ Features: PMNLS, Firmware-ID:  FW13 ]
>
>     I'm going to clean HT-PHY (BCM4331) support in about a week, as David
>     wrote, it should be quite stable.
>
>     Most of the patches are already in wireless-next, I just need to test
>     that tree, see if everything was sent&applied correctly and drop
>     BROKEN from B43_PHY_HT.
>
>     If you're "brave" enough, you can:
>     1) Edit Kconfig and drop BROKEN from B43_PHY_HT
>     2) Edit dma.h and define B43_DMA_RINGMEMSIZE to "2 * PAGE_SIZE"
>     (or just wait a week).
> ===============================================
>
>
> Larry
>
