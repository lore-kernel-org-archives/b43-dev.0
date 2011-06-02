From: William Bourque <william.bourque@polymtl.ca>
Date: Wed, 01 Jun 2011 23:40:44 -0400
Subject: Request for testing b43 & Broadcom 14e4:4315 cards for DMA ERRORs
	(Linux 3.0)
In-Reply-To: <BANLkTi=fgGTvjdQ0Ghd15CBoYzd9TLU2CQ@mail.gmail.com>
References: <BANLkTi=fgGTvjdQ0Ghd15CBoYzd9TLU2CQ@mail.gmail.com>
Message-ID: <4DE7063C.4010002@polymtl.ca>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


Hello


On 30/05/11 03:22 AM, Rafa? Mi?ecki wrote:
> Hello everybody,
> 
> I believe I've grabbed e-mails of all the people reporting DMA errors
> on b43/bcm43xx mailing list.
> 
> Short remind of the problem. When using b43 and LP-PHY card on some
> specific machines you got:
> b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000,
> 0x00000000, 0x00000000, 0x00000000
> b43-phy0: Controller RESET (DMA error) ...
> 
> The workaround was to use PIO instead of DMA, or "modprobe wl && rmmod wl".
> 
> I believe we've fixed that errors in Linux 3.0-rc1. Can you give it a
> chance and report back?
> 

Sorry about the late report, I was short on time this week.

This patch seems to fix the problem perfectly, I am transfering at full
speed (~2MB/sec... kinda slow, though) since 2 hours and the card handle
it perfectly. Nothing in the log, not even warning so I guess this is it!

Big thanks to you, Rafa?, good work!

- William
