From: W. Trevor King <wking@tremily.us>
Date: Thu, 21 Feb 2013 08:46:38 -0500
Subject: rev-17 Broadcom core support in b43 and CONFIG_B43_BCMA_EXTRA
In-Reply-To: <51261C0B.1040506@hauke-m.de>
References: <20130221121722.GA23690@odin.tremily.us>
 <51261C0B.1040506@hauke-m.de>
Message-ID: <20130221134637.GA24350@odin.tremily.us>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Thu, Feb 21, 2013 at 02:07:23PM +0100, Hauke Mehrtens wrote:
> On 02/21/2013 01:17 PM, W. Trevor King wrote:
> > I've been poking around in b43 and brcmsmac trying to wrap my head 
> > around device detection.  Obviously, b43 and brcmsmac both support 
> > some devices, and since 4f3d09d (b43: add option to avoid
> > duplicating device support with brcmsmac, 2012-01-11) overlapping
> > devices have been masked behind CONFIG_B43_BCMA_EXTRA.  At the time
> > of that commit, brcmsmac didn't support the r17 cores, but support
> > has since been added in 6f80f01 (brcmsmac: add support for cores
> > with revision 17, 2012-12-07).  Does that mean that b43 should move
> > the r17 core entry into the masked-by-CONFIG_B43_BCMA_EXTRA block?
> 
> Yes you could move that core id into the CONFIG_B43_BCMA_EXTRA block,
> but this core was just found on Router SoCs and there you mostly want
> to use AP mode, which brcmsmac does not support.

So maybe a CONFIG_BRCM_BCMA_EXTRA to mask brcmsmac devices when b43 is
the recommended module?

-- 
This email may be signed or encrypted with GnuPG (http://www.gnupg.org).
For more information, see http://en.wikipedia.org/wiki/Pretty_Good_Privacy
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 836 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20130221/6d573573/attachment.sig>
