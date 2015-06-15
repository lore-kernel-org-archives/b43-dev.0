From: Jeff Burdges <burdges@gnunet.org>
Date: Mon, 15 Jun 2015 22:08:34 +0200
Subject: Is b43-fwcutter an option for a BCM4360?
Message-ID: <1434398914.2004.11.camel@gnunet.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org


I've a MacBook Air 6.2 with a Broadcom BCM4360 802.11ac adapter
[14e4:43a0] (rev 03).  It's apparently not supported according to :

https://wireless.wiki.kernel.org/en/users/Drivers/b43

I imagine there is no point in playing around with extracting the
firmware from the drivers on Yosemite or Mavericks using b43-fwcutter,
right?

Thanks,
Jeff

p.s.  I've already tried using the proprietary wl driver, but it crashes
lots on WPA2 and maybe WPA networks.  I mentioned the error messages
here : 
https://unix.stackexchange.com/questions/209280/broadcom-wireless-driver-source-vs-dkms


-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: This is a digitally signed message part
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150615/a8208ad9/attachment.sig>
