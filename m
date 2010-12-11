From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Sat, 11 Dec 2010 09:47:17 +0100
Subject: Question about SPROM Readout
In-Reply-To: <4D02A466.2030607@lwfinger.net>
	(sfid-20101210_230619_560696_1D62D066)
References: <4D02A466.2030607@lwfinger.net>
	(sfid-20101210_230619_560696_1D62D066)
Message-ID: <1292057237.20015.2.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, 2010-12-10 at 16:06 -0600, Larry Finger wrote: 
> On the box with the SPROM located at 0x0800 rather than 0x1000, a readout cycle
> dumps data from whatever core happens to be mapped in the region 0x0 - 0xFFF. As
> this is usually not the ChipCommon core, the SPROM dump is usually garbage.
> Similarly, an SPROM write would overwrite lots of things.

No wait. The SPROM is not mapped into the core MMIO. It is mapped right
above it. So a core switch does not affect it.
Core window goes from 0-0x800 (0r 0-0x1000 on PCI-E). Above this, the
SPROM is statically mapped.

-- 
Greetings Michael.
