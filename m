From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 10 Apr 2011 00:11:26 +0200
Subject: Wrong offset for SSB_SPROM4_ANTAVAIL?
In-Reply-To: <1302348690.32142.0.camel@maggie>
References: <BANLkTin-p+XQaWRezBP4Ux7NvLf3cB26DA@mail.gmail.com>
	<BANLkTinWc6egggjnY=FAB2fZsV7aOTusBQ@mail.gmail.com>
	<1302348690.32142.0.camel@maggie>
Message-ID: <BANLkTinQFNTi5QJVLrCdm8+35pqY9o5+fw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 9 kwietnia 2011 13:31 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> On Sat, 2011-04-09 at 10:10 +0200, Rafa? Mi?ecki wrote:
>> 2011/4/9 Jonas Gorski <jonas.gorski@gmail.com>:
>> > while matching SPROM content to its offsets, I noticed that
>> > SSB_SPROM4_ANTAVAIL has an odd offset (0x5d)[1]. Shouldn't this be
>> > rather even (probably 0x5c), since the SPROM consists of 16 bit words?
>> >
>> > Regards
>> > Jonas
>> >
>> > [1] <http://git.kernel.org/?p=linux/kernel/git/linville/wireless-next-2.6.git;a=blob;f=include/linux/ssb/ssb_regs.h;h=402955ae48ceac9c118833bed28ca093407e4638;hb=HEAD#l290>
>> >
>> > P.S: I currently lack the free space for yet another kernel git tree,
>> > so I would prefer if somebody else fixes this - assuming my analysis
>> > is right ;-)
>>
>> I'll have time after weekend. There is some mess generally. We have
>> ETHPHY instead of some LEDS and we have MASKs inverted for ANTENNA.
>
> Note that the specs might also be incorrect on some of the fields.
> There were bugfixes in the struct that were probably not propagated
> up to the specs.

http://bcm-v4.sipsolutions.net/SPROM
Revision 4 SPROM
0x005A
bits 15-8: LED Powersave Duty Cycle 	
bits 7-0: LED Powersave Duty Cycle 	

bcmsrom_fmt.h:
#define	SROM4_LEDDC		45
45 == 0x2D; 0x2D * 2 == 0x5A

bcm-v4 specs and brcm80211 agree about this one. However:
#define SSB_SPROM4_ETHPHY		0x005A	/* Ethernet PHY settings ?? */
#define  SSB_SPROM4_ETHPHY_ET0A		0x001F	/* MII Address for enet0 */
#define  SSB_SPROM4_ETHPHY_ET1A		0x03E0	/* MII Address for enet1 */
#define  SSB_SPROM4_ETHPHY_ET1A_SHIFT	5
#define  SSB_SPROM4_ETHPHY_ET0M		(1<<14)	/* MDIO for enet0 */
#define  SSB_SPROM4_ETHPHY_ET1M		(1<<15)	/* MDIO for enet1 */

-- 
Rafa?
