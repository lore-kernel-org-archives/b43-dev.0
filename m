From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 7 May 2011 01:51:00 +0200
Subject: Biescting between mainline and wireless-testing
Message-ID: <BANLkTik3TtCcy2cJkMbRTpsn4x4XE9=naQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

I suspect we have some ugly (hard trackable) regression between
mainline and wireless-testing. It sounds impossible, but this seems to
affect Broadcom cards and looks like not related to ssb or b43.

Today I've compiled 2.6.38 and 2.6.39-rc6, both work GOOD.
I've compiled wireless-testing and it failed, BAD.
I've reverted all recent ssb patches from top and it still fails BAD.

What would be the easiest way to try bisecting? I can see
wireless-testing merges mainline quite often. Can I use some trick on
checkouted wireless-testing? Do I have to checkout mainline and merge
wireless-testing into it? Something even different?

-- 
Rafa?
