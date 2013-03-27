From: Christian Klein <cklein@mpi-sb.mpg.de>
Date: Wed, 27 Mar 2013 21:07:37 +0100
Subject: [PATCH] b43: remove warning for LP-PHY with sprom < 8
In-Reply-To: <51533F88.5050001@lwfinger.net>
References: <1363894120-14563-1-git-send-email-hauke@hauke-m.de>
 <20130323174732.GE2873@Vault13> <51533C70.1070904@hauke-m.de>
 <51533F88.5050001@lwfinger.net>
Message-ID: <20130327200737.GJ2873@Vault13>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Wed, Mar 27, 2013 at 01:50:48PM -0500, Larry Finger wrote:
> On 03/27/2013 01:37 PM, Hauke Mehrtens wrote:
> 
> >The Asus WL-520GU just has very little memory I think that's the
> >problem. This patch just removes the warning, but I do not think it
> >will improve anything.
> 
> One thing that will make it worse is:
> 
> commit ccae0e50c16a7f7adb029c169147400d1ce9f703
> Author: Larry Finger <Larry.Finger@lwfinger.net>
> Date:   Sun Feb 17 17:01:20 2013 +0000
> 
>     b43: Increase number of RX DMA slots
> 
> That patch increases the memory usage of b43 by quite a bit and may
> push your router over the edge.

Hello Larry,

thanks, I'll revert the number of slots back to 64 and see if that helps.
How much memory does one slot take? May it be worthwile to decrease the
B43_TXRING_SLOTS value, too?

The device has 4MB Flash and 16 MB Ram. Although this is not much, according
to the openwrt supported hardware wiki page there seem to be quite a few
routers with 16MB that run with kernel 2.6 and b43.

From what I found on the internet it seems that this router never really
worked with 2.6+ kernels, at least in AP mode.  Most Info I saw blamed it on
the Broadcom 5354 SOC.  One mail I found from 06/2010 suggested that the
LP-PHY of this SoC may not be fully supported. 
(http://comments.gmane.org/gmane.linux.drivers.bcm54xx.devel/10671)

Is there any way to find out what may cause the problems and if it really is
a memory problem?  I saw the OOM-Killer only with the 666.2 firmware, for
the 410.2160 firmware it seemed to slow to a crawl and die without memory
troubles. What seemed strange to me in the dmesg output was
[  240.560000] b43-phy0 debug: Adding Interface type 2
[  240.568000] b43-phy0 debug: Removing Interface type 2
[  240.568000] b43-phy0 debug: Wireless interface stopped
[...]
[  247.184000] b43-phy0 debug: Adding Interface type 3

Why would the driver switch interface types here?

Thanks for your help!

-- 
CU, Christian Klein

http://www.gocomics.com/garfield/2004/11/21/

Homepage:       http://www.mpi-sb.mpg.de/~cklein
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 198 bytes
Desc: Digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130327/a9baedc3/attachment.sig>
