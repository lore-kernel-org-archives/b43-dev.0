From: Paul Fertser <fercerpav@gmail.com>
Date: Thu, 21 Oct 2010 10:05:00 +0400
Subject: MMIO trace for "warm" boot of b43 on IdeaPad S9
In-Reply-To: <4CBF6AEE.8050208@lwfinger.net>
References: <20101018041103.GK1593@home.pavel.comp>
	<4CBCA6BC.6080605@lwfinger.net>
	<20101019004331.GN1593@home.pavel.comp>
	<4CBDC183.9020101@lwfinger.net>
	<20101019162258.GO1593@home.pavel.comp>
	<4CBF28C0.9000404@lwfinger.net>
	<20101020175427.GQ1593@home.pavel.comp>
	<4CBF359A.6030700@lwfinger.net>
	<20101020193707.GT1593@home.pavel.comp>
	<4CBF6AEE.8050208@lwfinger.net>
Message-ID: <20101021060500.GU1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Oct 20, 2010 at 05:19:26PM -0500, Larry Finger wrote:
> The first thing that showed up was a difference in the Command register of the
> PCI configuration space at offset 0x04. The first read of this location for the
> cold boot returned 0x02, but the warm reboot returned 0x06. As that bit 4 means
> set bus mastering capability, it looks suspicious. The call to pci_bus_master()
> should take care of this, but let us check. Please apply the attached patch and
> do a cold boot to b43 so that we get the contents of the location when the DMA
> error occurs.

[  148.502999] b43-phy0 ERROR: Contents of PCI command 0x6

So no magic here.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
