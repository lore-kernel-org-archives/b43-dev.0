From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 26 Jul 2011 14:12:46 -0500
Subject: [PATCH] b43legacy: remove 64-bit DMA support
In-Reply-To: <4E2F0F44.3060105@gnu.org>
References: <20110725213832.32510.3753.stgit@mj.roinet.com>
	<4E2EFDCC.3060604@lwfinger.net> <4E2F0F44.3060105@gnu.org>
Message-ID: <4E2F11AE.1030608@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Roskin <proski@gnu.org>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, "John W. Linville" <linville@tuxdriver.com>

On 07/26/2011 02:02 PM, Pavel Roskin wrote:
> On 07/26/2011 01:47 PM, Larry Finger wrote:
>> On 07/25/2011 04:40 PM, Pavel Roskin wrote:
>>> Devices supported by b43legacy don't support 64-bit DMA.
>>>
>>> Signed-off-by: Pavel Roskin<proski@gnu.org>
>>> ---
>>> The patch was tested on Broadcom 4306.
>>>
>>> drivers/net/wireless/b43legacy/dma.c | 374
>>> ++++++----------------------------
>>> drivers/net/wireless/b43legacy/dma.h | 107 ----------
>>> 2 files changed, 71 insertions(+), 410 deletions(-)
>>
>> Tested on BCM4303.
>
> Appreciated!
>
>>> + value&= B43legacy_DMA32_RXSTATE;
>>
>> I am surprised that checkpatch doesn't see the spacing around the &= as
>> an error.
>
> It's a Mozilla Thunderbird bug. What you are seeing is not what I sent.
>
> checkpatch would catch that in the real code.

Ahh. The BCM4303 is in a different machine than I the one used to do Email. 
Saving the message from Thunderbird to an NFS-mounted device and copying to the 
test machine came out right. When I saw it in the mail, I ran checkpatch, saw 
that it was clean, and failed to check the actual patch that I had applied. 
Interesting.

Larry
