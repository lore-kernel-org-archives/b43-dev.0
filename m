From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 12 Sep 2011 16:31:33 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
Message-ID: <20110912163133.398b1d3b@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Francesco, did you also take a look at the new rev 15+ subroutine call mechanism?
http://bcm-v4.sipsolutions.net/802.11/Microcode#subroutines_.28rev_15.2B-_cores_only.29

My guess is that it stores the call stack somewhere in SHM or probably some new
dedicated memory. I did not try anything of that on a device, yet, but from looking
at the disassembly it's pretty obvious that this is a call/ret mechanism. What I
don't see from the code is where the stack is put, though. If it's put into SHM, that
should be easy to spot.

-- 
Greetings, Michael.
