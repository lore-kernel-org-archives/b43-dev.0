From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 17 Feb 2011 13:14:21 +0100
Subject: [RFC] How to rename SSB_TMSLOW_*, B43_TMSLOW_*?
In-Reply-To: <1297894657.32237.2.camel@maggie>
References: <AANLkTimKE+WqChVf0XpeHsfHxT8=3vbnBh=Lo+1tLSwj@mail.gmail.com>
	<1297894657.32237.2.camel@maggie>
Message-ID: <AANLkTi=sVaeizU3xJQQwwKXB5saPgdn9VxNQv0-aoiV7@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: George Kashperko <george@znau.edu.ua>, linux-wireless@vger.kernel.org, b43-dev <b43-dev@lists.infradead.org>

W dniu 16 lutego 2011 23:17 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> On Wed, 2011-02-16 at 14:13 +0100, Rafa? Mi?ecki wrote:
>> Except for following 3 defines:
>> #define ?SSB_TMSLOW_RESET ? ? 0x00000001 /* Reset */
>> #define ?SSB_TMSLOW_REJECT_22 0x00000002 /* Reject (Backplane rev 2.2) */
>> #define ?SSB_TMSLOW_REJECT_23 0x00000004 /* Reject (Backplane rev 2.3) */
>>
>> All our SSB_TMSLOW_* and B43_TMSLOW_* defines are some core control
>> bits. As we now know, core control bits are not SSB specific or TMSLOW
>> specific.
>>
>> Should we (and how) define that names in this situation?
>>
>> For b43 I propose (quite obvious?) B43_CORE_CTL_*.
>>
>> However what about SSB_TMSLOW_*? George proposed SSB_CORECTL_*, but it
>> contains "SSB", while that bits are not SSB specific. Same bits are
>> used on AI bus. Should we use some SSBAI_CORE_CTL_* then? Any other
>> ideas? Some better maybe?
>>
>> P.S.
>> Personally I prefer CORE_CTL over CORECTL (George). Which one should we use?
>
> Let's simply put those bits into the drivers and call them
> DRIVERNAME_TMSLOW_FOOBAR

That's what we already have...
B43_TMSLOW_GMODE
B43_TMSLOW_PLLREFSEL
B43_TMSLOW_MACPHYCLKEN
B43_TMSLOW_PHYRESET
B43_TMSLOW_PHYCLKEN
And it's fine for now, but not if we want to have AI support in b43.
See my next comment.


> The "TMSLOW" part seems rather important to me, because that makes it
> obvious what register these bits belong to. Note that's there's also
> TMSHIGH. It also follows current naming convention.

I skip TMSHIGH for now, to simplify discussion.

Your proposal is fine as long as we use that flags for TMSLOW only.
But we may need to use that for AI boards in future, which does not
contain TMSLOW. So that way we would finish with something so ugly:

#define B43_SSB_TMSLOW_GMODE			0x20000000	/* G Mode Enable */
#define B43_SSB_TMSLOW_PHY_BANDWIDTH		0x00C00000	/* PHY band width and
clock speed mask (N-PHY only) */
#define  B43_SSB_TMSLOW_PHY_BANDWIDTH_10MHZ	0x00000000	/* 10 MHz
bandwidth, 40 MHz PHY */
#define  B43_SSB_TMSLOW_PHY_BANDWIDTH_20MHZ	0x00400000	/* 20 MHz
bandwidth, 80 MHz PHY */
#define  B43_SSB_TMSLOW_PHY_BANDWIDTH_40MHZ	0x00800000	/* 40 MHz
bandwidth, 160 MHz PHY */
#define B43_SSB_TMSLOW_PLLREFSEL		0x00200000	/* PLL Frequency
Reference Select (rev >= 5) */
#define B43_SSB_TMSLOW_MACPHYCLKEN		0x00100000	/* MAC PHY Clock
Control Enable (rev >= 5) */
#define B43_SSB_TMSLOW_PHYRESET			0x00080000	/* PHY Reset */
#define B43_SSB_TMSLOW_PHYCLKEN			0x00040000	/* PHY Clock Enable */

#define B43_AI_REGNAME_GMODE			0x2000	/* G Mode Enable */
#define B43_AI_REGNAME_BANDWIDTH		0x00C0	/* PHY band width and clock
speed mask (N-PHY only) */
#define  B43_AI_REGNAME_BANDWIDTH_10MHZ		0x0000	/* 10 MHz bandwidth,
40 MHz PHY */
#define  B43_AI_REGNAME_BANDWIDTH_20MHZ		0x0040	/* 20 MHz bandwidth,
80 MHz PHY */
#define  B43_AI_REGNAME_BANDWIDTH_40MHZ		0x0080	/* 40 MHz bandwidth,
160 MHz PHY */
#define B43_AI_REGNAME_PLLREFSEL		0x0020	/* PLL Frequency Reference
Select (rev >= 5) */
#define B43_AI_REGNAME_MACPHYCLKEN		0x0010	/* MAC PHY Clock Control
Enable (rev >= 5) */
#define B43_AI_REGNAME_RESET			0x0008	/* PHY Reset */
#define B43_AI_REGNAME_CLKEN			0x0004	/* PHY Clock Enable */

if (boardtype == SSB) {
	flags |= B43_SSB_TMSLOW_PHYCLKEN;
	flags |= B43_SSB_TMSLOW_PHYRESET;
	if (dev->phy.type == B43_PHYTYPE_N)
		flags |= B43_SSB_TMSLOW_PHY_BANDWIDTH_20MHZ; /* Make 20 MHz def */
} else if (boardtype == AI) {
	flags |= B43_AI_REGNAME_PHYCLKEN;
	flags |= B43_AI_REGNAME_PHYRESET;
	if (dev->phy.type == B43_PHYTYPE_N)
		flags |= B43_AI_REGNAME_PHY_BANDWIDTH_20MHZ; /* Make 20 MHz def */
}

That's why I wanted to introduce some SSBAI_CORECTL_FOOBAR and make
b43 unaware it that flags are going to be written in register A or B.
I wanted b43 to just pass flags to correct function and do not care
about place where they are getting written.

-- 
Rafa?
-------------- next part --------------
#define B43_SSB_TMSLOW_GMODE			0x20000000	/* G Mode Enable */
#define B43_SSB_TMSLOW_PHY_BANDWIDTH		0x00C00000	/* PHY band width and clock speed mask (N-PHY only) */
#define  B43_SSB_TMSLOW_PHY_BANDWIDTH_10MHZ	0x00000000	/* 10 MHz bandwidth, 40 MHz PHY */
#define  B43_SSB_TMSLOW_PHY_BANDWIDTH_20MHZ	0x00400000	/* 20 MHz bandwidth, 80 MHz PHY */
#define  B43_SSB_TMSLOW_PHY_BANDWIDTH_40MHZ	0x00800000	/* 40 MHz bandwidth, 160 MHz PHY */
#define B43_SSB_TMSLOW_PLLREFSEL		0x00200000	/* PLL Frequency Reference Select (rev >= 5) */
#define B43_SSB_TMSLOW_MACPHYCLKEN		0x00100000	/* MAC PHY Clock Control Enable (rev >= 5) */
#define B43_SSB_TMSLOW_PHYRESET			0x00080000	/* PHY Reset */
#define B43_SSB_TMSLOW_PHYCLKEN			0x00040000	/* PHY Clock Enable */

#define B43_AI_REGNAME_GMODE			0x2000	/* G Mode Enable */
#define B43_AI_REGNAME_BANDWIDTH		0x00C0	/* PHY band width and clock speed mask (N-PHY only) */
#define  B43_AI_REGNAME_BANDWIDTH_10MHZ		0x0000	/* 10 MHz bandwidth, 40 MHz PHY */
#define  B43_AI_REGNAME_BANDWIDTH_20MHZ		0x0040	/* 20 MHz bandwidth, 80 MHz PHY */
#define  B43_AI_REGNAME_BANDWIDTH_40MHZ		0x0080	/* 40 MHz bandwidth, 160 MHz PHY */
#define B43_AI_REGNAME_PLLREFSEL		0x0020	/* PLL Frequency Reference Select (rev >= 5) */
#define B43_AI_REGNAME_MACPHYCLKEN		0x0010	/* MAC PHY Clock Control Enable (rev >= 5) */
#define B43_AI_REGNAME_RESET			0x0008	/* PHY Reset */
#define B43_AI_REGNAME_CLKEN			0x0004	/* PHY Clock Enable */

if (boardtype == SSB) {
	flags |= B43_SSB_TMSLOW_PHYCLKEN;
	flags |= B43_SSB_TMSLOW_PHYRESET;
	if (dev->phy.type == B43_PHYTYPE_N)
		flags |= B43_SSB_TMSLOW_PHY_BANDWIDTH_20MHZ; /* Make 20 MHz def */
} else if (boardtype == AI) {
	flags |= B43_AI_REGNAME_PHYCLKEN;
	flags |= B43_AI_REGNAME_PHYRESET;
	if (dev->phy.type == B43_PHYTYPE_N)
		flags |= B43_AI_REGNAME_PHY_BANDWIDTH_20MHZ; /* Make 20 MHz def */
}
