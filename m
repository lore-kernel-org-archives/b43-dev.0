From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 31 May 2017 17:32:15 +0200
Subject: [PATCH] b43legacy: Fix a sleep-in-atomic bug in
 b43legacy_op_bss_info_changed
In-Reply-To: <877f0xnwyk.fsf@kamboji.qca.qualcomm.com>
References: <1496225353-5544-1-git-send-email-baijiaju1990@163.com>
 <877f0xnwyk.fsf@kamboji.qca.qualcomm.com>
Message-ID: <20170531173107.25eeda48@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: Jia-Ju Bai <baijiaju1990@163.com>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net

On Wed, 31 May 2017 13:26:43 +0300
Kalle Valo <kvalo@codeaurora.org> wrote:

> Jia-Ju Bai <baijiaju1990@163.com> writes:
> 
> > The driver may sleep under a spin lock, and the function call path is:
> > b43legacy_op_bss_info_changed (acquire the lock by spin_lock_irqsave)
> >   b43legacy_synchronize_irq
> >     synchronize_irq --> may sleep
> >
> > To fix it, the lock is released before b43legacy_synchronize_irq, and the 
> > lock is acquired again after this function.
> >
> > Signed-off-by: Jia-Ju Bai <baijiaju1990@163.com>
> > ---
> >  drivers/net/wireless/broadcom/b43legacy/main.c |    2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
> > index f1e3dad..31ead21 100644
> > --- a/drivers/net/wireless/broadcom/b43legacy/main.c
> > +++ b/drivers/net/wireless/broadcom/b43legacy/main.c
> > @@ -2859,7 +2859,9 @@ static void b43legacy_op_bss_info_changed(struct ieee80211_hw *hw,
> >  	b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);
> >  
> >  	if (changed & BSS_CHANGED_BSSID) {
> > +		spin_unlock_irqrestore(&wl->irq_lock, flags);
> >  		b43legacy_synchronize_irq(dev);
> > +		spin_lock_irqsave(&wl->irq_lock, flags);  
> 
> To me this looks like a fragile workaround and not a real fix. You can
> easily add new race conditions with releasing the lock like this.
> 


I think releasing the lock possibly is fine. It certainly is better than
sleeping with a lock held.
We disabled the device interrupts just before this line.

However I think the synchronize_irq should be outside of the
conditional right after the write to B43legacy_MMIO_GEN_IRQ_MASK. (So
two lines above)
I don't think it makes sense to only synchronize if BSS_CHANGED_BSSID
is set.


On the other hand b43 does not have this irq-disabling foobar anymore.
So somebody must have removed it. Maybe you can find the commit that
removed this stuff from b43 and port it to b43legacy?


So I would vote for moving the synchronize_irq up outside of the
conditional and put the unlock/lock sequence around it.
And as a second patch on top of that try to remove this stuff
altogether like b43 did.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170531/1579f463/attachment-0001.sig>
