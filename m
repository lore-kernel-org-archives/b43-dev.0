From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 9 Mar 2011 01:47:03 +0100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTim4eRtmbXCbXSq-u7Md04ppXj5A41BQvFOXR0zw@mail.gmail.com>
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
	<AANLkTimz2_tReWABmqH5HsNjzYRW0fkidS1qmQbSAoqr@mail.gmail.com>
	<AANLkTin1SKsQSsMMUq-+0K_j=8GUxWQmP0HyyaxtD3z3@mail.gmail.com>
	<AANLkTimwByPJQe-LK+qYx8r+mjjqrku5ios8Lzn2N84W@mail.gmail.com>
	<AANLkTi=4zfLqC3uVi35TgehNYmm5SnoRph3=vPM+MWua@mail.gmail.com>
	<AANLkTimgfBXR6PxMM2V3DG9D0OvLhAd-PPkthN19UH8L@mail.gmail.com>
	<AANLkTinn=A6ySigu+8AOUtt3QDa7=NpO882Q_Ln76CA+@mail.gmail.com>
	<AANLkTin4udPC+iGcWpGF22q-jJ28eEL09tXTmCawxvfd@mail.gmail.com>
	<AANLkTim4eRtmbXCbXSq-u7Md04ppXj5A41BQvFOXR0zw@mail.gmail.com>
Message-ID: <AANLkTikk530LEg3E4-tB115jbrNh-Z+z2zR3+zju4DT6@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 9 marca 2011 01:44 u?ytkownik chris at martin.cc <chris@martin.cc> napisa?:
> 2011/3/9 Rafa? Mi?ecki <zajec5@gmail.com>
>>
>> W dniu 8 marca 2011 02:25 u?ytkownik chris at martin.cc <chris@martin.cc>
>> napisa?:
>> >
>> > 2011/3/8 Rafa? Mi?ecki <zajec5@gmail.com>
>> >>
>> >> W dniu 4 marca 2011 01:37 u?ytkownik chris at martin.cc <chris@martin.cc>
>> >> napisa?:
>> >> > Maybe the way to investigate this further is to look at what is being
>> >> > passed between
>> >> > mac80211 and b43, with the different firmwares.
>> >> >
>> >> > I will add some debugging on the weekend and see what I can uncover.
>> >>
>> >> Maybe it'd make sense to check what we get from hardware with older
>> >> vs. newer firmware?
>> >>
>> >> Attached patch was compile-tested only.
>> >>
>> >> It may put a lot of messages in your dmesg, don't try to run it for too
>> >> long ;)
>> >>
>
> I the just tested the patch
> Very curious.. ?I get nothing.
> I double checked that the patch was applied.
> I cleaned the object files, to ensure that it was?compiled
> I ensured that CONFIG_B43_DEBUG was enabled
> But the lines are never called

With which firmware did you test?

-- 
Rafa?
