From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 30 Dec 2011 21:26:35 -0600
Subject: Some confusion over which 'b43' v5.10.x firmware I should be using
In-Reply-To: <CAKnx8Y5fHgCbG2BDgc3Tq=-PtPUiv6JRi8oT0zj6ZE8s=XCxCg@mail.gmail.com>
References: <CAKnx8Y5fHgCbG2BDgc3Tq=-PtPUiv6JRi8oT0zj6ZE8s=XCxCg@mail.gmail.com>
Message-ID: <4EFE80EB.8080906@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 12/30/2011 06:19 PM, Xavion wrote:
> I'm the maintainer of the "b43-firmware" package for Arch Linux.  I'm running
> v3.1.5 of the Linux kernel and I have v015 of the "b43-fwcutter" package
> installed.  Should I use v5.10.56.27.3 or the newer v5.10.144.3 of the 'b43'
> firmware with my BCM4311 device?

For a BCM4311, it will not matter.

> Your webpage states
> <http://linuxwireless.org/en/users/Drivers/b43#Other_distributions_not_mentioned_above>
> that I should still be using v5.10.56.27.3, but v5.10.144.3 seems to be a more
> recent edition of that v5.10.x series.  Is that explanation
> <http://linuxwireless.org/en/users/Drivers/b43#Other_distributions_not_mentioned_above>
> still current (i.e. I should stay with v5.10.56.27.3) or is it out-of-date (i.e.
> I should upgrade to v5.10.144.3)?

The firmware version is gotten from the number that Broadcom assigns to their 
binary drivers. The main reasons for such upgrades are to fix bugs in the driver 
code, or to support newer chips. It is relatively unlikely that they are fixing 
bugs in the firmware files used by old devices like yours. The only changes I 
know about happened when the RX header format changed. The driver to handle that 
change is newer than your 3.1.5. In addition, the new driver can handle both old 
and new firmware formats.

FYI, openSUSE is extracting firmware from v5.100.138, but I see no difference 
between that firmware and v4.XX for the 4311.

Larry
