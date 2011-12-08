From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 8 Dec 2011 10:34:27 +0100
Subject: low throughputs with 14e4:4353
In-Reply-To: <47DE8DA6-544D-4D0F-BD7A-306E5E08F113@ing.unibs.it>
References: <77990757-D72B-4BF7-BEEB-5EDB9486236B@ing.unibs.it>
 <CACna6rxjpXegcp1uAhUnAZH7UhwjfFGFXO1-D1QTUWL+DxMvDg@mail.gmail.com>
 <CACna6ryZiQnCeOHSDZPA0zJ679erJJNtAwU6qqGdVKnpiai4cg@mail.gmail.com>
 <CACna6rwQXmF1XA_jhpEPbTUP1D++QBkt4fZ5WVmhMdT4C5XXxA@mail.gmail.com>
 <CACna6rwPEYiZCq+4Di_4xQBF-rQQNw5gVTMkunm2mqoUVBP1Tw@mail.gmail.com>
 <47DE8DA6-544D-4D0F-BD7A-306E5E08F113@ing.unibs.it>
Message-ID: <CACna6ryWZQvvTzKioKk=R2VPxsD3snpkaXVrbEUwSDkr+kc7Pg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 8 grudnia 2011 10:21 u?ytkownik
<francesco.gringoli@ing.unibs.it> napisa?:
>
> On Dec 7, 2011, at 1:01 PM, Rafa? Mi?ecki wrote:
>
>> W dniu 5 grudnia 2011 21:39 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
>>> W dniu 29 listopada 2011 22:36 u?ytkownik Rafa? Mi?ecki
>>> <zajec5@gmail.com> napisa?:
>>>> I'll give it a rest and will try in next days again.
>>>
>>> It really seems it's something spur avoidance related (and so most
>>> probably CC PLL related). After applying my patch implementing SPUR
>>> avoidance, card stops receiving anything. I'll dig more around it.
>>
>> I've found bug in my implementation and fixed it. Today evening I'll
>> test if my patch fixes performance anyhow (I need physical access).
> Rafal,
>
> I did some mmio traces and checked what happens when changing txpower.
>
> 1) values in N-PHY tables 0x1A and 0x1B are changed, e.g., for txpower 5 and txpower 10 they are the same, for txpower 15 they are different so I guess there exist thresholds. Unfortunately I don't even know what these tables are.
>
> 2) value in PHY register 0x1ea is changed according to the configured power value. As I can read in specs this is the TX power control target power for both radios: e.g., for txpower 5 => 0x2020, for txpower 10 => 0x2c2c, for txpower 15 => 0x3c3c.
>
> Then I switched to b43 and load a custom firmware to analyze how register 0x1ea is setup and it holds always 0x0000. I forced it to be 0x2c2c and magically the throughput increased to ~ 3Mb/s. Unfortunately when I try 0x3c3c (corresponding to txpower 15) I get only phy-transmission errors.

I can see a lot of differences between wl and b43, a lot to validate&test.

Do you have some magic scripts for parsing MMIO dumps? I hope you do,
otherwise it's impossible to analyze that ;)

You can try adding
nphy->txpwrctrl = true;
in function b43_nphy_op_prepare_structs if you wish test something
right now. I've noticed this missing part today morning, but won't
able to test until evening.

-- 
Rafa?
