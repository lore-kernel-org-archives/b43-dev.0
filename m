From: nick <xerofoify@gmail.com>
Date: Mon, 05 Jan 2015 12:16:30 -0500
Subject: [PATCH] drivers:net:wireless: Add proper locking for the function, 
 b43_op_beacon_set_tim in main.c
In-Reply-To: <87tx05378x.fsf@kamboji.qca.qualcomm.com>
References: <1420184041-6788-1-git-send-email-xerofoify@gmail.com>
 <87tx05378x.fsf@kamboji.qca.qualcomm.com>
Message-ID: <54AAC6EE.2000603@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Cc: netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, b43-dev-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, stefano.brivio-hl5o88x/ua9eoWH0uzbU5w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Kalle,
That's fine. On the other hand I am interested in the
reasons why this patch was dropped so I can send in a
version 2 of this patch.
Regards Nick 

On 2015-01-05 04:29 AM, Kalle Valo wrote:
> Nicholas Krause <xerofoify@gmail.com> writes:
> 
>> This adds proper locking for the function, b43_op_beacon_set_tim in
>> main.c by using the mutex lock in the structure pointer wl, as
>> embedded into this pointer as a mutex in order to protect against
>> multiple access to the pointer wl when updating the templates for this
>> pointer in the function, b43_update_templates internally in the
>> function, b43_op_beacon_set_tim.
>>
>> Signed-off-by: Nicholas Krause <xerofoify@gmail.com>
> 
> Based on the discussion I have dropped this patch.
> 
