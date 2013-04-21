From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 21 Apr 2013 18:35:14 +0200
Subject: [PATCH] b43: use rx desc underrun interrupt
In-Reply-To: <CAFzhf4rio-z1VSefBRWgm1yHhJ90tQM9K9pm6Q=--o6-ncS1Fg@mail.gmail.com>
References: <CAOTQ16KW-0Z9XHYhDCFuYdSjJtcEC26ZBZRS_OXZdyGfpcHsoQ@mail.gmail.com>
 <alpine.DEB.2.02.1304201603220.15944@kelly.ryd.net>
 <20130420211223.640b7c5b@milhouse>
 <alpine.DEB.2.02.1304202136260.19161@kelly.ryd.net>
 <20130420215056.3d0b0dbb@milhouse>
 <alpine.DEB.2.02.1304202154540.19161@kelly.ryd.net>
 <CAFzhf4rSUO9mn_RKw4Vehw2LKggFdC_W0v-K_KKCZJez1AwynQ@mail.gmail.com>
 <alpine.DEB.2.02.1304202252460.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202305470.19161@kelly.ryd.net>
 <alpine.DEB.2.02.1304202314190.19161@kelly.ryd.net>
 <20130421083822.5d6599e3@milhouse>
 <alpine.DEB.2.02.1304211006190.19161@kelly.ryd.net>
 <20130421104440.48a3e006@milhouse>
 <alpine.DEB.2.02.1304211046300.19161@kelly.ryd.net>
 <20130421112118.627a1f7f@milhouse>
 <alpine.DEB.2.02.1304211410460.19161@kelly.ryd.net>
 <CAFzhf4pETgKBFQ+6J1cp5Lr0VLipOw2MbRtev5nXc9VEdBASyA@mail.gmail.com>
 <20130421165951.59bc58c8@milhouse>
 <CAFzhf4rio-z1VSefBRWgm1yHhJ90tQM9K9pm6Q=--o6-ncS1Fg@mail.gmail.com>
Message-ID: <20130421183514.3f9799a7@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 21 Apr 2013 16:24:18 +0100
Piotras <piotras@gmail.com> wrote:

> >> Not sure if FIFO overruns are really an issue and how to prevent them.
> >> Maybe RX underflow should be handled in top half and reprogram device
> >> to suspend receives (is this possible)?
> >
> > What is "top half"?
> 
> Top half interrupt handler (b43_do_interrupt).

No way.
Interrupts are properly blocked before leaving the top-half handler and
re-enabled before leaving the bottom-half handler already.
Adding stuff to the top-half handler would only introduce serious locking
and latency issues and it would fix nothing.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130421/36056889/attachment.sig>
