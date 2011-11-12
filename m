From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Sat, 12 Nov 2011 18:31:21 +0100
Subject: [PATCH] b43-asm: Add 3 new virtual instructions.
Message-ID: <4ebead69.DTTnPGsbgTj4ZAAD%francesco.gringoli@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Michael,

I added three new (virtual) instructions to make the code more readable.
These are "human-friendly" versions of orx, jzx and jnzx, e.g., one can
use "orxh" like

	orxh	(r1 << 8) & 0x0100, r2 & ~0x0100, r2

instead of

	orx	0, 8, r1, r2, r2

or better write

#define	NEED_ACK	0x10
#define	NEED_BEACON	0x20
	orxh	NEED_ACK, r1 & ~(NEED_ACK|NEED_BEACON), r2

instead of

	orx	1, 4, 0x1, r1, r2

Similarly:

	jzxh	(r12 << 16 | r13) & 0x1F000, label

instead of

	jzx	4, 12, r13, r12, label

Examples added to test.asm and README.

Regards,
-Francesco

-------------=--------------
The following changes are made to b43-tools

1) b43-asm assembles new virtual instructions orxh, jzxh, jnzxh

Signed-off-by: Francesco Gringoli <francesco.gringoli@ing.unibs.it>

Index: b43-tools/assembler/main.c
===================================================================
--- b43-tools/assembler/main.c	2011-09-12 16:47:26.000000000 +0200
+++ b43-tools/assembler/main.c	2011-11-12 13:39:05.000000000 +0100
@@ -503,6 +503,106 @@
 	do_assemble_insn(ctx, insn, opcode);
 }
 
+static unsigned int merge_ext_into_opcode_human(struct assembler_context *ctx,
+						unsigned int opbase,
+						struct instruction *insn)
+{
+	struct operlist *ol;
+	unsigned int opcode;
+
+	unsigned long masks[256];
+	unsigned long m, s, j = 0;
+	unsigned long imm, shift, mask, mask2;
+	for(m = 0; m < 16; m++) {
+		mask = (1 << (m+1)) - 1;
+		for(s = 0; s < 16; s++) {
+			mask2 = (mask << s) | (mask >> (16 - s));
+			mask2 = mask2 & 0xFFFF;
+			masks[j] = mask2;
+			j++;
+		}
+	}
+
+	opcode = opbase;
+	ol = insn->operands;
+
+	for(j = 0; j < 256; j++)
+		if(masks[j] == ((~ol->oper[5]->u.raw) & 0xFFFF))
+			break;
+	if(j == 256)
+		asm_error(ctx, "can't build valid mask");
+	m = j / 16; s = j % 16;
+	mask = (1 << (m + 1)) - 1;
+	mask = (mask << s) | (mask >> (16 - s));
+	if(mask != ((~ol->oper[5]->u.raw) & 0xFFFF))
+		asm_error(ctx, "can't match mask");
+
+	if(ol->oper[4]->u.raw != 0)
+		asm_error(ctx, "can't use shift here");
+
+	shift = ol->oper[1]->u.raw;
+	mask = ol->oper[2]->u.raw;
+
+	if(ol->oper[0]->type == OPER_IMM) {
+		imm = ((ol->oper[0]->u.imm->imm << shift) & mask) & 0xFFFF;
+		ol->oper[0]->u.imm->imm = imm;
+		imm = ((imm >> s) | (imm << (16-s))) & 0xFFFF;
+		if(imm & ~0x3FF ||
+		   ol->oper[0]->u.imm->imm != (((imm << s) | (imm >> (16-s))) & 0xFFFF))
+			asm_error(ctx, "immediate value can't be encoded");
+		ol->oper[0]->u.imm->imm = imm;
+	} else {
+		if(shift > 15)
+			asm_error(ctx, "invalid shift");
+		if(mask != ((~ol->oper[5]->u.raw) & 0xFFFF))
+			asm_error(ctx, "unmatched masks");
+	}
+
+	opcode |= (m << 4);
+	opcode |= s;
+
+	ol->oper[1] = ol->oper[3];
+	ol->oper[2] = ol->oper[6];
+
+	return opcode;
+}
+
+static unsigned int merge_ext_into_opcode_human2(struct assembler_context *ctx,
+						 unsigned int opbase,
+						 struct instruction *insn)
+{
+	struct operlist *ol;
+	unsigned long masks[256];
+	unsigned long m, s, j = 0;
+	unsigned long mask;
+	unsigned int opcode = opbase;
+	for(m = 0; m < 16; m++) {
+		mask = (1 << (m+1)) - 1;
+		for(s = 0; s < 16; s++) {
+			masks[j] = (mask << s) & 0xFFFFFFFF;
+			j++;
+		}
+	}
+
+	ol = insn->operands;
+
+	for(j = 0; j < 256; j++)
+		if(ol->oper[2]->u.imm->imm == masks[j])
+			break;
+	if(j == 256)
+		asm_error(ctx, "can't build valid mask");
+	m = j / 16; s = j % 16;
+	mask = (1 << (m + 1)) - 1;
+	mask = (mask << s) & 0xFFFFFFFF;
+	if(mask != ol->oper[2]->u.imm->imm)
+		asm_error(ctx, "can't match mask");
+	opcode |= (m << 4);
+	opcode |= s;
+
+	ol->oper[2] = ol->oper[3];
+	return opcode;
+}
+
 static unsigned int merge_ext_into_opcode(struct assembler_context *ctx,
 					  unsigned int opbase,
 					  struct instruction *insn)
@@ -799,6 +899,10 @@
 		opcode = merge_ext_into_opcode(ctx, 0x300, insn);
 		do_assemble_insn(ctx, insn, opcode);
 		break;
+	case OP_ORXH:
+		opcode = merge_ext_into_opcode_human(ctx, 0x300, insn);
+		do_assemble_insn(ctx, insn, opcode);
+		break;
 	case OP_MOV:
 		emulate_mov_insn(ctx, insn);
 		return;
@@ -879,11 +983,21 @@
 		out = do_assemble_insn(ctx, insn, opcode);
 		out->is_jump_insn = 1;
 		break;
+	case OP_JZXH:
+		opcode = merge_ext_into_opcode_human2(ctx, 0x400, insn);
+		out = do_assemble_insn(ctx, insn, opcode);
+		out->is_jump_insn = 1;
+		break;
 	case OP_JNZX:
 		opcode = merge_ext_into_opcode(ctx, 0x500, insn);
 		out = do_assemble_insn(ctx, insn, opcode);
 		out->is_jump_insn = 1;
 		break;
+	case OP_JNZXH:
+		opcode = merge_ext_into_opcode_human2(ctx, 0x500, insn);
+		out = do_assemble_insn(ctx, insn, opcode);
+		out->is_jump_insn = 1;
+		break;
 	case OP_JEXT:
 		opcode = merge_external_jmp_into_opcode(ctx, 0x700, insn);
 		out = do_assemble_insn(ctx, insn, opcode);
Index: b43-tools/assembler/main.h
===================================================================
--- b43-tools/assembler/main.h	2011-09-11 19:59:43.000000000 +0200
+++ b43-tools/assembler/main.h	2011-11-10 11:26:46.000000000 +0100
@@ -96,8 +96,14 @@
 	} u;
 };
 
+struct operand_shift_mask {
+	struct operand *op;
+	unsigned int mask;
+	unsigned int shift;
+};
+
 struct operlist {
-	struct operand *oper[5];
+	struct operand *oper[7];
 };
 
 struct instruction {
Index: b43-tools/assembler/parser.y
===================================================================
--- b43-tools/assembler/parser.y	2011-09-12 16:57:33.000000000 +0200
+++ b43-tools/assembler/parser.y	2011-11-12 16:41:41.000000000 +0100
@@ -43,7 +43,7 @@
 
 %token EQUAL NOT_EQUAL LOGICAL_OR LOGICAL_AND PLUS MINUS MULTIPLY DIVIDE BITW_OR BITW_AND BITW_XOR BITW_NOT LEFTSHIFT RIGHTSHIFT
 
-%token OP_MUL OP_ADD OP_ADDSC OP_ADDC OP_ADDSCC OP_SUB OP_SUBSC OP_SUBC OP_SUBSCC OP_SRA OP_OR OP_AND OP_XOR OP_SR OP_SRX OP_SL OP_RL OP_RR OP_NAND OP_ORX OP_MOV OP_JMP OP_JAND OP_JNAND OP_JS OP_JNS OP_JE OP_JNE OP_JLS OP_JGES OP_JGS OP_JLES OP_JL OP_JGE OP_JG OP_JLE OP_JZX OP_JNZX OP_JEXT OP_JNEXT OP_JDN OP_JDPZ OP_JDP OP_JDNZ OP_CALL OP_CALLS OP_RET OP_RETS OP_TKIPH OP_TKIPHS OP_TKIPL OP_TKIPLS OP_NAP RAW_CODE
+%token OP_MUL OP_ADD OP_ADDSC OP_ADDC OP_ADDSCC OP_SUB OP_SUBSC OP_SUBC OP_SUBSCC OP_SRA OP_OR OP_AND OP_XOR OP_SR OP_SRX OP_SL OP_RL OP_RR OP_NAND OP_ORX OP_ORXH OP_MOV OP_JMP OP_JAND OP_JNAND OP_JS OP_JNS OP_JE OP_JNE OP_JLS OP_JGES OP_JGS OP_JLES OP_JL OP_JGE OP_JG OP_JLE OP_JZX OP_JZXH OP_JNZX OP_JNZXH OP_JEXT OP_JNEXT OP_JDN OP_JDPZ OP_JDP OP_JDNZ OP_CALL OP_CALLS OP_RET OP_RETS OP_TKIPH OP_TKIPHS OP_TKIPL OP_TKIPLS OP_NAP RAW_CODE
 
 %token IVAL_MMIO16 IVAL_MMIO32 IVAL_PHY IVAL_RADIO IVAL_SHM16 IVAL_SHM32 IVAL_TRAM
 
@@ -316,6 +316,13 @@
 			s->u.insn = $1;
 			$$ = s;
 		  }
+		| insn_orxh {
+			struct statement *s = xmalloc(sizeof(struct statement));
+			INIT_LIST_HEAD(&s->list);
+			s->type = STMT_INSN;
+			s->u.insn = $1;
+			$$ = s;
+		}
 		| insn_mov {
 			struct statement *s = xmalloc(sizeof(struct statement));
 			INIT_LIST_HEAD(&s->list);
@@ -463,6 +470,13 @@
 			s->u.insn = $1;
 			$$ = s;
 		  }
+		| insn_jzxh {
+			struct statement *s = xmalloc(sizeof(struct statement));
+			INIT_LIST_HEAD(&s->list);
+			s->type = STMT_INSN;
+			s->u.insn = $1;
+			$$ = s;
+		  }
 		| insn_jnzx {
 			struct statement *s = xmalloc(sizeof(struct statement));
 			INIT_LIST_HEAD(&s->list);
@@ -470,6 +484,13 @@
 			s->u.insn = $1;
 			$$ = s;
 		  }
+		| insn_jnzxh {
+			struct statement *s = xmalloc(sizeof(struct statement));
+			INIT_LIST_HEAD(&s->list);
+			s->type = STMT_INSN;
+			s->u.insn = $1;
+			$$ = s;
+		  }
 		| insn_jext {
 			struct statement *s = xmalloc(sizeof(struct statement));
 			INIT_LIST_HEAD(&s->list);
@@ -795,6 +816,14 @@
 		  }
 		;
 
+insn_orxh	: OP_ORXH operlist_3_human {
+			struct instruction *insn = xmalloc(sizeof(struct instruction));
+			insn->op = OP_ORXH;
+			insn->operands = $2;
+			$$ = insn;
+		  }
+		;
+
 insn_mov	: OP_MOV operlist_2 {
 			struct instruction *insn = xmalloc(sizeof(struct instruction));
 			insn->op = OP_MOV;
@@ -933,6 +962,14 @@
 		  }
 		;
 
+insn_jzxh	: OP_JZXH operlist_2_jump_human {
+			struct instruction *insn = xmalloc(sizeof(struct instruction));
+			insn->op = OP_JZXH;
+			insn->operands = $2;
+			$$ = insn;
+		  }
+		;
+
 insn_jnzx	: OP_JNZX extended_operlist {
 			struct instruction *insn = xmalloc(sizeof(struct instruction));
 			insn->op = OP_JNZX;
@@ -941,6 +978,14 @@
 		  }
 		;
 
+insn_jnzxh	: OP_JNZXH operlist_2_jump_human {
+			struct instruction *insn = xmalloc(sizeof(struct instruction));
+			insn->op = OP_JNZXH;
+			insn->operands = $2;
+			$$ = insn;
+		  }
+		;
+
 insn_jdn	: OP_JDN operlist_3 {
 			struct instruction *insn = xmalloc(sizeof(struct instruction));
 			insn->op = OP_JDN;
@@ -1217,6 +1262,196 @@
 		  }
 		;
 
+operlist_2_jump_human	: operand_shift_operand_mask COMMA operand {
+			struct operlist *ol = $1;
+			ol->oper[3] = store_oper_sanity($3);
+			$$ = ol;
+		  }
+		;
+
+/* all the following could be implemented:
+   Y => implemented N => raise error
+	N 0xabcdefgh
+	N 0xabcdefgh & BITMASK
+	Y REG12 & BITMASK
+	Y (REG12 << 16) & BITMASK
+	Y (REG31 << 16 | REG12) & BITMASK
+	N (REG12 << 16| 0xabcd) & BITMASK
+	N (0xabcd0000 | REG12) & BITMASK
+*/
+operand_shift_operand_mask	: imm {
+			yyerror("Special jump not yet implemented");
+		  }
+		| imm BITW_AND imm {
+			yyerror("Special jump not yet implemented");
+		  }
+		| operandh BITW_AND imm {
+			struct operlist *ol = xmalloc(sizeof(struct operlist));
+			ol->oper[0] = $1;
+			ol->oper[1] = xmalloc(sizeof(struct operand));
+			ol->oper[1]->type = OPER_IMM;
+			ol->oper[1]->u.imm = xmalloc(sizeof(struct immediate));
+			ol->oper[1]->u.imm->imm = 0;
+			ol->oper[2] = xmalloc(sizeof(struct operand));
+			ol->oper[2]->type = OPER_IMM;
+			ol->oper[2]->u.imm = $3;
+			$$ = ol;
+		  }
+		| PAREN_OPEN operandh LEFTSHIFT imm PAREN_CLOSE BITW_AND imm {
+			struct operlist *ol = xmalloc(sizeof(struct operlist));
+			struct immediate *imm = $4;
+			if(imm->imm != 16)
+				yyerror("Only 16 bit shift allowed here");
+			ol->oper[0] = xmalloc(sizeof(struct operand));
+			ol->oper[0]->type = OPER_IMM;
+			ol->oper[0]->u.imm = xmalloc(sizeof(struct immediate));
+			ol->oper[0]->u.imm->imm = 0;
+			ol->oper[1] = $2;
+			ol->oper[2] = xmalloc(sizeof(struct operand));
+			ol->oper[2]->type = OPER_IMM;
+			ol->oper[2]->u.imm = $7;
+			$$ = ol;
+		  }
+		| PAREN_OPEN operandh LEFTSHIFT imm BITW_OR operandh PAREN_CLOSE BITW_AND imm {
+			struct operlist *ol = xmalloc(sizeof(struct operlist));
+			struct immediate *imm = $4;
+			if(imm->imm != 16)
+				yyerror("Only 16 bit shift allowed here");
+			ol->oper[0] = $6;
+			ol->oper[1] = $2;
+			ol->oper[2] = xmalloc(sizeof(struct operand));
+			ol->oper[2]->type = OPER_IMM;
+			ol->oper[2]->u.imm = $9;
+			$$ = ol;
+		  }
+		| PAREN_OPEN operandh LEFTSHIFT imm BITW_OR imm PAREN_CLOSE BITW_AND imm {
+			yyerror("Special jump not yet implemented");
+		  }
+		| PAREN_OPEN operandh BITW_OR imm PAREN_CLOSE BITW_AND imm {
+			yyerror("Special jump not yet implemented");
+		  }
+		;
+
+operlist_3_human	: operand_shift_mask COMMA operand_shift_mask COMMA operand {
+			struct operlist *ol = xmalloc(sizeof(struct operlist));
+			struct operand_shift_mask *xxx = $1;
+			struct operand *shift_xxx = xmalloc(sizeof(struct operand));
+			struct operand *mask_xxx = xmalloc(sizeof(struct operand));
+			struct operand_shift_mask *yyy = $3;
+			struct operand *shift_yyy = xmalloc(sizeof(struct operand));
+			struct operand *mask_yyy = xmalloc(sizeof(struct operand));
+			shift_xxx->type = OPER_RAW;
+			shift_xxx->u.raw = (unsigned long) xxx->shift;
+			mask_xxx->type = OPER_RAW;
+			mask_xxx->u.raw = (unsigned long) xxx->mask;
+			shift_yyy->type = OPER_RAW;
+			shift_yyy->u.raw = (unsigned long) yyy->shift;
+			mask_yyy->type = OPER_RAW;
+			mask_yyy->u.raw = (unsigned long) yyy->mask;
+			ol->oper[0] = xxx->op;
+			ol->oper[1] = shift_xxx; 
+			ol->oper[2] = mask_xxx;
+			ol->oper[3] = yyy->op;
+			ol->oper[4] = shift_yyy;
+			ol->oper[5] = mask_yyy;
+			ol->oper[6] = store_oper_sanity($5);
+			free(xxx);
+			free(yyy);
+			$$ = ol;
+		  }
+		;
+
+/* duplicate some complex_imm rules to avoid parentheses
+	The following are implemented:
+		0x143 || 0x143 & 0x12 || 0x143 & ~0x12
+		REG12 || REG12 & 0x12 || REG12 & ~0x12
+		(REG12 << 0x12) || (REG12 << 0x12) & 0x12 || (REG12 << 0x12) & ~0x12
+*/
+operand_shift_mask	: imm {
+			struct operand_shift_mask *oper = xmalloc(sizeof(struct operand_shift_mask));
+			struct operand *oper_imm = xmalloc(sizeof(struct operand));
+			oper_imm->type = OPER_IMM;
+			oper_imm->u.imm = $1;
+			oper->op = oper_imm;
+			oper->mask = 0xFFFF;
+			oper->shift = 0;
+			$$ = oper;
+		  }
+		| imm BITW_AND imm {
+			struct operand_shift_mask *oper = xmalloc(sizeof(struct operand_shift_mask));
+			struct operand *oper_imm = xmalloc(sizeof(struct operand));
+			struct immediate *mask_imm = $3;
+			oper_imm->type = OPER_IMM;
+			oper_imm->u.imm = $1;
+			oper->op = oper_imm;
+			oper->shift = 0;
+			oper->mask = mask_imm->imm & 0xFFFF;
+			free(mask_imm);
+			$$ = oper;
+		  }
+		| imm BITW_AND BITW_NOT imm {
+			struct operand_shift_mask *oper = xmalloc(sizeof(struct operand_shift_mask));
+			struct operand *oper_imm = xmalloc(sizeof(struct operand));
+			struct immediate *mask_imm = $4;
+			oper_imm->type = OPER_IMM;
+			oper_imm->u.imm = $1;
+			oper->op = oper_imm;
+			oper->shift = 0;
+			oper->mask = (~mask_imm->imm) & 0xFFFF;
+			free(mask_imm);
+			$$ = oper;
+		  }
+		| operand_wwo_shift {
+			struct operand_shift_mask *oper = $1;
+			oper->mask = 0xFFFF;
+			$$ = oper;
+		  }
+		| operand_wwo_shift BITW_AND imm {
+			struct operand_shift_mask *oper = $1;
+			struct immediate *mask_imm = $3;
+			oper->mask = mask_imm->imm;
+			free(mask_imm);
+			$$ = oper;
+		  }
+		| operand_wwo_shift BITW_AND BITW_NOT imm {
+			struct operand_shift_mask *oper = $1;
+			struct immediate *mask_imm = $4;
+			oper->mask = (~mask_imm->imm) & 0xFFFF;
+			free(mask_imm);
+			$$ = oper;
+		  }
+		;
+
+operand_wwo_shift	: operandh {
+			struct operand_shift_mask *oper = xmalloc(sizeof(struct operand_shift_mask));
+			oper->op = $1;
+			oper->shift = 0;
+			$$ = oper;
+		  }
+		| PAREN_OPEN operandh LEFTSHIFT imm PAREN_CLOSE {
+			struct operand_shift_mask *oper = xmalloc(sizeof(struct operand_shift_mask));
+			struct immediate *shift_imm = $4;
+			oper->op = $2;
+			oper->shift = shift_imm->imm;
+			free(shift_imm);
+			$$ = oper;
+		  }
+		;
+
+operandh	: reg {
+			struct operand *oper = xmalloc(sizeof(struct operand));
+			oper->type = OPER_REG;
+			oper->u.reg = $1;
+			$$ = oper;
+		  }
+		| mem {
+			struct operand *oper = xmalloc(sizeof(struct operand));
+			oper->type = OPER_MEM;
+			oper->u.mem = $1;
+			$$ = oper;
+		  }
+		;
+
 operand		: reg {
 			struct operand *oper = xmalloc(sizeof(struct operand));
 			oper->type = OPER_REG;
Index: b43-tools/assembler/scanner.l
===================================================================
--- b43-tools/assembler/scanner.l	2011-09-11 19:59:43.000000000 +0200
+++ b43-tools/assembler/scanner.l	2011-11-11 18:15:47.000000000 +0100
@@ -105,6 +105,7 @@
 rr			{ update_lineinfo(); return OP_RR; }
 nand			{ update_lineinfo(); return OP_NAND; }
 orx			{ update_lineinfo(); return OP_ORX; }
+orxh			{ update_lineinfo(); return OP_ORXH; }
 mov			{ update_lineinfo(); return OP_MOV; }
 
 jmp			{ update_lineinfo(); return OP_JMP; }
@@ -127,7 +128,9 @@
 jdp			{ update_lineinfo(); return OP_JDP; }
 jdnz			{ update_lineinfo(); return OP_JDNZ; }
 jzx			{ update_lineinfo(); return OP_JZX; }
+jzxh			{ update_lineinfo(); return OP_JZXH; }
 jnzx			{ update_lineinfo(); return OP_JNZX; }
+jnzxh			{ update_lineinfo(); return OP_JNZXH; }
 jext			{ update_lineinfo(); return OP_JEXT; }
 jnext			{ update_lineinfo(); return OP_JNEXT; }
 
Index: b43-tools/assembler/test.asm
===================================================================
--- b43-tools/assembler/test.asm	2011-09-12 17:03:22.000000000 +0200
+++ b43-tools/assembler/test.asm	2011-11-12 17:09:04.000000000 +0100
@@ -72,6 +72,11 @@
 
 	orx	7,8,r0,r1,r2	/* eXtended OR */
 
+	orxh	0x10, r1 & ~0x30, r2	/* r2 = 0x10 | (r1 & ~0x30) */
+	orxh	0, r1 & ~0xFFF0, r2	/* r2 = r1 & ~0xFFF0 */
+	orxh	r1 & 0x7FFF, 0 & ~0x7FFF, r2		/* r2 = r1 & 0x7FFF */
+	orxh	(r1 << 8) & 0x0100, r2 & ~0x0100, r2	/* r2 = (r1 << 8) & 0x0100 | r2 & ~0x0100 */
+
 	/* Copy instruction. This is a virtual instruction
 	 * translated to more lowlevel stuff like OR. */
 	mov	r0,r2		/* copy data */
@@ -100,6 +105,13 @@
 	jzx	7,8,r0,r1,label	/* Jump if zero after shift and mask */
 	jnzx	7,8,r0,r1,label	/* Jump if nonzero after shift and mask */
 
+	jzxh	r12 & 0x18, label  /* jump if result is zero */
+	jzxh	(r12 << 16) & 0x001FFFC0, label    /* jump if result is zero */
+	jzxh	(r12 << 16 | r13) & 0x1F000, label /* jump if result is zero */
+	jnzxh	r12 & 0x18, label  /* jump if result is non zero */
+	jnzxh	(r12 << 16) & 0x001FFFC0, label    /* jump if result is non zero */
+	jnzxh	(r12 << 16 | r13) & 0x1F000, label /* jump if result is non zero */
+
 	/* jump on external conditions */
 	jext	ECOND_MAC_ON,label  /* jump if external condition is TRUE */
 	jnext	ECOND_MAC_ON,label  /* jump if external condition is FALSE */
--- b43-tools/assembler/README	2011-11-12 17:53:50.000000000 +0100
+++ b43-tools/assembler/README	2011-11-12 17:53:14.000000000 +0100
@@ -43,7 +43,9 @@
 ret       | lrX,lrY    | Store PC, ret from func         | lrX=PC; PC=lrY
 rets      |            | ret from function               | stack->PC
 jzx       | M,S,A,B,l  | Jump if zero after shift + mask |
+jzxh      | A,l        | Human readable alias for jzx    | See detailed docs
 jnzx      | M,S,A,B,l  | Jump if nonzero after shift+msk |
+jnzxh     | A,l        | Human readable alias for jnzx   | See detailed docs
 jext      | E,A,B,l    | Jump if External Condition true | if(E) PC=l
 jnext     | E,A,B,l    | Jump if External Condition false| if(!E) PC=l
 
@@ -66,6 +68,7 @@
 rr        | A,B,rD     | Rotate right                    | rD=rrot(A, B bits)
 nand      | A,B,rD     | Clear bits (notmask+and)        | rD=A&(~B)
 orx       | M,S,A,B,rD | OR with shift and select        | See detailed docs
+orxh      | A,B,rD     | Human readable alias for orx    | See detailed docs
 
 Other instructions:
 nap       | none       | Sleep until event               | See detailed docs
