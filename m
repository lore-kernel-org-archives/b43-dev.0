From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 29 Jul 2013 23:23:43 +0200
Subject: [PATCH V2] fwcutter: Add firmware 6.30.163.46
In-Reply-To: <51F6DB65.4000302@hauke-m.de>
References: <1375124213-28051-1-git-send-email-Larry.Finger@lwfinger.net>
 <CACna6rzu4U+v1v1vj-+XyJHpReXMB3nscKP_C5jjbAAbKLQcKA@mail.gmail.com>
 <CACna6rxvnU_cwphP+Vvn_-CLuEcqMufEo4Zk7-Xqd63OA4Zmqg@mail.gmail.com>
 <51F6DB65.4000302@hauke-m.de>
Message-ID: <CACna6ryQTWhyFtrWaKc_E-Zx_O16qb78uYRCwHT6x6n3pQzkVw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, m@bues.ch

2013/7/29 Hauke Mehrtens <hauke@hauke-m.de>:
> On 07/29/2013 10:07 PM, Rafa? Mi?ecki wrote:
>> 2013/7/29 Rafa? Mi?ecki <zajec5@gmail.com>:
>>> 2013/7/29 Larry Finger <Larry.Finger@lwfinger.net>:
>>>> This firmware version can be extracted from the GPL tarball for the ASUS
>>>> GPL code for the RT-AC66U 802.11ac Dual-Band Wireless-AC1750 Gigabit Router.
>>>>
>>>> I believe this to be the first instance of 802.11ac firmware for Broadcom
>>>> hardware. The firmware is version 784.2.
>>>>
>>>> Note: The http://www.lwfinger.com/broadcom-wl-6.30.163.46.tar.bz2 is the URL
>>>> of the extracted apsta binary. The full GPL package is at
>>>> http://dlcdnet.asus.com/pub/ASUS/wireless/RT-AC66U/GPL_RT_AC66U_3004372.zip.
>>>
>>> There is some (probably outdated) list of Broadcom 802.11ac routers:
>>> ASUS RT-AC66U
>>> Linksys EA6500
>>> Netgear R6300
>>>
>>> Did you compare wl.ko drivers from the 2 other firmwares? Is this the
>>> newest one?
>>>
>>> Did you start AC-PHY RE process?
>>
>> In case you wonder, I have a MIPS router with BCM4331 + BCM4360,
>> unfrotunately there isn't mmiotrace available for MIPS, so I can't
>> start RE that way :(
>>
>> I may think about buying PCE-AC66 at some point.
>>
> Hi Rafa?,
>
> I have a Netgear R6250 (BCM4708 ARM Contex-A9) router with BCM4331 +
> BCM4360 and I am currently adding support for it to OpenWrt and mainline
> Linux kernel, could mmiotrace work on this CPU?

mmiotrace is x86/x86_64 only at this point :(

-- 
Rafa?
