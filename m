From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 16 Jun 2016 18:56:14 +0300
Subject: [v3,1/2] b43: Remove unused phy_a code
In-Reply-To: <20160616174813.595440bb@wiggum> ("Michael =?utf-8?Q?B=C3=BCs?=
 =?utf-8?Q?ch=22's?= message of "Thu, 16 Jun 2016 17:48:13 +0200")
References: <1465052053-26740-1-git-send-email-linux@roeck-us.net>
 <20160616152337.63AB261421@smtp.codeaurora.org>
 <20160616174813.595440bb@wiggum>
Message-ID: <87y465unz5.fsf@kamboji.qca.qualcomm.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael =?utf-8?Q?B=C3=BCsch?= <m@bues.ch>
Cc: Guenter Roeck <linux@roeck-us.net>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org

Michael B?sch <m@bues.ch> writes:

> On Thu, 16 Jun 2016 15:23:37 +0000 (UTC)
> Kalle Valo <kvalo@codeaurora.org> wrote:
>
>> Guenter Roeck <linux@roeck-us.net> wrote:
>> > gcc-6 reports the following error with -Werror=unused-const-variable.
>> > 
>> > drivers/net/wireless/broadcom/b43/phy_a.c:576:40: error:
>> > 	'b43_phyops_a' defined but not used
>> > 
>> > Per Michael B?sch: "All a-phy code is usused", so remove it all,
>> > and move the remaining Type-G initialization code into phy_g.c.
>> > 
>> > Reported-by: Fengguang Wu <fengguang.wu@intel.com> [0-day test robot]
>> > Cc: Michael B?sch <m@bues.ch>
>> > Signed-off-by: Guenter Roeck <linux@roeck-us.net>  
>> 
>> Thanks, 2 patches applied to wireless-drivers-next.git:
>> 
>> 9791333a840f b43: Remove unused phy_a code
>> afdfdc481ea9 b43: Completely remove support for phy_a
>
> Did anybody test this on any hardware? I think this should be tested
> on some G-PHY hardware, before it goes to Linus.

Larry tested these:

"These two patches have been tested on a BCM4318."

https://patchwork.kernel.org/patch/9154719/

-- 
Kalle Valo
