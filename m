From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 26 Mar 2013 23:13:28 +0100
Subject: Scanning regression since "cfg80211: use DS or HT operation IEs
 to determine BSS channel"
In-Reply-To: <CACna6rxpiPp_FR8jF=jKHbd6XrYndfFZC5O4g6=fvioK=e8vEg@mail.gmail.com>
References: <CACna6rwdAAsCX76=nwHpj-grVvQznbNCPVnpXL9kP2TkvhR-yw@mail.gmail.com>
 <1364323118.8319.13.camel@jlt4.sipsolutions.net>
 <CACna6rxpiPp_FR8jF=jKHbd6XrYndfFZC5O4g6=fvioK=e8vEg@mail.gmail.com>
Message-ID: <CACna6ry+km7_epXz5NQ84D_jKQ9e6iFjtrmzHKb1Gxc1ywjtmw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

2013/3/26 Rafa? Mi?ecki <zajec5@gmail.com>:
> 2013/3/26 Johannes Berg <johannes@sipsolutions.net>:
>> Can you check your channel list? (iw list or iw phy0 info)
>
> Sure, attaching iw.list.log.

Hm, after some recompilations, rmmod, modprobe... now I can see
> * 2472 MHz [13] (20.0 dBm) (passive scanning, no IBSS)
(I didn't have "passive" for channel 13 earlier). Not sure what could
change that. I've to do more experiments with different channels.


>> Does reverting just the mac80211 change fix it?
>
> Yes. Reverting just a change in net/mac80211/scan.c fixes the problem
> for me. I've tested this with the latest wireless-testing.

Just to make it clear: I've modified scan.c as you can see in attached
0001-mac80211-fix.patch (application/octet-stream) 2 KB

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: 0001-mac80211-fix.patch
Type: application/octet-stream
Size: 1229 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130326/dda774b7/attachment-0001.obj>
