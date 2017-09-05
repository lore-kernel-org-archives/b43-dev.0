From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 5 Sep 2017 22:18:22 +0200
Subject: [PATCH 1/2] b43: fix unitialized reads of ret by initializing
 the array to zero
In-Reply-To: <20170905181550.23839-1-colin.king@canonical.com>
References: <20170905181550.23839-1-colin.king@canonical.com>
Message-ID: <20170905221654.64f2aae5@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Colin King <colin.king@canonical.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org

On Tue,  5 Sep 2017 19:15:50 +0100
Colin King <colin.king@canonical.com> wrote:

> From: Colin Ian King <colin.king@canonical.com>
> 
> The u8 char array ret is not being initialized and elements outside
> the range start to end contain just garbage values from the stack.
> This results in a later scan of the array to read potentially
> uninitialized values.  Fix this by initializing the array to zero.
> This seems to have been an issue since the very first commit.
> 
> Detected by CoverityScan CID#139652 ("Uninitialized scalar variable")
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/net/wireless/broadcom/b43/phy_g.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/phy_g.c b/drivers/net/wireless/broadcom/b43/phy_g.c
> index 822dcaa8ace6..f59c02166462 100644
> --- a/drivers/net/wireless/broadcom/b43/phy_g.c
> +++ b/drivers/net/wireless/broadcom/b43/phy_g.c
> @@ -2297,7 +2297,7 @@ static u8 b43_gphy_aci_detect(struct b43_wldev *dev, u8 channel)
>  static u8 b43_gphy_aci_scan(struct b43_wldev *dev)
>  {
>  	struct b43_phy *phy = &dev->phy;
> -	u8 ret[13];
> +	u8 ret[13] = { 0 };
>  	unsigned int channel = phy->channel;
>  	unsigned int i, j, start, end;
>  


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
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170905/c732a046/attachment.sig>
