From: Arend van Spriel <arend.vanspriel@broadcom.com>
Date: Wed, 31 May 2017 14:15:47 +0200
Subject: [PATCH] b43legacy: Fix a sleep-in-atomic bug in
 b43legacy_op_bss_info_changed
In-Reply-To: <877f0xnwyk.fsf@kamboji.qca.qualcomm.com>
References: <1496225353-5544-1-git-send-email-baijiaju1990@163.com>
 <877f0xnwyk.fsf@kamboji.qca.qualcomm.com>
Message-ID: <471e5030-0a9a-e9bb-855c-90dcd506f466@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo@codeaurora.org>, Jia-Ju Bai <baijiaju1990@163.com>
Cc: Larry.Finger@lwfinger.net, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

On 31-05-17 12:26, Kalle Valo wrote:
> Jia-Ju Bai <baijiaju1990@163.com> writes:
> 
>> The driver may sleep under a spin lock, and the function call path is:
>> b43legacy_op_bss_info_changed (acquire the lock by spin_lock_irqsave)
>>   b43legacy_synchronize_irq
>>     synchronize_irq --> may sleep
>>
>> To fix it, the lock is released before b43legacy_synchronize_irq, and the 
>> lock is acquired again after this function.
>>
>> Signed-off-by: Jia-Ju Bai <baijiaju1990@163.com>
>> ---
>>  drivers/net/wireless/broadcom/b43legacy/main.c |    2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/net/wireless/broadcom/b43legacy/main.c b/drivers/net/wireless/broadcom/b43legacy/main.c
>> index f1e3dad..31ead21 100644
>> --- a/drivers/net/wireless/broadcom/b43legacy/main.c
>> +++ b/drivers/net/wireless/broadcom/b43legacy/main.c
>> @@ -2859,7 +2859,9 @@ static void b43legacy_op_bss_info_changed(struct ieee80211_hw *hw,
>>  	b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);
>>  
>>  	if (changed & BSS_CHANGED_BSSID) {
>> +		spin_unlock_irqrestore(&wl->irq_lock, flags);
>>  		b43legacy_synchronize_irq(dev);
>> +		spin_lock_irqsave(&wl->irq_lock, flags);
> 
> To me this looks like a fragile workaround and not a real fix. You can
> easily add new race conditions with releasing the lock like this.

Hi Jia-Ju,

Agree with Kalle as I was about to say the same thing. You really need
to determine what is protected by the irq_lock. Here you are using the
lock because you are about to change wl->bssid a bit further down. Did
not check the entire function but it seems the lock perimeter is too wide.

Regards,
Arend
