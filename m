From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 27 Nov 2010 00:25:35 +0100
Subject: brcm80211 driver inject
In-Reply-To: <823341.99355.qm@web111416.mail.gq1.yahoo.com>
References: <AANLkTinqnPS7E9mCnuQO5MG4Sts02qnZiw=d1c=U7cDQ@mail.gmail.com>
	<823341.99355.qm@web111416.mail.gq1.yahoo.com>
Message-ID: <AANLkTikp0r4H-FKP-9PAc83yD9AVd-JFfs-WxBCmkujc@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/11/26 Ariel Pedraza <pedrazaa@yahoo.com>:
> Hi, the /net/wireless/chan.c is different today, the problem persist (negative channel) but cannot apply this patch anymore even manually? do you know where can I found a new patch version or tell me how to change in the new source code please?
>
> Thank you

Hi!

Just checked the current wireless-testing, the code is still the same.
What tree are you on?

--G?bor

>
>
> --- El lun, 10/18/10, G?bor Stefanik <netrolller.3d@gmail.com> escribi?:
>
>> De: G?bor Stefanik <netrolller.3d@gmail.com>
>> Asunto: Re: brcm80211 driver inject
>> A: "Ariel Pedraza" <pedrazaa@yahoo.com>
>> Cc: b43-dev at lists.infradead.org
>> Fecha: lunes, 18 de octubre de 2010, 02:23 pm
>> On Mon, Oct 18, 2010 at 3:48 PM,
>> Ariel Pedraza <pedrazaa@yahoo.com>
>> wrote:
>> > Hi, did you know if there is a solution for this
>> error?:
>> >
>> > "mon0 is on channel -1, but the AP uses channel 1"
>> >
>> > on programs like aireplay-ng, I'm using the brcm80211
>> driver.
>> >
>> > Thanks
>>
>> Known bug in mac80211.
>> http://patches.aircrack-ng.org/channel-negative-one-maxim.patch
>> fixes
>> it, but is unsuitable for inclusion, and some kernel
>> developers
>> actually consider this a feature, and refuse to fix it.
>>
>> >
>> >
>> >
>> >
>> > _______________________________________________
>> > b43-dev mailing list
>> > b43-dev at lists.infradead.org
>> > http://lists.infradead.org/mailman/listinfo/b43-dev
>> >
>>
>>
>>
>> --
>> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and
>> [A]dware. :-)
>>
>
>
>
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
