From: Clemens Helfmeier <clemens@helfmeier.de>
Date: Sun, 20 Feb 2011 19:25:42 +0100
Subject: bcm4322 success (WPA2)!
In-Reply-To: <AANLkTik4xfzORZm03u+pMoezaV+HNUw-n7OqH-oZ_Dt1@mail.gmail.com>
References: <201101032121.10454.christoph.thielecke@gmx.de>
	<201102201340.52880.christoph.thielecke@gmx.de>
	<AANLkTimRE9iAcoODyWmhcp0rOUAwEG_vy3Ozs7c3VM7N@mail.gmail.com>
	<201102201431.45988.christoph.thielecke@gmx.de>
	<AANLkTik4xfzORZm03u+pMoezaV+HNUw-n7OqH-oZ_Dt1@mail.gmail.com>
Message-ID: <20110220182541.GP6696@helfmeier.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello Developers,

I have just tried the current wireless-testing git tree with my bcm4322 device:

# lshw
0c:00.0 Network controller [0280]: Broadcom Corporation BCM4322 802.11a/b/g/n
    Wireless LAN Controller [14e4:432b] (rev 01)

# dmesg shows:
[   11.358762] b43-phy0: Broadcom 4322 WLAN found (core revision 16)
[   11.400231] b43-phy0 debug: Found PHY: Analog 8, Type 4, Revision 4 
[   11.400257] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2056, Revision 3

I had to apply this patch to b43-fwcutter in order to extract the firmware: 
http://lists.infradead.org/pipermail/b43-dev/2010-July/000225.html

Using WPA2, the connection is very stable, no connection break downs so far.

My dmesg log shows quite a lot of error messages (approx every 7 seconds in 
idle and more often when traffic is high):
[ 4015.044435] b43-phy0 ERROR: PHY transmission error
[ 4021.910720] b43-phy0 ERROR: PHY transmission error
[ 4028.866892] b43-phy0 ERROR: PHY transmission error

Thanks for your efforts to get my hardware working!

Best regards,
 Clemens

On Sun, Feb 20, 2011 at 02:41:42PM +0100, Rafa? Mi?ecki wrote:
> Please, include b43-dev in to/cc.
> 
> W dniu 20 lutego 2011 14:31 u?ytkownik Christoph Thielecke
> <christoph.thielecke@gmx.de> napisa?:
>>> Thanks for your report! Do you need that all options at all?
>> I think so. I'll try to remove some and tell which is needed for working. 
>> Here the results:
>> 
>>> I think
>>> hwtkip=0 is default one.
>> Yes, works without that.
>> 
>>> Parameter qos should not matter.
>> qos=0 is nessary, qos=1 or without doesnt work.
> 
> What does happen when it doesn't work? Do you get scan results? Can you 
> associate? Get IP? Transmit?
> 
> 
>>> AFAIK pio is
>>> needed for some BCM4321s only.
>> pio=1 is needed, pio=0 or without doesnt work.
>> 
>>> I didn't check what bad_frames_preempt
>>> does.
>> bad_frames_preempt=1 is needed, bad_frames_preempt=0 or without doesnt work.
>> 
>> So the needed options are:
>> nohwcrypt=1 qos=0 pio=1 bad_frames_preempt=1
> 
> What does happen when it doesn't work? Do you get scan results? Can you 
> associate? Get IP? Transmit?
> 
> 
> One request: please blacklist b43, do cold boot (turn off machine for few 
> seconds), then boot and load b43 with:
> pio=1
> 
> I ask you for that, because it's possible that using DMA locks up your card. 
> In such a case further tests can give you false results.
> Do you have scan results when using pio=1 after cold boot? Can you associate?
> 
> --
> Rafa?
> 
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev

 Clemens Helfmeier
