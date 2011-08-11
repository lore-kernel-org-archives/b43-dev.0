From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 11 Aug 2011 08:42:12 -0500
Subject: [PATCH 3/3] b43: support new TX header, noticed to be used by
	598.314+ fw
In-Reply-To: <1313068036-13608-3-git-send-email-zajec5@gmail.com>
References: <1313068036-13608-1-git-send-email-zajec5@gmail.com>
	<1313068036-13608-3-git-send-email-zajec5@gmail.com>
Message-ID: <4E43DC34.9010106@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 08/11/2011 08:07 AM, Rafa? Mi?ecki wrote:
>
> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>
> ---
>   drivers/net/wireless/b43/b43.h  |    3 ++-
>   drivers/net/wireless/b43/main.c |    4 +++-
>   drivers/net/wireless/b43/xmit.c |   22 ++++++++++++++++++++++
>   drivers/net/wireless/b43/xmit.h |   19 +++++++++++++++++++
>   4 files changed, 46 insertions(+), 2 deletions(-)

These 3 patches tested with 14e4:4311 and 508.184 firmware.

Larry
