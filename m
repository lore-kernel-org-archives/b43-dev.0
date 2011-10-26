From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 26 Oct 2011 17:24:46 -0500
Subject: Switching ssb to read 8-bit quantities from SPROM
Message-ID: <4EA888AE.30406@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Buesch <mb@bu3sch.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

I tested the effects of changing ssb to read the SSPROM in 8-bit hunks rather 
than as 16-bit words in the manner that was just submitted for brcmsmac. 
Although this simplifies the calculation of the crc8, it only reduced the size 
of the module by 31 bytes, thus I will not be submitting the patch.

When the library version of the crc8 routine was used rather than the one built 
into ssb, the size of the driver was increased by 17 bytes.

Larry
