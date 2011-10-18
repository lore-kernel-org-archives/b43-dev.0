From: Chris Vine <chris@cvine.freeserve.co.uk>
Date: Tue, 18 Oct 2011 01:04:46 +0100
Subject: [PATCH V2 3.2] b43: fill ctl1 word on all newer PHYs, fix PHY
	errors
In-Reply-To: <1318863565-27145-1-git-send-email-zajec5@gmail.com>
References: <1318863565-27145-1-git-send-email-zajec5@gmail.com>
Message-ID: <20111018010446.1a178926@boulder.homenet>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 17 Oct 2011 16:59:25 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> This fixes PHY transmission errors reported on some LP-PHY and HT-PHY
> cards. For LP-PHY they were quite rare and not really noticable. On
> HT-PHY they were critical, OFDM rates were not available at all.
[snip]

Does this fix the "b43-phy0 debug: Out of order TX status report on DMA
ring 1" stuff?

Chris
