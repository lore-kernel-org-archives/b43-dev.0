From: Kalle Valo <kvalo@codeaurora.org>
Date: Tue, 15 May 2018 05:40:39 +0000 (UTC)
Subject: [v3] b43: fix transmit failure when VT is switched
In-Reply-To: <5AF80278.9000501@sra-tohoku.co.jp>
References: <5AF80278.9000501@sra-tohoku.co.jp>
Message-ID: <20180515054039.AFB29601D7@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

kabe at sra-tohoku.co.jp wrote:

> From: Taketo Kabe <kabe@sra-tohoku.co.jp>
> 
> Setup:
> Using BCM4306 rev.03 chip based CardBus wireless card.
> IRQ is shared with yenta (cardbus bridge) and i915 (display) driver.
> For firmware, installed latest but dated openfwwf 5.2
> (http://netweb.ing.unibs.it/~openfwwf/)
> 
> How-to-reproduce:
> Do "ssh <NetBSD-remotehost>", then "ls -lR /" to generate traffic, then
> repeatedly switch VTs by Alt-F1<>Alt-F2.
> Eventually (within a minute) the card stops working.
> You can receive traffic but no transmission.
> For unknown reason it doesn't occur when just generating traffic by
> "ssh <remotehost> ls -lR /".
> 
> With CONFIG_B43_DEBUG=y kernel config, when it stops,
> the debug message shows
>     kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 148, but got 180
> The slot offset I observed so far was always 32.
> 
> When err_out2 is not set to make error messages successive,
> the debug output will be like this:
> kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 116, but got 148
> kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 116, but got 150
> kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 116, but got 120
> kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 116, but got 152
> kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 116, but got 122
> kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 116, but got 154
> kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 116, but got 124
> kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 116, but got 156
> kernel: b43-phy1 debug: Out of order TX status report on DMA ring 1. Expected 116, but got 126
> The TX ring alternates between 2 sequences; the ring seems
> to be completely confused. Controller restart is needed.
> 
> Workaround(1):
> This problem doesn't occur when using propriatory firmware
> you will extract by b43-fwcutter, so it may be a bug in
> openfwwf firmware, as the comment in the b43_dma_handle_txstatus() suggests.
> I wasn't able to find a bug in the terse openfwwf code though.
> 
> Workaround(2):
> Using "pio=1" option to not use DMA makes this problem to
> not occur.
> 
> Description of the patch:
> This patch will forcibly reset the controller to make it
> work again. Very kludgy and doesn't look right, but
> the traffic will continue to flow.
> 
> Signed-off-by: Taketo Kabe <kabe@sra-tohoku.co.jp>
> Reviewed-by: Michael Buesch <m@bues.ch>

Patch applied to wireless-drivers-next.git, thanks.

66cffd6daab7 b43: fix transmit failure when VT is switched

-- 
https://patchwork.kernel.org/patch/10396133/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
