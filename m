From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 07 Jun 2012 16:21:11 -0500
Subject: chip id 4318 regression: WARN_ON_ONCE(sdata->vif.hw_queue[i]
 >= n_queues))
In-Reply-To: <1339102567.4630.8.camel@jlt3.sipsolutions.net>
References: <CAHsu+b_wQOuhbBkx25CZ2cai5VVos7zK3s=EiPBy_+OnXWiWaA@mail.gmail.com>
 <1339014959.4523.0.camel@jlt3.sipsolutions.net>
 <CAHsu+b-ByqBaci9W-oS3OPEK3LdRcuGphtQPOTQ02hPWNpWgQw@mail.gmail.com>
 <1339053364.4517.0.camel@jlt3.sipsolutions.net>
 <CAHsu+b9UjkF6VM_YjJkHVDQzrZqsWqmG-XJKFNeSCdWGbdEngw@mail.gmail.com>
 <20120607180325.7752b3c0@milhouse>
 <1339094215.4630.7.camel@jlt3.sipsolutions.net>
 (sfid-20120607_203710_507564_555516DC)
 <1339102567.4630.8.camel@jlt3.sipsolutions.net>
Message-ID: <4FD11B47.10002@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <m@bues.ch>, Andre Heider <a.heider@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On 06/07/2012 03:56 PM, Johannes Berg wrote:
> On Thu, 2012-06-07 at 20:36 +0200, Johannes Berg wrote:
>
>> However, it's also possible to actually *use* the new mac80211 feature.
>> That would also help with IEEE80211_TX_CTL_SEND_AFTER_DTIM, you could
>> ask mac80211 to use a separate HW queue for it (for tx_ring_mcast.) This
>> may be quicker.
>
> This might do it, I haven't tested it at all:
>
> http://p.sipsolutions.net/3c6b003bb06e5298.txt

With that patch, the driver never loads the firmware. I have not yet found the 
reason.

Larry
