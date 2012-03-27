From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 27 Mar 2012 16:29:57 -0500
Subject: b43: system hangs during kernel initialisation [14e4:4318]
In-Reply-To: <4F72181C.3030903@thewatertower.org>
References: <4F72181C.3030903@thewatertower.org>
Message-ID: <4F723155.1080104@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 03/27/2012 02:42 PM, Ben Prescott wrote:
>
> I've been testing the 12.04 Ubuntu release, and hit an immediate issue with one
> machine; the live ISO boots only as far as the b43 driver, and then the machine
> is entirely non responsive and has to be powered off.
>
> The last thing displayed is ..
>
> b43-phy0 ERROR: Firmware file "b43/ucode5.fw" not found
> b43-phy0 ERROR: Firmware file "b43-open/ucode5.fw" not found
> b43-phy0 ERROR: You must go to
> http://wireless.kernel.org/en/users/Drivers/b43#devicefirmware and download the
> correct firmware for this driver version. Please carefully read all instructions
> on this website.
>
> If I put the following in the kernel command line
>
> b43.blacklist=yes
>
> the module behaves differently
>
> "b43: Unknown parameter 'blacklist'"
>
> and the problem goes away. There's probably a better way to achieve the same
> goal, but this solution has the benefit that it is easy to switch it on and off
> via grub.
>
>
>
> I've not attempted to install firmware, as for most 'normal' users, the
> opportunity doesn't arise. Appreciate that for your understanding that maybe of
> interest. Let me know.
>
>
>
> You may find further useful detail on the bug over at:
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/950295 - including various
> diagnostic data that was captured automatically for kernel issues.
>
> The system is 32bit.
>
> The 12.04 kernel is, currently: "Ubuntu 3.2.0-20.32-generic-pae 3.2.12"
>
> The only way to make that boot is with the kernel argument.
>
>
>
> As requested on the b43 linuxwireless.org page, please find below the uname info
> and lspci info, and attached the dmesg.
>
> As part of the investigation for the ubuntu bug, I've been testing Canonical's
> vanilla kernel builds; more info about those here:
> https://wiki.ubuntu.com/Kernel/MainlineBuilds
>
> I booted the system off a kernel that works; obviously the bug isn't
> illustrated. This is the most recent canonical provided mainline 'trunk' (3.x.0)
> kernel which boots.
>
> $ uname -a
> Linux tecumseh 3.1.0-030100-generic #201110241006 SMP Mon Oct 24 14:20:44 UTC
> 2011 i686 i686 i386 GNU/Linux
>
> ben at tecumseh:~$ lspci -vvn|grep 4318 -A7
> 06:02.0 0280: 14e4:4318 (rev 02)
> Subsystem: 1468:0312
> Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping-
> SERR- FastB2B- DisINTx-
> Status: Cap- 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort-
>  >SERR- <PERR- INTx-
> Latency: 64
> Interrupt: pin A routed to IRQ 22
> Region 0: Memory at d0002000 (32-bit, non-prefetchable) [size=8K]
> Kernel driver in use: b43-pci-bridge
>
> I've tried lots of other kernels; including
>
> 3.3.0 - hangs
> 3.2.0 - hangs
>
> I've also tested a few of the 3.2.0 release candidates. I worked back to
> 3.2.0-rc2; It also hangs. Canonical didn't do a 32bit 3.2.0-rc1, so I can't test
> that.
>
> None of the kernels I've tested down the 3.1.x branch have the problem.
>
> The Ubuntu bug page has all the kernels I've tried; where /proc/cmdline doesn't
> show the argument, I was able to boot it.
>
> Please do let me know what other info / procedures would help to troubleshoot this.

What form factor is your BCM4318? I downloaded the 32-bit 12.04 iso and was able 
to boot it on my sandbox, which has both a BCM4306 (b43) and a BCM4301 
(b43legacy) in PCI form. No problems other than the kernel log showing no 
firmware available and I had no network. Clearly, not a hang during booting.

Larry
