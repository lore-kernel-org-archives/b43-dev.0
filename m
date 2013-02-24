From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 24 Feb 2013 19:32:39 +0100
Subject: Lockdep splat when unloading b43
In-Reply-To: <512A4E83.5090901@lwfinger.net>
References: <512A4E83.5090901@lwfinger.net>
Message-ID: <20130224193239.3517e6ac@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>

On Sun, 24 Feb 2013 11:31:47 -0600
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> With the current wireless-testing tree, unloading b43 produces the lockdep log 
> splat copied below. My understanding of locking is deficient, and I would like 
> to learn. Any help on understanding this problem is appreciated.

A few questions:
Is there any reason for using the global workqueue and not mac80211's workqueue?
Why is the workqueue cancelled in the core_stop callback? Wouldn't it make more
sense to cancel it in bcma_remove/ssb_remove?
This would probably fix the circular dependency. But I'm not entirely sure, because
I'm not that familiar with the code anymore.

-- 
Michael
