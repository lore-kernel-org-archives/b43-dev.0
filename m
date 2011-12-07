From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 07 Dec 2011 15:26:42 -0600
Subject: low throughputs with 14e4:4353
In-Reply-To: <CACna6rwPEYiZCq+4Di_4xQBF-rQQNw5gVTMkunm2mqoUVBP1Tw@mail.gmail.com>
References: <77990757-D72B-4BF7-BEEB-5EDB9486236B@ing.unibs.it>
 <CACna6rxjpXegcp1uAhUnAZH7UhwjfFGFXO1-D1QTUWL+DxMvDg@mail.gmail.com>
 <CACna6ryZiQnCeOHSDZPA0zJ679erJJNtAwU6qqGdVKnpiai4cg@mail.gmail.com>
 <CACna6rwQXmF1XA_jhpEPbTUP1D++QBkt4fZ5WVmhMdT4C5XXxA@mail.gmail.com>
 <CACna6rwPEYiZCq+4Di_4xQBF-rQQNw5gVTMkunm2mqoUVBP1Tw@mail.gmail.com>
Message-ID: <4EDFDA12.8080303@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 12/07/2011 06:01 AM, Rafa? Mi?ecki wrote:
> W dniu 5 grudnia 2011 21:39 u?ytkownik Rafa? Mi?ecki<zajec5@gmail.com>  napisa?:
>> W dniu 29 listopada 2011 22:36 u?ytkownik Rafa? Mi?ecki
>> <zajec5@gmail.com>  napisa?:
>>> I'll give it a rest and will try in next days again.
>>
>> It really seems it's something spur avoidance related (and so most
>> probably CC PLL related). After applying my patch implementing SPUR
>> avoidance, card stops receiving anything. I'll dig more around it.
>
> I've found bug in my implementation and fixed it. Today evening I'll
> test if my patch fixes performance anyhow (I need physical access).
>
> Larry: I've found two mistakes/lacks in the specs.
> 1) http://bcm-v4.sipsolutions.net/802.11/PmuSpurAvoid
> This routine ignores my BCM43224. However from wl MMIO dump I can see
> it should make some ops on my chip. Example log from wl:
> write32 0xfaaff660<- 0x00000000
> write32 0xfaaff664<- 0x11100010
> write32 0xfaaff660<- 0x00000001
> write32 0xfaaff664<- 0x000c0c06
> write32 0xfaaff660<- 0x00000002
> write32 0xfaaff664<- 0x03000a08
> write32 0xfaaff660<- 0x00000003
> write32 0xfaaff664<- 0x00000000
> write32 0xfaaff660<- 0x00000004
> write32 0xfaaff664<- 0x200005c0
> write32 0xfaaff660<- 0x00000005
> write32 0xfaaff664<- 0x88888815
>   read32 0xfaaff600 ->  0x00000381
> write32 0xfaaff600<- 0x00000781
>
> 2) http://bcm-v4.sipsolutions.net/802.11/PHY/N/ChanspecSetup
> There is condition: "If the chip is greater than 0x4349 and less then 0x4356".
> This should but applied "too"/"instead" for BCM43224 at least. wl
> executes that commands for my BCM43224:
> write16 0xfaafc62e<- 0x8889
> write16 0xfaafc630<- 0x0008

Both places should have used chip ID of 43224 and 43225 (at least). The second 
also needs 43222 and probably 43228 (I'm still checking that.) The first may 
also need 43222 and 43228.

Larry
