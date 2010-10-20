From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 20 Oct 2010 17:19:26 -0500
Subject: MMIO trace for "warm" boot of b43 on IdeaPad S9 (was: Re: PIO
	mode)
In-Reply-To: <20101020193707.GT1593@home.pavel.comp>
References: <20101013065845.GG1593@home.pavel.comp>
	<4CBB7A46.6040507@lwfinger.net>
	<20101018041103.GK1593@home.pavel.comp>
	<4CBCA6BC.6080605@lwfinger.net>
	<20101019004331.GN1593@home.pavel.comp>
	<4CBDC183.9020101@lwfinger.net>
	<20101019162258.GO1593@home.pavel.comp>
	<4CBF28C0.9000404@lwfinger.net>
	<20101020175427.GQ1593@home.pavel.comp>
	<4CBF359A.6030700@lwfinger.net>
	<20101020193707.GT1593@home.pavel.comp>
Message-ID: <4CBF6AEE.8050208@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 10/20/2010 02:37 PM, Paul Fertser wrote:

> Attached. (stop network manager, modprobe wl, rmmod wl, start network-manager,
> start tracing, modprobe b43, wait for association).

The first thing that showed up was a difference in the Command register of the
PCI configuration space at offset 0x04. The first read of this location for the
cold boot returned 0x02, but the warm reboot returned 0x06. As that bit 4 means
set bus mastering capability, it looks suspicious. The call to pci_bus_master()
should take care of this, but let us check. Please apply the attached patch and
do a cold boot to b43 so that we get the contents of the location when the DMA
error occurs.

Larry
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: b43_diagnose_DMA
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20101020/6268a7a7/attachment.ksh>
