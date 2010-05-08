From: Oncaphillis <oncaphillis@snafu.de>
Date: Sun, 09 May 2010 00:32:40 +0200
Subject: State of the SPROM-less driver
In-Reply-To: <4BE4386B.5010302@lwfinger.net>
References: <4BE3C677.2060307@snafu.de> <4BE4386B.5010302@lwfinger.net>
Message-ID: <4BE5E688.8090107@snafu.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 05/07/2010 05:57 PM, Larry Finger wrote:
> On 05/07/2010 02:51 AM, Oncaphillis wrote:
>> Hallo,
>>
>> Have the patches for the "SPROM-less" bcm43 devices made their way into
>> wireless-2.6.git ? And if so -- how do I set it up with the ssb-vsprom
>> program ?
> 
> No, those patches have not been incorporated as we are not convinced
> that there are any devices without SPROM in the field. With the possible
> exception of your system, all such boxes have been shown to have an
> SPROM. It is just at a different location.
> 
> Could you please try the two attached patches? Does your system work
> with them? They are meant to apply to the wireless-testing tree.
> 
> Larry

 That looks very promising. The module inserts fine. It gives
me a valid MAC and I get a rsync file transfer to a NFS mount with
something around 2MB/s. What seems a little bit strange is the fact
that iwconfig toggles between  1Mb/s and 36Mb/s when reporting the
link speed.

For a module with debug options dmesg tells me:

b43-pci-bridge 0000:01:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
b43-pci-bridge 0000:01:00.0: setting latency timer to 64
b43-phy0: Broadcom 4312 WLAN found (core revision 15)
b43-phy0 debug: Found PHY: Analog 6, Type 5, Revision 1
b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2062, Revision 2
Registered led device: b43-phy0::tx
Registered led device: b43-phy0::rx
Registered led device: b43-phy0::radio
b43 ssb0:0: firmware: requesting b43/ucode15.fw
b43 ssb0:0: firmware: requesting b43/lp0initvals15.fw
b43 ssb0:0: firmware: requesting b43/lp0bsinitvals15.fw
b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
b43-phy0 debug: Chip initialized
b43-phy0 debug: 64-bit DMA initialized
b43-phy0 debug: QoS enabled
b43-phy0 debug: Wireless interface started
b43-phy0 debug: Adding Interface type 2
b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac:
00:25:9c:d0:04:fb

nice work -- thank you
