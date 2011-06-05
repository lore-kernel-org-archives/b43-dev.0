From: Stuart Longland <redhatter@gentoo.org>
Date: Sun, 05 Jun 2011 11:01:27 +1000
Subject: b43 and late 2008 model Apple MacBook
In-Reply-To: <4DEACFD9.6020004@lwfinger.net>
References: <4DEAC8FE.5010502@gentoo.org> <4DEACA37.4080905@gentoo.org>
	<4DEACFD9.6020004@lwfinger.net>
Message-ID: <4DEAD567.2050608@gentoo.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi Larry,

On 06/05/11 10:37, Larry Finger wrote:
> The lspci output helped a lot, but the PCI ID from "lspci -nn" would
> have been a little more helpful, but the fact that is an 802.11n device
> is probably sufficient.

No problems, well for interest's sake, this is the `lspci -vnn` output
for the relevant device:
> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4322 802.11a/b/g/n Wireless LAN Controller [14e4:432b] (rev 01)
>         Subsystem: Apple Computer Inc. Device [106b:008d]
>         Flags: bus master, fast devsel, latency 0, IRQ 23
>         Memory at 93100000 (64-bit, non-prefetchable) [size=16K]
>         Capabilities: [40] Power Management version 3
>         Capabilities: [58] Vendor Specific Information: Len=78 <?>
>         Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
>         Capabilities: [d0] Express Endpoint, MSI 00
>         Capabilities: [100] Advanced Error Reporting
>         Capabilities: [13c] Virtual Channel
>         Capabilities: [160] Device Serial Number b6-b7-6c-ff-ff-83-00-23
>         Capabilities: [16c] Power Budgeting <?>
>         Kernel driver in use: b43-pci-bridge


> Coverage of the "n" devices with b43 did not become very good until
> 2.6.39 and those changes were too invasive to be backported to earlier
> kernels. Using the git tree from wireless-testing should work. With PC
> hardware, many people use the proprietary "wl" driver. I'm not certain
> if that works on MacIntel hardware, but the latest b43 should be OK.

Ahh okay, so an update to the kernel will be worthwhile... I'll have a
look for the wireless-testing tree.  I was preferring to stick with
open-source drivers as I personally hate proprietary blobs in kernel
space.  Hence my focus would be to fix the open-source driver. :-)

I shall do a pull of the relevant git tree and see how it goes.

Thanks in advance.
Regards,
-- 
Stuart Longland (aka Redhatter, VK4MSL)      .'''.
Gentoo Linux/MIPS Cobalt and Docs Developer  '.'` :
. . . . . . . . . . . . . . . . . . . . . .   .'.'
http://dev.gentoo.org/~redhatter             :.'

I haven't lost my mind...
  ...it's backed up on a tape somewhere.
