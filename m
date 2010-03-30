From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 30 Mar 2010 18:21:08 -0500
Subject: pci-id 14e4:4320 reporting rev 02; works only with b43legacy
In-Reply-To: <10872c491003291113y1efa3f0eiac91b30f92d896f1@mail.gmail.com>
References: <10872c491003291113y1efa3f0eiac91b30f92d896f1@mail.gmail.com>
Message-ID: <4BB28764.4040806@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 03/29/2010 01:13 PM, Sean Nowlan wrote:
> I built OpenWrt for the Linksys wrt54g v1.0 router, which reports to
> have a bcm4306 rev 02 device even though its pci-id is 14e4:4320.  This
> contradicts
> http://wireless.kernel.org/en/users/Drivers/b43#Known_PCI_devices ,
> which says this device should be at rev 03.  Not surprisingly, b43legacy
> works but b43 does not.

I added the line that says that 14e4:4320 that is a BCM4306/2 uses b43legacy.
ALL BCM4306/2 units use b43legacy, no matter what PCI IDs they report.

The b43-pci-bridge modules  uses the revision level of the 802.11 core inside
the device to decide if b43 or b43legacy is needed. That info cannot be
determined from anything interrogated with normal utilities. Yours is 0x04,
which means b43legacy. A value of 0x05 would use b43.

Larry
