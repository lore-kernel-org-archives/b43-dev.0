From: Michael Buesch <mb@bu3sch.de>
Date: Sun, 4 Apr 2010 09:24:14 +0100
Subject: [14e4:4315] Fatal DMA errors on Dell Vostro 1310 (Celeron M540)
In-Reply-To: <4BB81CAD.10602@lwfinger.net>
References: <20100402171105.GA10965@tsubasa> <201004032000.51561.mb@bu3sch.de>
	<4BB81CAD.10602@lwfinger.net>
Message-ID: <201004041024.15319.mb@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sunday 04 April 2010 06:59:25 Larry Finger wrote:
>  If (chip id is 0x4311 AND chip revision is 2) OR chip id is 0x4312
>    Maskset SSB_IMCFGLO with mask ~(SSB_IMCFGLO_SERTO |
>      SSB_IMCFGLO_REQTO) and set with 3

Note that we do the IMCFGLO timeout fixups in b43. So I think the fixup
should be implemented there.

-- 
Greetings, Michael.
