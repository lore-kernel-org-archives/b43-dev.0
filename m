From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 29 Nov 2011 21:08:50 +0100
Subject: low throughputs with 14e4:4353
In-Reply-To: <77990757-D72B-4BF7-BEEB-5EDB9486236B@ing.unibs.it>
References: <77990757-D72B-4BF7-BEEB-5EDB9486236B@ing.unibs.it>
Message-ID: <CACna6rxjpXegcp1uAhUnAZH7UhwjfFGFXO1-D1QTUWL+DxMvDg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hey Francesco,

W dniu 29 listopada 2011 20:28 u?ytkownik
<francesco.gringoli@ing.unibs.it> napisa?:
> Hi Rafal,
>
> I bought some 43224 cards to begin playing with the firmware. Unfortunately I have problems with the throughput that is really low. Kernel is the latest from wireless git and firmware comes from broadcom-wl-5.100.138. I see that the transmitted power is low, I monitored it with a spectrum analyzer and it confirmed. A lot of packets are lost given the low power and minstrel always select 1Mb/s. When receiving with the 43224 in monitor mode, I see that it receives only a few of the frames that are received by a close 4318-based box: the reported power levels are low too. Please find attached all info about kernel/firmware and devices below.
>
> I tried all the four cards I have and they behave the same: find a photo of one of them here
>
> ? ? ? ?http://www.ing.unibs.it/gringoli/foto.JPG
>
> I tried the cards on a MacBook White, on an Intel Atom based motherboard, Intel Pentium, and AMD Sempron, and I always got very low throughput. The same cards, with the same antennas (everything untouched) but with brcmsmac work well and the spectrum analyzer reports "normal" emitted power levels.

I'm fighting with my BCM43224 for last 2 days, I reproduced the
problem with poor throughput. I already have some patches but nothing
improving situation so far. If I discover anything, I promise to share
:)

-- 
Rafa?
