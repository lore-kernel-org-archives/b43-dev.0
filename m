From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 12 Sep 2011 12:35:59 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <44D50757-55C3-4838-A348-98673FCDBF90@ing.unibs.it>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<CA+XFjioSx76LvY0WUCrYYUgnzUj-vdDMfdA_vqxjCwVew6HiPQ@mail.gmail.com>
	<20110912112514.344cf429@milhouse>
	<44D50757-55C3-4838-A348-98673FCDBF90@ing.unibs.it>
Message-ID: <20110912123559.655e4dbd@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 12 Sep 2011 12:09:01 +0200
francesco.gringoli at ing.unibs.it wrote:

> but trying on a = 0x8000 and b = 0x7fff helped me understanding. a - b = 0x8000 + 2'(0x7fff) = 0x0001 > 0. While 0x8000 < 0x7fff.

I don't get it.
Can you write simple pseudocode for your instruction?
For example, for jls, we have this pseudocode:

if (xxx < yyy)
    pc := jjj
(where xxx and yyy are two's complement)

What does jdX do in C-pseudocode?

http://bcm-v4.sipsolutions.net/802.11/Microcode

-- 
Greetings, Michael.
