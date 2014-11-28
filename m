From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 28 Nov 2014 23:40:46 +0100
Subject: [PATCH] drivers:net:wireless: Add mutex locking for function,
 b43_op_beacon_set_time in main.c
In-Reply-To: <1417213013-19758-1-git-send-email-xerofoify@gmail.com>
References: <1417213013-19758-1-git-send-email-xerofoify@gmail.com>
Message-ID: <CACna6rxmOC0h9hOpa=5iWFM1THQ8Q4hCi8MnmqkZJbB_U0PJ0A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nicholas Krause <xerofoify@gmail.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: Stefano Brivio <stefano.brivio@polimi.it>, Network Development <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 28 November 2014 at 23:16, Nicholas Krause <xerofoify@gmail.com> wrote:
> Adds needed mutex lockng  of wl->mutex in order to prevent issues with separate threads executing on
> the b43_update_templates function call in the function, b43_op_beacon_set_time at the same time.

For all kind of kernel documentation / descriptions we try to fit 72
chars limit and we really try to avoid exceeding 80 chars.


> @@ -5094,8 +5094,9 @@ static int b43_op_beacon_set_tim(struct ieee80211_hw *hw,
>  {
>         struct b43_wl *wl = hw_to_b43_wl(hw);
>
> -       /* FIXME: add locking */
> +       mutex_lock(&wl->mutex);
>         b43_update_templates(wl);
> +       mutex_unlock(&wl->mutex);
>
>         return 0;
>  }

Does anyone remember why this simple solution wasn't implemented
earlier? Michael?

Nicholas: did you test it anyhow?
