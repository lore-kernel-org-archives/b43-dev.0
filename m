From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 05 Feb 2011 10:24:31 -0600
Subject: Table of PCIs, chipsets, etc. on b43 wiki page
In-Reply-To: <AANLkTi=XH=tmzVCR_xMUPoVqbdcwCBp6wvZ2sUpHC7UH@mail.gmail.com>
References: <AANLkTimPBdmiOQ=+TRzEGK4N8yZwj071b_pVkQzmw0RW@mail.gmail.com>
	<4D4C5595.7060903@lwfinger.net>
	<AANLkTi=QUEYGSnatgc6vfpOht0K3FzYRE38WgrAWbb8N@mail.gmail.com>
	<4D4CC268.2080008@lwfinger.net>
	<AANLkTinSVSx_AZ=sc+f5UF_8WRRtnotXZxOdXU4YOEB8@mail.gmail.com>
	<AANLkTi=ug=bqcegmE4an1zQCCHFFjtNJ7DxYSey6vkXx@mail.gmail.com>
	<AANLkTi=HkUpDgMU+dOOMffqs=u9fMi-vM-KT=6-1Xg=j@mail.gmail.com>
	<AANLkTi=XH=tmzVCR_xMUPoVqbdcwCBp6wvZ2sUpHC7UH@mail.gmail.com>
Message-ID: <4D4D79BF.9030707@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 02/05/2011 10:13 AM, Jonas Gorski wrote:
> On 5 February 2011 14:38, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> Can you double check that your 14e4:4322 is BCM4322, check it's PHY
>> version (plus revision)
> 
> The proprietary broadcom driver identifies it as a BCM4322, as does b43:
> 
> b43-phy0: Broadcom 4322 WLAN found (core revision 16)
> b43-phy0 ERROR: FOUND UNSUPPORTED PHY (Analog 8, Type 4, Revision 4)
> 
>> and add entry for it in table:
>> http://wireless.kernel.org/en/users/Drivers/b43
>> ?
> 
> Will do. I assume the r<number> means the PHY revision?

Please recheck the PCI ID for this one. That Revision 4 N PHY (type 4) with a
Revision 16 802.11 core looks to be the same as my device with ID 14e4:432b.

Larry
