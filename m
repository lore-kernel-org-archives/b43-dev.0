From: Arend van Spriel <arend@broadcom.com>
Date: Tue, 1 Jul 2014 12:13:18 +0200
Subject: [PATCH] b43: treat LCNXN-PHY as extra N-PHY devices
In-Reply-To: <CACna6rzisWW9YGQpOz9-PVD5bFg5ApzVfNSLbWmVJOYXgssqkQ@mail.gmail.com>
References: <1404071205-12568-1-git-send-email-zajec5@gmail.com>	<53B141CB.7010000@broadcom.com>
 <CACna6rzisWW9YGQpOz9-PVD5bFg5ApzVfNSLbWmVJOYXgssqkQ@mail.gmail.com>
Message-ID: <53B289BE.10507@broadcom.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On 30-06-14 13:04, Rafa? Mi?ecki wrote:
> On 30 June 2014 12:54, Arend van Spriel <arend@broadcom.com> wrote:
>> On 29-06-14 21:46, Rafa? Mi?ecki wrote:
>>> LCNXN is simply a continuation of N, e.g. code handling LCNXN revs 0 and
>>> 1 is mostly the same as for N-PHY revs 7+.
>>
>> Hi Rafa?,
>>
>> LCNXN is actually a LCN phy with 2 streams (mimo).
> 
> Err, I don't think so. Could you take a closer look at this? I'm
> pretty sure LCNXN is continuation of N.

You got me. I taken a closer look. It seems to stand for e'x'tended n.
There was separate phy code for it, but in recent code it seems to be
handled by n phy code. So you are right.

> Maybe you were thinking about LCN40? I don't know much about LCN40,
> maybe it's a variation of LCN?

Probably.

Gr. AvS
