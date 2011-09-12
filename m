From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 12 Sep 2011 17:07:51 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <F55731B4-001F-40B0-A38B-D0AD964CF590@ing.unibs.it>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<20110912163133.398b1d3b@milhouse>
	<F55731B4-001F-40B0-A38B-D0AD964CF590@ing.unibs.it>
Message-ID: <20110912170751.039f5c77@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 12 Sep 2011 16:44:48 +0200
francesco.gringoli at ing.unibs.it wrote:

> BTW starting with ucode11 there are a couple of new jumps, opcodes 0x70 and 0x70|1. If I'm not wrong they are not documented BUT they behave exactly as je and jne. Did you ever take a look at them? They seem duplicate opcodes but it's weird that they duplicate wires on the chips.

I didn't check that, yet.
Maybe they are faster, but must not be used under certain conditions.
Or maybe they don't have the "ret problem". These are pure guesses, though...

-- 
Greetings, Michael.
