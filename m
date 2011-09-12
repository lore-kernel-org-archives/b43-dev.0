From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 12 Sep 2011 13:35:46 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
Message-ID: <20110912133546.6710c606@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 12 Sep 2011 10:50:16 +0200 (CEST)
Francesco Gringoli <francesco.gringoli@ing.unibs.it> wrote:

> Opcode 0x101: multiply op1 and op2 and store upper 16 bits in op3.
> Suggested name "mul" (multiply).

So this means the lower 16 bits are discarded? Or where are they put?
My guess would be that there's also an instruction that multiplies
op1 with op2 and puts the lower 16 bits into op3.
What about opcode 0x100? Are you really sure it does the same as 0x101?

-- 
Greetings, Michael.
