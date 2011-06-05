From: Stuart Longland <redhatter@gentoo.org>
Date: Sun, 05 Jun 2011 10:13:43 +1000
Subject: b43 and late 2008 model Apple MacBook
In-Reply-To: <4DEAC8FE.5010502@gentoo.org>
References: <4DEAC8FE.5010502@gentoo.org>
Message-ID: <4DEACA37.4080905@gentoo.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/05/11 10:08, Stuart Longland wrote:
> Hi all,
> 
> I've been battling the wireless card in this late-2008 model MacBook
> which dual-boots Mac OS X (which works fine on wireless) and Gentoo
> Linux, which has been giving me no end of grief.

Apologies, should have mentioned the lspci output:
> 03:00.0 Network controller: Broadcom Corporation BCM4322 802.11a/b/g/n Wireless LAN Controller (rev 01)
>         Subsystem: Apple Computer Inc. Device 008d
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
Regards,
-- 
Stuart Longland (aka Redhatter, VK4MSL)      .'''.
Gentoo Linux/MIPS Cobalt and Docs Developer  '.'` :
. . . . . . . . . . . . . . . . . . . . . .   .'.'
http://dev.gentoo.org/~redhatter             :.'

I haven't lost my mind...
  ...it's backed up on a tape somewhere.
