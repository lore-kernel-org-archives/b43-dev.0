From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 12 Sep 2011 12:02:22 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <3B469D96-9649-40BD-8C88-CE50E7FCD48B@ing.unibs.it>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<20110912111515.22249d2c@milhouse>
	<3B469D96-9649-40BD-8C88-CE50E7FCD48B@ing.unibs.it>
Message-ID: <20110912120222.11d9f741@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 12 Sep 2011 11:56:20 +0200
francesco.gringoli at ing.unibs.it wrote:
> > Did you test the jump insns on r5?
> Yes, they all (the jumps) work on r5.

Did you also create a truth table for these new jump instructions?
I once did this and there was some weirdness in the extrema (near zero, s16 max or u16 max).
I don't find my stuff right now, though. I probably deleted it.

My issue with this is that we already have all of those jump if negative/positive, etc...
instructions, so there must be something special with those new insns.

-- 
Greetings, Michael.
