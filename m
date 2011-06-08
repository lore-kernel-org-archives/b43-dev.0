From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 08 Jun 2011 18:30:55 -0500
Subject: Faulty 14e4:4315 (BCM4312)?
In-Reply-To: <BANLkTi=VDh7mECOvnCJRfoEDt6WBw2ZtjA@mail.gmail.com>
References: <BANLkTin+sAHnQ3afDJH0KMSZEeUqzRDmYw@mail.gmail.com>	<BANLkTi=RQe_jGFPEOYumPxxxmWM4M+BLcQ@mail.gmail.com>	<BANLkTikg5YSj=9Y+Bbv_8oJSG1OkG4GQBw@mail.gmail.com>	<BANLkTi=tSGzu57+-MovR2q0y2qLGZ=AwFA@mail.gmail.com>	<BANLkTincRK-fo+=dHoDQppsLwfMGmeiWJA@mail.gmail.com>	<BANLkTi=ezOxXVswSNsRqL06A6rozMiaNzQ@mail.gmail.com>	<4DF00043.1070304@lwfinger.net>
	<BANLkTi=VDh7mECOvnCJRfoEDt6WBw2ZtjA@mail.gmail.com>
Message-ID: <4DF0062F.6030602@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 06/08/2011 06:14 PM, Rafa? Mi?ecki wrote:
> W dniu 9 czerwca 2011 01:05 u?ytkownik Larry Finger
> <Larry.Finger@lwfinger.net>  napisa?:
>> On 06/08/2011 05:55 PM, Rafa? Mi?ecki wrote:
>>>
>>> W dniu 8 czerwca 2011 23:19 u?ytkownik Rafa? Mi?ecki<zajec5@gmail.com>
>>>   napisa?:
>>>>
>>>> Forcing rate to 1M workarounded this issue.
>>>
>>> Working state seems to be random and not related to rate.
>>>
>>> Even if I manage to connect, I do not have a chance to achieve 1MB/s.
>>>
>>> At least ndiswrapper seems to work fine. I got easy&stable connection
>>> and speed around 10MB/s. Nice to know my card is not faulty.
>>
>> What is the nature of that 4315 card? Mine is currently in use and has been
>> working correctly. This is one of the original PCIe units with the SPROM at
>> 0x1000.
>>
>> When I use the one in the netbook with the SPROM at 0x0800, the unit is a
>> lot less stable.
>
> 14e4:4315
> Mini PCIe
> MMIO 16K
> BCM94312HMG / DW1397
> SSB 2.6
> BCM4312
> SPROM 8 (0x1000)
> PMU 1
> PHY LP / 1
> RADIO 0x2062 / 2

ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor 0x4243)
ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F, vendor 0x4243)
ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor 0x4243)
ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor 0x4243)
ssb: chipcommon status is 0x10
ssb: Found rev 1 PMU (capabilities 0x02A62F01)
ssb: SPROM offset is 0x1000
ssb: SPROM revision 8 detected.
ssb: Sonics Silicon Backplane found on PCI device 0000:04:00.0
b43-phy0: Broadcom 4312 WLAN found (core revision 15)
b43-phy0 debug: Found PHY: Analog 6, Type 5, Revision 1
b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2062, Revision 2
b43 ssb0:0: wlan0: Features changed: 0x00004800 -> 0x00004000
b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
b43-phy0 debug: Chip initialized
b43-phy0 debug: 64-bit DMA initialized
b43-phy0 debug: QoS enabled

04:00.0 Network controller [0280]: Broadcom Corporation BCM4312 802.11b/g LP-PHY 
[14e4:4315] (rev 01)
         Subsystem: Hewlett-Packard Company BCM4312 802.11b/g Wireless LAN 
Controller [103c:137c]
         Flags: bus master, fast devsel, latency 0, IRQ 21
         Memory at fc000000 (64-bit, non-prefetchable) [size=16K]

Other than mine is HP-branded, they appear to be the same. I am also 2 m from 
the AP and my rate is 36 Mbps.

Larry
