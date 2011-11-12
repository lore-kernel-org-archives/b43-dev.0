From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 12 Nov 2011 20:16:51 +0100
Subject: [PATCH] b43-asm: Add 3 new virtual instructions.
In-Reply-To: <6E171C19-E963-447F-B524-9E0A4F324F53@ing.unibs.it>
References: <4ebead69.DTTnPGsbgTj4ZAAD%francesco.gringoli@ing.unibs.it>
 <20111112190501.3f24947e@milhouse>
 <6E171C19-E963-447F-B524-9E0A4F324F53@ing.unibs.it>
Message-ID: <20111112201651.5c2b0191@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 12 Nov 2011 20:03:36 +0100
francesco.gringoli at ing.unibs.it wrote:

> On Nov 12, 2011, at 7:05 PM, Michael B?sch wrote:
> 
> > On Sat, 12 Nov 2011 18:31:21 +0100
> > francesco.gringoli at ing.unibs.it wrote:
> > 
> >> 	orxh	(r1 << 8) & 0x0100, r2 & ~0x0100, r2
> > 
> > This is not really going to fly. If you want this highlevel stuff, you
> > should port a C compiler to the architecture.
> > This is assembly. It doesn't know about reg<<imm or similar stuff.
> Yes, you are right and, in fact, the patched assembler will just accept only what the cpu may execute, I does not pretend to be a C compiler. It's just another way for assembling "or with shift and select" (or jzx), and this way really enhances the readability of the assembly code. Give it a try :-).
> 
> If I'm not wrong, it's like "mov 0x1234, r1"

No.
It crosses the line where it does (pseudo)operations (like shift, and, or, etc..)
on non-const (non-immediate) stuff.

Just do a preprocessor or something like that, that translates your pseudo-insns
to real insns. Alternatively port a small C compiler.

I also don't think that this is easier to read for people familiar to the CPU. And
you have to be familiar to the CPU when writing code for it.

I won't merge this. No way.

The "/* duplicate some complex_imm rules to avoid parentheses" part also is not
really merge-able as-is. yacc knows about operator precedence. If you want operator
precedence (to get rid of parenthesis), just use this yacc feature to implement this.

-- 
Greetings, Michael.
