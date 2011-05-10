From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 11 May 2011 00:08:15 +0200
Subject: [PATCH V2 0/3] ssb/b43(legacy): clean dangling cores workarounds
In-Reply-To: <BANLkTimecZ0uB4V_b-8F784Tnbkqo71ORA@mail.gmail.com>
References: <1304879433-7096-1-git-send-email-zajec5@gmail.com>
	<BANLkTimecZ0uB4V_b-8F784Tnbkqo71ORA@mail.gmail.com>
Message-ID: <BANLkTinfMbkyh9kB+hsmka-JcWXAYEPynw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

W dniu 8 maja 2011 19:54 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> W dniu 8 maja 2011 20:30 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
>> There is no perfect place for this workarounds, but keeping it in ssb sounds
>> more reasonable.
>
> Uups, I didn't save edition fixing this grammatical mistake. I'm lucky
> it won't be visible anywhere in git log :)

John: something went wrong there. You applied b43 and b43legacy
patches, but they should applied *after* ssb patch I don't see in your
tree.

I don't know how many people can be affected by this... Can not tell
you if we should rebase or just commit ssb patch quickly.

-- 
Rafa?
