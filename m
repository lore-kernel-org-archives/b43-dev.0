From: Arend van Spriel <arend@broadcom.com>
Date: Wed, 2 Oct 2013 09:27:00 +0200
Subject: [PATCH net-next] net:drivers/net: Miscellaneous conversions
 to ETH_ALEN
In-Reply-To: <1380679480.2081.24.camel@joe-AO722>
References: <1380679480.2081.24.camel@joe-AO722>
Message-ID: <524BCAC4.6060209@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Joe Perches <joe@perches.com>, netdev <netdev@vger.kernel.org>
Cc: bridge@lists.linux-foundation.org, e1000-devel@lists.sourceforge.net, brcm80211-dev-list@broadcom.com, linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, ath10k@lists.infradead.org, wil6210@qca.qualcomm.com, netfilter-devel <netfilter-devel@vger.kernel.org>, b43-dev@lists.infradead.org, linuxppc-dev@lists.ozlabs.org

On 10/02/2013 04:04 AM, Joe Perches wrote:
> Convert the memset/memcpy uses of 6 to ETH_ALEN
> where appropriate.
>
> Also convert some struct definitions and u8 array
> declarations of [6] to ETH_ALEN.
>
For brcmsmac

Acked-by: Arend van Spriel <arend@broadcom.com>
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>   drivers/net/wireless/brcm80211/brcmsmac/main.c     |  6 +-
