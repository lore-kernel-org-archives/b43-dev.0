From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 1 May 2010 18:32:47 +0200
Subject: [PATCH] ssb: Implement fast powerup delay calculation
In-Reply-To: <4BDC56D2.5060605@gmail.com>
References: <4BDC56D2.5060605@gmail.com>
Message-ID: <AANLkTinJVm-6o8tVLesiOeiYGgvy8vYSpXPtcAh0CQ5D@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Michael Buesch <mb@bu3sch.de>, Larry Finger <larry.finger@lwfinger.net>

2010/5/1 G?bor Stefanik <netrolller.3d@gmail.com>:
> Implement fast powerup delay calculation, as described
> in the recently updated specs. The 4325 part is coming soon.
>
> Signed-off-by: G?bor Stefanik<netrolller.3d@gmail.com>
> ---
>
> To people experiencing DMA errors: please test this patch, it touches
> the PMU code, one of the suspected problem areas.
>
> I'm submitting this patch using Thunderbird 3; so I cannot be held liable
> if it gets damaged in transit. Blame Mozilla. :-)

Apparently the nasty space-doubling issue seen in the Tb3 beta is
still present in the final version... here is the patch as an
attachment.

--G?bor
-------------- next part --------------
A non-text attachment was scrubbed...
Name: ssb_fast_pwrup_delay.patch
Type: application/octet-stream
Size: 2488 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100501/df8a418b/attachment.obj>
