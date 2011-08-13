From: David Woodhouse <dwmw2@infradead.org>
Date: Sat, 13 Aug 2011 23:17:54 +0100
Subject: [PATCH] Fix alignment issues with DMA TX on BCM4331
In-Reply-To: <4E46F75D.2060604@lwfinger.net>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144864.27274.81.camel@i7.infradead.org>
	<4E46F35F.1060900@lwfinger.net>
	<CACna6rxbCnMnxqhKY4ztVdNpxY8p8FzdfShS=8w+mkQ538hiJA@mail.gmail.com>
	<4E46F75D.2060604@lwfinger.net>
Message-ID: <1313273875.18116.2.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 2011-08-13 at 17:14 -0500, Larry Finger wrote:
> I should have made it clearer. My card does 32-bit DMA, thus this code does not 
> change anything in its code. What I tested is that the patch did not break 
> operations on my card due to some unforeseen complication. 

Oh, OK. I thought BCM4318 was new enough to do 64-bit DMA. Which devices
do we need to test on, then?

-- 
dwmw2
