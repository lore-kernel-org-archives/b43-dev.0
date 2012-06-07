From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 07 Jun 2012 12:25:07 -0500
Subject: chip id 4318 regression: WARN_ON_ONCE(sdata->vif.hw_queue[i]
 >= n_queues))
In-Reply-To: <20120607180325.7752b3c0@milhouse>
References: <CAHsu+b_wQOuhbBkx25CZ2cai5VVos7zK3s=EiPBy_+OnXWiWaA@mail.gmail.com>
 <1339014959.4523.0.camel@jlt3.sipsolutions.net>
 <CAHsu+b-ByqBaci9W-oS3OPEK3LdRcuGphtQPOTQ02hPWNpWgQw@mail.gmail.com>
 <1339053364.4517.0.camel@jlt3.sipsolutions.net>
 <CAHsu+b9UjkF6VM_YjJkHVDQzrZqsWqmG-XJKFNeSCdWGbdEngw@mail.gmail.com>
 <20120607180325.7752b3c0@milhouse>
Message-ID: <4FD0E3F3.2060900@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andre Heider <a.heider@gmail.com>
Cc: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On 06/07/2012 11:03 AM, Michael B?sch wrote:
>
> b43 messes with the queue count at runtime. I guess that's the reason.
> I don't know if this can be fixed now, though. The problem is that we
> first need to load the firmware before we know the queue count.
> There seem to have been some firmware loading changes, but I didn't
> track those too closely. So I don't know whether they allow fixing the
> situation or not...

The only change in firmware loading is that the probe routine places a initiates 
an item on a work queue with the firmware loading routine as the callback. 
Previously, the fw load routines were called directly from the probe routine.

There is a bug in the new implementation that I am fixing. It results in the 
inability to load firmware whenever b43 is built in; however, as long as b43 is 
a module, it works fine.

I do not understand what is different about your system than mine. I have a 
Cardbus version of the BCM4318 running kernel 3.5-rc1 from mainline. The host 
computer is a PowerBook G4 Titanium (PPC). The chip has four hardware queues and 
never had the problem that was fixed with a9d3c05. When I had trouble, it was 
with a BCM4301, which does only have a single queue.

Is it possible that Nintendo uses a special version of the BCM4318 that only 
contains a single transmit queue?

I'm building 3.5-rc1 from wireless-testing, but that will take a while. That Mac 
is not very fast.

Larry
