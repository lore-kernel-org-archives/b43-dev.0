From: =?UTF-8?B?SmVzw7pzIFZpZGFsIFBhbmFsw6lz?= <jesusvpct@vodafone.es>
Date: Mon, 17 Oct 2011 16:21:18 +0200
Subject: Broadcom 4303 HP Pavilion zv5000
In-Reply-To: <CACna6rzBRHBJ7RZFbEnXgFovQ6fdfV=+rYsZfLEcLA9SdFzJDg@mail.gmail.com>
References: <4E9BE7A2.4060703@vodafone.es>
	<CACna6rzBRHBJ7RZFbEnXgFovQ6fdfV=+rYsZfLEcLA9SdFzJDg@mail.gmail.com>
Message-ID: <4E9C39DE.6040303@vodafone.es>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

El lun 17 oct 2011 11:41:49 CEST, Rafa? Mi?ecki escribi?:
> 2011/10/17 Jes?s Vidal Panal?s<jesusvpct@vodafone.es>:
>> Hello, i have an older computer from my father (HP Pavilion zv5168ea) and i
>> decided to install a Xubuntu distro (tried 11.10, now 11.04) for my personal
>> use, but i can't get a wireless connection to my router (i'm using
>> WPA-personal encryption but tried with open and nothing). The driver is
>> installed, i can see wifi essid on NetworkManager but the connection is
>> never carried out. I've installed firmware-b43legacy-installer because it
>> has the driver for this card but nothing...
>
> [minor note] It's BCM4301, see dmesg or updated
> http://pci-ids.ucw.cz/read/PC/14e4/4301
>
>
>> A piece of dmesg output:
>>
>> [ 1491.019304] b43-pci-bridge 0000:02:02.0: PCI INT A ->    Link[LNK3] ->    GSI
>> 11 (level, low) ->    IRQ 11
>> [ 1491.086827] b43legacy-phy0: Broadcom 4301 WLAN found
>> [ 1491.108067] b43legacy-phy0 debug: Found PHY: Analog 0, Type 1, Revision 4
>> [ 1491.108093] b43legacy-phy0 debug: Found Radio: Manuf 0x17F, Version
>> 0x2050, Revision 2
>> [ 1491.132056] b43legacy-phy0 debug: Radio initialized
>> [ 1491.432090] b43legacy-phy0: Loading firmware version 0x127, patch level
>> 14 (2005-04-18 02:36:27)
>> [ 1491.556324] b43legacy-phy0 debug: Chip initialized
>> [ 1491.556589] b43legacy-phy0 debug: 30-bit DMA initialized
>> [ 1491.558904] Registered led device: b43legacy-phy0::tx
>> [ 1491.558943] Registered led device: b43legacy-phy0::rx
>> [ 1491.558975] Registered led device: b43legacy-phy0::radio
>> [ 1491.559001] b43legacy-phy0 debug: Wireless interface started
>> [ 1491.564107] b43legacy-phy0 debug: Adding Interface type 2
>
> Looks fine.
>
>
>> [ 1555.492498] wlan0: direct probe to 20:cf:30:ce:0e:c7 (try 1/3)
>> [ 1555.692058] wlan0: direct probe to 20:cf:30:ce:0e:c7 (try 2/3)
>> [ 1555.892059] wlan0: direct probe to 20:cf:30:ce:0e:c7 (try 3/3)
>> [ 1556.092059] wlan0: direct probe to 20:cf:30:ce:0e:c7 timed out
>
> Not sure what you could do to debug this. As quite try you can swith to PIO
> rmmod b43legacy
> modprobe b43legacy pio=1
>

This make unavailable wifi at all. It only makes light on and off wifi 
led constantly.

> If that's not going to help, you could try to dump wireless traffic
> with another machine. It would be good idea to at least check, if your
> BCM4301 sends any packet at all.
>

How can i do this? Wireshark? I need some help to know how to do this 
if it's possible.

> Also, have you tried connecting to any other networks? Would be also
> nice to try.
>
>

Well, at this moment i can't do this, i need someone with another 
router to try connect. My router is an Asus RT-N16.

>> [ 1882.024387] b43legacy-phy0 warning: Unexpected value for chanstat (0xC00)
>
> The channel info reported by firmware isn't valid.
> 1) PHY type is not set:
> #define B43legacy_RX_CHAN_PHYTYPE	0x0003 /* PHY type */
> 2) Channel is not set:
> #define B43legacy_RX_CHAN_ID		0x03FC /* Channel ID */
>
> This shouldn't be critical, as it seems only single packet was
> corrupted. However it may point some general problem with hardware
> calibration, or sth.
>

Ok, so this is not important.
