From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 3 Jun 2011 23:24:54 +0200
Subject: [RFT][PATCH 3.0] ssb: fix PCI(e) driver regression causing oops
	on PCI cards
In-Reply-To: <BANLkTinSdDZv7gshYfi4mK5N9K-E7vk3Yw@mail.gmail.com>
References: <1306918871-16965-1-git-send-email-zajec5@gmail.com>
	<BANLkTinSdDZv7gshYfi4mK5N9K-E7vk3Yw@mail.gmail.com>
Message-ID: <BANLkTinq-Rn1zaS06ki4OD7DDV42bME-2Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, "John W. Linville" <linville@tuxdriver.com>, Andreas Schwab <schwab@linux-m68k.org>
Cc: linuxppc-dev@ozlabs.org, b43-dev@lists.infradead.org

On Jun 1, 2011 9:14 PM, "Rafa? Mi?ecki" <zajec5@gmail.com> wrote:
>
> 2011/6/1 Rafa? Mi?ecki <zajec5@gmail.com>:
> > We were incorrectly executing PCIe specific workarounds on PCI cards.
> > This resulted in:
> > Machine check in kernel mode.
> > Caused by (from SRR1=149030): Transfer error ack signal
> > Oops: Machine check, sig: 7 [#1]
>
> John, I've tested this patch myself on my PCI BCM4318, including
> checking for 0xFFFFFFFF reads in MMIO dumps.
>
> The patch is correct, please take it for 3.0.

Ping, ping, ping John.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110603/8807efed/attachment.html>
