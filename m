From: yhager at yhager.com <yhager@yhager.com>
Date: Tue, 20 Apr 2010 07:34:00 -0700
Subject: System freezes with 2.6.33
In-Reply-To: <4BCB3071.8030500@lwfinger.net>
References: <20100418071932.GB15229@happy.exit> <4BCB3071.8030500@lwfinger.net>
Message-ID: <20100420143358.GA1990@happy.exit>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 11:16 Sun 18 Apr     , Larry Finger wrote:
> On 04/18/2010 02:19 AM, yhager at yhager.com wrote:
> > Hi,
> > 
> > After upgrading my system to 2.6.33
> > (http://www.archlinux.org/packages/core/i686/kernel26/) I am
> > experiencing complete system lockups.
> > 
> > I confirmed that this happens when the b43 drives is on ahd I try to
> > connect to the network. When I remove the module, the system works fine
> > for hours. When it is on, I have a few minutes, till a complete freeze.
> > 
> > There is nothing in the kernel logs, or dmesg, or anywhere I could
> > find. I tried reinstalling the firmware, but it didn't change anything.
> > 
> > The hardware is HP-2133 (mini note).
> 
> Yours is the first report of such freezes. As there is a possibility of
> info being logged, but not being written and saved on disk, I would like
> you to switch to the logging console (Ctrl+Alt+F10) immediately after
> bringing the system up and starting the connection. Does anything show
> there? I do not have access to a card like yours, but I have tested with
> a 14e4:4311, which is similar.
> 
> Larry

(sorry, my responses are a bit delayed, I am on the road, so not a lot
of time for testing)

I just see these lines, which I figured are normal:

Apr 20 07:23:08 happy kernel: b43 ssb0:0: firmware: requesting b43/ucode13.fw
Apr 20 07:23:08 happy kernel: b43 ssb0:0: firmware: requesting b43/b0g0initvals13.fw
Apr 20 07:23:09 happy kernel: b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
Apr 20 07:23:09 happy kernel: b43-pci-bridge 0000:02:00.0: PCI: Disallowing DAC for device
Apr 20 07:23:09 happy kernel: b43-phy0: DMA mask fallback from 64-bit to 32-bit
Apr 20 07:23:09 happy kernel: ADDRCONF(NETDEV_UP): wlan0: link is not ready

And then it freezes.

I have also tried disabling the radio using the switch, and then there
is no freeze. When I enable the radio back, it freezes again.

--y
