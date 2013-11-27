From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 27 Nov 2013 14:32:46 -0600
Subject: Bug in the b43 driver (BCM4311 on Ubuntu 3.11.0-13-generic)?
In-Reply-To: <1719878.PqRfnC143k@christoph>
References: <1719878.PqRfnC143k@christoph>
Message-ID: <529656EE.9080105@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 11/27/2013 09:21 AM, Christoph R??ler wrote:
> Hello,
>
> I have a Broadcom BCM4311 wifi card and I'm using the b43 kernel driver with it
> (Ubuntu 3.11.0-13-generic). Unfortunately my system seems to have problems
> loading the driver correctly at boot time. In most cases it does not properly
> load the driver on boot making it necessary to use the radio killswitch to
> manually stop and restart the wifi which then works perfectly and without any
> further disruptions.
>
> The bug is not reproducible in a way that that I am not able to predict if it
> will happen after the next boot. I am also not able to reproduce it once I
> have successfully enabled the wifi after a failed boot. Since I only started
> using the b43 driver with the kernel I'm still using I do not know if it would
> have worked with previous kernels which were using the Broadcom driver.
>
> The only hint I have so far found in debugging is a small difference in the
> dmesg output between working and non-working boot sequences. When the wifi
> fails to start dmesg contains the following lines:
>> [   16.169637] b43-phy0: Broadcom 4311 WLAN found (core revision 13)
> [?]
>> [   16.217018] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision 9
> [?]
>> [   16.246721] Broadcom 43xx driver loaded [ Features: PNL ]
>
> Using the radio killswitch under these circumstances yields the following
> output:
>> [  496.421727] pci 0000:30:00.0: [14e4:4312] type 00 class 0x028000
>> [  496.421782] pci 0000:30:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
>> [  496.421930] pci 0000:30:00.0: supports D1 D2
>> [  496.422004] pci 0000:30:00.0: System wakeup disabled by ACPI
>> [  496.428993] pci 0000:30:00.0: BAR 0: assigned [mem 0xc8000000-0xc8003fff
> 64bit]
>> [  496.577397] b43-pci-bridge 0000:30:00.0: enabling device (0000 -> 0002)
>> [  496.596096] ssb: Found chip with id 0x4311, rev 0x02 and package 0x00
>> [  496.596111] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor
> 0x4243)
>> [  496.596123] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor
> 0x4243)
>> [  496.596136] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor
> 0x4243)
>> [  496.596148] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x05, vendor 0x4243)
>> [  496.660259] b43-phy1: Broadcom 4311 WLAN found (core revision 13)
>> [  496.704083] b43-phy1: Found PHY: Analog 4, Type 2 (G), Revision 9
>> [  496.728352] ssb: Sonics Silicon Backplane found on PCI device
> 0000:30:00.0
>> [  496.729194] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
>> [  496.972075] b43-phy1: Loading firmware version 666.2 (2011-02-23 01:15:07)
>
> When everything is working as expected I can find the following in the dmesg
> output:
>> [   16.115666] b43-phy0: Broadcom 4311 WLAN found (core revision 13)
> [?]
>> [   16.160089] b43-phy0: Found PHY: Analog 4, Type 2 (G), Revision 9
> [?]
>> [   16.184214] Broadcom 43xx driver loaded [ Features: PNL ]
> [?]
>> [   24.738141] pci 0000:30:00.0: [14e4:4312] type 00 class 0x028000
>> [   24.738203] pci 0000:30:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
>> [   24.738350] pci 0000:30:00.0: supports D1 D2
>> [   24.738425] pci 0000:30:00.0: System wakeup disabled by ACPI
>> [   24.755897] pci 0000:30:00.0: BAR 0: assigned [mem 0xc8000000-0xc8003fff
> 64bit]
>> [   24.809549] b43-pci-bridge 0000:30:00.0: enabling device (0000 -> 0002)
>> [   24.896511] ssb: Found chip with id 0x4311, rev 0x02 and package 0x00
>> [   24.896538] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x13, vendor
> 0x4243)
>> [   24.896551] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0D, vendor
> 0x4243)
>> [   24.896563] ssb: Core 2 found: USB 1.1 Host (cc 0x817, rev 0x04, vendor
> 0x4243)
>> [   24.896574] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x05, vendor 0x4243)
>> [   24.960281] b43-phy1: Broadcom 4311 WLAN found (core revision 13)
>> [   25.004095] b43-phy1: Found PHY: Analog 4, Type 2 (G), Revision 9
>> [   25.028328] ssb: Sonics Silicon Backplane found on PCI device
> 0000:30:00.0
>> [   25.029050] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
>> [   25.236092] b43-phy1: Loading firmware version 666.2 (2011-02-23 01:15:07)
>
> Am I right in suspecting that this may be a bug in the driver? What can I do
> in order to help debugging? And if it's not a bug in the driver what could be
> the reason for this behaviour?

I do not see this problem with b43 on my BCM4311. What is probably different is 
that I use openSUSE (12.2, 12.3, and 13.1) with NetworkManager. I suspect that 
you are getting a timing error between the initial attempt to bring the 
interface up, and the availability of the user-space code needed to load the 
firmware.

Larry
