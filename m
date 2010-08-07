From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 7 Aug 2010 08:29:49 +0200
Subject: ssb: 2.6.34.1 -> 2.6.34.2 regression
In-Reply-To: <4C5C9252.7040007@bu3sch.de>
References: <4C5C9252.7040007@bu3sch.de>
Message-ID: <AANLkTikotSiDU1ZGetwB8=XJVZrn-HQYDHGm8KT1dVPF@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: stable@kernel.org, Christoph Fritz <chf.fritz@googlemail.com>, Larry Finger <Larry.Finger@lwfinger.net>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

2010/8/7 Michael B?sch <mb@bu3sch.de>:
> The SPROM changes applied to SSB in 2.6.34.2 completely broke SPROM
> extraction. This leads to broken wireless for my BCM4306 card.
> All other BCM43xx and BCM44xx most likely are affected, too.
> Symptoms should be wrong MAC addresses and broken transmission (for 43xx).
>
> The patch changed the SPEX() macro and removed the offset subtraction,
> but did not remove the actual 0x1000 offset from the SPROM defines.
> This results in random memory poking rather than proper SPROM data
> extraction.
>
> I applied the following to my kernel to get it working again. However
> this is not a proper fix. I suggest that the -stable SSB patch
> is dropped and mainline patches being applied. They seem to
> be correct (However I did not test mainline, yet).

The original patch didn't simply drop subtraction of offset, it also
modified defines in .h:
http://marc.info/?l=linux-wireless&m=127006884129062&w=4

It's Larry combined patch that you see in .34.2 and it indeed lacks
changes in defines. We already explained that situation, Greg will
revert it and apply correct patches instead.

-- 
Rafa?
