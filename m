From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 14 Aug 2011 09:35:50 +0200
Subject: [PATCH] Fix alignment issues with DMA TX on BCM4331
In-Reply-To: <1313273835.18116.1.camel@i7.infradead.org>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144864.27274.81.camel@i7.infradead.org>
	<4E46F35F.1060900@lwfinger.net>
	<CACna6rxbCnMnxqhKY4ztVdNpxY8p8FzdfShS=8w+mkQ538hiJA@mail.gmail.com>
	<1313273267.16730.3.camel@i7.infradead.org>
	<CACna6rzmG2QerzFkqyG_pbM5qRvFA0aNrp0cHnx1NHoZ+6q_FQ@mail.gmail.com>
	<1313273835.18116.1.camel@i7.infradead.org>
Message-ID: <CACna6rzteiUVPQ0mfoCZhVFmVh4A+kOmf08pUB3P-H+u7Xyu_w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 14 sierpnia 2011 00:17 u?ytkownik David Woodhouse
<dwmw2@infradead.org> napisa?:
> On Sun, 2011-08-14 at 00:12 +0200, Rafa? Mi?ecki wrote:
>> I've just checked wl and they don't do that anyway. The keep order
>> depending on the alignment bool.
>
> Ah, OK. So they still write TXCTL first, if the device can't support
> unaligned descriptors?
>
> The brcm80211 driver doesn't; it writes TXCTL last, unconditionally.

Uh, you mead me read that code... OK:

if (!di->aligndesc_4k)
	_dma_ddtable_init(di, DMA_TX, di->txdpa);

if ((di->dma.dmactrlflags & DMA_CTRL_PEN) == 0)
	control |= D64_XC_PD;
OR_REG(&di->d64txregs->control, control);

if (di->aligndesc_4k)
	_dma_ddtable_init(di, DMA_TX, di->txdpa);

I stripped the comments, which are simply wrong (copy&paste gone too fast).

Following is RX part, with the sane comment this time:

/* DMA engine with out alignment requirement requires table to be inited
 * before enabling the engine
 */
if (!di->aligndesc_4k)
	_dma_ddtable_init(di, DMA_RX, di->rxdpa);

_dma_rxenable(di);

if (di->aligndesc_4k)
	_dma_ddtable_init(di, DMA_RX, di->rxdpa);

-- 
Rafa?
