From: Stephen Boyd <sboyd@kernel.org>
Date: Mon, 22 Jun 2020 02:03:49 -0700
Subject: [PATCH v2 09/16] clk: spear: Remove uninitialized_var() usage
In-Reply-To: <20200620033007.1444705-10-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-10-keescook@chromium.org>
Message-ID: <159281662960.62212.15318119299039755482@swboyd.mtv.corp.google.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-doc@vger.kernel.org, linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, clang-built-linux@googlegroups.com

Quoting Kees Cook (2020-06-19 20:30:00)
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], initialize "i" to zero. The compiler
> warning was not a false positive, since clk_pll_set_rate()'s call to
> clk_pll_round_rate_index() will always fail (since "prate" is NULL), so
> "i" was never being initialized.
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider at google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw at mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg at mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA at mail.gmail.com/
> 
> Fixes: 7d4998f71b29 ("clk: SPEAr: Vco-pll: Fix compilation warning")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>
