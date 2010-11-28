From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 28 Nov 2010 13:01:43 +0100
Subject: [PATCH 3/4] b43: N-PHY: initialize perical variable, add missing
	call to CCA reset
In-Reply-To: <1290945585-20864-3-git-send-email-zajec5@gmail.com>
References: <1290945585-20864-1-git-send-email-zajec5@gmail.com>
	<1290945585-20864-3-git-send-email-zajec5@gmail.com>
Message-ID: <AANLkTinwpM_GkhA9=ScaghnXdjV+-+U67aBgpewho1=0@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

W dniu 28 listopada 2010 12:59 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> + ? ? ? /* Specs don't say about reset here, but it makes wl and b43 dumps
> + ? ? ? ? ?identical, it really seems wl performs this */
> + ? ? ? b43_nphy_reset_cca(dev);

If someone is interested in tools, dumps, let me know.

-- 
Rafa?
