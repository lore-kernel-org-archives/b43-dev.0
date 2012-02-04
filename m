From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sat, 04 Feb 2012 13:53:21 +0100
Subject: BCM5354 SoC with LP Phy Wifi
In-Reply-To: <CACna6rxvftL8fQpzhyUD-Q6RgoAur7+qRbb_4VyDa413aBPk+A@mail.gmail.com>
References: <4F25C467.7070805@hauke-m.de> <4F25D746.2020801@hauke-m.de>
 <CACna6rxvftL8fQpzhyUD-Q6RgoAur7+qRbb_4VyDa413aBPk+A@mail.gmail.com>
Message-ID: <4F2D2A41.3000509@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 01/30/2012 07:29 AM, Rafa? Mi?ecki wrote:
> 2012/1/30 Hauke Mehrtens <hauke@hauke-m.de>:
>> On 01/29/2012 11:12 PM, Hauke Mehrtens wrote:
>>> I got a device with a BCM5354 SoC and a LP-Phy Wifi core on it. With
>>> current b43 it still fails with Out of memory when using a recent
>>> firmware 666.2 and works with an old firmware 410.2160. I tried DMA and
>>> PIO mode and had the same results. I added some printk's into the code
>>> and implemented some parts b43 does not have but the Braodcom sdk and
>>> brcmsmac has in the dma code, but I haven't resolved the issue.
>>>
>>> I found out the error occurs when send some packages doing "ifconfig
>>> wlan0 up" does not result in any problems, but when I try to scan with
>>> "iw wlan0 scan" it oopes very soon. The problem seams to be related to
>>> TX as there are many packages received, but the oops occurs after 4
>>> calls to b43_dma_tx()
>>>
>>> Larry, you wrote some more LP spec based on a newer driver is there a
>>> list with updated docs or should I manually look into all packages if I
>>> want to implement it like it is in the new wl driver.
>>> As I see there are also many parts not implemented, but described in the
>>> spec so looking over the hole code is probably needed.
>>> My device has a sprom of revision 3 and not the expected version 8, does
>>> this cause any trouble?
>>>
>>> Hauke.
>> My device is the following:
>>
>> ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x14, vendor 0x4243)
>> ssb: Core 1 found: Fast Ethernet (cc 0x806, rev 0x09, vendor 0x4243)
>> ssb: Core 2 found: MIPS 3302 (cc 0x816, rev 0x08, vendor 0x4243)
>> ssb: Core 3 found: USB 2.0 Host (cc 0x819, rev 0x02, vendor 0x4243)
>> ssb: Core 4 found: MEMC SDRAM (cc 0x80F, rev 0x04, vendor 0x4243)
>> ssb: Core 5 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor 0x4243)
>> ssb: Core 6 found: Roboswitch (cc 0x81C, rev 0x02, vendor 0x4243)
>>
>> b43-phy0: Broadcom 5354 WLAN found (core revision 13)
>> b43-phy0 debug: Found PHY: Analog 6, Type 5, Revision 0
>> b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2062, Revision 1
>>
>> When doing a passive scan with iw it works without any problems and I
>> get my results without any kernel oops, but when doing an active scan I
>> get an oops.
> 
> If you search for "out of memory b43" you will find the thread where
> we were trying to find the issue. Unfortunately without the real
> access to the hardware it wasn't easy to debug this. Sending patches
> to someone, waiting for recompiling & testing, checking results... I
> failed at that process :(
> 
> While I'll try to implement/update LP-PHY code, I think it still would
> be nice to investigate this problem. Do we have some leak in b43? We
> should fix it if so.
> 
> Could you check what exactly happens in b43_dma_tx please?

I debugged my device again and found out that with the new firmware it
log 3 times this line:

b43-phy0 ERROR: b43_mac_enable(): The firmware should be suspended, but
current state is 0

This does not happen with firmware 410.2160. I haven't see any other
differences in the log. What could be the reason for this log entry?

Output with firmware 666.2, running "iw wlan0 scan passive" at first and
then "iw wlan0 scan"
http://hauke-m.de/files/bcm5354/2012-02-04/fail-1.log

Output with firmware 410.2160 running "iw wlan0 scan"
http://hauke-m.de/files/bcm5354/2012-02-04/working-1.log

Hauke
