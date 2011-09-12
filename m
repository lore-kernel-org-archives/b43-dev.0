From: francesco.gringoli at ing.unibs.it <francesco.gringoli@ing.unibs.it>
Date: Mon, 12 Sep 2011 16:44:48 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <20110912163133.398b1d3b@milhouse>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<20110912163133.398b1d3b@milhouse>
Message-ID: <F55731B4-001F-40B0-A38B-D0AD964CF590@ing.unibs.it>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sep 12, 2011, at 4:31 PM, Michael B?sch wrote:

> Francesco, did you also take a look at the new rev 15+ subroutine call mechanism?
> http://bcm-v4.sipsolutions.net/802.11/Microcode#subroutines_.28rev_15.2B-_cores_only.29
Not yet. I just received a couple of cards using ucode16 but I would like to first finish final firmwares for ucode5 and ucode11.

BTW starting with ucode11 there are a couple of new jumps, opcodes 0x70 and 0x70|1. If I'm not wrong they are not documented BUT they behave exactly as je and jne. Did you ever take a look at them? They seem duplicate opcodes but it's weird that they duplicate wires on the chips.

Thanks,
-Francesco
