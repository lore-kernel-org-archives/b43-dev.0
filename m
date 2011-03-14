From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 14 Mar 2011 09:23:15 +0100
Subject: Strange problem with b43
In-Reply-To: <29643925.1300088475878.JavaMail.root@elwamui-lapwing.atl.sa.earthlink.net>
References: <29643925.1300088475878.JavaMail.root@elwamui-lapwing.atl.sa.earthlink.net>
Message-ID: <AANLkTi=_hs0cBT5Yzv8BSLF4zx7Nf_fNzg1O+4hOj9OE@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/14  <ikorot@earthlink.net>:
> IgorsGentooOnNetwork igor # dmesg | grep b43
> [ ? ?0.164260] b43-pci-bridge 0000:0b:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
> [ ? ?0.164280] b43-pci-bridge 0000:0b:00.0: setting latency timer to 64
> [ ? ?4.048785] b43-phy0: Broadcom 4311 WLAN found (core revision 10)
> [ ? ?4.065927] b43-phy0 debug: Found PHY: Analog 4, Type 2, Revision 8
> [ ? ?4.065955] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 2
> [ ? 98.027122] b43 ssb0:0: firmware: requesting b43/ucode5.fw
> [ ? 98.090329] b43 ssb0:0: firmware: requesting b43/pcm5.fw
> [ ? 98.100037] b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
> [ ? 98.122736] b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
> [ ? 98.239075] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
> [ ? 98.280131] b43-phy0 debug: Chip initialized
> [ ? 98.280340] b43-phy0 debug: 32-bit DMA initialized
> [ ? 98.289255] b43-phy0 debug: Wireless interface started
> [ ? 98.292566] b43-phy0 debug: Adding Interface type 2
> [ ? 98.295050] b43-phy0: Radio turned on by software
> [ ? 99.560554] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 00:22:3f:7d:63:6a
> [ ? 99.560615] b43-phy0 debug: Using hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
> [ ?812.496128] b43-phy0 debug: Using hardware based encryption for keyidx: 2, mac: ff:ff:ff:ff:ff:ff
> [ 1430.108269] b43-phy0 debug: Disabling hardware based encryption for keyidx: 0, mac: 00:22:3f:7d:63:6a
> [ 1430.110089] b43-phy0 debug: Disabling hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
> [ 1430.110109] b43-phy0 debug: Disabling hardware based encryption for keyidx: 2, mac: ff:ff:ff:ff:ff:ff
> [ 1432.117592] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 00:22:3f:7d:63:6a
> [ 1432.117654] b43-phy0 debug: Using hardware based encryption for keyidx: 2, mac: ff:ff:ff:ff:ff:ff
>
> Now to the problem.
> I boot my laptop, then execute following commands:
> IgorsGentooOnNetwork igor # cat ./setup_wireless
> ifconfig wlan0 up
> wpa_supplicant -c/etc/wpa_supplicant/wpa_supplicant.conf -iwlan0 -B
> dhcpcd wlan0 -d
>
> I am getting an IP without any problems. I can browse web without any problems.
> However if I leave the laptop for some time and then come back and refresh the page on the browser
> I see that I'm not connected to my AP. Instead it connects to the AP that is located in the office
> and it asks for the AP credentials.
> The laptop is running an "ivman" - daemon to do memory swap.

There are not any b43 errors in dmesg and considering your scenario I
don't think driver has anything to do with this.

I don't understand your part: "it asks for the AP credentials". What
do you mean by "it"? AFAIK wpa_supplicant does not have interactive
mode.

The situation sounds pretty simple. Your connection was broken (that
happens in WiFI, with every card/driver) and SOMETHING tries to
connect to another AP you configured...

-- 
Rafa?
