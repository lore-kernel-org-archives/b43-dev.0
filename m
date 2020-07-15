From: Kalle Valo <kvalo@codeaurora.org>
Date: Wed, 15 Jul 2020 10:37:01 +0000 (UTC)
Subject: [PATCH v2 04/16] b43: Remove uninitialized_var() usage
In-Reply-To: <20200620033007.1444705-5-keescook@chromium.org>
References: <20200620033007.1444705-5-keescook@chromium.org>
Message-ID: <20200715103701.52C31C433B7@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Kees Cook <keescook@chromium.org> wrote:

> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just initialize this variable to NULL.
> No later NULL deref is possible due to the early returns outside of the
> (phy->rev >= 7 && phy->rev < 19) case, which explicitly tests for NULL.
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider at google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw at mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg at mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA at mail.gmail.com/
> 
> Fixes: 58619b14d106 ("b43: move under broadcom vendor directory")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

2 patches applied to wireless-drivers-next.git, thanks.

800e7a205a0f b43: Remove uninitialized_var() usage
f8279dad4e36 rtlwifi: rtl8192cu: Remove uninitialized_var() usage

-- 
https://patchwork.kernel.org/patch/11615573/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
