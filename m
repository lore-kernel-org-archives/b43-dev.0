From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 17 Jan 2014 16:18:07 -0600
Subject: [PATCH v4 1/2] b43: fix the wrong assignment of status.freq in
 b43_rx()
In-Reply-To: <d4d1340a176aee1e58ffe80e83ddc3394f2829e3.1389975095.git.gamerh2o@gmail.com>
References: <d4d1340a176aee1e58ffe80e83ddc3394f2829e3.1389975095.git.gamerh2o@gmail.com>
Message-ID: <52D9AC1F.6090002@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ZHAO Gang <gamerh2o@gmail.com>, Stefano Brivio <stefano.brivio@polimi.it>
Cc: Johannes Berg <johannes@sipsolutions.net>, Jonas Gorski <jogo@openwrt.org>, Luca Coelho <luca@coelho.fi>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org, stable@vger.kernel.org

On 01/17/2014 10:17 AM, ZHAO Gang wrote:
> Use the right function to update frequency value.
>
> If rx skb is probe response or beacon, the wrong frequency value can
> cause problem that bss info can't be updated when it should be.
>
> Cc: <stable@vger.kernel.org>
> Fixes: 8318d78a44d4 ("cfg80211 API for channels/bitrates, mac80211
> and driver conversion")
> Signed-off-by: ZHAO Gang <gamerh2o@gmail.com>
> ---

This patch seems to fix a problem that caused scanning under NetworkManager to 
fail. The symptom was that no available networks were seen in the NM applet 
after a connection was made. Now the available AP list remains populated.

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Larry
