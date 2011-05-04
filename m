From: Michael =?ISO-8859-1?Q?B=FCsch?= <m@bues.ch>
Date: Wed, 04 May 2011 14:35:32 +0200
Subject: Question about IMCFGLO timeouts workaround
In-Reply-To: <BANLkTi=bppqp9K50n-5d5MOW53-LvdbfyQ@mail.gmail.com>
References: <BANLkTi=bppqp9K50n-5d5MOW53-LvdbfyQ@mail.gmail.com>
Message-ID: <1304512532.32096.4.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, 2011-05-04 at 12:41 +0200, Rafa? Mi?ecki wrote: 
> drivers/net/wireless/b43/main.c
> b43_imcfglo_timeouts_workaround
> 
> Does it make sense to have here code:
> case SSB_BUSTYPE_SSB:
> 	tmp &= ~SSB_IMCFGLO_REQTO;
> 	tmp &= ~SSB_IMCFGLO_SERTO;
> 	tmp |= 0x53;
> 	break;
> 
> Does SSB_BUSTYPE_SSB still have PCI core? I though SSB_BUSTYPE_SSB is
> some kind of native, not attached with PCI host.

Well, is REQTO and SERTO related to the PCI core only?

-- 
Greetings Michael.
