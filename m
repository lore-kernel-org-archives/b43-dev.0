From: Ben Greear <greearb@candelatech.com>
Date: Fri, 06 May 2011 17:34:14 -0700
Subject: Biescting between mainline and wireless-testing
In-Reply-To: <BANLkTik3TtCcy2cJkMbRTpsn4x4XE9=naQ@mail.gmail.com>
References: <BANLkTik3TtCcy2cJkMbRTpsn4x4XE9=naQ@mail.gmail.com>
Message-ID: <4DC49386.6070503@candelatech.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

On 05/06/2011 04:51 PM, Rafa? Mi?ecki wrote:
> I suspect we have some ugly (hard trackable) regression between
> mainline and wireless-testing. It sounds impossible, but this seems to
> affect Broadcom cards and looks like not related to ssb or b43.
>
> Today I've compiled 2.6.38 and 2.6.39-rc6, both work GOOD.
> I've compiled wireless-testing and it failed, BAD.
> I've reverted all recent ssb patches from top and it still fails BAD.
>
> What would be the easiest way to try bisecting? I can see
> wireless-testing merges mainline quite often. Can I use some trick on
> checkouted wireless-testing? Do I have to checkout mainline and merge
> wireless-testing into it? Something even different?
>

git bisect can handle it...I've spent some quality time finding
bugs in ath9k with that lately...

Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
