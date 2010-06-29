From: Cheng Renquan <crquan@gmail.com>
Date: Tue, 29 Jun 2010 09:27:59 +0800
Subject: b43 hang the system with "BCM4312 802.11b/g [14e4:4315]" card, on 
	kernel 2.6.34
In-Reply-To: <4C239615.9080605@lwfinger.net>
References: <AANLkTikcm7zvL1BIs6awPwvtpM5mVMPnMoJfAwOVQYGI@mail.gmail.com> 
	<4C239615.9080605@lwfinger.net>
Message-ID: <AANLkTikFdnrOnSt9QCddYEgfZs805Zor0lxVPIpUdQD0@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Fri, Jun 25, 2010 at 1:29 AM, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>> Hope someone would tell me I misused something and there is a way to
>> use the open source b43 driver;
>
> There are some recent changes that fix problems with b43 hanging the
> system at load. To use them, you should get the compat-wireless package
> from the Packman repository. If that does not fix your problem, then you
> should try the latest kernel (2.6.35-rc3) from the wireless-testing git
> tree. If that does not fix the problem, then let us know here, and we will
> figure out some additional debugging steps.
>
> Larry
>

I have compiled master-2010-06-24 last Sat, and it really worked well till now,

http://git.kernel.org/?p=linux/kernel/git/linville/wireless-testing.git

See soon next release will support broadcom4312 with b43 perfectly,
and some distribution enable it default,

Thanks to our developers,

-- 
Cheng Renquan (???), from Singapore
