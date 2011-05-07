From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 7 May 2011 11:41:21 +0200
Subject: Interesting 14e4:4321
In-Reply-To: <274308290.20110507111432@googlemail.com>
References: <BANLkTim0usjWr8DqJQk+GQiBHmfgTjey7g@mail.gmail.com>
	<4DC469E1.2040101@hauke-m.de>
	<BANLkTin8yzo3T=q1oFFz19eqkOLJT8kdJA@mail.gmail.com>
	<479014597.20110507002540@googlemail.com>
	<BANLkTi=n6gjDxGX0buUamNQAydPCMqEpjg@mail.gmail.com>
	<274308290.20110507111432@googlemail.com>
Message-ID: <BANLkTikfgZ8Kn-DVtN3umFv9FFEaTspPiw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Swen, really, include ML in your "to". It's second time.


---------- Wiadomo?? przekazana dalej ----------
Od: Swen Weiland <swen.weiland@googlemail.com>
Data: 7 maja 2011 11:14
Temat: Re: Fwd: Interesting 14e4:4321
Do: Rafa? Mi?ecki <zajec5@gmail.com>
DW: Hauke Mehrtens <hauke@hauke-m.de>



Today I did some more detailed testing an I have to clarify what works
and what not.

The device does not work with DMA (currently), PIO mode is required.
With PIO mode:
"iwlist wlan0 scan" works and networks are reported.
Signal strength in the report does not work.
It is always:
?Quality=70/70 ?Signal level=0 dBm


Associate with with AP seems to work but no data transfer

b43-phy1: Broadcom 4321 WLAN found (core revision 12)
b43-phy1 debug: Found PHY: Analog 5, Type 4, Revision 2
b43-phy1 debug: Found Radio: Manuf 0x17F, Version 0x2055, Revision 4
ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
Registered led device: b43-phy1::tx
Registered led device: b43-phy1::rx
Broadcom 43xx driver loaded [ Features: PNL, GPIO LED Mask: 0x000f,
Firmware-ID: FW13 ]
b43-phy1: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy1 debug: Chip initialized
b43-phy1 debug: PIO initialized
b43-phy1 debug: QoS enabled
b43-phy1 debug: Wireless interface started
b43-phy1 debug: Adding Interface type 2
wlan0: authenticate with 68:7f:74:06:b8:e8 (try 1)
wlan0: authenticated
wlan0: associate with 68:7f:74:06:b8:e8 (try 1)
wlan0: RX AssocResp from 68:7f:74:06:b8:e8 (capab=0x401 status=0 aid=1)
wlan0: associated
ieee80211 phy1: wlan0: No probe response from AP 68:7f:74:06:b8:e8
after 500ms, disconnecting.


Managed mode can be set and the AP is visible.
Connecting to it is not possible and the device stops working with:

b43-phy1: Loading firmware version 410.2160 (2007-05-26 15:32:10)
b43-phy1 debug: Chip initialized
b43-phy1 debug: PIO initialized
b43-phy1 debug: QoS enabled
b43-phy1 debug: Wireless interface started
device wlan0 entered promiscuous mode
b43-phy1 debug: Adding Interface type 3
br-lan: port 2(wlan0) entering forwarding state
br-lan: port 2(wlan0) entering forwarding state
b43-phy1 debug: Set beacon interval to 100
b43-phy1 debug: Updated beacon template at 0x68
b43-phy1 debug: Updated beacon template at 0x468
device wlan0 left promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
device wlan0 entered promiscuous mode
br-lan: port 2(wlan0) entering forwarding state
br-lan: port 2(wlan0) entering forwarding state
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08
NOHZ: local_softirq_pending 08


--
Mit freundlichen Gr??en
Swen Weiland
