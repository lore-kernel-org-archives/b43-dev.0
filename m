From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 25 Feb 2016 10:00:49 +0000 (UTC)
Subject: [1/2] b43: Remove unnecessary synchronize_irq() before free_irq()
In-Reply-To: <1454964073-25108-1-git-send-email-lars@metafoo.de>
Message-ID: <20160225100049.E2EFC6089C@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


> Calling synchronize_irq() right before free_irq() is quite useless. On one
> hand the IRQ can easily fire again before free_irq() is entered, on the
> other hand free_irq() itself calls synchronize_irq() internally (in a race
> condition free way), before any state associated with the IRQ is freed.
> 
> Patch was generated using the following semantic patch:
> // <smpl>
> @@
> expression irq;
> @@
> -synchronize_irq(irq);
>  free_irq(irq, ...);
> // </smpl>
> 
> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>

Thanks, 2 patches applied to wireless-drivers-next.git:

10fbc7cf031d b43: Remove unnecessary synchronize_irq() before free_irq()
400b43c58269 rtlwifi: Remove unnecessary synchronize_irq() before free_irq()

Kalle Valo
