From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 14 Aug 2011 17:10:40 +0200
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <CACna6ryX+Rj3s92hvzRkN-S+dn+pKCSRFqL2vLNzsdnrxk_1pg@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144109.27274.71.camel@i7.infradead.org>
	<CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
	<CACna6rz2GkzazGyY7UnX0nEMM4mPUrW9wTcryu_xLuP==8aPRA@mail.gmail.com>
	<CACna6rwjpeF-hjZ3+1zz_=fuhm-HkNTd3rcCv+-Vb2t_1BUgTQ@mail.gmail.com>
	<CACna6ryZMW4+H7nT2Sf8FThYNngC6jgsURR0+N-jm2NZyiqikg@mail.gmail.com>
	<CACna6rzim3t-k5AcRmcyaaU=OcAkiTsL0arAd6ffSSy4VBHJ0Q@mail.gmail.com>
	<1313321754.28740.2.camel@i7.infradead.org>
	<CACna6ryX+Rj3s92hvzRkN-S+dn+pKCSRFqL2vLNzsdnrxk_1pg@mail.gmail.com>
Message-ID: <20110814171040.0a09ebf0@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 14 Aug 2011 17:02:27 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> That's right. I've now modified B43_DMA_RINGMEMSIZE to be 8 KiB and I
> don't get DMA errors anymore. Tested with 5 b43 reloads, the last time
> I even used 384 slots in RX ring. Seems to work stable.

I'm OK with changing the ringsize to a hardcoded 8kiB, btw.
As I said, the current PAGE_SIZE dependency is mere legacy.

-- 
Greetings, Michael.
