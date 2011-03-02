From: chris at martin.cc <chris@martin.cc>
Date: Thu, 3 Mar 2011 10:02:51 +1100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <4D6EBDE0.8020005@lwfinger.net>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTikcvuBdOi=LM5Bx9cxO2yY=0BzSTn18r938KjSr@mail.gmail.com>
	<AANLkTi=gjvA5=UxHENZ1ALcxomPEdL7NGeb7oFtdZ+t3@mail.gmail.com>
	<4D6EBDE0.8020005@lwfinger.net>
Message-ID: <AANLkTi=n6fL8c4ZX9_DBOLi6VqB1h=dSh6LF7RTOO-KU@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

----------------------------------------------------------
Chris Martin
m: +61 419 812 371
----------------------------------------------------------



On Thu, Mar 3, 2011 at 9:00 AM, Larry Finger <Larry.Finger@lwfinger.net>
wrote:
> On 03/02/2011 06:20 AM, chris at martin.cc wrote:
>>
>> 2011/3/2 Rafa? Mi?ecki<zajec5@gmail.com>:
>>>
>>> I checked for kernels in OpenWRT.
>>> OpenWRT 10.03 is 2.6.32.10
>>> OpenWRT 10.03.1-rc4 is 2.6.32.25
>>>
>>> I can see 2.6.32(.0) at least have:
>>> b43: Add LP PHY Analog Switch Support
>>> that's good.
>>>
>>> Maybe compiling b43 with debugging could help to understand what is
>>> going on? Could insmod b43.ko pio=1 be workaround?
>>>
>>
>> Just to clarify.  I tested 10.03-rc4 - and trunk wicth is 2.6.36.x
>> I will also confirm the versions tomorrow
>
> Chris,
>
> This problem is getting more and more curious.
>
> I have two systems with 14e4:4315 LP PHY cards. One is x86_64 and the
other
> is i386. I added kmemleak checking to each and have been running
networking
> for about 3 hours on the 64-bit system, and 18 hours for 32 bit. Neither
> shows any memory leaks associated with b43. Both are using 508.1084
> firmware. Most of the tests were in STA mode, but a few minutes with one
> hosting an AP for the other has not shown any leaks.
>
> I imagine that memory is pretty tight on the openWRT system. Does "free"
> work there? If so, what are the results just before you start the
bridging?
>
> Larry
