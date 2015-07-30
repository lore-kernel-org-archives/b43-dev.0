From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 30 Jul 2015 03:13:36 +0200
Subject: [PATCH] b43: fix extpa_gain check for 2GHz
In-Reply-To: <1438205790-17629-1-git-send-email-hauke@hauke-m.de>
References: <1438205790-17629-1-git-send-email-hauke@hauke-m.de>
Message-ID: <CACna6rwoUVn2YzDOfHrVXg3tU9yVT_1zaDQcySk0ykZjrLLmpA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: kvalo@qca.qualcomm.com, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 29 July 2015 at 23:36, Hauke Mehrtens <hauke@hauke-m.de> wrote:
> On the 2GHz and and on the 5GHZ band only the extpa_gain setting from
> the 5GHz band was checked. this patch makes it check the property from
> the correct band.

Looks OK, thanks.
