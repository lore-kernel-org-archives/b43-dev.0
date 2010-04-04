From: richardvoigt at gmail.com <richardvoigt@gmail.com>
Date: Sun, 4 Apr 2010 02:03:38 -0500
Subject: [14e4:4315] Fatal DMA errors on Dell Vostro 1310 (Celeron M540)
In-Reply-To: <4BB81CAD.10602@lwfinger.net>
References: <20100402171105.GA10965@tsubasa>
	<r2u69e28c911004030915x38f49291g64dc120a4998045d@mail.gmail.com>
	<y2u69e28c911004030915scb998ccbvb21885215a524740@mail.gmail.com>
	<201004032000.51561.mb@bu3sch.de> <4BB81CAD.10602@lwfinger.net>
Message-ID: <q2x2e59e6971004040003zf6d02683yee00dfe0969da517@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

> Again with the PCI-E core selected, if the PCI-E core revision is >= 6,
> set bit 0x8000 in MMIO register 0x280A.
>
> When running wl on my machine, these changes show up as the contents of
> 0x0800 going from 0x2801 to 0x3801 and 0x280A going from 0x6FDE to
> 0xEBDE. On John's Netbook, both values are already at the correct values.

In your example, bit 0x8000 at 0x280A is set, but bit 0x0400 is also
unset.  Don't know if that's important.
