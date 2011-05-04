From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 4 May 2011 12:41:08 +0200
Subject: Question about IMCFGLO timeouts workaround
Message-ID: <BANLkTi=bppqp9K50n-5d5MOW53-LvdbfyQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

drivers/net/wireless/b43/main.c
b43_imcfglo_timeouts_workaround

Does it make sense to have here code:
case SSB_BUSTYPE_SSB:
	tmp &= ~SSB_IMCFGLO_REQTO;
	tmp &= ~SSB_IMCFGLO_SERTO;
	tmp |= 0x53;
	break;

Does SSB_BUSTYPE_SSB still have PCI core? I though SSB_BUSTYPE_SSB is
some kind of native, not attached with PCI host.

-- 
Rafa?
