From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 4 Jan 2011 16:50:54 +0100
Subject: [PATCH] b43: N-PHY: enable support for PHYs rev 3 and higher
In-Reply-To: <1292963384-23684-1-git-send-email-zajec5@gmail.com>
References: <1292963384-23684-1-git-send-email-zajec5@gmail.com>
Message-ID: <AANLkTikwKOLJ6A-DTEuVg43_g_cWgDg2xK4M6qQ0Lm4U@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

W dniu 21 grudnia 2010 21:29 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> John: can we still make it for 2.6.38 merge? It was tested with 14e4:432b,
> support seems to be on the same level as for PHYs 1 and 2.

John, I dont see patches for rev3+ in wireless-testing. Any problems with them?

It means:
[PATCH 1/4] b43: use correct firmware for newer cores
[PATCH 2/4 v2] b43: N-PHY: implement radio 2056 init steps
[PATCH 3/4] b43: N-PHY: add init tables for 2056 radio
[PATCH 4/4] b43: N-PHY: avoid PHY hangs for rev 3 and 4

[PATCH 1/2] b43: N-PHY: use correct channel tables for rev4+
[PATCH 2/2 v2] b43: N-PHY: update 2056 radio on channel switch on rev3+
and this one.

-- 
Rafa?
