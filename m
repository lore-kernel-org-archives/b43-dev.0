From: =?UTF-8?B?SmVzw7pzIFZpZGFsIFBhbmFsw6lz?= <jesusvpct@vodafone.es>
Date: Mon, 17 Oct 2011 16:54:22 +0200
Subject: Broadcom 4303 HP Pavilion zv5000
In-Reply-To: <4E9C3FD6.8070806@lwfinger.net>
References: <4E9BE7A2.4060703@vodafone.es> <4E9C3FD6.8070806@lwfinger.net>
Message-ID: <4E9C419E.3050508@vodafone.es>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

El lun 17 oct 2011 16:46:46 CEST, Larry Finger escribi?:
> On 10/17/2011 03:30 AM, Jes?s Vidal Panal?s wrote:
>> Hello, i have an older computer from my father (HP Pavilion zv5168ea) 
>> and i
>> decided to install a Xubuntu distro (tried 11.10, now 11.04) for my 
>> personal
>> use, but i can't get a wireless connection to my router (i'm using 
>> WPA-personal
>> encryption but tried with open and nothing). The driver is installed, 
>> i can see
>> wifi essid on NetworkManager but the connection is never carried out. 
>> I've
>> installed firmware-b43legacy-installer because it has the driver for 
>> this card
>> but nothing...
>
> Not driver - the driver is part of the kernel. That package installs 
> the firmware.
>
Sorry for my mistake.
>> This is the output of lspci -vnn (only wireless card part)
>>
>> 02:02.0 Network controller [0280]: Broadcom Corporation BCM4303 
>> 802.11b Wireless
>> LAN Controller [14e4:4301] (rev 02)
>> Subsystem: Hewlett-Packard Company Device [103c:12f3]
>> Flags: bus master, fast devsel, latency 64, IRQ 11
>> Memory at e0104000 (32-bit, non-prefetchable) [size=8K]
>> Kernel driver in use: b43-pci-bridge
>> Kernel modules: ssb
>
> I have snipped the rest of your posting - it looked normal.
>
> Check the settings on your AP to make sure it is not set for "G - 
> only". The BCM4303 is an 802.11b device (note above), thus you need 
> the "802.11 B/G" setting, whatever it is called for your AP.
>
> My BCM4303 works fine with WEP, WPA and WPA2 encryption.
>
Works fine on Windows XP partition.
> Larry
>
>
>
