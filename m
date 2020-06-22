From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 22 Jun 2020 10:27:26 -0700
Subject: [PATCH v2 13/16] mm/debug_vm_pgtable: Remove uninitialized_var()
 usage
In-Reply-To: <20200620033007.1444705-17-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-17-keescook@chromium.org>
Message-ID: <CAKwvOdmzYXGL2NVZqBkzyMzc-fLm_UgVCsB3aHW2GmFi3zyf9Q@mail.gmail.com>
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
> to removing[2] this[3] macro[4], just initialize this variable to NULL.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider at google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw at mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg at mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA at mail.gmail.com/
>
> Fixes: 399145f9eb6c ("mm/debug: add tests validating architecture page table helpers")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  mm/debug_vm_pgtable.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
> index e45623016aea..83c9e88a052a 100644
> --- a/mm/debug_vm_pgtable.c
> +++ b/mm/debug_vm_pgtable.c
> @@ -307,7 +307,7 @@ static int __init debug_vm_pgtable(void)
>         phys_addr_t paddr;
>         unsigned long vaddr, pte_aligned, pmd_aligned;
>         unsigned long pud_aligned, p4d_aligned, pgd_aligned;
> -       spinlock_t *uninitialized_var(ptl);
> +       spinlock_t *ptl = NULL;

It looks like the address of ptl is passed to pte_alloc_map_lock.  It
looks like pte_offset_map_lock unconditionally assigns through that
pointer before reading.  So this could be left uninitialized, but
initializing it doesn't hurt.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
>         pr_info("Validating architecture page table helpers\n");
>         prot = vm_get_page_prot(VMFLAGS);
> --

-- 
Thanks,
~Nick Desaulniers
