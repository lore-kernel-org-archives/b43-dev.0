From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Sat, 12 Nov 2011 20:03:36 +0100
Subject: [PATCH] b43-asm: Add 3 new virtual instructions.
In-Reply-To: <20111112190501.3f24947e@milhouse>
References: <4ebead69.DTTnPGsbgTj4ZAAD%francesco.gringoli@ing.unibs.it>
 <20111112190501.3f24947e@milhouse>
Message-ID: <6E171C19-E963-447F-B524-9E0A4F324F53@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Nov 12, 2011, at 7:05 PM, Michael B?sch wrote:

> On Sat, 12 Nov 2011 18:31:21 +0100
> francesco.gringoli at ing.unibs.it wrote:
> 
>> 	orxh	(r1 << 8) & 0x0100, r2 & ~0x0100, r2
> 
> This is not really going to fly. If you want this highlevel stuff, you
> should port a C compiler to the architecture.
> This is assembly. It doesn't know about reg<<imm or similar stuff.
Yes, you are right and, in fact, the patched assembler will just accept only what the cpu may execute, I does not pretend to be a C compiler. It's just another way for assembling "or with shift and select" (or jzx), and this way really enhances the readability of the assembly code. Give it a try :-).

If I'm not wrong, it's like "mov 0x1234, r1": such instruction doesn't exist but the assembler accepts it and converts to "orx 7, 8, 0x12, 0x34, r1". So why not adding more assembly options so that the code can be easily understood? Consider these lines

	orx		0, 5, 0x001, SPR_BRC, SPR_BRC
	orx		0, 3, 0x000, SPR_BRC, SPR_BRC
	orx		1, 0, GP_REG1, SPR_TXE0_PHY_CTL, SPR_TXE0_PHY_CTL;

and compare them to

#define FRAME_BURST 0x0020
#define CONTENTION_PARAM_MODIFIED 0x0008
#define FRAME_ENCODING 0x0003
	orxh	FRAME_BURST, SPR_BRC & ~FRAME_BURST, SPR_BRC
	orxh	0x0000, SPR_BRC & ~CONTENTION_PARAM_MODIFIED, SPR_BRC
	orxh	r1 & FRAME_ENCODING, SPR_TXE0_PHY_CTL & ~ FRAME_ENCODING, SPR_TXE0_PHY_CTL

Regards,
-Francesco

> 
> -- 
> Greetings, Michael.
