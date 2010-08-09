From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Mon, 9 Aug 2010 23:10:27 +0200
Subject: 14e4:4315 help install
In-Reply-To: <AANLkTinRY5_OrJZOrhzStbxVuGtmY4yoG-_rg2h1Emqq@mail.gmail.com>
References: <AANLkTinnsu-OdVcwMSj3YoynZj6_7umCo=a82Z48mDZw@mail.gmail.com> 
	<AANLkTin_ck8wFgWj5pyptYKTmMO-uu80dibbS_3NRAav@mail.gmail.com> 
	<AANLkTikB0k_6+rPb37M75wbNqE0TV9d_zu6DVbN5Tyjj@mail.gmail.com> 
	<AANLkTi=sOrwZqX4D+i4TWH_YNKoL6z56Ei8xVBNJWub2@mail.gmail.com> 
	<AANLkTikrn2qXPbzV=PXfsiBW5XmbpqQhhg8wrLhwgN93@mail.gmail.com> 
	<AANLkTi=ep953r4qxt7NWTwVbuA=aqH5iaL4vhPhWNVG6@mail.gmail.com> 
	<AANLkTinWgUuzFZfp+UgioxG6r0KrhjPyJXxxVmmOn+Do@mail.gmail.com> 
	<AANLkTin0+yt+vr6+YgwVqG5CV1ZCnsDYTUJRTYrL2PH-@mail.gmail.com> 
	<AANLkTikYZAMW4eT5mnMpPemW=M79TYf11qratTdB1oZ3@mail.gmail.com> 
	<AANLkTimiX1_dO-10M3=QTQZo9e9PRbSL-97xe2y6ctJt@mail.gmail.com> 
	<AANLkTincTOFVTkk53nX1hdrjP2R21Jk_JG8Rmda8RX2p@mail.gmail.com> 
	<AANLkTi=vDaSMgc=xORaH92iwva4qKattGvMQqpR5XJxB@mail.gmail.com> 
	<AANLkTimggEXJP=xod_6L3VvqCZgwKySwKsY3E3SPt-xx@mail.gmail.com> 
	<AANLkTikKuAtNbA8qBqZ=fHH0D_wAeLpu8xh3c6F04w+y@mail.gmail.com> 
	<AANLkTi=brC-AYj2V86k6Rgh23Dv2fMkFD-pOEboWbdO-@mail.gmail.com> 
	<AANLkTinznB3yN-_y72o5jXv-5joDXyvPVXZxYsU4dQWw@mail.gmail.com> 
	<AANLkTikifxA1PT2OCiZHECVj=otRqhcDBAFTUG-HWfp1@mail.gmail.com> 
	<AANLkTinRY5_OrJZOrhzStbxVuGtmY4yoG-_rg2h1Emqq@mail.gmail.com>
Message-ID: <AANLkTikT3P-W2_i1y+C0cqd-rjXcjpx8nkDoFynRoV_-@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2010/8/9 mic cat <micacatt@gmail.com>:
> Hi thank reply
>
> I think 2.6.35 is DMA ?"http://pastebin.com/8KzwwXP4"
> but 2.6.35 my card no stop monitoring
> ?just stop after 2 min "network managed"
>
> Have you a solution for problem? thank
>
>

Indeed, that is a DMA error. What's odd, though, is that after the
error, the card does manage to reconnect once - even though the usual
behavior is complete unusability immediately beginning with the moment
of the DMA error.

Two workarounds are known: one is to load b43 with "qos=0 nohwcrypt=1
pio=1" (this disables DMA and falls back to PIO), the other is to load
and unload the Broadcom-proprietary "wl" driver before loading b43.

>
> 2010/8/9, Rafa? Mi?ecki <zajec5@gmail.com>:
>> 2010/8/9 mic cat <micacatt@gmail.com>:
>>> My card 4312 no work "2.6.34" and "2.6.35" kernel
>>>
>>> my card stop work after 2min managed, and monitoring.
>>>
>>> Please how to fix this.
>>
>> What do you see in "dmesg" after card stops working in 2.6.35? Is this
>> again DMA error?
>>
>> --
>> Rafa?
>>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
