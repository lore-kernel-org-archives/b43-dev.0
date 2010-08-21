From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 21 Aug 2010 22:19:57 +0200
Subject: Problem with BCM4312 802.11b/g [14e4:4315]
In-Reply-To: <4C701512.7020807@lwfinger.net>
References: <20100821193150.fbd36368.cyrille@cbiot.fr>
	<AANLkTi=cx2SzeLyS67v2zrTr2AGe048MajOFw-zZAqWH@mail.gmail.com>
	<20100821194610.e91ce1fd.cyrille@cbiot.fr>
	<4C701512.7020807@lwfinger.net>
Message-ID: <AANLkTimqgmLDKQbVZ9v0-Kg9EbSmaf7GGb4RWiUvT1+6@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, Aug 21, 2010 at 8:04 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 08/21/2010 12:46 PM, Cyrille wrote:
>>
>> Thanx !
>>
>>> You should put it in b43, not b43-open - b43-open is only for
>>> OpenFWWF. (It is not actually "specific to BLAG" - all distros can use
>>> it to house OpenFWWF.) And OpenFWWF doesn't support LP-PHY.
>>
>>
>> but even with b43 i had same errors.
>>
>>
>> I try this http://wireless.kernel.org/en/users/Drivers/b43#device_firmware_installation
>> (Section : You are using the b43 driver with an LP-PHY card (e.g. BCM4312))
>> but don't work.
>>
>>
>> What method recommends you to install this driver?
>
> If you want to use open software for everything, there is no way to operate the
> BCM4312 802.11b/g card with a PCI ID of 14e4:4315. The open-source driver b43
> needs the firmware extracted with fwcutter, and that firmware is not open
> source. The Broadcom hybrid driver is the only other option; however, it is
> worse as the driver code and the firmware are both closed source.
>
> If you want to use the card, you will need to find a way to relax the
> restriction on closed-source firmware or find another distro.
>
> I do not like the idea of having to use closed-source firmware, but at least it
> cannot cause your kernel to go crazy and destroy your file system the way a
> closed-source driver could.
>
> Larry
>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>

One thing to try: the latest stable compat-wireless release. It will
bypass any driver modifications done by BLAG, and give you a b43 that
will accept Broadcom's firmware.
