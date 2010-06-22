From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Wed, 23 Jun 2010 00:47:53 +0200
Subject: Recent results with BCM4312 on Netbook
In-Reply-To: <4C20D884.3010501@lwfinger.net>
References: <4C20D884.3010501@lwfinger.net>
Message-ID: <AANLkTikjzHcT9L472CFJ2LKtOiEUIk2S78_S_s-IxHjl@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Michael Buesch <mb@bu3sch.de>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Tue, Jun 22, 2010 at 5:36 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> Michael,
>
> I have some good news. The Netbook that came from John is suddenly
> developing DMA errors for the BCM4312, even though it does not have a
> Phoenix BIOS. I have no idea why it did not fail this way earlier, but at
> least I have a machine to debug that failure.

Suddenly developing DMA errors? Hmm... maybe it's a hardware issue
with the card, from which wl can silently recover?

>
> My first discovery is that if PIO mode is to be used, it is not sufficient
> to load the module with the "pio=1" option, but that both "qos=0" and
> "nohwcrypt=1" options must also be used, at least for WPA/WPA2 networks.
> No other combination works. In addition, the automatic failover to PIO
> mode does not work unless those two options were used when the module was
> loaded. Thus both of the following work:
>
> modprobe b43 pio=1 qos=0 nohwcrypt=1
> modprobe b43 qos=0 hwcrypt=1
>
> The second example gets a fatal DMA error and resets the controller before
> the network comes up. I tried setting the latter two options before the
> controller reset call in the failover, but that did not work.
>
> If you have suggestions on changes in the switch from DMA to PIO mode,
> please send them to me. In the meantime, I will be looking at differences
> in the MMIO traces between wl and b43 to try to fix the DMA problem at the
> source of the trouble.
>
> Larry
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
