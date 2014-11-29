From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 29 Nov 2014 09:56:32 +0100
Subject: [PATCH] drivers:net:wireless: Add mutex locking for function,
 b43_op_beacon_set_time in main.c
In-Reply-To: <54793E4E.7050602@gmail.com>
References: <1417213013-19758-1-git-send-email-xerofoify@gmail.com>
 <CACna6rxmOC0h9hOpa=5iWFM1THQ8Q4hCi8MnmqkZJbB_U0PJ0A@mail.gmail.com>
 <20141129002148.1beb21d9@wiggum> <54793E4E.7050602@gmail.com>
Message-ID: <20141129095632.69361457@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nick <xerofoify@gmail.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Stefano Brivio <stefano.brivio@polimi.it>, Network Development <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Fri, 28 Nov 2014 22:32:30 -0500
nick <xerofoify@gmail.com> wrote:

> I don't have hardware for this driver on me, so I didn't test it. However this seems to 
> be correct from my reading of the code around this function and other locking related
> to this driver.

From the current docs:

>  * @set_tim: Set TIM bit. mac80211 calls this function when a TIM bit
>  *      must be set or cleared for a given STA. Must be atomic.

So it is not allowed to lock a mutex here.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20141129/9e9fdd70/attachment.sig>
