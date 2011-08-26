From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 26 Aug 2011 21:15:37 +0200
Subject: [Bug]No probe response from after 500ms, disconnecting.
In-Reply-To: <1301780916.5200.31.camel@acer.lan>
References: <1301780916.5200.31.camel@acer.lan>
Message-ID: <CACna6rxTZg_uVTJdW8gNriezoWo9pRBm19Z1evvKASH9bg1KEg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/4/2 Szymon Zygmunt <szymon.zygmunt@gmail.com>:
> 1. A description of the problem at hand:
> Last time I changed my wireless card and I have problems with wireless
> link when I copy large files over lan. Link is broken after some part of
> file (eg. 50 - 200 MB) and I have to reload my b43 driver (modprobe -r
> b43, modprobe b43). After that connection work again for a while and
> situation is repeated.
>
> 2. When it happens:
> Always when I copy large file from my ftp (sets on openwrt box) to my PC
> over wifi.
>
> 3. How to reproduce:
> Start to operation with high transmission rates (eg. copy larg file)

Szymon, this is a damn late reply and I think I understand if you've
already switched to some other card.

In case you're still using b43 & BCM4318: did you manage to fix this
problem yourself?

If you didn't, can you do some tests for me?
1) Start your ftp copying, wait for connection to die, and perform "iw
dev wlan0 scan" (replace wlan0 if you have different interface). Do
you get any scanning results?
2) Does switching from DMA to PIO help? (modprobe -r b43 && modprobe b43 pio=1)

-- 
Rafa?
