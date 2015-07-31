From: Kalle Valo <kvalo@codeaurora.org>
Date: Fri, 31 Jul 2015 06:24:32 +0000 (UTC)
Subject: b43: fix extpa_gain check for 2GHz
In-Reply-To: <1438205790-17629-1-git-send-email-hauke@hauke-m.de>
Message-ID: <20150731062432.C8FD5140A57@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: kvalo@qca.qualcomm.com, zajec5@gmail.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org


> On the 2GHz and and on the 5GHZ band only the extpa_gain setting from
> the 5GHz band was checked. this patch makes it check the property from
> the correct band.
> 
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Thanks, applied to wireless-drivers.git.

Kalle Valo
