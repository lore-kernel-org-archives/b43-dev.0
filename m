From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 30 Jul 2015 08:40:36 +0300
Subject: [PATCH] b43: fix extpa_gain check for 2GHz
In-Reply-To: <1438205790-17629-1-git-send-email-hauke@hauke-m.de> (Hauke
 Mehrtens's message of "Wed, 29 Jul 2015 23:36:30 +0200")
References: <1438205790-17629-1-git-send-email-hauke@hauke-m.de>
Message-ID: <8738065hkb.fsf@kamboji.qca.qualcomm.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: zajec5@gmail.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

Hauke Mehrtens <hauke@hauke-m.de> writes:

> On the 2GHz and and on the 5GHZ band only the extpa_gain setting from
> the 5GHz band was checked. this patch makes it check the property from
> the correct band.
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Is this a regression? If yes, please add a Fixes line.

Should this go to 4.2?

-- 
Kalle Valo
