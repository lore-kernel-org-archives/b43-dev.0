From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 10 May 2011 20:57:28 +0200
Subject: [hrtimers] Re: Regression affecting b43 LP-PHY card
In-Reply-To: <BANLkTin=cU_kCSFfznna69pkgTsSNVjJgw@mail.gmail.com>
References: <BANLkTin=cU_kCSFfznna69pkgTsSNVjJgw@mail.gmail.com>
Message-ID: <BANLkTi=Lo4jRWbHhMLkJmOfg09s+ebDjcw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Juan Carlos Romero <juancarlos.romero@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>, Ben Greear <greearb@candelatech.com>, John Stultz <john.stultz@linaro.org>, Jamie Lokier <jamie@shareable.org>, Thomas Gleixner <tglx@linutronix.de>, Alexander Shishkin <virtuoso@slind.org>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>

W dniu 10 maja 2011 00:52 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> Juan owns Lenovo affected by well-known LP-PHY DMA errors. His testing
> procedure is following:
> modprobe wl; connect; download sth small; rmmod wl;
> modprobe b43; download 2GB
>
> When working on DMA errors we discovered that wireless-testing is not
> working well for him. Even after performing above procedure his
> machine disconnects quickly and he is not able to reconnect. We tested
> 2.6.39-rc6 from tarball and it was working fine. I'd like to highlight
> here, that we were switching between mainline and wireless-testing few
> times. It is not a random issue.
>
> I suspected this regression could be caused by my recent ssb patches.
> So I reverted all of them but this didn't help.
>
> In this situation we decided to bisect. I was a little afraid of last
> merges so we took older 2.6.38 as GOOD (we tested this twice) and
> wireless-testing commit before my ssb changes as BAD. Today Juan
> finished bisecting kernel:
> http://pastebin.com/HSKbRzpB
>
> According to his bisection the first bad commit is
> e06383db9ec591696a06654257474b85bac1f8cb [0]:
> hrtimers: extend hrtimer base code to handle more then 2 clockids
>
> Does it make any sense to you? Could this be some timing issue?
>
> It was too late to test this today, we (Juan) will work on this
> tomorrow. It's impossible to revert this commit from HEAD of
> wireless-testing, so my idea is to checkout commit, test, revert,
> test.
>
> Did anyone else experience any similar problems with latest wireless-testing?
>
>
> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=e06383db9ec591696a06654257474b85bac1f8cb

Today Juan checkouted commit e06383db9ec591696a06654257474b85bac1f8cb
and tested it. He was disconnected really soon.

Then he reverted e06383db9ec591696a06654257474b85bac1f8cb and tested
again. Connection was stable, he downloaded 2GB file over network.


John S.: your commit does not touch Broadcom card directly, but it
seems it somehow affects it. I suspect there can be some timing issue.
Do you have any idea what could it be, how can we debug this?

-- 
Rafa?
