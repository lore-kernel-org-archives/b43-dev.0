From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 05 May 2011 11:55:48 -0500
Subject: [PATCH] b43legacy: drop invalid IMCFGLO workaround
In-Reply-To: <1304592364-5075-1-git-send-email-zajec5@gmail.com>
References: <1304592364-5075-1-git-send-email-zajec5@gmail.com>
Message-ID: <4DC2D694.3070200@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 05/05/2011 05:46 AM, Rafa? Mi?ecki wrote:
> We were performing it on wrong core, it was outdated and is already
> implemented in ssb.
>
> Signed-off-by: Rafa? Mi?ecki<zajec5@gmail.com>
> ---
>   drivers/net/wireless/b43legacy/main.c |   32 --------------------------------
>   1 files changed, 0 insertions(+), 32 deletions(-)

Tested-by: Larry Finger <Larry.Finger@lwfinger.net>

and an ACK, of course.

Larry
