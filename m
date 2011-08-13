From: David Woodhouse <dwmw2@infradead.org>
Date: Sat, 13 Aug 2011 23:17:14 +0100
Subject: [PATCH] Fix alignment issues with DMA TX on BCM4331
In-Reply-To: <CACna6rzmG2QerzFkqyG_pbM5qRvFA0aNrp0cHnx1NHoZ+6q_FQ@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144864.27274.81.camel@i7.infradead.org>
	<4E46F35F.1060900@lwfinger.net>
	<CACna6rxbCnMnxqhKY4ztVdNpxY8p8FzdfShS=8w+mkQ538hiJA@mail.gmail.com>
	<1313273267.16730.3.camel@i7.infradead.org>
	<CACna6rzmG2QerzFkqyG_pbM5qRvFA0aNrp0cHnx1NHoZ+6q_FQ@mail.gmail.com>
Message-ID: <1313273835.18116.1.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sun, 2011-08-14 at 00:12 +0200, Rafa? Mi?ecki wrote:
> I've just checked wl and they don't do that anyway. The keep order
> depending on the alignment bool. 

Ah, OK. So they still write TXCTL first, if the device can't support
unaligned descriptors?

The brcm80211 driver doesn't; it writes TXCTL last, unconditionally.

Do you want me to send another patch which makes it conditional? It
complicates the code with something that might be unnecessary legacy
baggage... but means we don't have to be worried about regressions on
older hardware.

-- 
dwmw2
