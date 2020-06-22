From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 22 Jun 2020 11:39:01 -0700
Subject: [PATCH v2 11/16] media: sur40: Remove uninitialized_var() usage
In-Reply-To: <20200620033007.1444705-12-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-12-keescook@chromium.org>
Message-ID: <CAKwvOdm7+8xhbMZRPq0+2X1hez=cNGf=psX7ofNUfqq9iY5ScA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>

On Fri, Jun 19, 2020 at 8:30 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just remove this variable since it was
> actually unused:
>
> drivers/input/touchscreen/sur40.c:459:6: warning: variable 'packet_id' set but not used [-Wunused-but-set-variable]
>   459 |  u32 packet_id;
>       |      ^~~~~~~~~
>
> However, in keeping with the documentation desires outlined in commit
> 335abaea7a27 ("Input: sur40 - silence unnecessary noisy debug output"),
> comment out the assignment instead of removing it.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider at google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw at mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg at mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA at mail.gmail.com/
>
> Fixes: 335abaea7a27 ("Input: sur40 - silence unnecessary noisy debug output")

Probably should comment out `/* u32 packet_id */` rather than removing
it then, but that doesn't really matter. Either way,
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/input/touchscreen/sur40.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/input/touchscreen/sur40.c b/drivers/input/touchscreen/sur40.c
> index 34d31c7ec8ba..620cdd7d214a 100644
> --- a/drivers/input/touchscreen/sur40.c
> +++ b/drivers/input/touchscreen/sur40.c
> @@ -456,8 +456,6 @@ static void sur40_poll(struct input_dev *input)
>  {
>         struct sur40_state *sur40 = input_get_drvdata(input);
>         int result, bulk_read, need_blobs, packet_blobs, i;
> -       u32 uninitialized_var(packet_id);
> -
>         struct sur40_header *header = &sur40->bulk_in_buffer->header;
>         struct sur40_blob *inblob = &sur40->bulk_in_buffer->blobs[0];
>
> @@ -491,7 +489,7 @@ static void sur40_poll(struct input_dev *input)
>                 if (need_blobs == -1) {
>                         need_blobs = le16_to_cpu(header->count);
>                         dev_dbg(sur40->dev, "need %d blobs\n", need_blobs);
> -                       packet_id = le32_to_cpu(header->packet_id);
> +                       /* packet_id = le32_to_cpu(header->packet_id); */
>                 }
>
>                 /*
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe at googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-12-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers
