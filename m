From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 01 Nov 2013 12:07:18 -0500
Subject: BCM43228
In-Reply-To: <5273D018.7080607@telenet.be>
References: <52737A9C.3020404@telenet.be> <5273C948.9060409@lwfinger.net>
 <5273D018.7080607@telenet.be>
Message-ID: <5273DFC6.8000305@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ruben De Smet <ruben.de.smet@telenet.be>, b43-dev@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>, brcm80211-dev-list@broadcom.com

On 11/01/2013 11:00 AM, Ruben De Smet wrote:
> AFAIK, broadcom only offers it's drivers for intel x86 and x64_86; I
> guess by MIPS, you mean the architecture? (why wouldn't the intel
> driver work? Pretty unknown on the subject ;) )
>
> I read the WIP mail about the 227 chip, I could possibly wait for that
> one to be released and test it out on mine?
>
> For the record: the issue I'm having is as follows: when connecting
> via the bluetooth part of the chip to my phone and using DUN to
> connect to the internet, everything works fine until I shut down the
> connection. Then my kernel panics. (Another issue of course is the
> fact that wl is the only closed source thing in my kernel running atm
> on my notebook...)
>
> On brcmsmac: is linux-wireless the right mailinglist to post to then?
> I see that the range of supported devices is more close to my chip
> than b43 is ;)
> I added brcm80211-dev-list at broadcom.com to this mail too, which looks
> like the more appropriate mailinglist to post the issue to.
>
> R
>
> PS. snippet of the output of 'lspci -nn':
>
> 03:00.0 Network controller [0280]: Broadcom Corporation BCM43228
> 802.11a/b/g/n [14e4:4359]
>
> Other information on request, will try to answer asap.

The MIPS drivers are part of the codes used in various SoC implementations used 
in wireless routers. Disassembling an x86 code stream is much harder than for a 
machine like MIPS where all instructions are the same size.

Larry
