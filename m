From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 11:07:21 +0200
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <CACna6rz2GkzazGyY7UnX0nEMM4mPUrW9wTcryu_xLuP==8aPRA@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144109.27274.71.camel@i7.infradead.org>
	<CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
	<CACna6rz2GkzazGyY7UnX0nEMM4mPUrW9wTcryu_xLuP==8aPRA@mail.gmail.com>
Message-ID: <CACna6rwjpeF-hjZ3+1zz_=fuhm-HkNTd3rcCv+-Vb2t_1BUgTQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 11:02 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> No more 0x1000 bit. Will test with other values.

RX ring size 128:

[40628.194250] Read RXSTATUS 0x100007a0 (makes offs 0x7a0, divided by
0x10 gives slot 0x7a
[40628.262661] Read RXSTATUS 0x100007b0 (makes offs 0x7b0, divided by
0x10 gives slot 0x7b
[40628.264430] Read RXSTATUS 0x100007c0 (makes offs 0x7c0, divided by
0x10 gives slot 0x7c
[40628.266273] Read RXSTATUS 0x100007d0 (makes offs 0x7d0, divided by
0x10 gives slot 0x7d
[40628.267963] Read RXSTATUS 0x100007e0 (makes offs 0x7e0, divided by
0x10 gives slot 0x7e
[40628.269738] Read RXSTATUS 0x100007f0 (makes offs 0x7f0, divided by
0x10 gives slot 0x7f
[40628.332119] Read RXSTATUS 0x10001000 (makes offs 0x1000, divided by
0x10 gives slot 0x100
[40628.424611] Read RXSTATUS 0x10001010 (makes offs 0x1010, divided by
0x10 gives slot 0x101
[40628.471523] Read RXSTATUS 0x10001020 (makes offs 0x1020, divided by
0x10 gives slot 0x102

RX ring size 32:

[40693.574982] Read RXSTATUS 0x100001a0 (makes offs 0x1a0, divided by
0x10 gives slot 0x1a
[40693.577424] Read RXSTATUS 0x100001b0 (makes offs 0x1b0, divided by
0x10 gives slot 0x1b
[40693.579987] Read RXSTATUS 0x100001c0 (makes offs 0x1c0, divided by
0x10 gives slot 0x1c
[40693.585268] Read RXSTATUS 0x100001d0 (makes offs 0x1d0, divided by
0x10 gives slot 0x1d
[40693.587825] Read RXSTATUS 0x100001e0 (makes offs 0x1e0, divided by
0x10 gives slot 0x1e
[40693.601323] Read RXSTATUS 0x100001f0 (makes offs 0x1f0, divided by
0x10 gives slot 0x1f
[40695.763842] Read RXSTATUS 0x10001000 (makes offs 0x1000, divided by
0x10 gives slot 0x100
[40695.784039] Read RXSTATUS 0x10001010 (makes offs 0x1010, divided by
0x10 gives slot 0x101
[40695.806865] Read RXSTATUS 0x10001020 (makes offs 0x1020, divided by
0x10 gives slot 0x102

I guess we should just increase RX ring size instead hacking
(stripping) 0x1000 bit. We just need to check  on which hardware wl
uses 256 ring size.

-- 
Rafa?
