From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 12 Sep 2011 11:25:14 +0200
Subject: [PATCH] b43-asm, b43-dasm: Add 5 new instructions.
In-Reply-To: <CA+XFjioSx76LvY0WUCrYYUgnzUj-vdDMfdA_vqxjCwVew6HiPQ@mail.gmail.com>
References: <alpine.LFD.2.02.1109121040030.18551@oracolo.ing.unibs.it>
	<CA+XFjioSx76LvY0WUCrYYUgnzUj-vdDMfdA_vqxjCwVew6HiPQ@mail.gmail.com>
Message-ID: <20110912112514.344cf429@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 12 Sep 2011 11:12:46 +0200
G?bor Stefanik <netrolller.3d@gmail.com> wrote:

> On Mon, Sep 12, 2011 at 10:50 AM, Francesco Gringoli
> <francesco.gringoli@ing.unibs.it> wrote:
> > Hi Larry and Michael,
> >
> > I did some testing with the firmware and discovered the meaning of a few
> > instructions that are currently marked either as "unknown jump" on the
> > bcm-specs site or do not appear at all. I chose some names but maybe you
> > have better ideas regard them.
> >
> > Here is a brief description of the instructions I'm talking about and a
> > set of patches for b43-tools to enable proper dis/assembly.
> >
> > Regards,
> > -Francesco
> >
> > -------------=--------------
> > Description of the new instructions
> >
> > Opcode 0x0D6: jumps if the difference between op1 and op2 is negative.
> > Suggested name "jdn" (jump if difference is negative).
> 
> I'd suggest following the x86 convention, and calling it "jl".

Well, no. We already have a jump-if-less.
That reminds me that I already looked into these new instructions once and
they seemed quite strange to me.
Francesco, are you really sure your analysis on the instructions is correct?
My _guess_ was that they don't work on two's complement. But that was only
a guess and I didn't continue research on that.

-- 
Greetings, Michael.
