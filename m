From: =?ISO-8859-2?Q?Michael_B=FCsch?= <mb@bu3sch.de>
Date: Wed, 25 Aug 2010 21:07:32 +0200
Subject: [PATCH 2/2] b43: N-PHY: add sub calls of band width setting
In-Reply-To: <AANLkTi=ELhn1sFmpYn5a1-GcWqVBAeRGC6Kc7OBDLmZw@mail.gmail.com>
	(sfid-20100822_160429_404901_8D578590)
References: <1282506589-8220-1-git-send-email-zajec5@gmail.com>	<1282506589-8220-2-git-send-email-zajec5@gmail.com>	<AANLkTi=dXNY+Hf8--Yp4VjQBOMwDCFuQqNSi_OAsq=2X@mail.gmail.com>	<AANLkTimeKMR8MfoNKyr6i-JxA8bdqwMKriUbBOagw-z5@mail.gmail.com>
	<AANLkTi=ELhn1sFmpYn5a1-GcWqVBAeRGC6Kc7OBDLmZw@mail.gmail.com>
	(sfid-20100822_160429_404901_8D578590)
Message-ID: <4C7569F4.7020605@bu3sch.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-2?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>, =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc: wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 08/22/2010 10:04 PM, G?bor Stefanik wrote:
>>>> +#define B43_MMIO_CLKCTL                        0x1E0   /* clock control status */

Is it possible that all this stuff is completely bogus?
All this clock control stuff you are trying to implement really
looks like the standard SSB clock control which is already
implemented in SSB. The clock control and status register
of the chipcommon is 0x1E0.

That "phy reset" stuff also mostly looks like you are reinventing the wheel
for code that is already present.

-- 
Greetings Michael.
