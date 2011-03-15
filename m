From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 16 Mar 2011 00:06:34 +0100
Subject: Strange problem with b43
In-Reply-To: <21345713.1300219933544.JavaMail.root@mswamui-swiss.atl.sa.earthlink.net>
References: <21345713.1300219933544.JavaMail.root@mswamui-swiss.atl.sa.earthlink.net>
Message-ID: <AANLkTinhP9J7Y1FffvDiKL8pk12qLQ=g+ThOYq+4UBu-@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 15 marca 2011 21:12 u?ytkownik  <ikorot@earthlink.net> napisa?:
> -----Original Message-----
>>From: Rafa? Mi?ecki <zajec5@gmail.com>
>>Sent: Mar 14, 2011 1:23 AM
>>To: ikorot at earthlink.net
>>Cc: b43-dev at lists.infradead.org
>>Subject: Re: Strange problem with b43
>>
>>2011/3/14 ?<ikorot@earthlink.net>:
>>> IgorsGentooOnNetwork igor # dmesg | grep b43
>>> [ ? ?0.164260] b43-pci-bridge 0000:0b:00.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
>>> [ ? ?0.164280] b43-pci-bridge 0000:0b:00.0: setting latency timer to 64
>>> [ ? ?4.048785] b43-phy0: Broadcom 4311 WLAN found (core revision 10)
>>> [ ? ?4.065927] b43-phy0 debug: Found PHY: Analog 4, Type 2, Revision 8
>>> [ ? ?4.065955] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 2
>>> [ ? 98.027122] b43 ssb0:0: firmware: requesting b43/ucode5.fw
>>> [ ? 98.090329] b43 ssb0:0: firmware: requesting b43/pcm5.fw
>>> [ ? 98.100037] b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
>>> [ ? 98.122736] b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
>>> [ ? 98.239075] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
>>> [ ? 98.280131] b43-phy0 debug: Chip initialized
>>> [ ? 98.280340] b43-phy0 debug: 32-bit DMA initialized
>>> [ ? 98.289255] b43-phy0 debug: Wireless interface started
>>> [ ? 98.292566] b43-phy0 debug: Adding Interface type 2
>>> [ ? 98.295050] b43-phy0: Radio turned on by software
>>> [ ? 99.560554] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 00:22:3f:7d:63:6a
>>> [ ? 99.560615] b43-phy0 debug: Using hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
>>> [ ?812.496128] b43-phy0 debug: Using hardware based encryption for keyidx: 2, mac: ff:ff:ff:ff:ff:ff
>>> [ 1430.108269] b43-phy0 debug: Disabling hardware based encryption for keyidx: 0, mac: 00:22:3f:7d:63:6a
>>> [ 1430.110089] b43-phy0 debug: Disabling hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
>>> [ 1430.110109] b43-phy0 debug: Disabling hardware based encryption for keyidx: 2, mac: ff:ff:ff:ff:ff:ff
>>> [ 1432.117592] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 00:22:3f:7d:63:6a
>>> [ 1432.117654] b43-phy0 debug: Using hardware based encryption for keyidx: 2, mac: ff:ff:ff:ff:ff:ff
>>>
>>> Now to the problem.
>>> I boot my laptop, then execute following commands:
>>> IgorsGentooOnNetwork igor # cat ./setup_wireless
>>> ifconfig wlan0 up
>>> wpa_supplicant -c/etc/wpa_supplicant/wpa_supplicant.conf -iwlan0 -B
>>> dhcpcd wlan0 -d
>>>
>>> I am getting an IP without any problems. I can browse web without any problems.
>>> However if I leave the laptop for some time and then come back and refresh the page on the browser
>>> I see that I'm not connected to my AP. Instead it connects to the AP that is located in the office
>>> and it asks for the AP credentials.
>>> The laptop is running an "ivman" - daemon to do memory swap.
>>
>>There are not any b43 errors in dmesg and considering your scenario I
>>don't think driver has anything to do with this.
>
> The dmesg part was included in the E-mail to show what kind of card I have.
>
>>
>>I don't understand your part: "it asks for the AP credentials". What
>>do you mean by "it"? AFAIK wpa_supplicant does not have interactive
>>mode.
>
> What it means is that the computer looses connection to my AP and connects to
> another one which is further away. However since that network is also
> secured in order to get AP I need to supply the credentials to get connection.
> Now it would've been all good, however soft reboot does not reconnect me
> to my AP. What I mean is this:
>
> 1. Kill dhcp.
> 2. Kill wpa_supplicant.
> 3. Reconnect.
>
> After those steps I still looking for connection to the AP next door.
> I need to reboot my laptop to get a connection.
>
>>
>>The situation sounds pretty simple. Your connection was broken (that
>>happens in WiFI, with every card/driver) and SOMETHING tries to
>>connect to another AP you configured...
>
> Well I have only one card in laptop and I ran wpa_supplicant and dhcpcd only once.
> So I don't know what tries to connect to the AP that is further away.
>
> Any idea?

I don't know but I believe, this is your real problem. You have to
find out what deamon manages your connections without you begin aware
of that.

I already asked you important question but your answer was something
totally else than what I expected. I asked *WHAT* is asking you for
"AP credentials" and you responded with "computer looses connection to
my AP and connects to another one". Well, just check what application
is asking you for "AP credentials" and kill it.

-- 
Rafa?
