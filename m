From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 01 Dec 2010 13:15:29 -0600
Subject: RFC - removal of SPROM fallback
Message-ID: <4CF69ED1.1070406@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Buesch <mb@bu3sch.de>, John Linville <linville@tuxdriver.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, =?UTF-8?B?R8OhYm9yIA==?= =?UTF-8?B?U3RlZmFuaWs=?= <netrolller.3d@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

At one time, we thought that we had found BCM43xx devices with no SPROM. In the
one case that I remember, it was because the SPROM had been relocated.

I now have the data from John's device that needs the revision fixup and I know
what is wrong - it is rev 2 with corrupted CRC. The defaulting to rev 1 is
getting almost everything wrong, including MAC address and vendor. My plan is to
write a better fixup routine.

At the moment, we have some SPROM fallback code that has not been fully
implemented, and is probably not needed. Are there any objections to stripping
this code out of drivers/ssb/pci.c and drivers/ssb/sprom.c?

Larry
