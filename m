From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 22 Jun 2020 11:07:14 +0200
Subject: [PATCH v2 00/16] Remove uninitialized_var() macro
In-Reply-To: <202006200854.B2D8F21@keescook>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <CA+icZUWpHRR7ukyepiUH1dR3r4GMi-s2crfwR5vTszdt1SUTQw@mail.gmail.com>
 <202006200854.B2D8F21@keescook>
Message-ID: <CA+icZUV-gBgUnrm6pF2MHWC2SnK_ZBatAa9VrEJ2VbdARi1YBw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-doc@vger.kernel.org, linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>

On Sat, Jun 20, 2020 at 5:57 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Sat, Jun 20, 2020 at 09:03:34AM +0200, Sedat Dilek wrote:
> > On Sat, Jun 20, 2020 at 5:30 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > v2:
> > > - more special-cased fixes
> > > - add reviews
> > > v1: https://lore.kernel.org/lkml/20200603233203.1695403-1-keescook at chromium.org
> > >
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings
> > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > either simply initialize the variable or make compiler changes.
> > >
> > > As recommended[2] by[3] Linus[4], remove the macro.
> > >
> > > Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
> > > a single treewide commit in this series. A few others needed to actually
> > > get cleaned up, and I broke those out into individual patches.
> > >
> > > The tree is:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=kspp/uninit/macro
> > >
> > > -Kees
> > >
> >
> > Hi Kees,
> >
> > thanks for doing a v2 of your patchset.
> >
> > As I saw Jason Yan providing some "uninitialized_var() macro" patches
> > to the MLs I pointen him to your tree "v1".
>
> Thanks!
>
> > BTW, I have tested your "v1" against Linux v5.7 (see [1]) - just
> > yesterday with Linux v5.7.5-rc1.
> >
> > Is it possible to have a v2 of this patchset on top od Linux v5.7 - if
> > you do not mind.
>
> Since it's only going to be for post-v5.8, I'm fine skipping the v5.7
> testing. Mainly I'm looking at v5.8 and linux-next.
>
> Thanks for looking at it!
>

Thanks for the feedback.

"I knew you'd say that."
( Judge Dredd )

- Sedat -
