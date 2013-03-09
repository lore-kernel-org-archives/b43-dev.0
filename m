From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 9 Mar 2013 13:58:23 +0100
Subject: [PATCH 00/13] b43: implement basic TX power mgmt
In-Reply-To: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
References: <1362671247-10766-1-git-send-email-zajec5@gmail.com>
Message-ID: <CACna6rwxMygCwLyya_c9ipA-pEUJzGmWchAY=GNLfKegwy_XPw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

2013/3/7 Rafa? Mi?ecki <zajec5@gmail.com>:
> After spotting a lot of N-PHY-similar functions in
> BCM4331 dump of MMIO ops - split into names parts
> I was able to finally improve HT-PHY code.
>
> It now sets TX basically, I can finally talk with devices that are few
> meters away, not just few centimetres. It's a little patch bomb, sorry
> for that, but I wasn't sure if my code is correct until it was complete
> and started working.
>
> Rafa? Mi?ecki (13):
>   b43: HT-PHY: rename AFE defines
>   b43: HT-PHY: add classifier control function
>   b43: HT-PHY: move TX fix to the separated function
>   b43: HT-PHY: implement spurious tone avoidance
>   b43: HT-PHY: implement MAC reclocking
>   b43: HT-PHY: implement CCA reset
>   b43: HT-PHY: implement PA override
>   b43: HT-PHY: implement controlling TX power control
>   b43: HT-PHY: implement stopping sample tone playback
>   b43: HT-PHY: implement playing sample tone
>   b43: HT-PHY: implement RSSI polling
>   b43: HT-PHY: setup TX power control
>   b43: HT-PHY: enable basic TX power setup

I've finished sending V2 of some patches, arrays are now converted to
static const where possible.

I've tried applying this 3 times and Hauke confirmed is applies
cleanly, so I hope it's fine now.

-- 
Rafa?
