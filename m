From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 12 Sep 2011 17:36:23 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <alpine.LFD.2.02.1109121714500.18952@oracolo.ing.unibs.it>
References: <alpine.LFD.2.02.1109121714500.18952@oracolo.ing.unibs.it>
Message-ID: <20110912173623.0f5d8113@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 12 Sep 2011 17:23:02 +0200 (CEST)
Francesco Gringoli <francesco.gringoli@ing.unibs.it> wrote:

> On Sep 12, 2011, at 11:15 AM, Michael B?sch wrote:
> 
> > 	switch (bin->opcode) {
> >+	case 0x101:
> >+		stmt->u.insn.name = "mul";
> >+		disasm_std_operand(stmt, 0, 0);
> >+                disasm_std_operand(stmt, 1, 1);
> >+                disasm_std_operand(stmt, 2, 2);
> >+		break;
> >
> >There's some whitespace damage here.
> 
> New patch (non-damaged) including changes to b43-asm/test.asm

The patch is still damaged. It contains an extra space at the start of
the context lines.

Also, please make sure the patch can be applied with "git am", which means
that it can be applied in the repository root directory with -p1

> ===================================================================
> --- assembler/main.c	2011-08-21 14:16:33.000000000 +0200
> +++ assembler/main.c.orig	2011-09-12 16:47:26.000000000 +0200
     ^^^
Need one more directory level here. If in doubt, use "git diff".


> @@ -737,6 +737,9 @@
>   	unsigned int opcode;
> 
>   	switch (insn->op) {
> +	case OP_MUL:
> +		do_assemble_insn(ctx, insn, 0x101);
> +		break;
>   	case OP_ADD:
>   		do_assemble_insn(ctx, insn, 0x1C0);
>   		break;
   ^
extra whitespace here

-- 
Greetings, Michael.
