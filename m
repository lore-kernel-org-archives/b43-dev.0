From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 27 Jan 2011 17:37:11 +0100
Subject: Mini PCIeWiFi card not detected in non-mini adapter
Message-ID: <AANLkTinrAgtjz-3Mv0ik9x6sRRvnvUQZn4jQX97mG7it@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

I've received mini PCIe adapter to PCIe x1 slot to test notebook cards
inserted into PC.  Unfortunately after inserting my Broadcom card to
it, it is not detected in "lspci" at all.

My WiFi card used to work in "native" slot inside notebook. So if
anything is broken, that would be PCIe x1 slot on motherboard or
adapter itself. I've tested V and GND pins in my PCIe x1 slot, all
work fine. I'll try get some other WiFi cards, to test my adapter
tomorrow.

However, maybe you have heard about some problems with such a
adapters? Can there be sth preventing my card from being detected,
visible?

-- 
Rafa?
