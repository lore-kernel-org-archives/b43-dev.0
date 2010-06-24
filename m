From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 24 Jun 2010 12:29:57 -0500
Subject: b43 hang the system with "BCM4312 802.11b/g [14e4:4315]" card,
	on 	kernel 2.6.34
In-Reply-To: <AANLkTikcm7zvL1BIs6awPwvtpM5mVMPnMoJfAwOVQYGI@mail.gmail.com>
References: <AANLkTikcm7zvL1BIs6awPwvtpM5mVMPnMoJfAwOVQYGI@mail.gmail.com>
Message-ID: <4C239615.9080605@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/24/2010 12:05 PM, Cheng Renquan wrote:
> Hi, all b43 developers and users,
>   I've just today found the b43-dev mailing list,
> 
> and through archives saw some problems reported with "BCM4312 802.11b/g",
> http://lists.infradead.org/pipermail/b43-dev/2010-June/thread.html
> 
> I also have a problem with "BCM4312 802.11b/g [14e4:4315]" on my HP
> Compaq CQ40 notebook,
> on openSuSE-11.2 distribution, (may be identical with someone, sorry,
> I didn't check,)
> 
> the default b43 driver just hang the whole system, when loading; so I
> must blacklist it,
> and use the linux-sta driver (wl.ko) (closed-source code by Broadcom)
> worked well on it;
> 
> even if I compiled the latest linux-2.6.34 kernel source, the b43
> would still hang the system;
> my kernel compilation and installation are correct because I have
> compiled for many other machines;

--snip--

> 
> Hope someone would tell me I misused something and there is a way to
> use the open source b43 driver;

There are some recent changes that fix problems with b43 hanging the
system at load. To use them, you should get the compat-wireless package
from the Packman repository. If that does not fix your problem, then you
should try the latest kernel (2.6.35-rc3) from the wireless-testing git
tree. If that does not fix the problem, then let us know here, and we will
figure out some additional debugging steps.

Larry
