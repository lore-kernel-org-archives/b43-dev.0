From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 14 Aug 2011 13:52:26 +0200
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <CACna6ryRqJm_XAtZBvGuvye+T3ts3sbkNtYsMA+00mdjUO3sPw@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144109.27274.71.camel@i7.infradead.org>
	<CACna6rx4ZUhwbYcL7ukRkne0EnT3H2MbicM5nVbi=BpNtgCoAg@mail.gmail.com>
	<CACna6rz2GkzazGyY7UnX0nEMM4mPUrW9wTcryu_xLuP==8aPRA@mail.gmail.com>
	<CACna6rwjpeF-hjZ3+1zz_=fuhm-HkNTd3rcCv+-Vb2t_1BUgTQ@mail.gmail.com>
	<CACna6ryZMW4+H7nT2Sf8FThYNngC6jgsURR0+N-jm2NZyiqikg@mail.gmail.com>
	<CACna6rzim3t-k5AcRmcyaaU=OcAkiTsL0arAd6ffSSy4VBHJ0Q@mail.gmail.com>
	<CACna6ryRqJm_XAtZBvGuvye+T3ts3sbkNtYsMA+00mdjUO3sPw@mail.gmail.com>
Message-ID: <20110814135226.72e1b97e@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 14 Aug 2011 13:38:59 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> In any case we see it can happen firmware is using that 0x1000 for indexing.
> 
> We just need to keep the original mask and start making rings 8 KiB
> aligned to workaround firmware bug.

The firmware does not control DMA. This is pure hardware feature.

-- 
Greetings, Michael.
