From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Mon, 14 Feb 2011 21:29:55 +0100
Subject: Interesting note on "Unsupported SPROM revision"
In-Reply-To: <AANLkTinJDQDjhnzMBPubNkowxrXFDfOEz83HA1fHgEDU@mail.gmail.com>
	(sfid-20110214_072801_981891_D319F6EF)
References: <AANLkTinJDQDjhnzMBPubNkowxrXFDfOEz83HA1fHgEDU@mail.gmail.com>
	(sfid-20110214_072801_981891_D319F6EF)
Message-ID: <1297715395.11070.5.camel@Nokia-N900>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

> That resulted in:
> [? ? ?  6.681088] ssb: PCI-ID not in fallback list
> [? ? ?  6.681251] ssb: CHIPID not in nrcores fallback list
> [? ? ?  6.681433] ssb: Core 0 found: UNKNOWN (cc 0x8FF, rev 0x7F, vendor
> 0xFFFF) [? ? ?  6.689462] ssb: WARNING: Invalid SPROM CRC (corrupt SPROM)
> [? ? ?  6.689467] ssb: Unsupported SPROM?  revision 255 detected. Will
> extract v1 [? ? ?  6.697123] ssb: Sonics Silicon Backplane found on PCI
> 
> Just wanted to put it on ML in case someone will ever hit that issue.
> 

all mmio reads return all-ones. That usually means your pci(e) does not work.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110214/9d9230df/attachment.html>
