From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 19 Jul 2012 10:07:23 -0500
Subject: BCM4306 (rev 5) Problem with firmware loading since kernel 3.4
In-Reply-To: <20120719085208.GA17532@dirichlet.Morel>
References: <20120719085208.GA17532@dirichlet.Morel>
Message-ID: <500822AB.9080601@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 07/19/2012 03:52 AM, Felix Janda wrote:
> Hello,
>
> I'm using the card:
>
> 03:03.0 0280: 14e4:4320 (rev 03)
>
> Since kernel 3.4 b43 has problems with loading the firmware for me.
> Bisecting gave
>
> # bad: [6b6fa5868eec26bdc6a83543cebb8cf832a2645a] b43: Load firmware from a work queue and not from the probe routine
> git bisect bad 6b6fa5868eec26bdc6a83543cebb8cf832a2645a
> # good: [a3ea2c76b193be5794e0de6aff66e14c21b904f8] b43legacy: Load firmware from work queue instead of from probe routine
> git bisect good a3ea2c76b193be5794e0de6aff66e14c21b904f8
>
> With the problematic kernel dmesg tells me:
>
> [    1.230562] b43-phy0: Broadcom 4306 WLAN found (core revision 5)
> [    1.363845] b43-phy0 debug: Found PHY: Analog 2, Type 2, Revision 2
> [    1.363866] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 2
> [   61.944937] b43-phy0 ERROR: Firmware file "b43/ucode5.fw" not found
> [   61.944942] b43-phy0 ERROR: Firmware file "b43-open/ucode5.fw" not found
> [   61.944945] b43-phy0 ERROR: You must go to http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and download the correct firmware for this driver version. Please carefully read all instructions on this website.
>
> Surprisingly, I could get the driver to load the firmware by including
> b43/ucode5.fw in the kernel. Furthermore it seems to be able to load
> other firmware from /lib/firmware. Now (actually this output is from
> the current kernel from git) dmesg says:
>
> [    1.224694] b43-phy0: Broadcom 4306 WLAN found (core revision 5)
> [    1.358016] b43-phy0 debug: Found PHY: Analog 2, Type 2, Revision 2
> [    1.358037] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 2
> [   62.012797] Registered led device: b43-phy0::tx
> [   62.019411] Registered led device: b43-phy0::rx
> [   62.022505] Registered led device: b43-phy0::radio
> [   62.512028] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
> [   62.512034] b43-phy0 warning: No "pcm5.fw" firmware file found. Hardware accelerated cryptography is disabled.
> [   62.512037] b43-phy0 warning: You must go to http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and download the correct firmware for this driver version. Please carefully read all instructions on this website.
> [   62.544048] b43-phy0 debug: Chip initialized
> [   62.544203] b43-phy0 debug: 30-bit DMA initialized
> [   62.544244] b43-phy0 debug: QoS enabled
> [   62.548076] b43-phy0 debug: Wireless interface started
> [   62.548126] b43-phy0 debug: Adding Interface type 2
>
> The delay of 60 seconds is kind of inconvenient...
>
> Do you have an idea what could be the problem or give me some hints how
> to debug it?

Is b43 built into your kernel rather than as a module? If so, then the problem 
is known. I have started generating a fix, but it is not yet ready. As a 
workaround, change your kernel configuration so that b43 and ssb are modules.

If b43 is already a module, please let me know.

Larry
