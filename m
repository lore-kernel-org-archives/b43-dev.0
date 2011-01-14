From: dylan cristiani <d.cristiani@idem-tech.it>
Date: Fri, 14 Jan 2011 18:21:13 +0100
Subject: Trouble using bcm4318 compact flash with b43 driver
Message-ID: <20110114182113.0000753f@unknown>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi folks, i'm using a compact flash module, based on broadcom bcm4318
chipset, together with b43 driver from kernel mainline, and i get 'some'
troubles trying to associate with APs; here follows 'uname' and
'dmesg' logs:

>uname -a  
Linux nylux 2.6.36 #167 Thu Jan 06 00:37:29 CET 2011 armv5tel GNU/Linux

>dmesg  
 ......
 bus: 'ssb': registered
 bus: 'pcmcia': add driver b43-pcmcia
 bus: 'pcmcia': driver_probe_device: matched device 0.0 with driver
 b43-pcmcia bus: 'pcmcia': really_probe: probing driver b43-pcmcia with
 device 0.0
 ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x0D, vendor 0x4243)
 ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x09, vendor 0x4243)
 ssb: Core 2 found: PCI (cc 0x804, rev 0x0C, vendor 0x4243)
 ssb: Core 3 found: PCMCIA (cc 0x80D, rev 0x07, vendor 0x4243)
 ssb: chipcommon status is 0x0
 device: 'ssb0:0': device_add
 bus: 'ssb': add device ssb0:0
 ssb: Sonics Silicon Backplane found on PCMCIA device pcmcia0.0
 driver: '0.0': driver_bound: bound to device 'b43-pcmcia'
 bus: 'pcmcia': really_probe: bound device 0.0 to driver b43-pcmcia
 bus: 'ssb': add driver b43
 bus: 'ssb': driver_probe_device: matched device ssb0:0 with driver b43
 bus: 'ssb': really_probe: probing driver b43 with device ssb0:0
 b43-phy0: Broadcom 4318 WLAN found (core revision 9)
 b43-phy0 debug: Found PHY: Analog 3, Type 2, Revision 7
 b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2050, Revision 8
 device: 'phy0': device_add
 ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
 device: 'wlan0': device_add
 driver: 'ssb0:0': driver_bound: bound to device 'b43'
 bus: 'ssb': really_probe: bound device ssb0:0 to driver b43
 Broadcom 43xx driver loaded [ Features: M, Firmware-ID: FW13 ]
 rev= 9
 b43 ssb0:0: firmware: requesting b43/ucode5.fw
 device: 'ssb0:0': device_add
 device: 'ssb0:0': device_unregister
 b43 ssb0:0: firmware: requesting b43/pcm5.fw
 device: 'ssb0:0': device_add
 device: 'ssb0:0': device_unregister
 b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
 device: 'ssb0:0': device_add
 device: 'ssb0:0': device_unregister
 b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw
 device: 'ssb0:0': device_add
 device: 'ssb0:0': device_unregister
 b43-phy0: Loading firmware version 4
 b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
 b43-phy0 debug: Chip initialized
 b43-phy0 debug: PIO initialized
 b43-phy0 debug: QoS enabled
 device: 'hw_random': device_add
 b43-phy0 debug: Wireless interface started
 b43-phy0 debug: Adding Interface type 2
 ieee80211 phy0: device no longer idle - scanning
 ieee80211 phy0: device now idle
 b43-phy0 debug: Removing Interface type 2
 b43-phy0 debug: Wireless interface stopped
 device: 'hw_random': device_unregister
 device: 'hw_random': device_create_release
 b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
 b43-phy0 debug: Chip initialized
 b43-phy0 debug: PIO initialized
 b43-phy0 debug: QoS enabled
 device: 'hw_random': device_add
 b43-phy0 debug: Wireless interface started
 b43-phy0 debug: Adding Interface type 2
 ieee80211 phy0: device no longer idle - scanning
 ieee80211 phy0: device now idle
 ieee80211 phy0: device no longer idle - working
 wlan0: authenticate with 00:15:70:e2:3c:a1 (try 1)
 wlan0: authenticated
 ieee80211 phy0: device now idle
 ieee80211 phy0: device no longer idle - working
 wlan0: associate with 00:15:70:e2:3c:a1 (try 1)
 wlan0: RX AssocResp from 00:15:70:e2:3c:a1 (capab=0x411 status=0 aid=3)
 wlan0: associated
 ieee80211 phy0: Allocated STA 00:15:70:e2:3c:a1
 ieee80211 phy0: Inserted STA 00:15:70:e2:3c:a1
 cfg80211: Calling CRDA for country: IT
 b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac:
 00:15:70:e2:3c:a1 b43-phy0 debug: Using hardware based encryption for
 keyidx: 1, mac: ff:ff:ff:ff:ff:ff
 wlan0: detected beacon loss from AP - sending probe request
 ieee80211 phy0: wlan0: No probe response from AP 00:15:70:e2:3c:a1
 after 500ms, try 1 ieee80211 phy0: wlan0: No probe response from AP
 00:15:70:e2:3c:a1 after 500ms, try 2
 ieee80211 phy0: wlan0: No probe response from AP 00:15:70:e2:3c:a1
 after 500ms, try 3 ieee80211 phy0: wlan0: No probe response from AP
 00:15:70:e2:3c:a1 after 500ms, try 4
 ieee80211 phy0: wlan0: No probe response from AP 00:15:70:e2:3c:a1
 after 500ms, disconnecting. b43-phy0 debug: Disabling hardware based
 encryption for keyidx: 0, mac: 00:15:70:e2:3c:a1
 ieee80211 phy0: Removed STA 00:15:70:e2:3c:a1
 ieee80211 phy0: Destroyed STA 00:15:70:e2:3c:a1
 ieee80211 phy0: device now idle
 b43-phy0 debug: Disabling hardware based encryption for keyidx: 1,
 mac: ff:ff:ff:ff:ff:ff cfg80211: All devices are disconnected, going
 to restore regulatory settings
 cfg80211: Restoring regulatory settings
 cfg80211: Calling CRDA to update world regulatory domain
 ieee80211 phy0: device no longer idle - scanning
 ieee80211 phy0: device now idle

Note that same stuff happens also with kernel 2.6.37, and same with old
firmware version 410.2160 (2007-05-26 15:32:10) cutted from
http://mirror2.openwrt.org/sources/broadcom-wl-4.150.10.5.tar.bz2

while other firmware (version 478.104 (2008-07-01 00:50:23)) was from
http://downloads.openwrt.org/sources/broadcom-wl-4.178.10.4.tar.bz2

Any help will be very very very appreciated

tks

dylan
