From: Anisse Astier <anisse@astier.eu>
Date: Thu, 10 Feb 2011 18:16:42 +0100
Subject: LP PHY Dell device not working properly with b43 even in PIO mode
Message-ID: <20110210181642.760948f3@destiny.ordissimo>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

Running John Linville's wireless-next tree(HEAD:
6d1d4ea4a82f8c17a3ff7c2f677bc3d41ea7484b), I have troubles with a
Broadcom wireless card that can't properly connect. This device is also
managed by wl, that supports it more or less properly (at least without
crashing). AFAIK, the card isn't supported by brcm80211.

It can connect, and even get an IP, but after some time it will just stop
working until reboot. The AP uses WPA2-PSK/TKIP.


The device:
0e:00.0 Network controller [0280]: Broadcom Corporation BCM4312 802.11b/g LP-PHY [14e4:4315] (rev 01)
	Subsystem: Dell Wireless 1397 WLAN Mini-Card [1028:000c]

The log (I have similar problems if I load it directly in PIO mode) :
[   92.717848] cfg80211: Calling CRDA to update world regulatory domain
[   92.794368] b43-pci-bridge 0000:0e:00.0: PCI INT A -> GSI 18 (level, low) -> IRQ 18
[   92.794385] b43-pci-bridge 0000:0e:00.0: setting latency timer to 64
[   92.802294] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor 0x4243)
[   92.802312] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F, vendor 0x4243)
[   92.802329] ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor 0x4243)
[   92.802346] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor 0x4243)
[   92.827567] ssb: Sonics Silicon Backplane found on PCI device 0000:0e:00.0
[   92.864178] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[   92.879241] b43-phy0 debug: Found PHY: Analog 6, Type 5, Revision 1
[   92.879257] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2062, Revision 2
[   92.914280] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   92.914449] Registered led device: b43-phy0::tx
[   92.914466] Registered led device: b43-phy0::rx
[   92.914481] Registered led device: b43-phy0::radio
[   92.914494] Broadcom 43xx driver loaded [ Features: PL, Firmware-ID: FW13 ]
[   93.148262] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
[   93.151103] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[   94.535309] b43-phy0 debug: Chip initialized
[   94.535482] b43-phy0 debug: 64-bit DMA initialized
[   94.535581] b43-phy0 debug: QoS enabled
[   94.544613] b43-phy0 debug: Wireless interface started
[   94.548369] b43-phy0 debug: Adding Interface type 2
[   98.639420] b43-phy0 debug: Removing Interface type 2
[   98.642253] b43-phy0 debug: Wireless interface stopped
[   98.642969] b43-phy0 debug: DMA-64 rx_ring: Used slots 1/64, Failed frames 0/0 = 0.0%, Average tries 0.00
[   98.643017] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[   98.645042] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[   98.647042] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[   98.649042] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[   98.651041] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[   99.799265] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
[   99.802104] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  101.186309] b43-phy0 debug: Chip initialized
[  101.186467] b43-phy0 debug: 64-bit DMA initialized
[  101.186566] b43-phy0 debug: QoS enabled
[  101.195651] b43-phy0 debug: Wireless interface started
[  101.202186] b43-phy0 debug: Adding Interface type 2
[  103.622973] wlan0: authenticate with 68:7f:74:16:57:c9 (try 1)
[  103.624654] wlan0: authenticated
[  103.624666] wlan0: associate with 68:7f:74:16:57:c9 (try 1)
[  103.627181] wlan0: RX AssocResp from 68:7f:74:16:57:c9 (capab=0x411 status=0 aid=2)
[  103.627184] wlan0: associated
[  103.677583] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 68:7f:74:16:57:c9
[  148.586756] b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[  148.586788] b43-phy0 ERROR: This device does not support DMA on your system. It will now be switched to PIO.
[  148.586791] b43-phy0: Controller RESET (DMA error) ...
[  148.586794] b43-phy0 ERROR: Fatal DMA error: 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
[  148.586797] b43-phy0 ERROR: This device does not support DMA on your system. It will now be switched to PIO.
[  148.586800] b43-phy0: Controller RESET (DMA error) ...
[  148.586882] b43-phy0 debug: Wireless interface stopped
[  148.587137] b43-phy0 debug: DMA-64 rx_ring: Used slots 2/64, Failed frames 0/0 = 0.0%, Average tries 0.00
[  148.587179] b43-phy0 debug: DMA-64 tx_ring_AC_BK: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  148.589052] b43-phy0 debug: DMA-64 tx_ring_AC_BE: Used slots 24/256, Failed frames 0/246 = 0.0%, Average tries 1.06
[  148.591045] b43-phy0 debug: DMA-64 tx_ring_AC_VI: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  148.593050] b43-phy0 debug: DMA-64 tx_ring_AC_VO: Used slots 4/256, Failed frames 0/69 = 0.0%, Average tries 1.05
[  148.595043] b43-phy0 debug: DMA-64 tx_ring_mcast: Used slots 0/256, Failed frames 0/0 = 0.0%, Average tries 0.00
[  148.741245] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
[  148.744095] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  150.202291] b43-phy0 debug: Chip initialized
[  150.202395] b43-phy0 debug: PIO initialized
[  150.202499] b43-phy0 debug: QoS enabled
[  150.215702] b43-phy0 debug: Wireless interface started
[  150.215705] b43-phy0: Controller restarted
[  180.211047] ieee80211 phy0: wlan0: No probe response from AP 68:7f:74:16:57:c9 after 500ms, disconnecting.
[  180.291042] b43-phy0 ERROR: MAC suspend failed
[  180.371040] b43-phy0 ERROR: MAC suspend failed
[  180.453042] b43-phy0 ERROR: MAC suspend failed
[  180.533040] b43-phy0 ERROR: MAC suspend failed
[  180.613040] b43-phy0 ERROR: MAC suspend failed
[  180.694042] b43-phy0 ERROR: MAC suspend failed
[  180.694272] b43-phy0 debug: Disabling hardware based encryption for keyidx: 0, mac: 68:7f:74:16:57:c9
[  180.774042] b43-phy0 ERROR: MAC suspend failed
[  180.854042] b43-phy0 ERROR: MAC suspend failed
[  180.863322] cfg80211: Calling CRDA to update world regulatory domain
[  181.044024] b43-phy0 ERROR: MAC suspend failed
[  181.124024] b43-phy0 ERROR: MAC suspend failed
[  181.364307] b43-phy0 debug: Removing Interface type 2
[  181.444042] b43-phy0 ERROR: MAC suspend failed
[  181.444250] b43-phy0 debug: Wireless interface stopped
[  182.768267] b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)
[  182.771109] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  184.163310] b43-phy0 debug: Chip initialized
[  184.163412] b43-phy0 debug: PIO initialized
[  184.163513] b43-phy0 debug: QoS enabled
[  184.172751] b43-phy0 debug: Wireless interface started
[  184.176365] b43-phy0 debug: Adding Interface type 2
[  217.409345] wlan0: authenticate with 68:7f:74:16:57:c9 (try 1)
[  217.411182] wlan0: authenticated
[  217.411197] wlan0: associate with 68:7f:74:16:57:c9 (try 1)
[  217.413812] wlan0: RX AssocResp from 68:7f:74:16:57:c9 (capab=0x411 status=0 aid=2)
[  217.413815] wlan0: associated
[  221.213048] ieee80211 phy0: wlan0: No probe response from AP 68:7f:74:16:57:c9 after 500ms, disconnecting.
[  221.213914] cfg80211: Calling CRDA to update world regulatory domain
[  221.593041] net_ratelimit: 2 callbacks suppressed
[  221.593044] b43-phy0 ERROR: MAC suspend failed
[  221.742041] b43-phy0 ERROR: MAC suspend failed
[  222.096041] b43-phy0 ERROR: MAC suspend failed
[  222.898327] wlan0: authenticate with 68:7f:74:16:57:c9 (try 1)
[  223.098047] wlan0: authenticate with 68:7f:74:16:57:c9 (try 2)
[  223.298046] wlan0: authenticate with 68:7f:74:16:57:c9 (try 3)
[  223.498045] wlan0: authentication with 68:7f:74:16:57:c9 timed out
[  223.578040] b43-phy0 ERROR: MAC suspend failed
[  223.660082] b43-phy0 ERROR: MAC suspend failed
[  233.163041] b43-phy0 ERROR: MAC suspend failed
[  233.314041] b43-phy0 ERROR: MAC suspend failed
[  233.563041] b43-phy0 ERROR: MAC suspend failed
[  233.713042] b43-phy0 ERROR: MAC suspend failed
[  233.862042] b43-phy0 ERROR: MAC suspend failed
[  234.011041] b43-phy0 ERROR: MAC suspend failed
[  234.160040] b43-phy0 ERROR: MAC suspend failed
[  234.309041] b43-phy0 ERROR: MAC suspend failed
[  234.460042] b43-phy0 ERROR: MAC suspend failed
[  234.747041] b43-phy0 ERROR: MAC suspend failed
[  240.312042] net_ratelimit: 1 callbacks suppressed
[  240.312045] b43-phy0 ERROR: MAC suspend failed
[  240.461042] b43-phy0 ERROR: MAC suspend failed
[  240.711042] b43-phy0 ERROR: MAC suspend failed
[  240.860042] b43-phy0 ERROR: MAC suspend failed
[  241.009041] b43-phy0 ERROR: MAC suspend failed
[  241.158041] b43-phy0 ERROR: MAC suspend failed
[  241.308042] b43-phy0 ERROR: MAC suspend failed
[  241.459043] b43-phy0 ERROR: MAC suspend failed
[  241.608040] b43-phy0 ERROR: MAC suspend failed
[  241.757041] b43-phy0 ERROR: MAC suspend failed
[  247.554043] net_ratelimit: 2 callbacks suppressed
[  247.554046] b43-phy0 ERROR: MAC suspend failed
[  247.704041] b43-phy0 ERROR: MAC suspend failed
[  247.953042] b43-phy0 ERROR: MAC suspend failed
[  248.209041] b43-phy0 ERROR: MAC suspend failed
[  248.358044] b43-phy0 ERROR: MAC suspend failed
[  248.512020] b43-phy0 ERROR: MAC suspend failed
[  248.664013] b43-phy0 ERROR: MAC suspend failed
[  248.814041] b43-phy0 ERROR: MAC suspend failed
[  248.966041] b43-phy0 ERROR: MAC suspend failed
[  249.117041] b43-phy0 ERROR: MAC suspend failed
[  254.927031] b43-phy0 ERROR: MAC suspend failed
[  255.160014] b43-phy0 ERROR: MAC suspend failed
[  255.309013] b43-phy0 ERROR: MAC suspend failed
[  255.458013] b43-phy0 ERROR: MAC suspend failed
[  255.612024] b43-phy0 ERROR: MAC suspend failed
[  255.761041] b43-phy0 ERROR: MAC suspend failed
[  261.618043] b43-phy0 ERROR: MAC suspend failed
[  261.867042] b43-phy0 ERROR: MAC suspend failed
[  262.017041] b43-phy0 ERROR: MAC suspend failed
[  262.166041] b43-phy0 ERROR: MAC suspend failed
[  262.317041] b43-phy0 ERROR: MAC suspend failed
[  262.466041] b43-phy0 ERROR: MAC suspend failed
[  262.615029] b43-phy0 ERROR: MAC suspend failed
[  262.765041] b43-phy0 ERROR: MAC suspend failed
[  268.464043] b43-phy0 ERROR: MAC suspend failed
[  268.613078] b43-phy0 ERROR: MAC suspend failed
[  268.863042] b43-phy0 ERROR: MAC suspend failed
[  269.141042] b43-phy0 ERROR: MAC suspend failed
[  269.292041] b43-phy0 ERROR: MAC suspend failed
[  269.441042] b43-phy0 ERROR: MAC suspend failed
[  269.590044] b43-phy0 ERROR: MAC suspend failed
[  269.922041] b43-phy0 ERROR: MAC suspend failed
[  270.072041] b43-phy0 ERROR: MAC suspend failed
[  270.221042] b43-phy0 ERROR: MAC suspend failed
[  275.635042] net_ratelimit: 1 callbacks suppressed
[  275.635045] b43-phy0 ERROR: MAC suspend failed
[  275.785042] b43-phy0 ERROR: MAC suspend failed
[  276.034043] b43-phy0 ERROR: MAC suspend failed
[  276.183041] b43-phy0 ERROR: MAC suspend failed
[  276.332042] b43-phy0 ERROR: MAC suspend failed
[  276.481041] b43-phy0 ERROR: MAC suspend failed
[  276.630041] b43-phy0 ERROR: MAC suspend failed
[  276.779042] b43-phy0 ERROR: MAC suspend failed
[  276.928041] b43-phy0 ERROR: MAC suspend failed
[  282.691042] b43-phy0 ERROR: MAC suspend failed
[  282.841042] b43-phy0 ERROR: MAC suspend failed
[  283.091042] b43-phy0 ERROR: MAC suspend failed
[  283.241042] b43-phy0 ERROR: MAC suspend failed
[  283.390041] b43-phy0 ERROR: MAC suspend failed
[  283.539042] b43-phy0 ERROR: MAC suspend failed
[  283.688042] b43-phy0 ERROR: MAC suspend failed
[  283.837790] b43-phy0 ERROR: MAC suspend failed
[  283.987041] b43-phy0 ERROR: MAC suspend failed
[  284.136041] b43-phy0 ERROR: MAC suspend failed
[  287.174502] r8169 0000:08:00.0: eth0: link up
[  290.002046] net_ratelimit: 3 callbacks suppressed
[  290.002049] b43-phy0 ERROR: MAC suspend failed
[  290.493042] b43-phy0 ERROR: MAC suspend failed
[  290.642041] b43-phy0 ERROR: MAC suspend failed
[  290.791041] b43-phy0 ERROR: MAC suspend failed
[  290.940042] b43-phy0 ERROR: MAC suspend failed
[  291.090042] b43-phy0 ERROR: MAC suspend failed
[  291.242042] b43-phy0 ERROR: MAC suspend failed
[  291.475042] b43-phy0 ERROR: MAC suspend failed
[  291.624041] b43-phy0 ERROR: MAC suspend failed
[  297.041042] b43-phy0 ERROR: MAC suspend failed
[  297.190041] b43-phy0 ERROR: MAC suspend failed
[  297.440044] b43-phy0 ERROR: MAC suspend failed
[  297.703041] b43-phy0 ERROR: MAC suspend failed
[  297.854043] b43-phy0 ERROR: MAC suspend failed
[  298.003042] b43-phy0 ERROR: MAC suspend failed
[  298.152047] b43-phy0 ERROR: MAC suspend failed
[  298.301042] b43-phy0 ERROR: MAC suspend failed
[  298.452044] b43-phy0 ERROR: MAC suspend failed
[ ?] you get the idea

Regards,

Anisse
