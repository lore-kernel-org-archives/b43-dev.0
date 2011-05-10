From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 10 May 2011 13:31:12 -0500
Subject: Regression affecting b43 LP-PHY card
In-Reply-To: <BANLkTin=cU_kCSFfznna69pkgTsSNVjJgw@mail.gmail.com>
References: <BANLkTin=cU_kCSFfznna69pkgTsSNVjJgw@mail.gmail.com>
Message-ID: <4DC98470.10500@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Juan Carlos Romero <juancarlos.romero@gmail.com>

On 05/09/2011 05:52 PM, Rafa? Mi?ecki wrote:
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

I did some testing over the weekend using the LP-PHY device in my HP Mini 110 
netbook. This one does not have any DMA issues, but b43 generates PHY 
transmission errors and dies when I try to copy a file over my LAN. The source 
material is contained on an NFS-mounted volume. The machine that exports the 
volume is connected by wire to the router/switch. When I get a file from the 
Internet, there are no problems. In the latter case, the transfer rate of the 
download is up to 1.2 MB/s. I don't know what the peak rate is for the NFS copy 
operation.

I was able to test kernels from the wireless-testing tree back to v2.6.36. All 
behaved the same, thus my problem is not a regression.

Larry
