From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 18 Oct 2011 06:17:10 +0200
Subject: [PATCH V2 3.2] b43: fill ctl1 word on all newer PHYs,
	fix PHY errors
In-Reply-To: <20111018010446.1a178926@boulder.homenet>
References: <1318863565-27145-1-git-send-email-zajec5@gmail.com>
	<20111018010446.1a178926@boulder.homenet>
Message-ID: <CACna6rz=t7TvmbCu3tX5wdUp+8E_aHdDV33ASZdSTQiJAF47EA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 18 pa?dziernika 2011 02:04 u?ytkownik Chris Vine
<chris@cvine.freeserve.co.uk> napisa?:
> On Mon, 17 Oct 2011 16:59:25 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> This fixes PHY transmission errors reported on some LP-PHY and HT-PHY
>> cards. For LP-PHY they were quite rare and not really noticable. On
>> HT-PHY they were critical, OFDM rates were not available at all.
> [snip]
>
> Does this fix the "b43-phy0 debug: Out of order TX status report on DMA
> ring 1" stuff?

I don't think so :( It's about
b43-phy0 ERROR: PHY transmission error

-- 
Rafa?
