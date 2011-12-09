From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 08 Dec 2011 18:46:06 -0600
Subject: Performance of BCM43224 (14e4:4353)
Message-ID: <4EE15A4E.1090500@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Francesco Gringoli <francesco.gringoli@ing.unibs.it>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

Guys,

I just added the patches that let brcmsmac use bcma, and tested the TX and RX 
rates using netperf. The results are

Driver			RX		TX

brcmsmac		21.7		6.2
b43			15.0		6.0
wl			43.5		73.5

The AP is running in 802.11n mode and has throughput of 40-60 Mbps in both 
directions with an RTL8192CE, thus both open-source drivers have room for 
improvement.

I am using the following firmware:
b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)


With b43 and mac80211 debugging turned on, I see a lot of

wlan13: detected beacon loss from AP - sending probe request

Larry
