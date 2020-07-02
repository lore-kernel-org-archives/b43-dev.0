From: Mark Brown <broonie@kernel.org>
Date: Thu, 2 Jul 2020 16:23:35 +0100
Subject: [PATCH v2 08/16] spi: davinci: Remove uninitialized_var() usage
In-Reply-To: <202007020819.318824DA@keescook>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-9-keescook@chromium.org>
 <20200701203920.GC3776@sirena.org.uk>
 <202007020819.318824DA@keescook>
Message-ID: <20200702152335.GJ4483@sirena.org.uk>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-doc@vger.kernel.org, linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, clang-built-linux@googlegroups.com

On Thu, Jul 02, 2020 at 08:21:40AM -0700, Kees Cook wrote:
> On Wed, Jul 01, 2020 at 09:39:20PM +0100, Mark Brown wrote:

> > Please copy maintainers on patches :(

> Hi! Sorry about that; the CC list was giant, so I had opted for using
> subsystem mailing lists where possible.

If you're going to err in a direction there I'd err in the direction of
CCing the people not the list - I only saw this since I was looking for
something else, I don't normally see stuff in the mailing list folder.
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 488 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20200702/5d93920f/attachment.sig>
