From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Fri, 1 Oct 2010 21:48:52 +0200
Subject: BCM4321 - These devices have unsupported N-PHYs. We are working
	on it.
In-Reply-To: <AANLkTine5n1Bu8EgUYNaN7RpYBK9MMGv9ofDsEuC0Ve2@mail.gmail.com>
References: <AANLkTi=Vkq_jb5C6rH2TEjydd4_4Q4614wqmvPfShNib@mail.gmail.com>
	<384852.82903.qm@web111409.mail.gq1.yahoo.com>
	<AANLkTine5n1Bu8EgUYNaN7RpYBK9MMGv9ofDsEuC0Ve2@mail.gmail.com>
Message-ID: <AANLkTiknCxs5RrC3x3vUh2or3t1sSHnNyq6Tp6AzAzZL@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

P.S. Remember to use Reply to All when replying to a list.

2010/10/1 G?bor Stefanik <netrolller.3d@gmail.com>:
> 2010/10/1 Ariel Pedraza <pedrazaa@yahoo.com>:
>> Do I have to bind to the b43 instead the wl? using this procedure "Manual driver binding and unbinding" (http://lwn.net/Articles/143397/)...
>
> You actually need to bind it to ssb, the back-end module for b43.
> also, blacklist wl while testing. (However, I would say it's easier to
> add the PCI ID of your card to ssb directly rather than using the
> bind/unbind files.)
>
>>
>> --- El vie, 10/1/10, G?bor Stefanik <netrolller.3d@gmail.com> escribi?:
>>
>>> De: G?bor Stefanik <netrolller.3d@gmail.com>
>>> Asunto: Re: BCM4321 - These devices have unsupported N-PHYs. We are working on it.
>>> A: "Ariel Pedraza" <pedrazaa@yahoo.com>
>>> Cc: b43-dev at lists.infradead.org
>>> Fecha: viernes, 1 de octubre de 2010, 05:53 am
>>> On Thu, Sep 30, 2010 at 7:42 PM,
>>> Ariel Pedraza <pedrazaa@yahoo.com>
>>> wrote:
>>> > Hi, how far are you to support this chip BCM4321?
>>>
>>> I've asked this question earlier; all code for BCM4321
>>> seems to be in
>>> place (though not for BCM4322), but it is still disabled as
>>> BROKEN.
>>>
>>> >
>>> > Is this a new chip BCM4727 not listed on your page (http://linuxwireless.org/en/users/Drivers/b43)?
>>> >
>>> > dmesg | grep eth1
>>> > eth1: Broadcom BCM4727 802.11 Hybrid Wireless
>>> Controller 5.60.48.36
>>>
>>> This is BCM4313, supported in brcm80211. wl_hybrid
>>> incorrectly uses
>>> the PCI device ID (0x4727) rather than the SSB chip ID
>>> (decimal(?)
>>> 4313) to identify the card.
>>>
>>> >
>>> >
>>> >
>>> >
>>> >
>>> > _______________________________________________
>>> > b43-dev mailing list
>>> > b43-dev at lists.infradead.org
>>> > http://lists.infradead.org/mailman/listinfo/b43-dev
>>> >
>>>
>>>
>>>
>>> --
>>> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and
>>> [A]dware. :-)
>>>
>>
>>
>>
>>
>
>
>
> --
> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
