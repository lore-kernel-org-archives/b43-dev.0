From: James Anslow <james@jamesanslow.net>
Date: Fri, 26 Aug 2011 16:29:28 +0100
Subject: 4331 support
In-Reply-To: <4E56D231.5080306@lwfinger.net>
References: <20110825233820.14231gncpwmacjdw@jamesanslow.net>
	<4E56D231.5080306@lwfinger.net>
Message-ID: <4E57BBD8.3020002@jamesanslow.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello all,

I followed the instructions as forwarded in this mail re Kconfig and
dma.h. However, when I try to modprobe my device is detected but I get:

  69.767145] b43-phy0: Broadcom 4331 WLAN found (core revision 29)
[   69.767602] b43-phy0 ERROR: FOUND UNSUPPORTED PHY (Analog 9, Type 7,
Revision 1)
[   69.767611] b43: probe of bcma0:0 failed with error -95


Can anyone offer assistance?

On 25/08/11 23:52, Larry Finger wrote:
> On 08/25/2011 05:38 PM, james at jamesanslow.net wrote:
>> Can anyone provide me with an update as to the current status of BCM
>> 4331
>> support? Is support going to be coming eventually? Is anyone working
>> on it?
>
> If you pull the wireless-testing git tree, it is working, perhaps with
> minor changes. See a recent mail message:
>
> ========================================
> Awesome guys,
> thanks for the pointers, it worked! (i m sending this email using the
> b43 driver!)
>
> I used the wireless-next git, and then additionally applied the "b43:
> HT-PHY: allow writing longer tables with a single call" patch.
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
>     > I'm sorry if this is a noobish question, or asking this kind of
> questions is
>     > not done.
>     > I'm not really familiar with dev mailing lists.
>     > I'm new to kernel development, not new to linux.
>     >
>     > I was wondering what the status of support for the 4331 wifi
> chipset was?
>     > As I can see there's already quite some code for the 4331
> chipset, but I
>     > can't really make up from that if it's supposed to work or not,
> or maybe
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

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 900 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110826/9c750a45/attachment.sig>
