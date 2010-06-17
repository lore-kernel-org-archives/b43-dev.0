From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Thu, 17 Jun 2010 22:31:24 +0200
Subject: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
In-Reply-To: <973385.2026.qm@web27908.mail.ukl.yahoo.com>
References: <AANLkTilXkTaDu7F4WrkKosNqyGis3Sqk8dUJVs1RnUml@mail.gmail.com> 
	<973385.2026.qm@web27908.mail.ukl.yahoo.com>
Message-ID: <AANLkTikxsbCOqR4b-33BbZuBkqs4nNuObE7yvdgJQZIR@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/6/17 neubauten84 <neubauten84@yahoo.it>
>
> Ok..I report again the dma error:
> b43-phy0 ERROR: Fatal DMA error: 0x00000000, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000
> b43-phy0 ERROR: This device does not support DMA on your system. Please use PIO instead.
> b43-phy0: Controller RESET (DMA error) ...
> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> b43-phy0: Controller restarted
> The expression "It doesn't work" was referred to your suggest to remove b43.conf file..the kernel doesn't auto choose the right mode..

You are still not running the new kernel. You should see b43
auto-switching to PIO here.
Check the output of "uname -r".

--
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
