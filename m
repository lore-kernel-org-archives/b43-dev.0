From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 7 Apr 2011 20:51:39 +0200
Subject: New device in MacBook Pro, yet unsupported?
In-Reply-To: <BANLkTikEgRC4bt06Nzcdk95h8TdicSZFoQ@mail.gmail.com>
References: <BANLkTikEgRC4bt06Nzcdk95h8TdicSZFoQ@mail.gmail.com>
Message-ID: <BANLkTi=e6ErHMv4wvokeruJfdaZTPwJGQg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/4/7 Andy Botting <andy@andybotting.com>:
>>> Any chance you can see how it's labeled? Is that possible to open
>>> MacBook's slot to see this wifi card?
>>> I mean something like BCM943....
>>> I could not find you card on ebay.
>
>> I fear I cannot be of any help with this. The MacBook is from my employer
>> and has a warranty seal on its back, which I'm not willing to break.
>> Perhaps remote access to my machine could help you? Let me know.
>
> Hi - I just stumbled upon this thread while looking around for support
> for the new bcm4331.
>
> Maybe this is some help - it's a photo of the wireless chip from the
> iFixIt teardown of the new Macbook Pro
>
> http://guide-images.ifixit.net/igi/MIYRQcks54DunO3k.huge
>
> I'm curious about how much work is involved with supporting a new chip
> like this?
>
> From the photo, this particular device it looks like is has a
> non-standard connector, as opposed to the usual mini-pcie type card,
> which would obviously make it harder for you guys to get your hands on
> it.
>
> Is there anything we can do to help with this, like supply you with
> some sort of debugging on the card?

Interesting, this is card like noone other seen earlier. If there
won't be any other BCM4331 cards available for mini PCIe, it may be
harder to support them. The only solution (except buying MacBook)
seems to be SSH-ing to someone's machine. Or finding a proper adapter
for this kind of slot.

The amount of work mostly depends on used PHY and radio on this card.
This should be possible soon, when bcmai/whatever-name will be ready.

-- 
Rafa?
