From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 24 Apr 2010 00:21:27 +0200
Subject: [14e4:4315] Dell Studio 1735, rfkill problem
In-Reply-To: <q2xb7f967271004231505m3e7de9a5j8f6a005f72541764@mail.gmail.com>
References: <q2xb7f967271004231505m3e7de9a5j8f6a005f72541764@mail.gmail.com>
Message-ID: <i2p69e28c911004231521m3c23db2excf59db2c52f0184d@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/4/24 ???????? ??????? <grygoriy.fuchedzhy@gmail.com>:
> Hi, I have 14e4:4315 on my Dell Studio 1735, I'm running gentoo with
> 2.6.33.2
> kernel and b43-firmware-4.150.10.5. Driver works great but I have problem
> with
> rfkill.
>
> I had enabled rfkill in my kernel
>> $ grep RFKILL /usr/src/linux/.config
>> CONFIG_RFKILL=y
>> CONFIG_RFKILL_LEDS=y
>> CONFIG_RFKILL_INPUT=y
>> # CONFIG_TOSHIBA_BT_RFKILL is not set
>
> My laptop has 2-positional hardware switch for wifi, when I toggle it off. I
> get
> following in dmesg:
>> b43-phy0: Radio hardware status changed to DISABLED
>> wlan0: deauthenticating from 00:23:69:2f:3f:01 by local choice (reason=3)
>> b43-phy0: Radio turned on by software
>> b43-phy0: The hardware RF-kill button still turns the radio physically
>> off. Press the button to turn it on.
>
> Also wifi led turns off.
>
> Then I turn it back on and get:
>> b43-phy0: Radio hardware status changed to ENABLED
>
> But wifi remains non-functional until I reboot. Wifi led is turned off until
> I
> reboot also.
>
> If turn switch on/off several times I get:
>> b43-phy0: Radio hardware status changed to DISABLED
>> b43-phy0: Radio hardware status changed to ENABLED
>> b43-phy0: Radio hardware status changed to DISABLED
>> b43-phy0: Radio hardware status changed to ENABLED
>
> But wifi still is not working.
>
> --
> Grygoriy Fuchedzhy
>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>
>

Check compat-wireless; IIRC LP-PHY rfkill support has been updated in 2.6.34.

BTW, does software-rfkill (using the rfkill command-line utility) work
correctly?
Specifically, the following scenarios are interesting:
-With the hardware-rfkill switch ON (i.e. radio enabled), try to bring
down the card using the rfkill utility. Does the card actually stop
transmitting?
-Try to turn it back on. Is the interface usable again?
-Turn the hardware switch OFF, and back ON. Then, use rfkill to
soft-disable and re-enable the card. Does this make it work again?

-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
