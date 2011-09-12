From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Mon, 12 Sep 2011 15:49:34 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <20110912133546.6710c606@milhouse>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<20110912133546.6710c606@milhouse>
Message-ID: <C154B6AE-2936-4257-B69B-37AFE3DB57D0@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sep 12, 2011, at 1:35 PM, Michael B?sch wrote:

> On Mon, 12 Sep 2011 10:50:16 +0200 (CEST)
> Francesco Gringoli <francesco.gringoli@ing.unibs.it> wrote:
> 
>> Opcode 0x101: multiply op1 and op2 and store upper 16 bits in op3.
>> Suggested name "mul" (multiply).
> 
> So this means the lower 16 bits are discarded? Or where are they put?
It seems so. Neither the first or the second operand are modified unfortunately. I tried

	mul	r60, r61, r62;

and we have

	r62 := (r60 * r61) >> 16;

Checked r63 (I thought maybe one register close above to the third operand can be assigned the least significant bits) and it does not change.

Also tried

	mul	r60, r61, r63;

and r62 is not assigned (close below the third operand).

> My guess would be that there's also an instruction that multiplies
> op1 with op2 and puts the lower 16 bits into op3.
In fact!

> What about opcode 0x100? Are you really sure it does the same as 0x101?
@100 and @101 does apparently the same; indeed result does not depend on the carry and it does not set it.

Maybe @100 and @101 does something different but I should investigate.

Thanks,
-Francesco

> 
> 
> -- 
> Greetings, Michael.
