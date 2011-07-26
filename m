From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 26 Jul 2011 15:56:16 -0500
Subject: [PATCH] b43legacy: remove 64-bit DMA support
In-Reply-To: <CACna6ryV7ffeuC_6cZdAB_WG4+fOHSbnxiCAV2-Mmkp58o_4=A@mail.gmail.com>
References: <20110725213832.32510.3753.stgit@mj.roinet.com>	<4E2EFDCC.3060604@lwfinger.net>
	<CACna6ryV7ffeuC_6cZdAB_WG4+fOHSbnxiCAV2-Mmkp58o_4=A@mail.gmail.com>
Message-ID: <4E2F29F0.8040506@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Pavel Roskin <proski@gnu.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 07/26/2011 03:05 PM, Rafa? Mi?ecki wrote:
> 2011/7/26 Larry Finger<Larry.Finger@lwfinger.net>:
>> On 07/25/2011 04:40 PM, Pavel Roskin wrote:
>>>
>>> Devices supported by b43legacy don't support 64-bit DMA.
>>>
>>> Signed-off-by: Pavel Roskin<proski@gnu.org>
>>> ---
>>> The patch was tested on Broadcom 4306.
>>>
>>>   drivers/net/wireless/b43legacy/dma.c |  374
>>> ++++++----------------------------
>>>   drivers/net/wireless/b43legacy/dma.h |  107 ----------
>>>   2 files changed, 71 insertions(+), 410 deletions(-)
>>
>> Tested on BCM4303.
>
> Err, BCM4303? What card is that exactly?

It is a 14e4:4301 802.11b card in a PCI format. The lspci command also calls it 
a Linksys WMP11 v2.7 802.11b Wireless-B PCI Adapter.

Larry
