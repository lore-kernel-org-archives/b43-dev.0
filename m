From: Jia-Ju Bai <baijiaju1990@163.com>
Date: Fri, 02 Jun 2017 09:18:14 +0800
Subject: [PATCH] b43legacy: Fix a sleep-in-atomic bug in
 b43legacy_attr_interfmode_store
In-Reply-To: <20170601101113.6dd30d6d@lwn.net>
References: <1496226547-5921-1-git-send-email-baijiaju1990@163.com>
 <85905124-7167-aeb0-8aff-4ceec09e9542@lwfinger.net>
 <592F6843.9000204@163.com> <20170601101113.6dd30d6d@lwn.net>
Message-ID: <5930BCD6.9010306@163.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jonathan Corbet <corbet@lwn.net>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, kvalo@codeaurora.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org

On 06/02/2017 12:11 AM, Jonathan Corbet wrote:
> On Thu, 01 Jun 2017 09:05:07 +0800
> Jia-Ju Bai<baijiaju1990@163.com>  wrote:
>
>> I admit my patches are not well tested, and they may not well fix the bugs.
>> I am looking forward to opinions and suggestions :)
> May I politely suggest that sending out untested locking changes is a
> dangerous thing to do?  You really should not be changing the locking in a
> piece of kernel code without understanding very well what the lock is
> protecting and being able to say why your changes are safe.  Without that,
> the risk of introducing subtle bugs is very high.
>
> It looks like you have written a useful tool that could help us to make
> the kernel more robust.  If you are interested in my suggestion, I would
> recommend that you post the sleep-in-atomic scenarios that you are
> finding, but refrain from "fixing" them in any case where you cannot offer
> a strong explanation of why your fix is correct.
>
> Thanks for working to find bugs in the kernel!
>
> jon
Hi,

Thanks for your good and helpful advice. I am sorry for my improper patches.
I will only report bugs instead of sending improper patches when I have 
no good solution of fixing the bugs.

Thanks,
Jia-Ju Bai
