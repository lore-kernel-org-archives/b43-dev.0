From: crquan <crquan@gmail.com>
Date: Mon, 24 Feb 2014 00:29:49 -0800
Subject: b43 slow performance of high packet loss, linux-3.13 running on
 macbook10,1, is there anyway to reduce packet loss / improve performance ?
In-Reply-To: <CAH5vBdKfpEgeK0Kv_abnzWDUm+qca7V_atcqgV0tgMy4DyzPDw@mail.gmail.com>
References: <CAH5vBdKfpEgeK0Kv_abnzWDUm+qca7V_atcqgV0tgMy4DyzPDw@mail.gmail.com>
Message-ID: <CAH5vBdL0JL4-mUf37bY0FEaZXbBw5-4uL8-KW9XeDKwMKK2_PQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

And dmesg seems showing these periodically, what is "ieee80211 phy0:
wlan0: No probe response from AP cc:7d:37:7d:0c:c0 after 500ms,
disconnecting." ?

[85674.621003] cfg80211: Calling CRDA to update world regulatory domain
[85674.623556] cfg80211: World regulatory domain updated:
[85674.623559] cfg80211:   (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[85674.623560] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85674.623561] cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85674.623562] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[85674.623563] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85674.623564] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85675.851460] wlan0: authenticate with cc:7d:37:7d:0c:c0
[85675.862440] wlan0: send auth to cc:7d:37:7d:0c:c0 (try 1/3)
[85676.063216] wlan0: send auth to cc:7d:37:7d:0c:c0 (try 2/3)
[85676.264397] wlan0: send auth to cc:7d:37:7d:0c:c0 (try 3/3)
[85676.465583] wlan0: authentication with cc:7d:37:7d:0c:c0 timed out
[85683.867475] wlan0: authenticate with cc:7d:37:7d:0c:c0
[85683.877233] wlan0: send auth to cc:7d:37:7d:0c:c0 (try 1/3)
[85683.895368] wlan0: authenticated
[85683.895889] wlan0: associate with cc:7d:37:7d:0c:c0 (try 1/3)
[85684.097104] wlan0: associate with cc:7d:37:7d:0c:c0 (try 2/3)
[85684.298243] wlan0: associate with cc:7d:37:7d:0c:c0 (try 3/3)
[85684.316113] wlan0: RX AssocResp from cc:7d:37:7d:0c:c0 (capab=0x411
status=0 aid=3)
[85684.316649] wlan0: associated
[85688.623973] ieee80211 phy0: wlan0: No probe response from AP
cc:7d:37:7d:0c:c0 after 500ms, disconnecting.
[85688.637009] cfg80211: Calling CRDA to update world regulatory domain
[85688.640527] cfg80211: World regulatory domain updated:
[85688.640532] cfg80211:   (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[85688.640535] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85688.640538] cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85688.640541] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[85688.640543] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85688.640545] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85689.874580] wlan0: authenticate with cc:7d:37:7d:0c:c0
[85689.884334] wlan0: send auth to cc:7d:37:7d:0c:c0 (try 1/3)
[85689.888755] wlan0: authenticated
[85689.888997] wlan0: associate with cc:7d:37:7d:0c:c0 (try 1/3)
[85689.893526] wlan0: RX AssocResp from cc:7d:37:7d:0c:c0 (capab=0x411
status=0 aid=3)
[85689.893912] wlan0: associated
[85713.644275] ieee80211 phy0: wlan0: No probe response from AP
cc:7d:37:7d:0c:c0 after 500ms, disconnecting.
[85713.660403] cfg80211: Calling CRDA to update world regulatory domain
[85713.664859] cfg80211: World regulatory domain updated:
[85713.664865] cfg80211:   (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[85713.664868] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85713.664871] cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85713.664873] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz),
(300 mBi, 2000 mBm)
[85713.664876] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85713.664878] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz),
(300 mBi, 2000 mBm)
[85714.890708] wlan0: authenticate with cc:7d:37:7d:0c:c0
[85714.900677] wlan0: send auth to cc:7d:37:7d:0c:c0 (try 1/3)
[85714.906785] wlan0: authenticated
[85714.907340] wlan0: associate with cc:7d:37:7d:0c:c0 (try 1/3)
[85715.108556] wlan0: associate with cc:7d:37:7d:0c:c0 (try 2/3)
[85715.309698] wlan0: associate with cc:7d:37:7d:0c:c0 (try 3/3)
[85715.510842] wlan0: association with cc:7d:37:7d:0c:c0 timed out
[85722.900819] wlan0: authenticate with cc:7d:37:7d:0c:c0
[85722.911566] wlan0: send auth to cc:7d:37:7d:0c:c0 (try 1/3)
[85722.926684] wlan0: authenticated
[85722.927219] wlan0: associate with cc:7d:37:7d:0c:c0 (try 1/3)
[85722.947415] wlan0: RX AssocResp from cc:7d:37:7d:0c:c0 (capab=0x411
status=0 aid=3)
[85722.947999] wlan0: associated
mint ~ #


On 2/24/14, crquan <crquan@gmail.com> wrote:
> hi, all
>
> I'm running Linux mint on macbook10,1 it has broadcom wireless, I have
> followed this guide, installed b43 firmware,
> The kernel from mint 16 default and I've also tried 3.13.0 built from
> scratch, and actually I have tried a couple of latest upstream kernel
> since 3.10, there is not much difference, packet loss rate always
> varies from 10% ~ 30% with ping results, and tcp applications suffered
> a lot,
>
> http://wireless.kernel.org/en/users/Drivers/b43
>
> In that table, it has my device 14e4:4331 supported b/g only, I tried
> to setup my wifi router to be b/g only but seems didn't help, is there
> anything else (or iw commands) I can try ?
>
> 14e4:4331   yes (3.2-rc3+)   BCM4331     b/g    HT (r1)           wl
>
>
> mint ~ # uname -a
> Linux mint 3.13.0 #6 SMP Thu Feb 20 23:49:27 PST 2014 x86_64 x86_64
> x86_64 GNU/Linux
>
> mint ~ # lspci -D -nn -k -d 14e4:4331
> 0000:04:00.0 Network controller [0280]: Broadcom Corporation BCM4331
> 802.11a/b/g/n [14e4:4331] (rev 02)
> 	Subsystem: Apple Inc. AirPort Extreme [106b:00ef]
> 	Kernel driver in use: bcma-pci-bridge
>
> mint ~ # lspci -vvn|grep 43 -A7
> 04:00.0 0280: 14e4:4331 (rev 02)
> 	Subsystem: 106b:00ef
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
> Stepping- SERR- FastB2B- DisINTx-
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 0, Cache Line Size: 256 bytes
> 	Interrupt: pin A routed to IRQ 17
> 	Region 0: Memory at c1900000 (64-bit, non-prefetchable) [size=16K]
> 	Capabilities: [40] Power Management version 3
>
> mint ~ # dmesg |tail
>
> [83539.481059] wlan0: authenticate with cc:7d:37:7d:0c:c0
> [83539.491466] wlan0: send auth to cc:7d:37:7d:0c:c0 (try 1/3)
> [83539.493218] wlan0: authenticated
> [83539.494178] wlan0: associate with cc:7d:37:7d:0c:c0 (try 1/3)
> [83539.496837] wlan0: RX AssocResp from cc:7d:37:7d:0c:c0 (capab=0x411
> status=0 aid=3)
> [83539.497379] wlan0: associated
>
> mint ~ # iw event -f -t
> 1393229857.081699: wlan0 (phy #0): scan started
> 1393229862.942196: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
> 2432 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
> 1393229863.783188: wlan0 (phy #0): connection quality monitor event:
> RSSI went below threshold
> 1393229865.787153: wlan0 (phy #0): connection quality monitor event:
> RSSI went below threshold
> 1393229866.785220: wlan0 (phy #0): connection quality monitor event:
> RSSI went below threshold
>
> mint ~ # iw phy
> Wiphy phy0
> 	Band 1:
> 		Frequencies:
> 			* 2412 MHz [1] (20.0 dBm)
> 			* 2417 MHz [2] (20.0 dBm)
> 			* 2422 MHz [3] (20.0 dBm)
> 			* 2427 MHz [4] (20.0 dBm)
> 			* 2432 MHz [5] (20.0 dBm)
> 			* 2437 MHz [6] (20.0 dBm)
> 			* 2442 MHz [7] (20.0 dBm)
> 			* 2447 MHz [8] (20.0 dBm)
> 			* 2452 MHz [9] (20.0 dBm)
> 			* 2457 MHz [10] (20.0 dBm)
> 			* 2462 MHz [11] (20.0 dBm)
> 			* 2467 MHz [12] (20.0 dBm) (passive scanning, no IBSS)
> 			* 2472 MHz [13] (20.0 dBm) (passive scanning, no IBSS)
> 			* 2484 MHz [14] (20.0 dBm) (passive scanning, no IBSS)
> 		Bitrates (non-HT):
> 			* 1.0 Mbps
> 			* 2.0 Mbps (short preamble supported)
> 			* 5.5 Mbps (short preamble supported)
> 			* 11.0 Mbps (short preamble supported)
> 			* 6.0 Mbps
> 			* 9.0 Mbps
> 			* 12.0 Mbps
> 			* 18.0 Mbps
> 			* 24.0 Mbps
> 			* 36.0 Mbps
> 			* 48.0 Mbps
> 			* 54.0 Mbps
> 	max # scan SSIDs: 4
> 	max scan IEs length: 2285 bytes
> 	Coverage class: 0 (up to 0m)
> 	Supported Ciphers:
> 		* WEP40 (00-0f-ac:1)
> 		* WEP104 (00-0f-ac:5)
> 		* TKIP (00-0f-ac:2)
> 		* CCMP (00-0f-ac:4)
> 	Available Antennas: TX 0 RX 0
> 	Supported interface modes:
> 		 * IBSS
> 		 * managed
> 		 * AP
> 		 * AP/VLAN
> 		 * WDS
> 		 * monitor
> 	software interface modes (can always be added):
> 		 * AP/VLAN
> 		 * monitor
> 	interface combinations are not supported
> 	Supported commands:
> 		 * new_interface
> 		 * set_interface
> 		 * new_key
> 		 * new_beacon
> 		 * new_station
> 		 * set_bss
> 		 * authenticate
> 		 * associate
> 		 * deauthenticate
> 		 * disassociate
> 		 * join_ibss
> 		 * set_tx_bitrate_mask
> 		 * action
> 		 * frame_wait_cancel
> 		 * set_wiphy_netns
> 		 * set_channel
> 		 * set_wds_peer
> 		 * Unknown command (84)
> 		 * Unknown command (87)
> 		 * Unknown command (85)
> 		 * Unknown command (89)
> 		 * Unknown command (92)
> 		 * connect
> 		 * disconnect
> 	Supported TX frame types:
> 		 * IBSS: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0
> 0xc0 0xd0 0xe0 0xf0
> 		 * managed: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0
> 0xb0 0xc0 0xd0 0xe0 0xf0
> 		 * AP: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0 0xb0
> 0xc0 0xd0 0xe0 0xf0
> 		 * AP/VLAN: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0
> 0xb0 0xc0 0xd0 0xe0 0xf0
> 		 * mesh point: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90
> 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
> 		 * P2P-client: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90
> 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
> 		 * P2P-GO: 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80 0x90 0xa0
> 0xb0 0xc0 0xd0 0xe0 0xf0
> 		 * Unknown mode (10): 0x00 0x10 0x20 0x30 0x40 0x50 0x60 0x70 0x80
> 0x90 0xa0 0xb0 0xc0 0xd0 0xe0 0xf0
> 	Supported RX frame types:
> 		 * IBSS: 0x40 0xb0 0xc0 0xd0
> 		 * managed: 0x40 0xd0
> 		 * AP: 0x00 0x20 0x40 0xa0 0xb0 0xc0 0xd0
> 		 * AP/VLAN: 0x00 0x20 0x40 0xa0 0xb0 0xc0 0xd0
> 		 * mesh point: 0xb0 0xc0 0xd0
> 		 * P2P-client: 0x40 0xd0
> 		 * P2P-GO: 0x00 0x20 0x40 0xa0 0xb0 0xc0 0xd0
> 		 * Unknown mode (10): 0x40 0xd0
> 	Device supports RSN-IBSS.
> 	HT Capability overrides:
> 		 * MCS: ff ff ff ff ff ff ff ff ff ff
> 		 * maximum A-MSDU length
> 		 * supported channel width
> 		 * short GI for 40 MHz
> 		 * max A-MPDU length exponent
> 		 * min MPDU start spacing
> 	Device supports TX status socket option.
> 	Device supports HT-IBSS.
>
>
> mint ~ # ping -c20 192.168.1.254
> PING 192.168.1.254 (192.168.1.254) 56(84) bytes of data.
> 64 bytes from 192.168.1.254: icmp_seq=1 ttl=64 time=60.8 ms
> 64 bytes from 192.168.1.254: icmp_seq=2 ttl=64 time=5.00 ms
> 64 bytes from 192.168.1.254: icmp_seq=3 ttl=64 time=6.96 ms
> 64 bytes from 192.168.1.254: icmp_seq=4 ttl=64 time=4.94 ms
> 64 bytes from 192.168.1.254: icmp_seq=5 ttl=64 time=9.13 ms
> 64 bytes from 192.168.1.254: icmp_seq=6 ttl=64 time=3.49 ms
> 64 bytes from 192.168.1.254: icmp_seq=7 ttl=64 time=4.81 ms
> 64 bytes from 192.168.1.254: icmp_seq=8 ttl=64 time=11.7 ms
> 64 bytes from 192.168.1.254: icmp_seq=9 ttl=64 time=3.40 ms
> 64 bytes from 192.168.1.254: icmp_seq=10 ttl=64 time=4.83 ms
> 64 bytes from 192.168.1.254: icmp_seq=11 ttl=64 time=3.82 ms
> 64 bytes from 192.168.1.254: icmp_seq=12 ttl=64 time=17.4 ms
> 64 bytes from 192.168.1.254: icmp_seq=13 ttl=64 time=6.51 ms
> 64 bytes from 192.168.1.254: icmp_seq=14 ttl=64 time=64.4 ms
> 64 bytes from 192.168.1.254: icmp_seq=15 ttl=64 time=3.71 ms
> 64 bytes from 192.168.1.254: icmp_seq=16 ttl=64 time=24.3 ms
> 64 bytes from 192.168.1.254: icmp_seq=17 ttl=64 time=14.2 ms
>
> --- 192.168.1.254 ping statistics ---
> 20 packets transmitted, 17 received, 15% packet loss, time 19025ms
> rtt min/avg/max/mdev = 3.400/14.687/64.412/18.385 ms
>
>
>
> Thanks,
>


-- 
Cheng Renquan (???)
