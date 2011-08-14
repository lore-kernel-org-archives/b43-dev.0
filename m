From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 13:38:59 +0200
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <CACna6rzim3t-k5AcRmcyaaU=OcAkiTsL0arAd6ffSSy4VBHJ0Q@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144109.27274.71.camel@i7.infradead.org>
	<CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
	<CACna6rz2GkzazGyY7UnX0nEMM4mPUrW9wTcryu_xLuP==8aPRA@mail.gmail.com>
	<CACna6rwjpeF-hjZ3+1zz_=fuhm-HkNTd3rcCv+-Vb2t_1BUgTQ@mail.gmail.com>
	<CACna6ryZMW4+H7nT2Sf8FThYNngC6jgsURR0+N-jm2NZyiqikg@mail.gmail.com>
	<CACna6rzim3t-k5AcRmcyaaU=OcAkiTsL0arAd6ffSSy4VBHJ0Q@mail.gmail.com>
Message-ID: <CACna6ryRqJm_XAtZBvGuvye+T3ts3sbkNtYsMA+00mdjUO3sPw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 13:17 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> W dniu 14 sierpnia 2011 11:24 u?ytkownik Rafa? Mi?ecki
> <zajec5@gmail.com> napisa?:
>> W dniu 14 sierpnia 2011 11:07 u?ytkownik Rafa? Mi?ecki
>> <zajec5@gmail.com> napisa?:
>>> I guess we should just increase RX ring size instead hacking
>>> (stripping) 0x1000 bit. We just need to check ?on which hardware wl
>>> uses 256 ring size.
>>
>> Ignore that. I just got 8 KiB aligned ring when testing 256 ring size.
>>
>> I agree with David, that 0x1000 comes from ring address. Depending on
>> address alignment it's 0 or 1.
>
> I wanted to check if firmware ever uses 0x1000 for addressing
> purposes. To test that I've increased RX ring size to 257 and waited
> for 8 KiB aligned ring address (to avoid copying 0x1000 bit from
> address).
>
> [ 3963.448699] RX ring at 24661e000
> (...)
> [ 4041.766608] Read RXSTATUS 0x10000fc0 (makes offs 0xfc0, divided by
> 0x10 gives slot 0xfc
> [ 4042.066683] Read RXSTATUS 0x10000fd0 (makes offs 0xfd0, divided by
> 0x10 gives slot 0xfd
> [ 4042.070585] Read RXSTATUS 0x10000fe0 (makes offs 0xfe0, divided by
> 0x10 gives slot 0xfe
> [ 4042.141030] Read RXSTATUS 0x10000ff0 (makes offs 0xff0, divided by
> 0x10 gives slot 0xff
> [ 4042.206599] b43-phy0 ERROR: Fatal DMA error: 0x00011000,
> 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
> [ 4042.208438] b43-phy0 ERROR: This device does not support DMA on
> your system. It will now be switched to PIO.
> [ 4042.210463] b43-phy0: Controller RESET (DMA error) ...

This is just random. I've done additional tests with ring size 258. I
always test with 8 KiB aligned ring address and I randomly get DMA
errors or such a nice:

[ 5264.389572] RXERROR: 0x00000fe0 RXSTATUS: 0x10000fd0 (makes offs
0xfd0, divided by 0x10 gives slot 0xfd
[ 5264.391571] RXERROR: 0x00000ff0 RXSTATUS: 0x10000fe0 (makes offs
0xfe0, divided by 0x10 gives slot 0xfe
[ 5264.632352] RXERROR: 0x00001000 RXSTATUS: 0x10000ff0 (makes offs
0xff0, divided by 0x10 gives slot 0xff
[ 5264.751025] RXERROR: 0x00001010 RXSTATUS: 0x10001000 (makes offs
0x1000, divided by 0x10 gives slot 0x100
[ 5264.837564] RXERROR: 0x00000000 RXSTATUS: 0x10001010 (makes offs
0x1010, divided by 0x10 gives slot 0x101
[ 5264.853311] RXERROR: 0x00000010 RXSTATUS: 0x10000000 (makes offs
0x0, divided by 0x10 gives slot 0x0
[ 5264.906550] RXERROR: 0x00000020 RXSTATUS: 0x10000010 (makes offs
0x10, divided by 0x10 gives slot 0x1
[ 5265.047389] RXERROR: 0x00000030 RXSTATUS: 0x10000020 (makes offs
0x20, divided by 0x10 gives slot 0x2

In any case we see it can happen firmware is using that 0x1000 for indexing.

We just need to keep the original mask and start making rings 8 KiB
aligned to workaround firmware bug.

-- 
Rafa?
