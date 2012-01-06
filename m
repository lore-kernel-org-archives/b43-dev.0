From: Tyler Kocheran <rfkrocktk@gmail.com>
Date: Thu, 5 Jan 2012 18:51:29 -0800
Subject: poor performance with BCM4331 and 3.2
In-Reply-To: <CAM-fOTRG63M9c350+t3nxAjfWAuxZMSH4U1gACExKq0ZxHuqtQ@mail.gmail.com>
References: <CAM-fOTRG63M9c350+t3nxAjfWAuxZMSH4U1gACExKq0ZxHuqtQ@mail.gmail.com>
Message-ID: <CAPTk+sa-vGgaTSE=UqXsf6uHM9nqG-Ne9vYgaMsxQ2yFwdCDOQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

George,
Also running a MacBook Pro (8,3) and seeing similar issues. I'll be
connected to the AP, but I'll lose all internet connectivity every so
often. Disconnecting and reconnecting to the AP works, or unloading and
reloading the module. I'd like to help contribute to this to help it get
fixed.

I'm even willing to donate root SSH access to the developers, if that
helps.

Thanks,
 - TK



On Thu, Jan 5, 2012 at 4:48 PM, George Masgras <gmasgras@gmail.com> wrote:

> Hello,
>  I've been having issues with getting the b43 driver to work reliably
> in Ubuntu 11.10 on a MacbookPro 8,1.  The problem is that the driver
> seems to be losing connection very often, especially when I have
> multiple programs hitting the net. (s.a. Spotify, Firefox and Chrome),
> sometimes even causing kernel panics( pre kernel 3.2 final). I'm now
> using kernel 3.2 vanilla with compat-wireless-2012-01-03 compiled on
> top and I haven't gotten a kernel panic yet but I will post it if I
> do.
> I've also noticed that the less people in the office using WIFI, the
> more stable the connection is (there are ~25 people in the whole
> office using WIFI,  10 of them in the same room as me).
> Wicd reports between 80-100% signal strength and the encryption is
> WPA2 PSK. The AP is a PepWave AP One (3.1.0) and it is behind a wall,
> in a room 15ft away from my desk.
>
> more info:
>
> $ uname -a:
> Linux geomas-MacBookPro 3.2.0-custom #2 SMP PREEMPT Thu Jan 5 11:14:09
> PST 2012 x86_64 x86_64 x86_64 GNU/Linux
>
> $ sudo lspci -vvn|grep 43 -A7:
> 03:00.0 0280: 14e4:4331 (rev 02)
>        Subsystem: 106b:00d6
>        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx-
>        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>        Latency: 0, Cache Line Size: 256 bytes
>        Interrupt: pin A routed to IRQ 17
>        Region 0: Memory at a0600000 (64-bit, non-prefetchable) [size=16K]
>        Capabilities: [40] Power Management version 3
>
> dmesg:
> http://pastebin.com/0zAQzwVY
>
> kern.log:
> http://pastebin.com/Ncf21bWY
>
>
> Thank you for all the great work!
>
> George
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120105/ed0ac36f/attachment.html>
