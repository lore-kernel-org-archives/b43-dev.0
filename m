From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 5 Feb 2011 17:38:58 +0100
Subject: Table of PCIs, chipsets, etc. on b43 wiki page
In-Reply-To: <4D4D79BF.9030707@lwfinger.net>
References: <AANLkTimPBdmiOQ=+TRzEGK4N8yZwj071b_pVkQzmw0RW@mail.gmail.com>
	<4D4C5595.7060903@lwfinger.net>
	<AANLkTi=QUEYGSnatgc6vfpOht0K3FzYRE38WgrAWbb8N@mail.gmail.com>
	<4D4CC268.2080008@lwfinger.net>
	<AANLkTinSVSx_AZ=sc+f5UF_8WRRtnotXZxOdXU4YOEB8@mail.gmail.com>
	<AANLkTi=ug=bqcegmE4an1zQCCHFFjtNJ7DxYSey6vkXx@mail.gmail.com>
	<AANLkTi=HkUpDgMU+dOOMffqs=u9fMi-vM-KT=6-1Xg=j@mail.gmail.com>
	<AANLkTi=XH=tmzVCR_xMUPoVqbdcwCBp6wvZ2sUpHC7UH@mail.gmail.com>
	<4D4D79BF.9030707@lwfinger.net>
Message-ID: <AANLkTik_9O0U+YaALdqDr5YyBy9UzrMp+9UW5TRtz+xw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/2/5 Larry Finger <Larry.Finger@lwfinger.net>:
> Please recheck the PCI ID for this one. That Revision 4 N PHY (type 4) with a
> Revision 16 802.11 core looks to be the same as my device with ID 14e4:432b.

root at OpenWrt:~# lspci -vnn
00:01.0 Network controller [0280]: Broadcom Corporation BCM4306 UART
[14e4:4322] (rev 01)
        Subsystem: Broadcom Corporation BCM4306 UART [14e4:4322]
        Flags: bus master, fast devsel, latency 64, IRQ 39
        Memory at 30000000 (32-bit, non-prefetchable) [size=16K]
        Kernel driver in use: b43-pci-bridge

-- 
Regards,
Jonas
