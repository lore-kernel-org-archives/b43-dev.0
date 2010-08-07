From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 7 Aug 2010 15:29:04 +0200
Subject: 14e4:4315 help install
In-Reply-To: <AANLkTi=ep953r4qxt7NWTwVbuA=aqH5iaL4vhPhWNVG6@mail.gmail.com>
References: <AANLkTinnsu-OdVcwMSj3YoynZj6_7umCo=a82Z48mDZw@mail.gmail.com> 
	<AANLkTin_ck8wFgWj5pyptYKTmMO-uu80dibbS_3NRAav@mail.gmail.com> 
	<AANLkTikB0k_6+rPb37M75wbNqE0TV9d_zu6DVbN5Tyjj@mail.gmail.com> 
	<AANLkTi=sOrwZqX4D+i4TWH_YNKoL6z56Ei8xVBNJWub2@mail.gmail.com> 
	<AANLkTikrn2qXPbzV=PXfsiBW5XmbpqQhhg8wrLhwgN93@mail.gmail.com> 
	<AANLkTi=ep953r4qxt7NWTwVbuA=aqH5iaL4vhPhWNVG6@mail.gmail.com>
Message-ID: <AANLkTinWgUuzFZfp+UgioxG6r0KrhjPyJXxxVmmOn+Do@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

The firmware is already installed in bt4 - only the driver needs to be updated.
After doing "make install", do a "make unload", and a "modprobe b43"
to load the updated b43 module.

And please, use the Reply-to-all button when replying to a mailing list.

2010/8/7 mic cat <micacatt@gmail.com>:
> Thank you for your help.
>
> I am download and install compat-wireless (make-makeinstall)
> But no firmwear install.
>
> My card no listed.
>
>
>
>
> 2010/8/6, G?bor Stefanik <netrolller.3d@gmail.com>:
>> BTW, remember to reply to all!
>>
>> 2010/8/6 G?bor Stefanik <netrolller.3d@gmail.com>:
>>> Oops... yes, bt4 has a 2.6.31 kernel. Compile and install
>>> compat-wireless to get 4312 support.
>>>
>>> 2010/8/6 mic cat <micacatt@gmail.com>:
>>>> Tank for help but in bt4 my card no reconize
>>>> i am test modprob b43 but no...
>>>>
>>>>
>>>>
>>>> 2010/8/6, G?bor Stefanik <netrolller.3d@gmail.com>:
>>>>> On Fri, Aug 6, 2010 at 9:52 PM, mic cat <micacatt@gmail.com> wrote:
>>>>>> Hi all
>>>>>> Please i want help for install firmwear B43:
>>>>>>
>>>>>> -Bcm 4315 14e4:4315 rev 01
>>>>>
>>>>> 14e4:4315 is BCM4312.
>>>>>
>>>>>> or
>>>>>> -BCM 4322 14E4:432B REV01
>>>>>>
>>>>>>
>>>>>>
>>>>>> I want try in backtrack4. But i no say install B43.
>>>>>
>>>>> BackTrack 4 already includes firmware for b43 ot-of-the-box.
>>>>>
>>>>>>
>>>>>> Help me please. thank you
>>>>>> _______________________________________________
>>>>>> b43-dev mailing list
>>>>>> b43-dev at lists.infradead.org
>>>>>> http://lists.infradead.org/mailman/listinfo/b43-dev
>>>>>>
>>>>>>
>>>>>
>>>>>
>>>>>
>>>>> --
>>>>> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>>>>>
>>>>
>>>
>>>
>>>
>>> --
>>> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>>>
>>
>>
>>
>> --
>> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>>
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
