From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 30 Jun 2014 13:04:38 +0200
Subject: [PATCH] b43: treat LCNXN-PHY as extra N-PHY devices
In-Reply-To: <53B141CB.7010000@broadcom.com>
References: <1404071205-12568-1-git-send-email-zajec5@gmail.com>
 <53B141CB.7010000@broadcom.com>
Message-ID: <CACna6rzisWW9YGQpOz9-PVD5bFg5ApzVfNSLbWmVJOYXgssqkQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On 30 June 2014 12:54, Arend van Spriel <arend@broadcom.com> wrote:
> On 29-06-14 21:46, Rafa? Mi?ecki wrote:
>> LCNXN is simply a continuation of N, e.g. code handling LCNXN revs 0 and
>> 1 is mostly the same as for N-PHY revs 7+.
>
> Hi Rafa?,
>
> LCNXN is actually a LCN phy with 2 streams (mimo).

Err, I don't think so. Could you take a closer look at this? I'm
pretty sure LCNXN is continuation of N.

Maybe you were thinking about LCN40? I don't know much about LCN40,
maybe it's a variation of LCN?
