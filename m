From: chris at martin.cc <chris@martin.cc>
Date: Fri, 4 Mar 2011 11:37:05 +1100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTimwByPJQe-LK+qYx8r+mjjqrku5ios8Lzn2N84W@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTikcvuBdOi=LM5Bx9cxO2yY=0BzSTn18r938KjSr@mail.gmail.com>
	<AANLkTi=gjvA5=UxHENZ1ALcxomPEdL7NGeb7oFtdZ+t3@mail.gmail.com>
	<4D6EBDE0.8020005@lwfinger.net>
	<AANLkTimz2_tReWABmqH5HsNjzYRW0fkidS1qmQbSAoqr@mail.gmail.com>
	<AANLkTin1SKsQSsMMUq-+0K_j=8GUxWQmP0HyyaxtD3z3@mail.gmail.com>
	<AANLkTimwByPJQe-LK+qYx8r+mjjqrku5ios8Lzn2N84W@mail.gmail.com>
Message-ID: <AANLkTi=4zfLqC3uVi35TgehNYmm5SnoRph3=vPM+MWua@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/3 Rafa? Mi?ecki <zajec5@gmail.com>:
>
> You can revert your switching to PIO and debugging messages if you
> wish. That doesn't matter.
>
>
> My idea of what is happening:
> 1) We try to use newer firmware which does not forgive us broken TX
> header anymore
> 2) Radio does not transmit, or transmits rubbishes
> 3) mac80211 detects failure of transmitting and hits some allocation
> loop, memory leak
>
> If that patches help, it means we satisfied newer firmware and TX
> transmission goes fine. However there still probably is some alloc bug
> in mac80211 that was exposed by b43.
>

Maybe the way to investigate this further is to look at what is being
passed between
mac80211 and b43, with the different firmwares.

I will add some debugging on the weekend and see what I can uncover.

----------------------------------------------------------
Chris Martin
m: +61 419 812 371
----------------------------------------------------------
