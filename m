From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 19 Jun 2013 18:57:45 +0200
Subject: BCM4331 deauthenticates every five minutes
In-Reply-To: <20130619164227.GC4784@cmadams.net>
References: <20130619160911.GB4784@cmadams.net> <51C1DDEB.3090701@lwfinger.net>
 <20130619164227.GC4784@cmadams.net>
Message-ID: <CACna6rzbTHnyqs5SzTuYL7r_SW3iCNh0qqbnvfsF7Wspyhp1WA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>, b43-dev@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>

2013/6/19 Chris Adams <cmadams@cmadams.net>:
> Once upon a time, Larry Finger <Larry.Finger@lwfinger.net> said:
>> What type of encryption are you using? If it is a re-keying type
>> such as TKIP, what is the interval? You should find that on the
>> setup page of the access point.
>
> I don't have access to the management of this particular AP (work
> environment), but "iw dev wlan0 scan dump" says CCMP.

I think some key interval applies not only to the TKIP, but also other
keys. For example GTK (which is part of WPA2 with it's 4-way
handshake). GTK is Group Temporal Key, and Broadcom's router have a
setting called "GTK rotation interval". I guess PMK/PTK also can have
some intervals.

I don't know how/if driver can be responsible for such reconnects.
Over all it just TX and RX packets, right? Loosing a signal is
something different, that can be related to the driver's bug. But as
this happens every 5 minutes... I don't know.

Did you try connecting to this AP with any other card and using
similar kernel? I wonder if this can be some supplicant / mac80211
stack issue...

-- 
Rafa?
