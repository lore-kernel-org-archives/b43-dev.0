From: Adrian Chadd <adrian@freebsd.org>
Date: Fri, 6 Oct 2017 14:53:18 -0700
Subject: Restricting BCM4354 to 802.11b only
In-Reply-To: <04e66bc2-8c34-f513-cd75-b8ea6f9f02c5@tealdrones.com>
References: <04e66bc2-8c34-f513-cd75-b8ea6f9f02c5@tealdrones.com>
Message-ID: <CAJ-Vmom2vjs9s1=xPnhR7gGTzTZ=JcNdQks5TBQZjmM1CPseRQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 6 October 2017 at 14:47, Dennis Millard <dennis@tealdrones.com> wrote:
> I'm developing on an nVidia TX1 SOM which has an integrated BCM4354 chipset.
> The SOM is running Ubuntu 16.04 Linux (64-bit ARM)
>
> I have an application where I need long range with low bandwidth
> requirements.  It seems that 802.11b has the best receive sensitivity, and I
> need to reduce latency caused by modulation switching (i.e. 802.11 b, g, n
> etc).  I'm looking for a way to configure the BCM43 chipset to lock in to
> 802.11b mode only, so I want to disable 802.11g and 802.11n modes.
>
> I'm capable of making kernel driver modifications if necessary, but I don't
> have the required information to do this.  I've seen references on google to
> the Broadcom WLAN client utility, or "wl", but it's not freely available
> anywhere.
>
> Does anyone have any advice on where to turn for information on how to do
> this?  Thanks.

Hi,

Have you noticed any actual modulation switching latency? Ideally it's
just enabling a different PHY path and so the latency should be
effectively nil.

Also, BCM4354 is a fullmac SDIO 11ac chip, not a b43 chip. :-)

And the TL;DR is - yes, there'll be an ioctl command to send to the
chip to tell it which PHY mode to operate in, and I bet you can set it
to operate on 'b' only. I just don't know off-hand on the brcmfmac
driver what that is, and you should likely ask on linux-wireless where
the brcmfmac people watch out.



-adrian
