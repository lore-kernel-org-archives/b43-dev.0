From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 7 Jun 2012 19:30:27 +0200
Subject: chip id 4318 regression: WARN_ON_ONCE(sdata->vif.hw_queue[i] >=
 n_queues))
In-Reply-To: <4FD0E3F3.2060900@lwfinger.net>
References: <CAHsu+b_wQOuhbBkx25CZ2cai5VVos7zK3s=EiPBy_+OnXWiWaA@mail.gmail.com>
 <1339014959.4523.0.camel@jlt3.sipsolutions.net>
 <CAHsu+b-ByqBaci9W-oS3OPEK3LdRcuGphtQPOTQ02hPWNpWgQw@mail.gmail.com>
 <1339053364.4517.0.camel@jlt3.sipsolutions.net>
 <CAHsu+b9UjkF6VM_YjJkHVDQzrZqsWqmG-XJKFNeSCdWGbdEngw@mail.gmail.com>
 <20120607180325.7752b3c0@milhouse> <4FD0E3F3.2060900@lwfinger.net>
Message-ID: <20120607193027.05389791@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Andre Heider <a.heider@gmail.com>, Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

On Thu, 07 Jun 2012 12:25:07 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> I do not understand what is different about your system than mine.

I think the difference is that he runs opensource firmware, for which the queuenumber
patching comes into effect. You should be able to reproduce even with standard
firmware by disabling QOS with the module parameter.

-- 
Greetings, Michael.

PGP encryption is encouraged / 908D8B0E
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120607/bacb44b3/attachment.sig>
