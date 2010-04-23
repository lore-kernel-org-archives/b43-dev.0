From: =?KOI8-R?B?59LJx8/Sycog5tXexcTWyQ==?= <grygoriy.fuchedzhy@gmail.com>
Date: Sat, 24 Apr 2010 01:05:01 +0300
Subject: [14e4:4315] Dell Studio 1735, rfkill problem
Message-ID: <q2xb7f967271004231505m3e7de9a5j8f6a005f72541764@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi, I have 14e4:4315 on my Dell Studio 1735, I'm running gentoo with
2.6.33.2
kernel and b43-firmware-4.150.10.5. Driver works great but I have problem
with
rfkill.

I had enabled rfkill in my kernel
> $ grep RFKILL /usr/src/linux/.config
> CONFIG_RFKILL=y
> CONFIG_RFKILL_LEDS=y
> CONFIG_RFKILL_INPUT=y
> # CONFIG_TOSHIBA_BT_RFKILL is not set

My laptop has 2-positional hardware switch for wifi, when I toggle it off. I
get
following in dmesg:
> b43-phy0: Radio hardware status changed to DISABLED
> wlan0: deauthenticating from 00:23:69:2f:3f:01 by local choice (reason=3)
> b43-phy0: Radio turned on by software
> b43-phy0: The hardware RF-kill button still turns the radio physically
off. Press the button to turn it on.

Also wifi led turns off.

Then I turn it back on and get:
> b43-phy0: Radio hardware status changed to ENABLED

But wifi remains non-functional until I reboot. Wifi led is turned off until
I
reboot also.

If turn switch on/off several times I get:
> b43-phy0: Radio hardware status changed to DISABLED
> b43-phy0: Radio hardware status changed to ENABLED
> b43-phy0: Radio hardware status changed to DISABLED
> b43-phy0: Radio hardware status changed to ENABLED

But wifi still is not working.

--
Grygoriy Fuchedzhy
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100424/df4c5975/attachment.htm>
