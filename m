From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 12 Nov 2011 19:05:01 +0100
Subject: [PATCH] b43-asm: Add 3 new virtual instructions.
In-Reply-To: <4ebead69.DTTnPGsbgTj4ZAAD%francesco.gringoli@ing.unibs.it>
References: <4ebead69.DTTnPGsbgTj4ZAAD%francesco.gringoli@ing.unibs.it>
Message-ID: <20111112190501.3f24947e@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 12 Nov 2011 18:31:21 +0100
francesco.gringoli at ing.unibs.it wrote:

> 	orxh	(r1 << 8) & 0x0100, r2 & ~0x0100, r2

This is not really going to fly. If you want this highlevel stuff, you
should port a C compiler to the architecture.
This is assembly. It doesn't know about reg<<imm or similar stuff.

-- 
Greetings, Michael.
