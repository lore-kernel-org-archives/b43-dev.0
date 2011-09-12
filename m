From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Mon, 12 Sep 2011 12:09:01 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <20110912112514.344cf429@milhouse>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<CA+XFjioSx76LvY0WUCrYYUgnzUj-vdDMfdA_vqxjCwVew6HiPQ@mail.gmail.com>
	<20110912112514.344cf429@milhouse>
Message-ID: <44D50757-55C3-4838-A348-98673FCDBF90@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sep 12, 2011, at 11:25 AM, Michael B?sch wrote:

> On Mon, 12 Sep 2011 11:12:46 +0200
> G?bor Stefanik <netrolller.3d@gmail.com> wrote:
> 
>> On Mon, Sep 12, 2011 at 10:50 AM, Francesco Gringoli
>> <francesco.gringoli@ing.unibs.it> wrote:
>>> Hi Larry and Michael,
>>> 
>>> I did some testing with the firmware and discovered the meaning of a few
>>> instructions that are currently marked either as "unknown jump" on the
>>> bcm-specs site or do not appear at all. I chose some names but maybe you
>>> have better ideas regard them.
>>> 
>>> Here is a brief description of the instructions I'm talking about and a
>>> set of patches for b43-tools to enable proper dis/assembly.
>>> 
>>> Regards,
>>> -Francesco
>>> 
>>> -------------=--------------
>>> Description of the new instructions
>>> 
>>> Opcode 0x0D6: jumps if the difference between op1 and op2 is negative.
>>> Suggested name "jdn" (jump if difference is negative).
>> 
>> I'd suggest following the x86 convention, and calling it "jl".
> 
> Well, no. We already have a jump-if-less.
Yes, Michael is right. These instructions behave differently.

> That reminds me that I already looked into these new instructions once and
> they seemed quite strange to me.
> Francesco, are you really sure your analysis on the instructions is correct?
Yes, of course I didn't did an exhaustive search trying all the possible values because it would take ages but I implemented a random number generator and tested millions of different cases. I carefully checked also the boundaries (when the difference between the two registers is either zero or 0x8000 or 0x7ffff).

To make it clear the test for jdn proved that

	jdn	r60, r61, target;

is equivalent to

	sub	r60, r61, r62;
	jls	r62, 0, target;

no matter if the carry register is set or not and we are receiving or transmitting something. It was a surprise for me because I was convinced that

	if a < b

is equivalent to

	if a - b < 0

but trying on a = 0x8000 and b = 0x7fff helped me understanding. a - b = 0x8000 + 2'(0x7fff) = 0x0001 > 0. While 0x8000 < 0x7fff.

> My _guess_ was that they don't work on two's complement. But that was only
> a guess and I didn't continue research on that.
Well, the subtraction is computed adding the two's complement of b to a, and then the results is checked following a two's complement check over the positiveness of the result.

Regards,
-Francesco

> 
> -- 
> Greetings, Michael.
