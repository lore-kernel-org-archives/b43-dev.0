From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 20 Feb 2011 20:27:51 +0100
Subject: bcm4322 success (WPA2)!
In-Reply-To: <20110220182541.GP6696@helfmeier.de>
References: <201101032121.10454.christoph.thielecke@gmx.de>
	<201102201340.52880.christoph.thielecke@gmx.de>
	<AANLkTimRE9iAcoODyWmhcp0rOUAwEG_vy3Ozs7c3VM7N@mail.gmail.com>
	<201102201431.45988.christoph.thielecke@gmx.de>
	<AANLkTik4xfzORZm03u+pMoezaV+HNUw-n7OqH-oZ_Dt1@mail.gmail.com>
	<20110220182541.GP6696@helfmeier.de>
Message-ID: <AANLkTi=p50uBUTLQO6Jx0N1ODbpwSHxk3jx7aN4yPP-R@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/2/20 Clemens Helfmeier <clemens@helfmeier.de>:
> I had to apply this patch to b43-fwcutter in order to extract the firmware:
> http://lists.infradead.org/pipermail/b43-dev/2010-July/000225.html

Yeah, there was some discussion about getting newer firmware. It's
unfortunately available only in huge firmware and Broadcom doesn't
give a sh* about providing open source community freely available
firmware. That's all about their openess and positive talks brcm80211
related.

For now you have to download huge firmware (and hacking extractor) or
try linking ucode16_mimo to ucode16.


> Using WPA2, the connection is very stable, no connection break downs so far.

We have some positive reports and not-so-much (coming for example from
Larry). Good to head there is one more person having this working.


> My dmesg log shows quite a lot of error messages (approx every 7 seconds in
> idle and more often when traffic is high):
> [ 4015.044435] b43-phy0 ERROR: PHY transmission error
> [ 4021.910720] b43-phy0 ERROR: PHY transmission error
> [ 4028.866892] b43-phy0 ERROR: PHY transmission error
>
> Thanks for your efforts to get my hardware working!

Just for sure: can you try forcing rate to 1M, 2M or 11M? Does it
noticeably lowers amount of reported PHY errors? The command you need
to use is like:
iwconfig wlan0 rate 1M
iwconfig wlan0 rate 2M
iwconfig wlan0 rate 11M

-- 
Rafa?
