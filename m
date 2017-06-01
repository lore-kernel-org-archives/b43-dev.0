From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 1 Jun 2017 07:29:15 +0200
Subject: [PATCH] b43legacy: Fix a sleep-in-atomic bug in
 b43legacy_op_bss_info_changed
In-Reply-To: <878tlcmixj.fsf@kamboji.qca.qualcomm.com>
References: <1496225353-5544-1-git-send-email-baijiaju1990@163.com>
 <877f0xnwyk.fsf@kamboji.qca.qualcomm.com>
 <20170531173107.25eeda48@wiggum>
 <878tlcmixj.fsf@kamboji.qca.qualcomm.com>
Message-ID: <20170601072839.2ca1b791@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>
Cc: Jia-Ju Bai <baijiaju1990@163.com>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net

On Thu, 01 Jun 2017 07:27:20 +0300
Kalle Valo <kvalo@codeaurora.org> wrote:

> Michael B?sch <m@bues.ch> writes:
> 
> >> > --- a/drivers/net/wireless/broadcom/b43legacy/main.c
> >> > +++ b/drivers/net/wireless/broadcom/b43legacy/main.c
> >> > @@ -2859,7 +2859,9 @@ static void b43legacy_op_bss_info_changed(struct ieee80211_hw *hw,
> >> >  	b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);
> >> >  
> >> >  	if (changed & BSS_CHANGED_BSSID) {
> >> > +		spin_unlock_irqrestore(&wl->irq_lock, flags);
> >> >  		b43legacy_synchronize_irq(dev);
> >> > +		spin_lock_irqsave(&wl->irq_lock, flags);    
> >> 
> >> To me this looks like a fragile workaround and not a real fix. You can
> >> easily add new race conditions with releasing the lock like this.
> >>   
> >
> >
> > I think releasing the lock possibly is fine. It certainly is better than
> > sleeping with a lock held.  
> 
> Sure, but IMHO in general I think the practise of releasing the lock
> like this in a middle of function is dangerous as one can easily miss
> that upper and lower halves of the function are not actually atomic
> anymore. And in this case that it's under a conditional makes it even
> worse.
> 


Yes in general I agree. Releasing and re-acquiring a lock is dangerous.
But I think in this special case here it might be harmless.
The irq_lock is used mostly (if not exclusively; I don't fully
remember) to protect against the IRQ top and bottom half.
But we disabled the device IRQs a line above and the purpose of this
synchronize is to make sure the handler will finish and thus make
dropping the lock save.
Of course it does not make sense to do this with the lock held :)

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20170601/2c8f15bf/attachment.sig>
