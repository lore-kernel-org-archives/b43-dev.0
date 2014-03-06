From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 6 Mar 2014 08:11:02 +0100
Subject: b43 register dumping/setting
In-Reply-To: <20140306064231.GA9275@srcf.ucam.org>
References: <20140306014015.GA19521@srcf.ucam.org>
 <CACna6rzSdzfqBnm1YHQEyThO6M2raDKD6Y9jwtUhzXr+CtLq9w@mail.gmail.com>
 <20140306064231.GA9275@srcf.ucam.org>
Message-ID: <CACna6ry529Mryb2dpxJY9T_zmGxDMdFO6nixwFyCR2AJksHAtw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2014-03-06 7:42 GMT+01:00 Matthew Garrett <mjg59@srcf.ucam.org>:
> On Thu, Mar 06, 2014 at 07:30:20AM +0100, Rafa? Mi?ecki wrote:
>
>> First, please note BCM4331 is using BCMA instead of the older SSB.
>> Second, there are plenty of registers you may need to dump. BCMA bus
>> has multiple cores, every core has it's agent/wrapper core. You should
>> probably dump registers of PCIe, ChipCommon and 80211 cores. To make
>> that more tricky PCIe and 80211 cores have few sets of indirect
>> registers.
>
> Awesomes. I'll see what I can figure out.

With bcma & b43 it should be doable, but what about dumping registers
from closed source driver? Did you figure out some way?

I think Broadcom exports interface to access registers (not sure which
ones). It's used by (closed source AFAIK) user space tool "wl"
(http://www.dd-wrt.com/wiki/index.php/WL and search for "reg").
However "wl" binary is available for MIPS and ARM only. At least I've
never seen it compiled for x86.
You may try to get "wlc" tool from OpenWrt (which is basically open
source tool for talking with wl.ko) and extend it to support ioctls
for REGs access.
