From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 21 Sep 2012 10:23:07 +0200
Subject: b43 does not recognize BCM43225
In-Reply-To: <1348213434.1717.6.camel@localhost.localdomain>
References: <1348213434.1717.6.camel@localhost.localdomain>
Message-ID: <CACna6rxw1o=56Cifnd3y16ymzkwmYEh+wg=xB5Hhsrx6YKSEXg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2012/9/21 Helge Bildhoff <h.bildhoff@gmail.com>:
> hey guys, my bcm43225 on my acer extensa 5635zg is not recognized with
> b43 at all, although it's supposed to work..
> i'm running arch on linux 3.5.4, have installed the firmware version
> 5.100.138 via the AUR (the files are present in /usr/lib/firmware/b43)
> and have blacklisted brcmsmac.
> on loading the driver dmesg just says:
>
> [ 1176.374026] Broadcom 43xx driver loaded [ Features: PMNLS ]
>
> nothing more.
> here's my PCI-ID:
>
> 07:00.0 Network controller [0280]: Broadcom Corporation BCM43225
> 802.11b/g/n [14e4:4357] (rev 01)
>         Subsystem: Foxconn International, Inc. T77H103.00 Wireless Half-size
> Mini PCIe Card [105b:e021]
>         Flags: bus master, fast devsel, latency 0, IRQ 19
>         Memory at c0400000 (64-bit, non-prefetchable) [size=16K]
>         Capabilities: <access denied>
>         Kernel driver in use: bcma-pci-bridge
>
> looking forward to hearing from you.

You need
CONFIG_B43_BCMA_EXTRA
I really don't like idea of recompiling kernel (module) just to enable
handling BCM43225 :|

-- 
Rafa?
