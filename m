From: Paul Fertser <fercerpav@gmail.com>
Date: Thu, 21 Oct 2010 12:53:37 +0400
Subject: Transfer zeroes via ssh test (was: Re: PIO mode)
In-Reply-To: <4CBF359A.6030700@lwfinger.net>
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
Message-ID: <20101021085337.GV1593@home.pavel.comp>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Oct 20, 2010 at 01:31:54PM -0500, Larry Finger wrote:
> On 10/20/2010 12:54 PM, Paul Fertser wrote:
> > It looks like we're seeing two different issues.
> 
> I agree.

With this test (transfer via ssh to cold-booted b43) i also get some
interesting results:

[ 2140.029809] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 00:02:84:7d:3c:02
[ 2148.864071] wlan0: no IPv6 routers present
[ 2797.922932] CE: hpet increased min_delta_ns to 11250 nsec
[ 3744.258158] ACPI: EC: GPE storm detected, transactions will use polling mode
[ 4417.907722] b43-phy0 debug: TX-status contains invalid cookie: 0x1349
[ 4417.909318] b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 76
[ 4417.910899] b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 78
[ 4417.912325] b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 80
...
[ 4418.146891] b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 70
[ 4418.148529] b43-phy0 debug: Out of order TX status report on DMA ring 1. Expected 74, but got 72
[ 4565.170928] wlan0: disassociated from 00:02:84:7d:3c:02 (Reason: 1)

Then repeated associations and deassociations until i unload the driver.
Reloading brings functionality back.

I need to do more tests to say if i consistently see the same time interval
(between starting and failing) in this test.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav at gmail.com
