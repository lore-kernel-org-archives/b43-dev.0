From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 7 Mar 2013 14:03:21 +0100
Subject: BCM4331 dump of MMIO ops - split into names parts
Message-ID: <CACna6rzrtAu4z4tAYWhd-W=-2CRjWVzKY7USe13x2kcZhm8LjA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>
Cc: linux-wireless@vger.kernel.org

I've managed to notice many interesting parts in the BCM4331 MMIO dump
(mostly by comparing it to the N-PHY code and looking for similar
operations). I believe it's possible to improve b43 now a lot. We have
PHY ops and logic (conditions, etc.) can probably be taken from
existing N-PHY.

I'm posting it in case someone is interested in taking a look at this.

I don't want to spam everyone at linux-wireless@ with 50KiB, so I'll
send the log to the b43-dev only.

-- 
Rafa?
