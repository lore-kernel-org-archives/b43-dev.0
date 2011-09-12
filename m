From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Mon, 12 Sep 2011 19:30:57 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
Message-ID: <4e6e41d1.OSrEw8KniWrAofAQ%francesco.gringoli@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sep 12, 2011, at 5:36 PM, Michael Buesch wrote:

>The patch is still damaged. It contains an extra space at the start of
>the context lines.
>
>Also, please make sure the patch can be applied with "git am", which means
>that it can be applied in the repository root directory with -p1

This time it should be ok, I hope. I'm sending using mailx.
 
Regards,
-Francesco

Index: b43-tools/assembler/main.c
===================================================================
--- b43-tools/assembler/main.c	2011-08-21 14:16:33.000000000 +0200
+++ b43-tools/assembler/main.c.orig	2011-09-12 16:47:26.000000000 +0200
@@ -737,6 +737,9 @@
 	unsigned int opcode;
 
 	switch (insn->op) {
+	case OP_MUL:
+		do_assemble_insn(ctx, insn, 0x101);
+		break;
 	case OP_ADD:
 		do_assemble_insn(ctx, insn, 0x1C0);
 		break;
@@ -855,6 +858,22 @@
 		out = do_assemble_insn(ctx, insn, 0x0DC | 0x1);
 		out->is_jump_insn = 1;
 		break;
+	case OP_JDN:
+		out = do_assemble_insn(ctx, insn, 0x0D6);
+		out->is_jump_insn = 1;
+		break;
+	case OP_JDPZ:
+		out = do_assemble_insn(ctx, insn, 0x0D6 | 0x1);
+		out->is_jump_insn = 1;
+		break;
+	case OP_JDP:
+		out = do_assemble_insn(ctx, insn, 0x0D8);
+		out->is_jump_insn = 1;
+		break;
+	case OP_JDNZ:
+		out = do_assemble_insn(ctx, insn, 0x0D8 | 0x1);
+		out->is_jump_insn = 1;
+		break;
 	case OP_JZX:
 		opcode = merge_ext_into_opcode(ctx, 0x400, insn);
 		out = do_assemble_insn(ctx, insn, opcode);
Index: b43-tools/assembler/parser.y
===================================================================
--- b43-tools/assembler/parser.y	2011-08-21 14:16:33.000000000 +0200
+++ b43-tools/assembler/parser.y.orig	2011-09-12 16:57:33.000000000 +0200
@@ -43,7 +43,7 @@
 
 %token EQUAL NOT_EQUAL LOGICAL_OR LOGICAL_AND PLUS MINUS MULTIPLY DIVIDE BITW_OR BITW_AND BITW_XOR BITW_NOT LEFTSHIFT RIGHTSHIFT
 
-%token OP_ADD OP_ADDSC OP_ADDC OP_ADDSCC OP_SUB OP_SUBSC OP_SUBC OP_SUBSCC OP_SRA OP_OR OP_AND OP_XOR OP_SR OP_SRX OP_SL OP_RL OP_RR OP_NAND OP_ORX OP_MOV OP_JMP OP_JAND OP_JNAND OP_JS OP_JNS OP_JE OP_JNE OP_JLS OP_JGES OP_JGS OP_JLES OP_JL OP_JGE OP_JG OP_JLE OP_JZX OP_JNZX OP_JEXT OP_JNEXT OP_CALL OP_CALLS OP_RET OP_RETS OP_TKIPH OP_TKIPHS OP_TKIPL OP_TKIPLS OP_NAP RAW_CODE
+%token OP_MUL OP_ADD OP_ADDSC OP_ADDC OP_ADDSCC OP_SUB OP_SUBSC OP_SUBC OP_SUBSCC OP_SRA OP_OR OP_AND OP_XOR OP_SR OP_SRX OP_SL OP_RL OP_RR OP_NAND OP_ORX OP_MOV OP_JMP OP_JAND OP_JNAND OP_JS OP_JNS OP_JE OP_JNE OP_JLS OP_JGES OP_JGS OP_JLES OP_JL OP_JGE OP_JG OP_JLE OP_JZX OP_JNZX OP_JEXT OP_JNEXT OP_JDN OP_JDPZ OP_JDP OP_JDNZ OP_CALL OP_CALLS OP_RET OP_RETS OP_TKIPH OP_TKIPHS OP_TKIPL OP_TKIPLS OP_NAP RAW_CODE
 
 %token IVAL_MMIO16 IVAL_MMIO32 IVAL_PHY IVAL_RADIO IVAL_SHM16 IVAL_SHM32 IVAL_TRAM
 
@@ -176,6 +176,13 @@
 			s->u.label = $1;
 			$$ = s;
 		  }
+		| insn_mul {
+			struct statement *s = xmalloc(sizeof(struct statement));
+			INIT_LIST_HEAD(&s->list);
+			s->type = STMT_INSN;
+			s->u.insn = $1;
+			$$ = s;
+		  }
 		| insn_add {
 			struct statement *s = xmalloc(sizeof(struct statement));
 			INIT_LIST_HEAD(&s->list);
@@ -393,6 +400,34 @@
 			s->u.insn = $1;
 			$$ = s;
 		  }
+		| insn_jdn {
+			struct statement *s = xmalloc(sizeof(struct statement));
+			INIT_LIST_HEAD(&s->list);
+			s->type = STMT_INSN;
+			s->u.insn = $1;
+			$$ = s;
+		  }
+		| insn_jdpz {
+			struct statement *s = xmalloc(sizeof(struct statement));
+			INIT_LIST_HEAD(&s->list);
+			s->type = STMT_INSN;
+			s->u.insn = $1;
+			$$ = s;
+		  }
+		| insn_jdp {
+			struct statement *s = xmalloc(sizeof(struct statement));
+			INIT_LIST_HEAD(&s->list);
+			s->type = STMT_INSN;
+			s->u.insn = $1;
+			$$ = s;
+		  }
+		| insn_jdnz {
+			struct statement *s = xmalloc(sizeof(struct statement));
+			INIT_LIST_HEAD(&s->list);
+			s->type = STMT_INSN;
+			s->u.insn = $1;
+			$$ = s;
+		  }
 		| insn_jl {
 			struct statement *s = xmalloc(sizeof(struct statement));
 			INIT_LIST_HEAD(&s->list);
@@ -591,6 +626,15 @@
 		  }
 		;
 
+/* multiply */
+insn_mul	: OP_MUL operlist_3 {
+			struct instruction *insn = xmalloc(sizeof(struct instruction));
+			insn->op = OP_MUL;
+			insn->operands = $2;
+			$$ = insn;
+		  }
+		;
+
 /* add */
 insn_add	: OP_ADD operlist_3 {
 			struct instruction *insn = xmalloc(sizeof(struct instruction));
@@ -897,6 +941,38 @@
 		  }
 		;
 
+insn_jdn	: OP_JDN operlist_3 {
+			struct instruction *insn = xmalloc(sizeof(struct instruction));
+			insn->op = OP_JDN;
+			insn->operands = $2;
+			$$ = insn;
+		  }
+		;
+
+insn_jdpz	: OP_JDPZ operlist_3 {
+			struct instruction *insn = xmalloc(sizeof(struct instruction));
+			insn->op = OP_JDPZ;
+			insn->operands = $2;
+			$$ = insn;
+		  }
+		;
+
+insn_jdp	: OP_JDP operlist_3 {
+			struct instruction *insn = xmalloc(sizeof(struct instruction));
+			insn->op = OP_JDP;
+			insn->operands = $2;
+			$$ = insn;
+		  }
+		;
+
+insn_jdnz	: OP_JDNZ operlist_3 {
+			struct instruction *insn = xmalloc(sizeof(struct instruction));
+			insn->op = OP_JDNZ;
+			insn->operands = $2;
+			$$ = insn;
+		  }
+		;
+
 insn_jext	: OP_JEXT external_jump_operands {
 			struct instruction *insn = xmalloc(sizeof(struct instruction));
 			insn->op = OP_JEXT;
Index: b43-tools/assembler/scanner.l
===================================================================
--- b43-tools/assembler/scanner.l	2011-08-21 14:16:33.000000000 +0200
+++ b43-tools/assembler/scanner.l.orig	2011-09-11 19:59:43.000000000 +0200
@@ -82,6 +82,8 @@
 \<\<			{ update_lineinfo(); return LEFTSHIFT; }
 \>\>			{ update_lineinfo(); return RIGHTSHIFT; }
 
+mul			{ update_lineinfo(); return OP_MUL; }
+
 add			{ update_lineinfo(); return OP_ADD; }
 add\.			{ update_lineinfo(); return OP_ADDSC; }
 addc			{ update_lineinfo(); return OP_ADDC; }
@@ -120,6 +122,10 @@
 jge			{ update_lineinfo(); return OP_JGE; }
 jg			{ update_lineinfo(); return OP_JG; }
 jle			{ update_lineinfo(); return OP_JLE; }
+jdn			{ update_lineinfo(); return OP_JDN; }
+jdpz			{ update_lineinfo(); return OP_JDPZ; }
+jdp			{ update_lineinfo(); return OP_JDP; }
+jdnz			{ update_lineinfo(); return OP_JDNZ; }
 jzx			{ update_lineinfo(); return OP_JZX; }
 jnzx			{ update_lineinfo(); return OP_JNZX; }
 jext			{ update_lineinfo(); return OP_JEXT; }
Index: b43-tools/assembler/test.asm
===================================================================
--- b43-tools/assembler/test.asm	2011-08-21 14:16:33.000000000 +0200
+++ b43-tools/assembler/test.asm.orig	2011-09-12 17:03:22.000000000 +0200
@@ -39,6 +39,9 @@
 	mov	(1 + (%assert(1 == ((1 + 2) - 2)))), r0
 
 label:
+	/* MUL instruction */
+	mul	r0,r1,r2	/* mul, r2 := msb, spr6d := lsb */
+
 	/* ADD instructions */
 	add	r0,r1,r2	/* add */
 	add.	r0,r1,r2	/* add, set carry */
@@ -89,6 +92,10 @@
 	jge	r0,r1,label	/* jump if greater or equal */
 	jg	r0,r1,label	/* jump if greater */
 	jle	r0,r1,label	/* jump if less or equal */
+	jdn	r0,r1,label	/* jump if difference is negative */
+	jdpz	r0,r1,label	/* jump if difference is non negative */
+	jdp	r0,r1,label	/* jump if difference is positive */
+	jdnz	r0,r1,label	/* jump if difference is non positive */
 
 	jzx	7,8,r0,r1,label	/* Jump if zero after shift and mask */
 	jnzx	7,8,r0,r1,label	/* Jump if nonzero after shift and mask */
Index: b43-tools/disassembler/main.c
===================================================================
--- b43-tools/disassembler/main.c	2011-08-21 14:16:33.000000000 +0200
+++ b43-tools/disassembler/main.c.orig	2011-09-12 16:54:34.000000000 +0200
@@ -284,6 +284,12 @@
 	struct bin_instruction *bin = stmt->u.insn.bin;
 
 	switch (bin->opcode) {
+	case 0x101:
+		stmt->u.insn.name = "mul";
+		disasm_std_operand(stmt, 0, 0);
+		disasm_std_operand(stmt, 1, 1);
+		disasm_std_operand(stmt, 2, 2);
+		break;
 	case 0x1C0:
 		stmt->u.insn.name = "add";
 		disasm_std_operand(stmt, 0, 0);
@@ -457,28 +463,28 @@
 		disasm_std_operand(stmt, 1, 1);
 		break;
 	case 0x0D6:
-		stmt->u.insn.name = "@D6"; /* FIXME */
+		stmt->u.insn.name = "jdn";
 		stmt->u.insn.labelref_operand = 2;
 		stmt->u.insn.labeladdr = stmt->u.insn.bin->operands[2];
 		disasm_std_operand(stmt, 0, 0);
 		disasm_std_operand(stmt, 1, 1);
 		break;
 	case (0x0D6 | 0x1):
-		stmt->u.insn.name = "@D7"; /* FIXME */
+		stmt->u.insn.name = "jdpz";
 		stmt->u.insn.labelref_operand = 2;
 		stmt->u.insn.labeladdr = stmt->u.insn.bin->operands[2];
 		disasm_std_operand(stmt, 0, 0);
 		disasm_std_operand(stmt, 1, 1);
 		break;
 	case 0x0D8:
-		stmt->u.insn.name = "@D8"; /* FIXME */
+		stmt->u.insn.name = "jdp";
 		stmt->u.insn.labelref_operand = 2;
 		stmt->u.insn.labeladdr = stmt->u.insn.bin->operands[2];
 		disasm_std_operand(stmt, 0, 0);
 		disasm_std_operand(stmt, 1, 1);
 		break;
 	case (0x0D8 | 0x1):
-		stmt->u.insn.name = "@D9"; /* FIXME */
+		stmt->u.insn.name = "jdnz";
 		stmt->u.insn.labelref_operand = 2;
 		stmt->u.insn.labeladdr = stmt->u.insn.bin->operands[2];
 		disasm_std_operand(stmt, 0, 0);
