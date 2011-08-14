From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 13:17:49 +0200
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <CACna6ryZMW4+H7nT2Sf8FThYNngC6jgsURR0+N-jm2NZyiqikg@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144109.27274.71.camel@i7.infradead.org>
	<CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
	<CACna6rz2GkzazGyY7UnX0nEMM4mPUrW9wTcryu_xLuP==8aPRA@mail.gmail.com>
	<CACna6rwjpeF-hjZ3+1zz_=fuhm-HkNTd3rcCv+-Vb2t_1BUgTQ@mail.gmail.com>
	<CACna6ryZMW4+H7nT2Sf8FThYNngC6jgsURR0+N-jm2NZyiqikg@mail.gmail.com>
Message-ID: <CACna6rzim3t-k5AcRmcyaaU=OcAkiTsL0arAd6ffSSy4VBHJ0Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 11:24 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> W dniu 14 sierpnia 2011 11:07 u?ytkownik Rafa? Mi?ecki
> <zajec5@gmail.com> napisa?:
>> I guess we should just increase RX ring size instead hacking
>> (stripping) 0x1000 bit. We just need to check ?on which hardware wl
>> uses 256 ring size.
>
> Ignore that. I just got 8 KiB aligned ring when testing 256 ring size.
>
> I agree with David, that 0x1000 comes from ring address. Depending on
> address alignment it's 0 or 1.

I wanted to check if firmware ever uses 0x1000 for addressing
purposes. To test that I've increased RX ring size to 257 and waited
for 8 KiB aligned ring address (to avoid copying 0x1000 bit from
address).

[ 3963.448699] RX ring at 24661e000
(...)
[ 4041.766608] Read RXSTATUS 0x10000fc0 (makes offs 0xfc0, divided by
0x10 gives slot 0xfc
[ 4042.066683] Read RXSTATUS 0x10000fd0 (makes offs 0xfd0, divided by
0x10 gives slot 0xfd
[ 4042.070585] Read RXSTATUS 0x10000fe0 (makes offs 0xfe0, divided by
0x10 gives slot 0xfe
[ 4042.141030] Read RXSTATUS 0x10000ff0 (makes offs 0xff0, divided by
0x10 gives slot 0xff
[ 4042.206599] b43-phy0 ERROR: Fatal DMA error: 0x00011000,
0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[ 4042.208438] b43-phy0 ERROR: This device does not support DMA on
your system. It will now be switched to PIO.
[ 4042.210463] b43-phy0: Controller RESET (DMA error) ...

Maybe we should just change:
#define		B43_DMA64_TXSTATDPTR		0x00001FFF

-- 
Rafa?
