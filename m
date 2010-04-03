From: Michael Buesch <mb@bu3sch.de>
Date: Sat, 3 Apr 2010 19:00:51 +0100
Subject: [14e4:4315] Fatal DMA errors on Dell Vostro 1310 (Celeron M540)
In-Reply-To: <y2u69e28c911004030915scb998ccbvb21885215a524740@mail.gmail.com>
References: <20100402171105.GA10965@tsubasa>
	<r2u69e28c911004030915x38f49291g64dc120a4998045d@mail.gmail.com>
	<y2u69e28c911004030915scb998ccbvb21885215a524740@mail.gmail.com>
Message-ID: <201004032000.51561.mb@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Saturday 03 April 2010 18:15:55 G?bor Stefanik wrote:
> > AFAIK my SSB PMU LDO voltage setting patches landed in 2.6.33. As
> > Michael said before, the PMU cutting power to the device at
> > inappropriate times can easily cause DMA errors, so any PMU
> 
> ...changes can be considered suspicious. (I'm gonna shoot my mailer now.)

I think the bug is within the PCI-E core driver.

-- 
Greetings, Michael.
