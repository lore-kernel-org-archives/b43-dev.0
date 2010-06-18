From: neubauten84 <neubauten84@yahoo.it>
Date: Fri, 18 Jun 2010 07:31:53 +0000 (GMT)
Subject: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
In-Reply-To: <AANLkTikxsbCOqR4b-33BbZuBkqs4nNuObE7yvdgJQZIR@mail.gmail.com>
Message-ID: <231215.4169.qm@web27903.mail.ukl.yahoo.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Linux neubauten84-laptop 2.6.35-4-generic #5-Ubuntu SMP Wed Jun 16 18:53:19 UTC 2010 i686 GNU/LinuxIs there a newer ubuntu kernel?

--- Gio 17/6/10, G?bor Stefanik <netrolller.3d@gmail.com> ha scritto:

Da: G?bor Stefanik <netrolller.3d@gmail.com>
Oggetto: Re: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
A: "neubauten84" <neubauten84@yahoo.it>
Cc: b43-dev at lists.infradead.org
Data: Gioved? 17 giugno 2010, 22:31

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



      
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100618/888a1e4e/attachment.html>
