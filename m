From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Thu, 10 Feb 2011 11:41:57 -0600
Subject: LP PHY Dell device not working properly with b43 even in PIO mode
In-Reply-To: <20110210181642.760948f3@destiny.ordissimo>
References: <20110210181642.760948f3@destiny.ordissimo>
Message-ID: <4D542365.6060307@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/10/2011 11:16 AM, Anisse Astier wrote:
> [  103.627184] wlan0: associated
> [  103.677583] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 68:7f:74:16:57:c9
> [  148.586756] b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
> [  148.586788] b43-phy0 ERROR: This device does not support DMA on your system. It will now be switched to PIO.
> [  148.586791] b43-phy0: Controller RESET (DMA error) ...
> [  148.586794] b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
> [  148.586797] b43-phy0 ERROR: This device does not support DMA on your system. It will now be switched to PIO.
> [  148.586800] b43-phy0: Controller RESET (DMA error) ...
> [  148.586882] b43-phy0 debug: Wireless interface stopped

On some boxes, 14e4:4315 devices fail in b43 with with this DMA error. We don't
know why, nor do we know how to fix it. Unfortunately, none of the developers
have such a system, which makes the debugging harder.

I don't think the problem is with the Dell 1397, but with the motherboard on the
laptop. In fact, most of the problems have been with netbook computers with a
Phoenix BIOS. Does your system fit that description?

> [  297.703041] b43-phy0 ERROR: MAC suspend failed
> [  297.854043] b43-phy0 ERROR: MAC suspend failed
> [  298.003042] b43-phy0 ERROR: MAC suspend failed

Are the MAC suspend failures in PIO mode a regression that recently appeared? I
cannot think of any changes that should have affected the LP PHY devices, but
anything is possible.

The only workaround I can suggest is to use wl. I hate to recommend
closed-source software, but there may be no alternative.


Larry
