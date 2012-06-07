From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 7 Jun 2012 18:03:25 +0200
Subject: chip id 4318 regression: WARN_ON_ONCE(sdata->vif.hw_queue[i] >=
 n_queues))
In-Reply-To: <CAHsu+b9UjkF6VM_YjJkHVDQzrZqsWqmG-XJKFNeSCdWGbdEngw@mail.gmail.com>
References: <CAHsu+b_wQOuhbBkx25CZ2cai5VVos7zK3s=EiPBy_+OnXWiWaA@mail.gmail.com>
 <1339014959.4523.0.camel@jlt3.sipsolutions.net>
 <CAHsu+b-ByqBaci9W-oS3OPEK3LdRcuGphtQPOTQ02hPWNpWgQw@mail.gmail.com>
 <1339053364.4517.0.camel@jlt3.sipsolutions.net>
 <CAHsu+b9UjkF6VM_YjJkHVDQzrZqsWqmG-XJKFNeSCdWGbdEngw@mail.gmail.com>
Message-ID: <20120607180325.7752b3c0@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andre Heider <a.heider@gmail.com>
Cc: Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On Thu, 7 Jun 2012 17:24:51 +0200
Andre Heider <a.heider@gmail.com> wrote:

> On Thu, Jun 7, 2012 at 9:16 AM, Johannes Berg <johannes@sipsolutions.net> wrote:
> > On Thu, 2012-06-07 at 09:10 +0200, Andre Heider wrote:
> >> On Wed, Jun 6, 2012 at 10:35 PM, Johannes Berg
> >> <johannes@sipsolutions.net> wrote:
> >> > On Wed, 2012-06-06 at 21:10 +0200, Andre Heider wrote:
> >> >> Hi,
> >> >>
> >> >> the wlan daughterboard on a nintendo wii stopped working with current master.
> >> >> Building from the v3.4 tag gives me a working device.
> >> >>
> >> >> I bisected this to:
> >> >>
> >> >> commit 3a25a8c8b75b430c4f4022918e26fa51d557ecde
> >> >> Author: Johannes Berg <johannes.berg@intel.com>
> >> >>
> >> >> The hw queues fail the check in ieee80211_check_queues(). When I hack
> >> >> that function to always "return 0;" wlan works again.
> >> >
> >> > There's a fix for this on the way since Larry had also reported the bug,
> >> > but I don't know where it is right now.
> >>
> >> Okay, nice. Then I won't go hunting and just try the next -rc.
> >
> > Found the commit now:
> >
> > commit a9d3c05cca51d80ef2b9eddabf794c9458e36c2c
> > Author: Johannes Berg <johannes.berg@intel.com>
> > Date: ? Mon May 7 17:45:29 2012 +0200
> >
> > ? ?mac80211: fix single queue drivers
> 
> Just checked again, that commit was already part of my tree, so I
> still run into this issue.
> 
> A couple of printk()'s report that local->hw.queues is 4 in
> ieee80211_set_default_queues() while n_queues in
> ieee80211_check_queues() is 1...

b43 messes with the queue count at runtime. I guess that's the reason.
I don't know if this can be fixed now, though. The problem is that we
first need to load the firmware before we know the queue count.
There seem to have been some firmware loading changes, but I didn't
track those too closely. So I don't know whether they allow fixing the
situation or not...

-- 
Greetings, Michael.

PGP encryption is encouraged / 908D8B0E
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120607/c4f169fb/attachment.sig>
