From: nick <xerofoify@gmail.com>
Date: Fri, 02 Jan 2015 12:13:33 -0500
Subject: [PATCH] drivers:net:wireless: Add proper locking for the function, 
 b43_op_beacon_set_tim in main.c
In-Reply-To: <20150102102727.3918a684@wiggum>
References: <1420184041-6788-1-git-send-email-xerofoify@gmail.com>
 <20150102102727.3918a684@wiggum>
Message-ID: <54A6D1BD.40805@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?windows-1252?Q?Michael_B=FCsch?= <m@bues.ch>
Cc: stefano.brivio-hl5o88x/ua9eoWH0uzbU5w@public.gmane.org, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org

Michael,
My fault I wasn't aware we were in atomic context, however if we are then why
not just remove the comment. If you want I can send in a patch explaining why
this comment is no longer needed.
Regards,
Nick

On 2015-01-02 04:27 AM, Michael B?sch wrote:
> On Fri,  2 Jan 2015 02:34:01 -0500
> Nicholas Krause <xerofoify@gmail.com> wrote:
> 
>> This adds proper locking for the function, b43_op_beacon_set_tim in main.c by using the mutex lock
>> in the structure pointer wl, as embedded into this pointer as a mutex in order to protect against
>> multiple access to the pointer wl when updating the templates for this pointer in the function,
>> b43_update_templates internally in the function, b43_op_beacon_set_tim.
>>
>> Signed-off-by: Nicholas Krause <xerofoify@gmail.com>
>> ---
>>  drivers/net/wireless/b43/main.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/wireless/b43/main.c b/drivers/net/wireless/b43/main.c
>> index 47731cb..d568fc8 100644
>> --- a/drivers/net/wireless/b43/main.c
>> +++ b/drivers/net/wireless/b43/main.c
>> @@ -5094,8 +5094,9 @@ static int b43_op_beacon_set_tim(struct ieee80211_hw *hw,
>>  {
>>  	struct b43_wl *wl = hw_to_b43_wl(hw);
>>  
>> -	/* FIXME: add locking */
>> +	mutex_lock(&wl->mutex);
>>  	b43_update_templates(wl);
>> +	mutex_unlock(&wl->mutex);
>>  
>>  	return 0;
>>  }
> 
> Thanks for the patch.
> 
> However, this does not work. We are in atomic context here.
> Please see the b43-dev mailing list archives for a recent thread about that.
> I'm also pretty sure that this is safe without lock, due to the higher level locks in mac80211.
> 
