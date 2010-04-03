From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 3 Apr 2010 18:15:19 +0200
Subject: [14e4:4315] Fatal DMA errors on Dell Vostro 1310 (Celeron M540)
In-Reply-To: <4BB766B9.7040909@lwfinger.net>
References: <20100402171105.GA10965@tsubasa> <4BB63193.5050804@lwfinger.net> 
	<20100403095749.GA21454@tsubasa> <4BB766B9.7040909@lwfinger.net>
Message-ID: <r2u69e28c911004030915x38f49291g64dc120a4998045d@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, Apr 3, 2010 at 6:03 PM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 04/03/2010 04:57 AM, Myhailo Danylenko wrote:
>> Fri, Apr 02, 2010 at 01:04:03PM -0500 ????? Larry Finger ???? ????????:
>>> Any difficulties with wl are not our problem. Complain to Broadcom.
>>
>> Yep, I know :)
>>
>>> Is that with DMA? If so, the margin of error is better on your machine
>>> than on most that have this problem, but you don't have an Atom.
>>
>> Yeah, but there's a great improvement between 2.6.32 and 2.6.33 - good
>> work!
>>
>> If some testing will be needed - I'll hang around for next three weeks
>> (maybe afterwards too) (though, in my case it's rather hard to determine
>> if it works fine or still fails).
>
> From what I remember, we changed nothing. There has been recent work on
> the DMA subsystem. Perhaps some of those changes introduced a better
> margin of error for whatever is happening.
>
> Larry

AFAIK my SSB PMU LDO voltage setting patches landed in 2.6.33. As
Michael said before, the PMU cutting power to the device at
inappropriate times can easily cause DMA errors, so any PMU

>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
