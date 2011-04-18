From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 18 Apr 2011 20:57:09 +0200
Subject: Strange DMA error
In-Reply-To: <4DAC8545.2050907@rogers.com>
References: <4DAC8545.2050907@rogers.com>
Message-ID: <BANLkTi=awUBRSMhytKV7MyQGVP+GteZN_w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/4/18 Todd Walter <twalter@rogers.com>:
> I have a BCM4312 (using SSB) in a HP Mini 311 with an odd disconnect
> issue. ?If I use the link heavily (ie, streaming a movie) then all is
> usually well. ?If the link is idle it bombs with an error to stderr.
> This happens with the hardware power control on or off. ?Long transfers
> do crash as well, just much less frequently. ?For instance, a streamed
> movie might go an hour and I can simply re-cycle wlan0 and recover.
> However, if I am surfing it will die while I am reading one web page.
> PIO mode is worse; typically it fails during the 4-way handshake
> (timeout) and even when it works transfers will consume >70% of the CPU
> and crash. ?When a PIO mode drops I have to cold-boot to recover use of
> the wireless card. ?I have attached the PCI information for the card and
> dmesg output as I am at a loss as how to procede.

Can you just explain, what errors are you seeing? What is that bomb of
errors in your stderr? Can you see anything else than just:
wlan0: detected beacon loss from AP - sending probe request

-- 
Rafa?
