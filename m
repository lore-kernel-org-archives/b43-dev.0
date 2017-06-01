From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 01 Jun 2017 07:27:20 +0300
Subject: [PATCH] b43legacy: Fix a sleep-in-atomic bug in
 b43legacy_op_bss_info_changed
In-Reply-To: <20170531173107.25eeda48@wiggum> ("Michael
 \=\?utf-8\?Q\?B\=C3\=BCs\?\= \=\?utf-8\?Q\?ch\=22's\?\= message of
 "Wed, 31 May 2017 17:32:15 +0200")
References: <1496225353-5544-1-git-send-email-baijiaju1990@163.com>
 <877f0xnwyk.fsf@kamboji.qca.qualcomm.com>
 <20170531173107.25eeda48@wiggum>
Message-ID: <878tlcmixj.fsf@kamboji.qca.qualcomm.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael =?utf-8?Q?B=C3=BCsch?= <m@bues.ch>
Cc: Jia-Ju Bai <baijiaju1990@163.com>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net

Michael B?sch <m@bues.ch> writes:

>> > --- a/drivers/net/wireless/broadcom/b43legacy/main.c
>> > +++ b/drivers/net/wireless/broadcom/b43legacy/main.c
>> > @@ -2859,7 +2859,9 @@ static void b43legacy_op_bss_info_changed(struct ieee80211_hw *hw,
>> >  	b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);
>> >  
>> >  	if (changed & BSS_CHANGED_BSSID) {
>> > +		spin_unlock_irqrestore(&wl->irq_lock, flags);
>> >  		b43legacy_synchronize_irq(dev);
>> > +		spin_lock_irqsave(&wl->irq_lock, flags);  
>> 
>> To me this looks like a fragile workaround and not a real fix. You can
>> easily add new race conditions with releasing the lock like this.
>> 
>
>
> I think releasing the lock possibly is fine. It certainly is better than
> sleeping with a lock held.

Sure, but IMHO in general I think the practise of releasing the lock
like this in a middle of function is dangerous as one can easily miss
that upper and lower halves of the function are not actually atomic
anymore. And in this case that it's under a conditional makes it even
worse.

-- 
Kalle Valo
