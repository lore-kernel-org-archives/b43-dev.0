From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 15 Oct 2010 07:26:40 +0200
Subject: brcm80211 in b43
In-Reply-To: <AANLkTikRzOZhtVWH71Q909O-L8=JWhrrR3+6OwnTGR07@mail.gmail.com>
	(sfid-20101014_164712_117143_2ADA5717)
References: <840064.48426.qm@web111406.mail.gq1.yahoo.com>
	<AANLkTikX2BXn8mhSUJ9aMSVTWpWxWGfmxEWm7gdcoKTu@mail.gmail.com>
	<AANLkTikRzOZhtVWH71Q909O-L8=JWhrrR3+6OwnTGR07@mail.gmail.com>
	(sfid-20101014_164712_117143_2ADA5717)
Message-ID: <1287120400.28089.36.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 2010-10-14 at 22:47 +0200, Rafa? Mi?ecki wrote: 
> 2010/10/14 G?bor Stefanik <netrolller.3d@gmail.com>:
> > On Thu, Oct 14, 2010 at 9:51 PM, Ariel Pedraza <pedrazaa@yahoo.com> wrote:
> >> In the future the b43 driver will support the same devices that the brcm80211 driver does? just one universal driver pure FOSS...
> >
> > No.
> >
> > B43 only supports SSB-based devices; while brcm80211 is for SSB-less
> > ones. (Brcmfmac is yet another driver - for fullmac Broadcoms with the
> > exception of BCM4320, which is handled by rndis_wlan.)
> 
> Should be possible to add support for SSB-less devices in b43 in
> future. Probably should be easier than adding support for SSB-based
> devices in brcm80211, shouldn't it?

Yeah, I think it's probably easier to extend b43. However, I'm not sure
if it's worth the trouble. We can live with b43 and brcm80211
simultaneously just fine.

-- 
Greetings Michael.
