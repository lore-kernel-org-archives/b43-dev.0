From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 7 May 2011 10:24:43 +0200
Subject: Biescting between mainline and wireless-testing
In-Reply-To: <4DC49CCD.7040906@lwfinger.net>
References: <BANLkTik3TtCcy2cJkMbRTpsn4x4XE9=naQ@mail.gmail.com>
	<4DC49386.6070503@candelatech.com> <4DC49CCD.7040906@lwfinger.net>
Message-ID: <BANLkTi=hh8zTZkGZHU-3OT8CnhHz1Tq-JQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Ben Greear <greearb@candelatech.com>, linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

2011/5/7 Larry Finger <Larry.Finger@lwfinger.net>:
> On 05/06/2011 07:34 PM, Ben Greear wrote:
>>
>> On 05/06/2011 04:51 PM, Rafa? Mi?ecki wrote:
>>>
>>> I suspect we have some ugly (hard trackable) regression between
>>> mainline and wireless-testing. It sounds impossible, but this seems to
>>> affect Broadcom cards and looks like not related to ssb or b43.
>>>
>>> Today I've compiled 2.6.38 and 2.6.39-rc6, both work GOOD.
>>> I've compiled wireless-testing and it failed, BAD.
>>> I've reverted all recent ssb patches from top and it still fails BAD.
>>>
>>> What would be the easiest way to try bisecting? I can see
>>> wireless-testing merges mainline quite often. Can I use some trick on
>>> checkouted wireless-testing? Do I have to checkout mainline and merge
>>> wireless-testing into it? Something even different?
>>>
>>
>> git bisect can handle it...I've spent some quality time finding
>> bugs in ath9k with that lately...
>
> The other thing to do is to see if branching wire-testing to 2.6.38 results
> in a workable system.

I've beed testing clean 2.6.38, so this should be GOOD. Hm, maybe this
is a good idea? Probably a few patches more to test, but should not be
more than 1 or 2 bisect steps.


> What card fails? I've been busy with Realtek hardware lately and have not
> run very much with Broadcom, but my 4311 worked earlier this week.

This is really ugly. We are performing following scenario:
modprobe wl; connect; download sth small; rmmod wl;
modprobe b43; connect; try to download 2GB

With 2.6.38 and 2.6.39 usually whole 2GB gets downloaded, sometimes
card disconnects after 1GB.

With wireless-testing it fails after a minute or earlier. I've tried
reverting every ssb patch that is present in wireless-testing only
(including first patch: "serdes workaround").

Card is 14e4:4315 (BCM4312).

-- 
Rafa?
