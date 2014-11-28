From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sat, 29 Nov 2014 00:21:48 +0100
Subject: [PATCH] drivers:net:wireless: Add mutex locking for function,
 b43_op_beacon_set_time in main.c
In-Reply-To: <CACna6rxmOC0h9hOpa=5iWFM1THQ8Q4hCi8MnmqkZJbB_U0PJ0A@mail.gmail.com>
References: <1417213013-19758-1-git-send-email-xerofoify@gmail.com>
 <CACna6rxmOC0h9hOpa=5iWFM1THQ8Q4hCi8MnmqkZJbB_U0PJ0A@mail.gmail.com>
Message-ID: <20141129002148.1beb21d9@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Nicholas Krause <xerofoify@gmail.com>, Stefano Brivio <stefano.brivio@polimi.it>, Network Development <netdev@vger.kernel.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Fri, 28 Nov 2014 23:40:46 +0100
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> > @@ -5094,8 +5094,9 @@ static int b43_op_beacon_set_tim(struct ieee80211_hw *hw,
> >  {
> >         struct b43_wl *wl = hw_to_b43_wl(hw);
> >
> > -       /* FIXME: add locking */
> > +       mutex_lock(&wl->mutex);
> >         b43_update_templates(wl);
> > +       mutex_unlock(&wl->mutex);
> >
> >         return 0;
> >  }
> 
> Does anyone remember why this simple solution wasn't implemented
> earlier? Michael?

I think the callback used to be (is?) in atomic context.

> Nicholas: did you test it anyhow?

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20141129/76b5d0f6/attachment.sig>
