From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Mon, 05 Jan 2015 11:46:40 -0600
Subject: [PATCH] drivers:net:wireless: Add proper locking for the function, 
 b43_op_beacon_set_tim in main.c
In-Reply-To: <54AAC6EE.2000603@gmail.com>
References: <1420184041-6788-1-git-send-email-xerofoify@gmail.com>
 <87tx05378x.fsf@kamboji.qca.qualcomm.com> <54AAC6EE.2000603@gmail.com>
Message-ID: <54AACE00.8060407@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nick <xerofoify@gmail.com>, Kalle Valo <kvalo@codeaurora.org>
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, stefano.brivio@polimi.it, linux-kernel@vger.kernel.org

On 01/05/2015 11:16 AM, nick wrote:
> Kalle,
> That's fine. On the other hand I am interested in the
> reasons why this patch was dropped so I can send in a
> version 2 of this patch.
> Regards Nick

Apparently you missed Michael B?sch's comment:

"Thanks for the patch.

However, this does not work. We are in atomic context here.
Please see the b43-dev mailing list archives for a recent thread about that.
I'm also pretty sure that this is safe without lock, due to the higher level 
locks in mac80211."

Did you actually test the patch? If Michael is right, and I trust him on this 
matter, your patch should lock the system.

Larry
