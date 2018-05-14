From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 14 May 2018 19:55:39 +0200
Subject: Regression: bcm4312 lp-phy device not working in 4.17-rc5 kernel
In-Reply-To: <20180514184953.001c06412efcf2b16fdc59ac@gmail.com>
References: <20180514184953.001c06412efcf2b16fdc59ac@gmail.com>
Message-ID: <20180514195539.74686870@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chris Vine <vine35792468@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Mon, 14 May 2018 18:49:53 +0100
Chris Vine <vine35792468@gmail.com> wrote:

> I have an old netbook with a Broadcom bcm4312 802.11b/g lp-phy
> [14e4:4315] (rev 01) wifi device.  This works up to and including the
> 4.16 kernel, but not with 4.17-rc5.
> 
> The b43, mac80211, cfg80211, ssb and mmc_core modules are loaded OK, as
> is the firmware, and the wlan0 interface will come up, but any attempt
> to use the interface fails and it cannot (for example) scan.
> 
> No useful error messages are given.  The interface (wlan0) is just
> reported as not being ready.

Hi,

thanks for your report.

Can you please provide all kernel log messages anyway?
And what does "not ready" mean exactly?

It would be extremely helpful if you'd do a git bisect to find the
commit that broke it.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 833 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20180514/d43a6cd2/attachment.sig>
