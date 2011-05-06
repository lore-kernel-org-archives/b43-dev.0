From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 6 May 2011 23:48:54 +0200
Subject: Interesting 14e4:4321
In-Reply-To: <4DC467F8.9050503@lwfinger.net>
References: <BANLkTim0usjWr8DqJQk+GQiBHmfgTjey7g@mail.gmail.com>
	<4DC467F8.9050503@lwfinger.net>
Message-ID: <BANLkTimqRJnhE4n-4UAxWOEObRmuSuBUSQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 6 maja 2011 23:28 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 05/06/2011 03:40 PM, Rafa? Mi?ecki wrote:
>>
>> Swen has found 14e4:4321 in his WRT160N version 1.1. This is quite
>> rare and interesting so I wanted to post all info about it :)
>>
>> I'm attaching lspci and dmesg.
>>
>> I find it interesting because it seems to be SSB SOC with standard
>> cores: CC, FastEthernet, USB, MIPS, etc. Plus there is PCI bridge with
>> 14e4:4321 card connected, which is SSB-based one with (the most
>> interesting) 80211.
>>
>> Unfortunately this is one another BCM4321 with DMA not working. I
>> really need to focus on this after fixing LP-PHY and adding BCMA.
>
> From the attachments:
>
> 01:01.0 Network controller [0280]: Broadcom Corporation BCM4306 802.11a
> Wireless LAN Controller [14e4:4321] (rev 03)
> ? ? ? Subsystem: Broadcom Corporation BCM4306 802.11a Wireless LAN
> Controller [14e4:4321]
> ? ? ? Flags: bus master, fast devsel, latency 64, IRQ 2
> ? ? ? Memory at 40004000 (32-bit, non-prefetchable) [size=16K]
>
> Is this really a 5G-only card? Everything I could see about the WRT160N
> seemed to say that the routers are 802.11b/g/n.
>
> In addition, we really needed more BCM43XX confusion. Is a BCM4306 an
> 802.11b/g with a 14e4:4320 chip, or this one?
>
> Broadcom is really easy to hate!

It's some ooooold description from 2006 or so, so I'm sure it's
incorrect. I've no idea about 14e4:4320.

-- 
Rafa?
