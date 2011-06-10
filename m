From: David Woodhouse <dwmw2@infradead.org>
Date: Fri, 10 Jun 2011 23:23:46 +0100
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <BANLkTi=GHKddWTfB1gkhbWvpaG9bsX3zRw@mail.gmail.com>
References: <4D8F022C.2050606@rostlab.org>
	<AANLkTikdg-ZQ2rDL901A_HZ9TnYiQHG2h-jmhOrM_t6D@mail.gmail.com>
	<BANLkTimiCVU8JL-eMT0v1s1GswC+hwkLFQ@mail.gmail.com>
	<4D9D8D4D.3030603@rostlab.org>
	<BANLkTi=GHKddWTfB1gkhbWvpaG9bsX3zRw@mail.gmail.com>
Message-ID: <1307744628.4771.109.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 2011-04-07 at 12:32 +0200, Rafa? Mi?ecki wrote:
> Not right now, but in future, I think I could support it this way. We
> need to introduce support for AI first. Maybe before that 4331 cards
> will appear on ebays? I'll ping you when support for AI is done :)

The brcm80211 driver seems to have lots of references to 4331, although
it doesn't include 0x4331 in its PCI device table. Might be interesting
just to load it and make it bind to the device.

I just bought a new MBP, and am stuck with one of these. Who wants it,
if it isn't currently working?

And what can I use in its place? I don't recognise the form factor at
http://guide-images.ifixit.net/igi/MIYRQcks54DunO3k.huge

-- 
dwmw2
