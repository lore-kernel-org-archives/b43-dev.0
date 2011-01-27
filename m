From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 27 Jan 2011 10:51:01 -0600
Subject: Mini PCIeWiFi card not detected in non-mini adapter
In-Reply-To: <AANLkTinrAgtjz-3Mv0ik9x6sRRvnvUQZn4jQX97mG7it@mail.gmail.com>
References: <AANLkTinrAgtjz-3Mv0ik9x6sRRvnvUQZn4jQX97mG7it@mail.gmail.com>
Message-ID: <4D41A275.2070704@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

On 01/27/2011 10:37 AM, Rafa? Mi?ecki wrote:
> I've received mini PCIe adapter to PCIe x1 slot to test notebook cards
> inserted into PC.  Unfortunately after inserting my Broadcom card to
> it, it is not detected in "lspci" at all.
> 
> My WiFi card used to work in "native" slot inside notebook. So if
> anything is broken, that would be PCIe x1 slot on motherboard or
> adapter itself. I've tested V and GND pins in my PCIe x1 slot, all
> work fine. I'll try get some other WiFi cards, to test my adapter
> tomorrow.
> 
> However, maybe you have heard about some problems with such a
> adapters? Can there be sth preventing my card from being detected,
> visible?

Does the adapter show up as a new bridge in lspci or in dmesg?

Larry
