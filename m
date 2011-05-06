From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 06 May 2011 16:28:24 -0500
Subject: Interesting 14e4:4321
In-Reply-To: <BANLkTim0usjWr8DqJQk+GQiBHmfgTjey7g@mail.gmail.com>
References: <BANLkTim0usjWr8DqJQk+GQiBHmfgTjey7g@mail.gmail.com>
Message-ID: <4DC467F8.9050503@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/06/2011 03:40 PM, Rafa? Mi?ecki wrote:
> Swen has found 14e4:4321 in his WRT160N version 1.1. This is quite
> rare and interesting so I wanted to post all info about it :)
>
> I'm attaching lspci and dmesg.
>
> I find it interesting because it seems to be SSB SOC with standard
> cores: CC, FastEthernet, USB, MIPS, etc. Plus there is PCI bridge with
> 14e4:4321 card connected, which is SSB-based one with (the most
> interesting) 80211.
>
> Unfortunately this is one another BCM4321 with DMA not working. I
> really need to focus on this after fixing LP-PHY and adding BCMA.

 From the attachments:

01:01.0 Network controller [0280]: Broadcom Corporation BCM4306 802.11a Wireless 
LAN Controller [14e4:4321] (rev 03)
        Subsystem: Broadcom Corporation BCM4306 802.11a Wireless LAN Controller 
[14e4:4321]
        Flags: bus master, fast devsel, latency 64, IRQ 2
        Memory at 40004000 (32-bit, non-prefetchable) [size=16K]

Is this really a 5G-only card? Everything I could see about the WRT160N seemed 
to say that the routers are 802.11b/g/n.

In addition, we really needed more BCM43XX confusion. Is a BCM4306 an 802.11b/g 
with a 14e4:4320 chip, or this one?

Broadcom is really easy to hate!

Larry
