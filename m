From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Wed, 3 Nov 2010 17:35:02 +0100
Subject: pci id 14e4:4727 (bcm4313) status?
In-Reply-To: <4CD18DB4.60405@lakedaemon.net>
References: <4CD18DB4.60405@lakedaemon.net>
Message-ID: <AANLkTi=wnuT7MP5UhsWqQ_ycpsTwsZKJk7rytSi0e9AM@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Nov 3, 2010 at 5:28 PM, Jason <b43@lakedaemon.net> wrote:
> All,
>
> I have a pci-express card that shows itself as pci_id 14e4:4727. ?According
> to [1], it says partial support since 2.6.33 (b43/wl/brcm80211). ?I was
> hoping that meant b43 since it has much better mac80211 integration than
> brcm80211. ?I didn't think brcm80211 was in 2.6.33.
> However, compat-wireless (built from tarball) doesn't see it. ?grep the
> source code doesn't pull up '4727' in b43... I tried to update my
> wireless-testing-2.6 tree, but it looks like it's still having trouble,
> latest is 229aebb... from Oct 24th.
>
> So, what will it take to get it up and running? ?I've contributed some
> patches to staging, but they're mainly janitorial/checkpatch stuff for
> brcm80211. ?Are there some beginner tasks for b43 (ie dig through brcm80211
> and port over) that might help out?
>
> thx,
>
> Jason.
>
> [1] http://linuxwireless.org/en/users/Drivers/b43#Known_PCI_devices


Hi,

AFAIK 4313 is an SSB-less device, so it will probably never be
supported by b43 (though expect eventual code sharing between the 2
drivers).

>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
