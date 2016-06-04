From: Guenter Roeck <linux@roeck-us.net>
Date: Fri, 3 Jun 2016 17:50:00 -0700
Subject: [PATCH] b43: Remove unused phy_a code
In-Reply-To: <20160603233519.4606b1ef@wiggum>
References: <1464989566-1393-1-git-send-email-linux@roeck-us.net>
 <20160603233519.4606b1ef@wiggum>
Message-ID: <575225B8.2040607@roeck-us.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=c3=bcsch?= <m@bues.ch>
Cc: Kalle Valo <kvalo@codeaurora.org>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org

On 06/03/2016 02:35 PM, Michael B?sch wrote:
> On Fri,  3 Jun 2016 14:32:46 -0700
> Guenter Roeck <linux@roeck-us.net> wrote:
>
>> gcc-6 reports the following error with -Werror=unused-const-variable.
>>
>> drivers/net/wireless/broadcom/b43/phy_a.c:576:40: error:
>> 	'b43_phyops_a' defined but not used
>>
>> Turns out a lot of code in this file is unused, so let's remove it.
>
>
> All a-phy code is usused.
> So you can basically remove the whole file and any other A-PHY code.

I love removing code. I'll resend with more code removed.

Guenter
