From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 10 Apr 2011 00:14:24 +0200
Subject: Wrong offset for SSB_SPROM4_ANTAVAIL?
In-Reply-To: <1302348690.32142.0.camel@maggie>
References: <BANLkTin-p+XQaWRezBP4Ux7NvLf3cB26DA@mail.gmail.com>
	<BANLkTinWc6egggjnY=FAB2fZsV7aOTusBQ@mail.gmail.com>
	<1302348690.32142.0.camel@maggie>
Message-ID: <BANLkTim2atG_O3u6k4gMPEsixcjp3dz5Qw@mail.gmail.com>
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

Another one:

http://bcm-v4.sipsolutions.net/SPROM
Revision 4 SPROM
0x005C 	
bits 7-0: 802.11B/G Antennas Available 	
bits 15-8: 802.11A Antenas Available
[my comments]
7-0 means 0xFF
15-8 means 0xFF00

bcmsrom_fmt.h:
#define	SROM4_AA2G_MASK		0x00ff
#define	SROM4_AA5G_MASK		0xff00

However ssb seems to implement that masks switched:
#define  SSB_SPROM4_ANTAVAIL_A		0x00FF	/* A-PHY bitfield */
#define  SSB_SPROM4_ANTAVAIL_BG		0xFF00	/* B-PHY and G-PHY bitfield */
(agaik A==5GHz; G==2GHz)


It seems that for both cases specs are fine.

-- 
Rafa?
