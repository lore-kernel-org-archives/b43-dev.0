From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 12 Sep 2011 16:13:19 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <0971215D-B6EB-4217-86C3-698352BA01D0@ing.unibs.it>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<20110912133546.6710c606@milhouse>
	<0971215D-B6EB-4217-86C3-698352BA01D0@ing.unibs.it>
Message-ID: <20110912161319.79f1bb3c@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 12 Sep 2011 16:04:14 +0200
francesco.gringoli at ing.unibs.it wrote:
> >> Opcode 0x101: multiply op1 and op2 and store upper 16 bits in op3.
> >> Suggested name "mul" (multiply).
> > 
> > So this means the lower 16 bits are discarded? Or where are they put?
> Aha! easy as candy! They are put in spr06d.

Ok. That's the second "PSM" register, which kind of makes sense.
(The first "PSM" register is already used by the "PSM conditions")

So yeah, in that case I'm also OK with this instruction.

I will also add this to the documentation.

-- 
Greetings, Michael.
