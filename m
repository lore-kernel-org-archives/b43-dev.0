From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 24 Aug 2011 18:55:16 +0200
Subject: BCM4321 support
In-Reply-To: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
Message-ID: <CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/8/24 Octavian Voicu <octavian.voicu@gmail.com>:
> I just replaced my WLAN card on my Dell laptop. The old one, a BCM4311
> that came with the laptop, stopped working at some point -- I was
> getting?FOUND UNSUPPORTED PHY?(Analog 0, Type 0, Revision 0).

It seems the card or the slot died. As new card works in the slot, I
believe it's card that died.


> The new one is a BCM4321 pcmcia mini-card. It looks identical to [1]
> (I bought it 2nd hand though): BCM94321MCP3 P3, REV 0A, ver 6.7 r.

What I can see on the photo is mini PCIe card. I didn't hear about any
recent Broadcom card using PCMCIA slot.


> I got it to work after upgrading to a newer kernel / b43 driver
> (3.0.3-030003-generic from .deb), but there are a few problems:
>
>
> 1) All networks show as having maximum link quality. Signal level is
> always 0 dBm.
>
> I have many wifi networks around, and most don't have a strong signal.
> Also, there is no noise level in the iwconfig output:
> ? ? ? ? ? Link Quality=70/70 ?Signal level=0 dBm
>
> Same goes for iwlist scan. I also tried the Linux STA driver, which
> correctly shows the link quality (including a Noise level), but for
> some reason it cannot connect authenticate to my WPA access point
> (didn't try without encryption).
>
> How can I fix this?

Take a look at xmit.c and find the place:
if ((chanstat & B43_RX_CHAN_PHYTYPE) == B43_PHYTYPE_N) {
//		s8 rssi = max(rxhdr->power0, rxhdr->power1);
	//TODO: Find out what the rssi value is (dBm or percentage?)
	//      and also find out what the maximum possible value is.
	//      Fill status.ssi and status.signal fields.
} else {

You need to fix that part, read signal info from RX header.


> I also see some invalid misc packets. Any concerns about that?

I didn't hear about that, what exactly is that?


> 2) I understand this chip should also support 802.11n, but it doesn't
> look like b43 supports it:
>
> wlan0 ? ? IEEE 802.11bg ?ESSID:"swn"
>
> This AP doesn't support 802.11n, but the Linux STA driver would also
> show the n suffix.
>
> Can I use 802.11n with b43?

Not yet, sorry. I'll focus on 802.11n after adding basic support for
new Broadcom cards.


> 3) Tried latest firmware (version 666.2) from [2], but it didn't work.
> It was loaded successfully, but iwlist scan wouldn't show any
> networks.
>
> After that I switched to 508.1084, as recommended on that page, and it
> works as described above. My system is Ubuntu 11.04 (natty) which has
> an older firmware, so I extracted those manually using latest
> fwcutter.
>
> Which firmware do you recommend?

We don't know changelog of the firmware, hopefully using the newest is
always the best idea. To use firmware 598 or newer you need to use
very latest wireless tree. I suggest sticking to firmware older than
598 for now (like 508).


> I attached a file with more info about my system, and dmesg logs after
> inserting the module.
> I have some kernel dev experience, and I'm willing to help improve the
> driver, but I need a few pointers on what's broken or not implemented,
> and on the way to approach it (reverse engineer the STA driver? any
> other tools?).

For reading signal info from RX header you can compare b43 with brcmsmac.

I didn't play with 802.11n yet.

If you like, you can try enabling 5 GHz channels support in b43 and
check if this is working. I didn't have opportunity to try this.

-- 
Rafa?
