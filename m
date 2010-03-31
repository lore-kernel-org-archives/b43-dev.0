From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 31 Mar 2010 19:11:28 +0300
Subject: Changes in specs
In-Reply-To: <4BB366C2.8010605@lwfinger.net>
References: <4BB366C2.8010605@lwfinger.net>
Message-ID: <q2mb170af451003310911z830c4009o1aeb123b830cdd80@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Michael Buesch <mb@bu3sch.de>, John Linville <linville@tuxdriver.com>, wireless <linux-wireless@vger.kernel.org>, b43-dev@lists.infradead.org

2010/3/31 Larry Finger <Larry.Finger@lwfinger.net>:
> John Linville ran an MMIO dump on his Netbook while loading the wl
> driver. From the output, it was clear that his device does indeed have
> an SPROM, but it is in a different location than previous devices we
> have encountered. With this information, it was not difficult to find
> the test for this situation in the Broadcom code. The revised specs for
> this condition are in the first paragraph of
> http://bcm-v4.sipsolutions.net/SPROM. In a nutshell, the SPROM is at
> offset 0x1000 for chipcommon revisions < 31, and@0x0800 for revisions
>>= 31.
>
> I have also discovered what was wrong with the specs that described what
> devices do not have an SPROM. The previous version only covers those
> devices that are on a PCMCIA bus. The new version of those specs are at
> http://bcm-v4.sipsolutions.net/802.11/IsSpromAvailable. As might be
> expected, the chipcommon revision is again important for PCI devices.

I've is_sprom_available updated.

Will hack on SPROM today.

-- 
Rafa?
