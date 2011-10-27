From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Thu, 27 Oct 2011 06:59:11 +0200
Subject: Switching ssb to read 8-bit quantities from SPROM
In-Reply-To: <4EA888AE.30406@lwfinger.net>
References: <4EA888AE.30406@lwfinger.net>
Message-ID: <20111027065911.43c6c49c@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Michael Buesch <mb@bu3sch.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

On Wed, 26 Oct 2011 17:24:46 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> I tested the effects of changing ssb to read the SSPROM in 8-bit hunks rather 
> than as 16-bit words in the manner that was just submitted for brcmsmac. 
> Although this simplifies the calculation of the crc8, it only reduced the size 
> of the module by 31 bytes, thus I will not be submitting the patch.
> 
> When the library version of the crc8 routine was used rather than the one built 
> into ssb, the size of the driver was increased by 17 bytes.

Well, if this doesn't cause regressions due to the changed reads, I'm OK
with it (as in I don't really care either way).
But it has to be tested on b44, too.

-- 
Greetings, Michael.
