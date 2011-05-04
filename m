From: Michael =?ISO-8859-1?Q?B=FCsch?= <m@bues.ch>
Date: Wed, 04 May 2011 14:48:57 +0200
Subject: Question about IMCFGLO timeouts workaround
In-Reply-To: <BANLkTimyDunC7anVitk=wCNJg5XN4B239A@mail.gmail.com>
References: <BANLkTi=bppqp9K50n-5d5MOW53-LvdbfyQ@mail.gmail.com>
	<1304512532.32096.4.camel@maggie>
	<BANLkTimyDunC7anVitk=wCNJg5XN4B239A@mail.gmail.com>
Message-ID: <1304513337.32096.6.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, 2011-05-04 at 14:45 +0200, Rafa? Mi?ecki wrote: 
> > Well, is REQTO and SERTO related to the PCI core only?
> 
> No. There are two documented cases:
> 1) PCI (not e) cores rev < 5 need x32
> 2) Some BCM4311 and BCM4312 need 0x03
> 
> This SSB_BUSTYPE_SSB with 0x53 is tricky for me and seems to be undocumented.

I'm not sure where it came from. It probably was there from the
very first b43 version on. I don't remember why I put it there.
Maybe you can find hints on the old (v3) specifications.

-- 
Greetings Michael.
