From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 23 Jun 2011 15:30:23 -0500
Subject: Improvement in b43 on BCM4312 (14e4:4315)
Message-ID: <4E03A25F.7080103@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, John Linville <linville@tuxdriver.com>
Cc: wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

Rafa? and John,

I was doing routine testing today on 3.0-rc4 kernels built from wireless-testing 
and Linus's mainline git tree. To my surprise, I noticed an important difference 
on the netbook with a 14e4:4315 BCM4312 802.11b/g LP PHY device. Although b43 
would work OK with light loads, it would always fail at heavy loads. Sometimes, 
it would get the "Out of order TX status" failure, and sometimes it would just 
lose the connection. As that machine is quite slow, I maintain its kernel source 
on an NFS volume exported by an x86_64 machine with fast CPUs and relatively 
fast disks.

Until today, the BCM4312 had never been able to complete the "make 
modules_install" step needed to get a new kernel on the netbook, and would fail 
in the middle of copying the modules from the NFS volume to the local 
/lib/modules tree. After installing the wireless-testing 3.0-rc4 kernel using 
rtl8187 as the network driver, I was quite surprised to find that the new kernel 
could use b43 to install the new kernel from Linus's tree. After booting that 
kernel, the failure returned.

I then made other load tests on the w-t kernel without failures.

There are no real differences between the b43 sources in the two kernels. There 
are lots of changes associated with the bus reorganization; however these do not 
seem to cause the problem.

Only one of the patches to ssb seems to be the "fix", namely commit eb40e3e8 
entitled "drivers/ssb/driver_chipcommon_pmu.c: uninitilized warning" by Connor 
Hansen. I need to do more tests on this patch, but the kernel from Linus's tree 
could reinstall itself when I added this patch. I see no indication in the 
commit message regarding pushing this one to stable, but I think it should go 
upstream to mainline and the stable trees.

Larry
