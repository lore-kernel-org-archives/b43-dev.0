From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 04 Feb 2011 13:37:57 -0600
Subject: Table of PCIs, chipsets, etc. on b43 wiki page
In-Reply-To: <AANLkTimPBdmiOQ=+TRzEGK4N8yZwj071b_pVkQzmw0RW@mail.gmail.com>
References: <AANLkTimPBdmiOQ=+TRzEGK4N8yZwj071b_pVkQzmw0RW@mail.gmail.com>
Message-ID: <4D4C5595.7060903@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/04/2011 12:56 PM, Rafa? Mi?ecki wrote:
> I'd like to propose little (nothing big) reogranisation of b43 hardware table:
> http://wireless.kernel.org/Zajec?action=recall&rev=4
> 
> Changed columns support/supported and driver/alternatives.
> 
> Are you fine with that? Can we use colored one?

I like the colored one.

Some small changes:

I would eliminate the second 14e4:4312 line and move the wl entry to the first
one. I don't know if wl supports 5 GHz on that chip. I don't have mine any longer.

On the 4315, make it "(PIO mode for some systems)". I have two of them and both
work fine with DMA mode in b43.

The entry for 14e4:4324 is out of numerical order.

To champion the open-source cause, I would put brcm80211 ahead of wl whenever
both drive a particular chip.

Larry
