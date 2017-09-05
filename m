From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 5 Sep 2017 22:18:28 +0200
Subject: [PATCH 2/2] b43legacy: fix unitialized reads of ret by
 initializing the array to zero
In-Reply-To: <20170905181658.23893-1-colin.king@canonical.com>
References: <20170905181658.23893-1-colin.king@canonical.com>
Message-ID: <20170905221705.3a5c4ffa@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Colin King <colin.king@canonical.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org

On Tue,  5 Sep 2017 19:16:58 +0100
Colin King <colin.king@canonical.com> wrote:

> From: Colin Ian King <colin.king@canonical.com>
> 
> The u8 char array ret is not being initialized and elements outside
> the range start to end contain just garbage values from the stack.
> This results in a later scan of the array to read potentially
> uninitialized values.  Fix this by initializing the array to zero.
> This seems to have been an issue since the very first commit.
> 
> Detected by CoverityScan CID#139653 ("Uninitialized scalar variable")
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/net/wireless/broadcom/b43legacy/radio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43legacy/radio.c b/drivers/net/wireless/broadcom/b43legacy/radio.c
> index 9501420340a9..eab1c9387846 100644
> --- a/drivers/net/wireless/broadcom/b43legacy/radio.c
> +++ b/drivers/net/wireless/broadcom/b43legacy/radio.c
> @@ -280,7 +280,7 @@ u8 b43legacy_radio_aci_detect(struct b43legacy_wldev *dev, u8 channel)
>  u8 b43legacy_radio_aci_scan(struct b43legacy_wldev *dev)
>  {
>  	struct b43legacy_phy *phy = &dev->phy;
> -	u8 ret[13];
> +	u8 ret[13] = { 0 };
>  	unsigned int channel = phy->channel;
>  	unsigned int i;
>  	unsigned int j;


This fix seems to be correct.
Thanks for finding and fixing the issue.

Reviewed-by: Michael Buesch <m@bues.ch>



-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170905/85c8f433/attachment.sig>
