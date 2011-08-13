From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 13 Aug 2011 21:38:54 +0200
Subject: [PATCH] b43: Mask out unwanted bits of RX slot address
In-Reply-To: <CACna6ry9=gFOGO7gkotxxgd9CxeoU-ENsJRk0NLpaj4Rh4EnEg@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144109.27274.71.camel@i7.infradead.org>
	<CACna6ry9=gFOGO7gkotxxgd9CxeoU-ENsJRk0NLpaj4Rh4EnEg@mail.gmail.com>
Message-ID: <20110813213854.7b5158dd@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 13 Aug 2011 21:10:34 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> I still have to understand that B43_DMA_RINGMEMSIZE (it's equal to
> PAGE_SIZE, which is calculated in some magic way).

Well, I guess there's some kind of legacy involved here.
In the early days we used to allocate the ring memory
with the page allocator. We simply allocated one page.
So the size of the memory would always be equal to PAGE_SIZE.

-- 
Greetings, Michael.
