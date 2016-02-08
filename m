From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 8 Feb 2016 23:22:02 +0100
Subject: [PATCH 1/2] b43: Remove unnecessary synchronize_irq() before
 free_irq()
In-Reply-To: <1454964073-25108-1-git-send-email-lars@metafoo.de>
References: <1454964073-25108-1-git-send-email-lars@metafoo.de>
Message-ID: <20160208232202.7db42b54@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org, Chaoming Li <chaoming_li@realsil.com.cn>, b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>

On Mon,  8 Feb 2016 21:41:12 +0100
Lars-Peter Clausen <lars@metafoo.de> wrote:

> Calling synchronize_irq() right before free_irq() is quite useless. On one
> hand the IRQ can easily fire again before free_irq() is entered,

Well, that depends on whether the interrupt is shared and whether we
disabled the interrupt mask inside of the device (which we did).

> on the
> other hand free_irq() itself calls synchronize_irq() internally (in a race
> condition free way), before any state associated with the IRQ is freed.

Ok, fair enough.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160208/9a3d5f46/attachment.sig>
