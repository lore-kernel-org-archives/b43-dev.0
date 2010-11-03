From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 03 Nov 2010 11:53:03 -0500
Subject: pci id 14e4:4727 (bcm4313) status?
In-Reply-To: <4CD18DB4.60405@lakedaemon.net>
References: <4CD18DB4.60405@lakedaemon.net>
Message-ID: <4CD1936F.4030100@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 11/03/2010 11:28 AM, Jason wrote:
> All,
> 
> I have a pci-express card that shows itself as pci_id 14e4:4727. 
> According to [1], it says partial support since 2.6.33
> (b43/wl/brcm80211).  I was hoping that meant b43 since it has much
> better mac80211 integration than brcm80211.  I didn't think brcm80211
> was in 2.6.33.
> However, compat-wireless (built from tarball) doesn't see it.  grep the
> source code doesn't pull up '4727' in b43... I tried to update my
> wireless-testing-2.6 tree, but it looks like it's still having trouble,
> latest is 229aebb... from Oct 24th.
> 
> So, what will it take to get it up and running?  I've contributed some
> patches to staging, but they're mainly janitorial/checkpatch stuff for
> brcm80211.  Are there some beginner tasks for b43 (ie dig through
> brcm80211 and port over) that might help out?

That device is not supported by b43. As it now stands, b43 requires a device
with the SSB interconnect, which the BCM4313 does not have. If you did fix b43
to operate without the SSB, then you would still have no support for N PHY. That
one is being worked on so that N PHYs with SSB can be supported.

My interpretation of the "partially supported" statement is that bleeding-edge
compat wireless has been backported that far.

My latest pull of wireless-testing has 2.6.37-rc1 from November 1. It includes
brcm80211.

Larry
