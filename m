From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Sat, 10 Dec 2011 11:17:58 +0100
Subject: low throughputs with 14e4:4353
In-Reply-To: <CACna6ryWZQvvTzKioKk=R2VPxsD3snpkaXVrbEUwSDkr+kc7Pg@mail.gmail.com>
References: <77990757-D72B-4BF7-BEEB-5EDB9486236B@ing.unibs.it>
 <CACna6rxjpXegcp1uAhUnAZH7UhwjfFGFXO1-D1QTUWL+DxMvDg@mail.gmail.com>
 <CACna6ryZiQnCeOHSDZPA0zJ679erJJNtAwU6qqGdVKnpiai4cg@mail.gmail.com>
 <CACna6rwQXmF1XA_jhpEPbTUP1D++QBkt4fZ5WVmhMdT4C5XXxA@mail.gmail.com>
 <CACna6rwPEYiZCq+4Di_4xQBF-rQQNw5gVTMkunm2mqoUVBP1Tw@mail.gmail.com>
 <47DE8DA6-544D-4D0F-BD7A-306E5E08F113@ing.unibs.it>
 <CACna6ryWZQvvTzKioKk=R2VPxsD3snpkaXVrbEUwSDkr+kc7Pg@mail.gmail.com>
Message-ID: <748B7C00-E265-4AA4-A84C-B7DBDC7B6274@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Dec 8, 2011, at 10:34 AM, Rafa? Mi?ecki wrote:

> W dniu 8 grudnia 2011 10:21 u?ytkownik
> <francesco.gringoli@ing.unibs.it> napisa?:
>> 
>> On Dec 7, 2011, at 1:01 PM, Rafa? Mi?ecki wrote:
>> 
>>> W dniu 5 grudnia 2011 21:39 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
>>>> W dniu 29 listopada 2011 22:36 u?ytkownik Rafa? Mi?ecki
>>>> <zajec5@gmail.com> napisa?:
>>>>> I'll give it a rest and will try in next days again.
>>>> 
>>>> It really seems it's something spur avoidance related (and so most
>>>> probably CC PLL related). After applying my patch implementing SPUR
>>>> avoidance, card stops receiving anything. I'll dig more around it.
>>> 
>>> I've found bug in my implementation and fixed it. Today evening I'll
>>> test if my patch fixes performance anyhow (I need physical access).
>> Rafal,
>> 
>> I did some mmio traces and checked what happens when changing txpower.
>> 
>> 1) values in N-PHY tables 0x1A and 0x1B are changed, e.g., for txpower 5 and txpower 10 they are the same, for txpower 15 they are different so I guess there exist thresholds. Unfortunately I don't even know what these tables are.
>> 
>> 2) value in PHY register 0x1ea is changed according to the configured power value. As I can read in specs this is the TX power control target power for both radios: e.g., for txpower 5 => 0x2020, for txpower 10 => 0x2c2c, for txpower 15 => 0x3c3c.
>> 
>> Then I switched to b43 and load a custom firmware to analyze how register 0x1ea is setup and it holds always 0x0000. I forced it to be 0x2c2c and magically the throughput increased to ~ 3Mb/s. Unfortunately when I try 0x3c3c (corresponding to txpower 15) I get only phy-transmission errors.
> 
> I can see a lot of differences between wl and b43, a lot to validate&test.
> 
> Do you have some magic scripts for parsing MMIO dumps? I hope you do,
> otherwise it's impossible to analyze that ;)
Hi Rafal,

my dumb email filter moves messages to b43-dev if I'm not explicitly in To: so I missed your script sharing and some messages from Larry. Ok, I modified the rules :-)

But before that I wrote a short perl script which helped me finding the following (if you want to give it a try it's here http://www.ing.unibs.it/~gringoli/b43_parsemmio.pl ).

So I traced what changes when I set the power to either 5/10 or 15: the only different setting in phy regs is for phy reg 0x01EA where the driver writes the following values according to power level (5, 10 or 15):

5	=>	phy(0x01EA) <= 0x2020
10	=>	phy(0x01EA) <= 0x2828
15	=>	phy(0x01EA) <= 0x3C3C

Then the driver refreshes tables at address 0x6800, 0x6840, 0x6C00 and 0x6C40, you can find the human readable forms for the 5/10/15 cases here

http://www.ing.unibs.it/~gringoli/table_set5
http://www.ing.unibs.it/~gringoli/table_set10
http://www.ing.unibs.it/~gringoli/table_set15

You see: for 5 and 10 the tables are identical, while for 15 some values are different. It seems also that tables@6840 and 6C40 are shorter than that uploaded by b43 (84 values instead of 128).

With the b43 driver if I manually force from the firmware the power level to either 0x2020 or 0x2828 I get increasing rates (up to ~ 3Mb/s) and everything works. If instead I set greater values I get only PHY transmission errors and no packet is ever transmitted.

Cheers,
-Francesco

P.S. I see that the Broadcom driver continues uploading values in tables for a while, after that everything seems to be "stable" for a while and no more values are uploaded. It can take 10 minutes to stabilize...

> You can try adding
> nphy->txpwrctrl = true;
> in function b43_nphy_op_prepare_structs if you wish test something
> right now. I've noticed this missing part today morning, but won't
> able to test until evening.
> 
> -- 
> Rafa?
