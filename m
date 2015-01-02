From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Fri, 2 Jan 2015 10:27:27 +0100
Subject: [PATCH] drivers:net:wireless: Add proper locking for the
 function, b43_op_beacon_set_tim in main.c
In-Reply-To: <1420184041-6788-1-git-send-email-xerofoify@gmail.com>
References: <1420184041-6788-1-git-send-email-xerofoify@gmail.com>
Message-ID: <20150102102727.3918a684@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nicholas Krause <xerofoify@gmail.com>
Cc: stefano.brivio@polimi.it, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, kvalo@codeaurora.org, linux-kernel@vger.kernel.org

On Fri,  2 Jan 2015 02:34:01 -0500
Nicholas Krause <xerofoify@gmail.com> wrote:

> This adds proper locking for the function, b43_op_beacon_set_tim in main.c by using the mutex lock
> in the structure pointer wl, as embedded into this pointer as a mutex in order to protect against
> multiple access to the pointer wl when updating the templates for this pointer in the function,
> b43_update_templates internally in the function, b43_op_beacon_set_tim.
> 
> Signed-off-by: Nicholas Krause <xerofoify@gmail.com>
> ---
>  drivers/net/wireless/b43/main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
> index 47731cb..d568fc8 100644
> --- a/drivers/net/wireless/b43/main.c
> +++ b/drivers/net/wireless/b43/main.c
> @@ -5094,8 +5094,9 @@ static int b43_op_beacon_set_tim(struct ieee80211_hw *hw,
>  {
>  	struct b43_wl *wl = hw_to_b43_wl(hw);
>  
> -	/* FIXME: add locking */
> +	mutex_lock(&wl->mutex);
>  	b43_update_templates(wl);
> +	mutex_unlock(&wl->mutex);
>  
>  	return 0;
>  }

Thanks for the patch.

However, this does not work. We are in atomic context here.
Please see the b43-dev mailing list archives for a recent thread about that.
I'm also pretty sure that this is safe without lock, due to the higher level locks in mac80211.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150102/38ecd737/attachment.sig>
