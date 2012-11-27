From: nuno.silva at aalto.fi <nuno.silva@aalto.fi>
Date: Tue, 27 Nov 2012 14:52:21 +0200
Subject: bcm4312 and overloaded APs
In-Reply-To: <87625dcpwv.fsf@ist.utl.pt> (Nuno Silva's message of "Sat, 10 Nov
 2012 19:45:52 +0200")
References: <87625dcpwv.fsf@ist.utl.pt>
Message-ID: <8738zvxl6i.fsf@ist.utl.pt>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 2012-11-10, nuno.silva-uOixanVlb7U at public.gmane.org wrote:

> Hello,
>
> I am trying to debug a possible issue with my current configuration: I
> am using wpa_supplicant together with a broadcom card (through the b43
> driver) under Gentoo.
>
> The card: 
> Broadcom Corporation BCM4312 802.11b/g LP-PHY (rev 01)
>
> And this is under linux version 3.2.1 on amd64, with some Gentoo-level
> patches.
>
> At my school, we have an open wireless network, and computers are
> frequently within reach of several access points for this network.
>
> But the APs seem to employ some load-balancing strategy, where several
> APs will turn down the association request claiming they're overloaded
> (RX AssocResp with status=17).
[...]
> Now I don't know if this is some kind of load-balancing or how does it
> work, nor do I know if this is the expected behavior (maybe it is?). If
> this is not supposed to happen, where can I look to try to fix the
> issue?
[...]

After updating the kernel (now 3.5.7), I still get similar issues with
this driver, in fact, right now I was being connected to a not-so-close
AP with bad signal quality, because association with the closest one was
rejected (and it still takes some time to try another AP). 

As I keep both drivers around in my system (just because it never
occured to me to uninstall the proprietary since I switched to the open
driver), I decided to give the proprietary one a try. 

So, some rmmods and modprobes later, it seems that the proprietary
driver connects *instantly* (that is, to be scientifically accurate,
does not take a noticeable amount of time to get connected).

That is, for some reason, the open, in-kernel, driver does things in a
different way that leads to the scenario I described.

So now I guess it would be interesting to somehow compare what both
drivers do. As I have access to a wireless network exhibiting the issue
and I have both drivers installed, I could easily try to gather some
information with each driver. What would be useful for the devs?

-- 
Nuno Silva (aka njsg)
http://njsg.sdf-eu.org/
