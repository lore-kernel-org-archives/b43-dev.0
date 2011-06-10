From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 11 Jun 2011 00:35:16 +0200
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <1307744628.4771.109.camel@i7.infradead.org>
References: <4D8F022C.2050606@rostlab.org>
	<AANLkTikdg-ZQ2rDL901A_HZ9TnYiQHG2h-jmhOrM_t6D@mail.gmail.com>
	<BANLkTimiCVU8JL-eMT0v1s1GswC+hwkLFQ@mail.gmail.com>
	<4D9D8D4D.3030603@rostlab.org>
	<BANLkTi=GHKddWTfB1gkhbWvpaG9bsX3zRw@mail.gmail.com>
	<1307744628.4771.109.camel@i7.infradead.org>
Message-ID: <BANLkTik4MFG6xwPH3ETbc1sxmh8xbzE+rw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 11 czerwca 2011 00:23 u?ytkownik David Woodhouse
<dwmw2@infradead.org> napisa?:
> On Thu, 2011-04-07 at 12:32 +0200, Rafa? Mi?ecki wrote:
>> Not right now, but in future, I think I could support it this way. We
>> need to introduce support for AI first. Maybe before that 4331 cards
>> will appear on ebays? I'll ping you when support for AI is done :)
>
> The brcm80211 driver seems to have lots of references to 4331, although
> it doesn't include 0x4331 in its PCI device table. Might be interesting
> just to load it and make it bind to the device.

It does not include the most important one: support for the HT PHY.


> I just bought a new MBP, and am stuck with one of these. Who wants it,
> if it isn't currently working?
>
> And what can I use in its place? I don't recognise the form factor at
> http://guide-images.ifixit.net/igi/MIYRQcks54DunO3k.huge

Were you able to find Windows driver for this card? The one you could
use with ndiswrapper?

I'm interested in playing with such a card, if Windows driver exists.

-- 
Rafa?
