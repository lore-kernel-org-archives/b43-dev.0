From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 10 Dec 2011 21:37:24 -0600
Subject: [PATCH 0/7] b43: N-PHY fixes, check dependency before applying
In-Reply-To: <1323568535-2816-1-git-send-email-zajec5@gmail.com>
References: <1323568535-2816-1-git-send-email-zajec5@gmail.com>
Message-ID: <4EE42574.1030606@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

Rafa?,

I checked the network traffic on the 43224 using kismet. The beacons are clearly 
seen in the capture; however, they appear not to get back to mac80211. I'll look 
for the reason.

Larry
