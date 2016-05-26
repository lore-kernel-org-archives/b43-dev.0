From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 26 May 2016 14:42:46 +0200
Subject: BCM4331 reset leads to wl lockup
In-Reply-To: <20160526121210.GA7006@wunner.de>
References: <20160526121210.GA7006@wunner.de>
Message-ID: <20160526144246.217bfff1@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lukas Wunner <lukas@wunner.de>
Cc: linux-wlan-client-support-list@broadcom.com, 1332647@gmail.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Thu, 26 May 2016 14:12:10 +0200
Lukas Wunner <lukas@wunner.de> wrote:

> +	mmio = early_ioremap(addr, BCM4331_MMIO_SIZE);
> +	if (!mmio) {
> +		pr_err("Cannot iomap Apple AirPort card\n");
> +		return;
> +	}
> +	pr_info("Resetting Apple AirPort card\n");
> +	iowrite32(BCMA_RESET_CTL_RESET,
> +		  mmio + (1 * BCMA_CORE_SIZE) + BCMA_RESET_CTL);
> +	early_iounmap(mmio, BCM4331_MMIO_SIZE);

Just writing that bit is not the correct reset procedure.
So it might cause problems depending on how wl does the core reset
later.

Please try this:
- wait for BCMA_RESET_ST to be 0
- set reset bit
- flush
- wait 1us
- reset reset bit
- flush
- wait 10us

See bcma_core_disable()

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160526/cabe4088/attachment.sig>
