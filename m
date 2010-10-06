From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 6 Oct 2010 20:15:59 +0200
Subject: [RFC][PATCH] b43: N-PHY: store current channel info in PHY common
In-Reply-To: <1286388787-11342-2-git-send-email-zajec5@gmail.com>
References: <1286388787-11342-2-git-send-email-zajec5@gmail.com>
Message-ID: <AANLkTikD1jj-LhzEmacJy6i_WGoe51AiFxbR7vqZhX=Q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

W dniu 6 pa?dziernika 2010 20:13 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> @@ -3568,8 +3572,8 @@ static void b43_nphy_op_switch_analog(struct b43_wldev *dev, bool on)
> ?static int b43_nphy_op_switch_channel(struct b43_wldev *dev,
> ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?unsigned int new_channel)
> ?{
> - ? ? ? struct b43_phy_n *nphy = dev->phy.n;
> - ? ? ? struct b43_chanspec chanspec;
> + ? ? ? struct ieee80211_channel *channel = dev->wl->hw->conf.channel;
> + ? ? ? enum nl80211_channel_type channel_type = dev->wl->hw->conf.channel_type;

Ah, and as you can see I decided to get more raw data about new
channel there. This is because in case on N-PHY we have to know about
band freq (2/5 GHz) and band with (20/40 MHz) to do full channel
setup.

-- 
Rafa?
