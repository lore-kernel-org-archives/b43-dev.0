From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 11 Jan 2016 17:42:36 +0100
Subject: [PATCH] b43: Fix a memory leak in b43_bus_dev_ssb_init
In-Reply-To: <1452483457-568-1-git-send-email-baijiaju1990@163.com>
References: <1452483457-568-1-git-send-email-baijiaju1990@163.com>
Message-ID: <CACna6ryM1vekanY6WEC9g5G70uZi=rEOShgv1xamK8MuD=YsrA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jia-Ju Bai <baijiaju1990@163.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, Joe Perches <joe@perches.com>, David Miller <davem@davemloft.net>, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, Johannes Berg <johannes.berg@intel.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Network Development <netdev@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>

On 11 January 2016 at 04:37, Jia-Ju Bai <baijiaju1990@163.com> wrote:
> The memory allocated by kzalloc in b43_bus_dev_ssb_init is not freed.
> This patch fixes the bug by adding kfree in b43_ssb_remove.

Nice. If you want somethig more to scratch your head, see
"Missing b43 firmware handling"
http://lists.infradead.org/pipermail/b43-dev/2014-June/003467.html

-- 
Rafa?
