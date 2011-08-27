From: Octavian Voicu <octavian.voicu@gmail.com>
Date: Sat, 27 Aug 2011 17:57:13 +0300
Subject: BCM4321 support
In-Reply-To: <CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
	<CACna6ry4TOJXquSC29pWH81Y9Fe=FPnnSTGGy2vWNd7nDy-RLg@mail.gmail.com>
Message-ID: <CAM0=5GvmNd7GPEhuQpHNBZK6FBarAn279tB7LbbJRDy=e4FKAQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/8/24 Rafa? Mi?ecki <zajec5@gmail.com>:
> 2011/8/24 Octavian Voicu <octavian.voicu@gmail.com>:
>> I just replaced my WLAN card on my Dell laptop. The old one, a BCM4311
>> that came with the laptop, stopped working at some point -- I was
>> getting?FOUND UNSUPPORTED PHY?(Analog 0, Type 0, Revision 0).
>
> It seems the card or the slot died. As new card works in the slot, I
> believe it's card that died.

Something strange is happening.

Initially when I first tried the new BCM4321 PCIe card, it would show
no MAC address. I would have to set a MAC manually using `ifconfig hw
ether ...`, and only after that I could bring the interface up. It
still didn't see any networks.

The lspci -vnn would show it like this:
0c:00.0 Network controller [0280]: Broadcom Corporation BCM4306
802.11a Wireless LAN Controller [14e4:4321] (rev 03)
        Subsystem: Broadcom Corporation BCM4306 802.11a Wireless LAN
Controller [14e4:4321]
        Flags: bus master, fast devsel, latency 0, IRQ 17
        Memory at f9ffc000 (64-bit, non-prefetchable) [size=16K]
        Memory at <ignored> (64-bit, prefetchable)
        Capabilities: [40] Power Management version 2
        Capabilities: [58] Vendor Specific Information: Len=78 <?>
        Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
        Capabilities: [d0] Express Endpoint, MSI 00
        Capabilities: [100] Advanced Error Reporting
        Capabilities: [13c] Virtual Channel
        Capabilities: [160] Device Serial Number 00-00-00-ff-ff-00-00-00
        Capabilities: [16c] Power Budgeting <?>
        Kernel driver in use: b43-pci-bridge
        Kernel modules: ssb

Then I upgraded the drivers and it magically started to work, or so I
thought. It would see its MAC address and, at the same time, lspci
-vnn showed it correctly, like this:
0c:00.0 Network controller [0280]: Broadcom Corporation BCM4321
802.11a/b/g/n [14e4:4328] (rev 03)
        Subsystem: Hewlett-Packard Company BCM4321 802.11a/b/g/n
Wireless LAN Controller [103c:1367]
        Flags: bus master, fast devsel, latency 0, IRQ 17
        Memory at f9ffc000 (64-bit, non-prefetchable) [size=16K]
        Memory at f0000000 (64-bit, prefetchable) [size=1M]

After working for a day or so and forgetting about it, I check it
again and I see it's not working anymore. It reverted to the old 4321
device id shown by lspci, and no MAC. Note that the initial lspci
output I've given is generated now, as I didn't have any dump from
then. I'm positive about the device id, not so much about the rest,
but I'm assuming it was as it is now.

I'm starting to think the driver upgrades weren't responsible for
"fixing" the card. It looks similar with the pattern I had with the
old card: didn't work, then one day magically started to work, next
reboot stopped working again for good.

Currently, inserting b43 with verbose=3, setting the MAC, and bringing
up the interface gives this in dmesg:

[  130.112440] b43-phy0: Broadcom 4321 WLAN found (core revision 12)
[  130.210099] b43-phy0 debug: Found PHY: Analog 5, Type 4, Revision 2
[  130.210135] b43-phy0 debug: Found Radio: Manuf 0x17F, Version
0x2055, Revision 4
[  130.298741] Broadcom 43xx driver loaded [ Features: PMNLS,
Firmware-ID: FW13 ]
[  185.230221] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
[  185.253435] b43-phy0 ERROR: radio post init timeout
[  185.370162] b43-phy0 debug: Chip initialized
[  185.370408] b43-phy0 debug: 64-bit DMA initialized
[  185.370487] b43-phy0 debug: QoS enabled
[  185.411224] b43-phy0 debug: Wireless interface started
[  185.411264] b43-phy0 debug: Adding Interface type 2

Notice the line "ERROR: radio post init timeout". Don't remember
seeing this error before (but didn't use verbose either). Also, notice
how lspci shows that the second chunk of memory is ignored:
    Memory at <ignored> (64-bit, prefetchable)
while when it was working it would show this:
    Memory at f0000000 (64-bit, prefetchable) [size=1M]

I also tried switching the PCIe mini-card slot (I have 3 of them;
tried them all with no change).

Questions:

1) Is this a hardware problem (with the slot and/or the wlan card itself)?

Don't have other wlan PCIe mini-cards to test. How can I diagnose the problem?

Can all the mini-card slots be busted? (never used the other two, they
are for WPAN and WWAN)

Should it matter that I'm using a different WLAN card than the
original one? The laptop also has a "Wi-Fi Catcher" feature,
integrated with the rfkill button (there is a 3rd state of the button
that blinks a LED if there are wifi networks around), which stopped
working at some point (probably when my original card got busted). It
never worked with the new card.

2) Could it be software related?

How can the system consistently misread the PCI device id?

What's the deal with the second memory chunk? Is it where the MAC is
stored, and why is the driver ignoring it now?


I realize there's a lot of data here, and even more questions, so any
help is appreciated :)

Thanks,
Octavian
