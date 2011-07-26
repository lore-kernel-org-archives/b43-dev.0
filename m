From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 26 Jul 2011 18:33:29 +0200
Subject: BCM4329 running ok in Android and fails in debian
In-Reply-To: <20110726180947.396c3d39@maggie>
References: <BANLkTi=P_ZF38DXMMR=kbE7jL3JgBRj3JA@mail.gmail.com>
	<CAJ7S3qbDB+p75XRHwwCWxBPkAVqqFu8MxMMDmdbXwD3GEabtvw@mail.gmail.com>
	<20110726180947.396c3d39@maggie>
Message-ID: <CACna6rxP1jMqb0fR4KANws6P=-5L-SF280JwsVABgXE7zXUC1A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/7/26 Michael B?sch <m@bues.ch>:
> On Tue, 26 Jul 2011 13:03:42 -0300
> Hamilton Vera <hamilton.listas@gmail.com> wrote:
>
>> Actually we are working on an Android tablet (ARM iMX51 ) running
>> kernel 2.6.35.3 and froyo. BCM4329 works just fine in Android.
>>
>> I am trying to port a Debian ?to this board ?and for some unknown
>> reason the same BCM4329 does not work properly in Debian.
>>
>> I am using the same module bcm4329.ko and firmware that used to work in Android.
>
> This is the fullmac device, right?

That's right. There are 2 driver I know: brcmfmac and (older?) bcm4329.

Have you tried brcmfmac?

-- 
Rafa?
