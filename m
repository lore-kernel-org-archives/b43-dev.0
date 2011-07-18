From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 19 Jul 2011 01:24:57 +0200
Subject: No DMA RX on some BCM4321, on BCM43224 and BCM43225
In-Reply-To: <CACna6rz0-5bcJ9mL-=JTxQnSGSMY5Hc3DSkq8opyQpG8LmZZAQ@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<20110718204146.706dc5b2@Nokia-N900>
	<CACna6rxYEuOMT1EZP6D46c+YAHBhhTXdDmaum+HMwtPT0ZYCfQ@mail.gmail.com>
	<20110719005917.66e168d4@maggie>
	<CACna6ryKAusP55N-WoAFjhwPfJ5H7NMVta32bGzr4CD=KZ5SkA@mail.gmail.com>
	<20110719010857.53d596cf@maggie>
	<CACna6rz0-5bcJ9mL-=JTxQnSGSMY5Hc3DSkq8opyQpG8LmZZAQ@mail.gmail.com>
Message-ID: <20110719012457.7b8e647c@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Tue, 19 Jul 2011 01:15:27 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> > No. The _DMA_ interrupt masks. Each DMA engine has its interrupt mask register.
> 
> You must mean descriptors, sorry, I misunderstood you.

Ehm, no?
I mean the DMA interrupt mask registers:

#define B43_MMIO_DMA0_IRQ_MASK          0x24
#define B43_MMIO_DMA1_IRQ_MASK          0x2C
#define B43_MMIO_DMA2_IRQ_MASK          0x34
#define B43_MMIO_DMA3_IRQ_MASK          0x3C
#define B43_MMIO_DMA4_IRQ_MASK          0x44
#define B43_MMIO_DMA5_IRQ_MASK          0x4C
