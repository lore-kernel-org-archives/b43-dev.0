From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 31 Mar 2010 10:14:10 -0500
Subject: Changes in specs
Message-ID: <4BB366C2.8010605@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Buesch <mb@bu3sch.de>, John Linville <linville@tuxdriver.com>
Cc: wireless <linux-wireless@vger.kernel.org>, b43-dev@lists.infradead.org

John Linville ran an MMIO dump on his Netbook while loading the wl
driver. From the output, it was clear that his device does indeed have
an SPROM, but it is in a different location than previous devices we
have encountered. With this information, it was not difficult to find
the test for this situation in the Broadcom code. The revised specs for
this condition are in the first paragraph of
http://bcm-v4.sipsolutions.net/SPROM. In a nutshell, the SPROM is at
offset 0x1000 for chipcommon revisions < 31, and@0x0800 for revisions
>= 31.

I have also discovered what was wrong with the specs that described what
devices do not have an SPROM. The previous version only covers those
devices that are on a PCMCIA bus. The new version of those specs are at
http://bcm-v4.sipsolutions.net/802.11/IsSpromAvailable. As might be
expected, the chipcommon revision is again important for PCI devices.

My workaround for missing SPROM data remains viable, and I plan to
resubmit it as soon as the revised detection routine is ready. Does that
sound reasonable, or should I wait until such a device is found?

Larry
