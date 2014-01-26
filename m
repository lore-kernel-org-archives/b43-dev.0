From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 26 Jan 2014 15:35:42 +0100
Subject: [PATCH v4 1/2] b43: fix the wrong assignment of status.freq in
 b43_rx()
In-Reply-To: <d4d1340a176aee1e58ffe80e83ddc3394f2829e3.1389975095.git.gamerh2o@gmail.com>
References: <d4d1340a176aee1e58ffe80e83ddc3394f2829e3.1389975095.git.gamerh2o@gmail.com>
Message-ID: <CACna6rw3GuZ-hmGJvQRQvb33GtSFrA50OpQjyjwYcUHQsHK-fQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ZHAO Gang <gamerh2o@gmail.com>
Cc: Stefano Brivio <stefano.brivio@polimi.it>, Johannes Berg <johannes@sipsolutions.net>, Jonas Gorski <jogo@openwrt.org>, Luca Coelho <luca@coelho.fi>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Stable <stable@vger.kernel.org>

2014/1/17 ZHAO Gang <gamerh2o@gmail.com>:
> Use the right function to update frequency value.
>
> If rx skb is probe response or beacon, the wrong frequency value can
> cause problem that bss info can't be updated when it should be.

Zhao: this fix is great. My development machine was running some
ancient distro with kernel 2.6.22, so I couldn't test it earlier.

For a long time I got problem with finding AP on channel 13. I reported it in:
cfg80211: use DS or HT operation IEs to determine BSS channel"

I did 10 tests *without* your patch. wpa_supplicant had to scan 43,
33, 7, 2, 46, 12, 7, 32, 6, 6 times to find my AP on channel 13.
With your patch wpa_supplicant finds it in scanning results after the first try!

Thanks a lot for finding and fixing it!

[0] http://lists.infradead.org/pipermail/b43-dev/2013-March/003003.html
