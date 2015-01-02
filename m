From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 02 Jan 2015 10:40:04 -0600
Subject: [PATCH] drivers:net:wireless: Add proper locking for the function, 
 b43_op_beacon_set_tim in main.c
In-Reply-To: <1420184041-6788-1-git-send-email-xerofoify@gmail.com>
References: <1420184041-6788-1-git-send-email-xerofoify@gmail.com>
Message-ID: <54A6C9E4.80009@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nicholas Krause <xerofoify@gmail.com>, stefano.brivio@polimi.it
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, kvalo@codeaurora.org, linux-kernel@vger.kernel.org

On 01/02/2015 01:34 AM, Nicholas Krause wrote:
> This adds proper locking for the function, b43_op_beacon_set_tim in main.c by using the mutex lock
> in the structure pointer wl, as embedded into this pointer as a mutex in order to protect against
> multiple access to the pointer wl when updating the templates for this pointer in the function,
> b43_update_templates internally in the function, b43_op_beacon_set_tim.
>
> Signed-off-by: Nicholas Krause <xerofoify@gmail.com>

Although this patch has already been rejected, I want to comment on the subject 
you have chosen. As you are submitting it to the maintainer of 
drivers/net/wireless/, there is no need to place those entities in the subject. 
A better subject would have been "b43: Add proper locking for 
b43_op_beacon_set_tim()".

Larry
