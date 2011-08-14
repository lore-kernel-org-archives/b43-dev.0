From: David Woodhouse <dwmw2@infradead.org>
Date: Sun, 14 Aug 2011 09:04:04 +0100
Subject: [PATCH] Fix alignment issues with DMA TX on BCM4331
In-Reply-To: <CACna6rzteiUVPQ0mfoCZhVFmVh4A+kOmf08pUB3P-H+u7Xyu_w@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144864.27274.81.camel@i7.infradead.org>
	<4E46F35F.1060900@lwfinger.net>
	<CACna6rxbCnMnxqhKY4ztVdNpxY8p8FzdfShS=8w+mkQ538hiJA@mail.gmail.com>
	<1313273267.16730.3.camel@i7.infradead.org>
	<CACna6rzmG2QerzFkqyG_pbM5qRvFA0aNrp0cHnx1NHoZ+6q_FQ@mail.gmail.com>
	<1313273835.18116.1.camel@i7.infradead.org>
	<CACna6rzteiUVPQ0mfoCZhVFmVh4A+kOmf08pUB3P-H+u7Xyu_w@mail.gmail.com>
Message-ID: <1313309045.28740.0.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 2011-08-14 at 09:35 +0200, Rafa? Mi?ecki wrote:
> 
> > The brcm80211 driver doesn't; it writes TXCTL last, unconditionally.
> 
> Uh, you mead me read that code... OK:
> 
> if (!di->aligndesc_4k)
>         _dma_ddtable_init(di, DMA_TX, di->txdpa);
> 
> if ((di->dma.dmactrlflags & DMA_CTRL_PEN) == 0)
>         control |= D64_XC_PD;
> OR_REG(&di->d64txregs->control, control);
> 
> if (di->aligndesc_4k)
>         _dma_ddtable_init(di, DMA_TX, di->txdpa); 

Hm, so I lied. Sorry about that. Will send a new patch.

I'll also have another look at the RX path. I had tried enabling RX
after setting the addresses, but that had failed.

-- 
dwmw2
