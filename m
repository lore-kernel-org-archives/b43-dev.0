From: Octavian Voicu <octavian.voicu@gmail.com>
Date: Wed, 24 Aug 2011 21:32:11 +0300
Subject: BCM4321 support
In-Reply-To: <CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
Message-ID: <CAM0=5Gvq1d6toSO+P_Z2_EYpMafJtSA84StBmjYZYh85tjtM8Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/8/24 Rafa? Mi?ecki <zajec5@gmail.com>:
> 2011/8/24 Octavian Voicu <octavian.voicu@gmail.com>:
>> The new one is a BCM4321 pcmcia mini-card. It looks identical to [1]
>> (I bought it 2nd hand though): BCM94321MCP3 P3, REV 0A, ver 6.7 r.
>
> What I can see on the photo is mini PCIe card. I didn't hear about any
> recent Broadcom card using PCMCIA slot.

You're right, my bad, I meant PCIe.

>> I got it to work after upgrading to a newer kernel / b43 driver
>> (3.0.3-030003-generic from .deb), but there are a few problems:
>>
>>
>> 1) All networks show as having maximum link quality. Signal level is
>> always 0 dBm.
>>
>> I have many wifi networks around, and most don't have a strong signal.
>> Also, there is no noise level in the iwconfig output:
>> ? ? ? ? ? Link Quality=70/70 ?Signal level=0 dBm
>>
>> Same goes for iwlist scan. I also tried the Linux STA driver, which
>> correctly shows the link quality (including a Noise level), but for
>> some reason it cannot connect authenticate to my WPA access point
>> (didn't try without encryption).
>>
>> How can I fix this?
>
> Take a look at xmit.c and find the place:
> if ((chanstat & B43_RX_CHAN_PHYTYPE) == B43_PHYTYPE_N) {
> // ? ? ? ? ? ? ?s8 rssi = max(rxhdr->power0, rxhdr->power1);
> ? ? ? ?//TODO: Find out what the rssi value is (dBm or percentage?)
> ? ? ? ?// ? ? ?and also find out what the maximum possible value is.
> ? ? ? ?// ? ? ?Fill status.ssi and status.signal fields.
> } else {
>
> You need to fix that part, read signal info from RX header.

Thanks, I'll take a look.

>> I also see some invalid misc packets. Any concerns about that?
>
> I didn't hear about that, what exactly is that?

It's from the iwconfig output:

wlan0     IEEE 802.11bg  ESSID:"swn"
...
          Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
          Tx excessive retries:0  Invalid misc:53   Missed beacon:0

iwconfig man page says:
       Invalid misc
              Other packets lost in relation with specific wireless operations.

>> Can I use 802.11n with b43?
>
> Not yet, sorry. I'll focus on 802.11n after adding basic support for
> new Broadcom cards.

Fair enough. I don't have an 802.11n AP at the moment anyway.

>> Which firmware do you recommend?
>
> We don't know changelog of the firmware, hopefully using the newest is
> always the best idea. To use firmware 598 or newer you need to use
> very latest wireless tree. I suggest sticking to firmware older than
> 598 for now (like 508).

I switched to 508.154 and seems to be working.

Where is the latest wireless tree? Is it just Linus' vanilla linux.git
tree, or do you have a b43 dev tree?

About sending patches, when I'll have something meaningful, do I send
it to LKML, or here for review?

Octavian
