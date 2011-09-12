From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Mon, 12 Sep 2011 11:56:20 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <20110912111515.22249d2c@milhouse>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<20110912111515.22249d2c@milhouse>
Message-ID: <3B469D96-9649-40BD-8C88-CE50E7FCD48B@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sep 12, 2011, at 11:15 AM, Michael B?sch wrote:

> On Mon, 12 Sep 2011 10:50:16 +0200 (CEST)
> Francesco Gringoli <francesco.gringoli@ing.unibs.it> wrote:
> 
>> Hi Larry and Michael,
>> 
>> I did some testing with the firmware and discovered the meaning of a few
>> instructions that are currently marked either as "unknown jump" on the
>> bcm-specs site or do not appear at all. I chose some names but maybe you
>> have better ideas regard them.
>> 
>> Here is a brief description of the instructions I'm talking about and a
>> set of patches for b43-tools to enable proper dis/assembly.
>> 
>> Regards,
>> -Francesco
>> 
>> -------------=--------------
>> Description of the new instructions
>> 
>> Opcode 0x0D6: jumps if the difference between op1 and op2 is negative.
>> Suggested name "jdn" (jump if difference is negative).
>> 
>> Opcode 0x0D6|1: jumps if the difference between op1 and op2 is positive or 
>> null.
>> Suggested name "jdpz" (jump if difference is positive or zero).
>> 
>> Opcode 0x0D8: jumps if the difference between op1 and op2 is positive.
>> Suggested name "jdp" (jump if difference is positive).
>> 
>> Opcode 0x0D8|1: jumps if the difference between op1 and op2 is negative or 
>> null.
>> Suggested name "jdnz" (jump if difference is negative or zero).
>> 
>> Opcode 0x101: multiply op1 and op2 and store upper 16 bits in op3.
>> Suggested name "mul" (multiply).
>> This works on CPUs running ucode11. I have tested it on CPUs running
>> ucode5 and op3 is not assigned.
>> 
>> -------------=--------------
>> The following changes are made to b43-tools
>> 
>> 1) b43-asm assembles new instructions jdn, jdnz, jdp, jdpz, mul;
>> 2) b43-dasm disassembles opcodes 0xD6, 0xD7, 0xD8, 0xD9, 0x101.
> 
> Thanks a lot. That looks pretty cool. Could you also add simple testcases
> to the test.asm file? That file contains basic tests for all instructions
> and at the end also tests for fixed bugs or special features.
Sorry, I didn't know about it :-) . Yes, I will add with short descriptions at the end of each line.
> 
> Did you test the jump insns on r5?
Yes, they all (the jumps) work on r5.

The mul instruction instead works on r11 and does nothing on r5. BTW I don't know if it exists one instruction that assigns the lower 16 bits of the result but I'm sure it's not 0x100 which seems to do the same as 0x101 (the mul). I added 0x101 <=> mul and not 0x100 because 0x100 was never used anywhere. 

> And we should probably add a comment which cores support mul (most likely >=r11).
Ok, I will add in test.asm.

> 
>> --- disassembler.orig/main.c	2011-08-21 14:16:33.000000000 +0200
>> +++ disassembler/main.c	2011-09-11 17:43:25.000000000 +0200
>> @@ -284,6 +284,12 @@
>>  	struct bin_instruction *bin = stmt->u.insn.bin;
>>  
>>  	switch (bin->opcode) {
>> +	case 0x101:
>> +		stmt->u.insn.name = "mul";
>> +		disasm_std_operand(stmt, 0, 0);
>> +                disasm_std_operand(stmt, 1, 1);
>> +                disasm_std_operand(stmt, 2, 2);
>> +		break;
> 
> There's some whitespace damage here.
Sorry, I will resend.

Regards,
-Francesco

> 
> -- 
> Greetings, Michael.
