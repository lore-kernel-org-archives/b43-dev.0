From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 12 Jun 2011 22:46:42 +0200
Subject: Faulty 14e4:4315 (BCM4312)?
In-Reply-To: <BANLkTi=S0b8c3JSW5fb1GdMR2OC8XRYN0w@mail.gmail.com>
References: <BANLkTin+sAHnQ3afDJH0KMSZEeUqzRDmYw@mail.gmail.com>
	<BANLkTi=RQe_jGFPEOYumPxxxmWM4M+BLcQ@mail.gmail.com>
	<BANLkTikg5YSj=9Y+Bbv_8oJSG1OkG4GQBw@mail.gmail.com>
	<BANLkTi=tSGzu57+-MovR2q0y2qLGZ=AwFA@mail.gmail.com>
	<BANLkTincRK-fo+=dHoDQppsLwfMGmeiWJA@mail.gmail.com>
	<BANLkTi=ezOxXVswSNsRqL06A6rozMiaNzQ@mail.gmail.com>
	<4DF00043.1070304@lwfinger.net>
	<BANLkTi=VDh7mECOvnCJRfoEDt6WBw2ZtjA@mail.gmail.com>
	<4DF0062F.6030602@lwfinger.net>
	<BANLkTikXnXR2f1TUrJ7bhC9KdBe0XevN7Q@mail.gmail.com>
	<BANLkTikhTh7Vf=SQSPyE9u6C3XNANYGMZQ@mail.gmail.com>
	<BANLkTi=gG1+=mPmTmxNA6SVMdfbm8Nh7WQ@mail.gmail.com>
	<BANLkTi=S0b8c3JSW5fb1GdMR2OC8XRYN0w@mail.gmail.com>
Message-ID: <BANLkTi=Besw2ROYoKO9gbXnV3M=7HHJrxA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 11 czerwca 2011 19:36 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> W dniu 11 czerwca 2011 18:20 u?ytkownik Rafa? Mi?ecki
> <zajec5@gmail.com> napisa?:
>> To make it even more ugly, PIO mode is almost not working for me. I
>> can connect to the network (with antenna in the correct direction),
>> but getting IP (dhcp) causes loosing authentication. Every time. After
>> loosing connection taking interface down & up is required.
>>
>> I'm leaving this for now. Hope noone will ever meet card like mine.
>
> Not sure if I'll shout up.
>
> As I could not benchmark PIO on BCM4312 (14e4:4315), I decided to
> switch to BCM4311 (14e4:4312). Guess what. The same PIO issue!
>
> qos=0 workarounds pio issue on BCM4311 (14e4:4312). Not sure about BCM4312 yet.

Same for my BCM4312. There is something wrong with QOS in PIO mode.

Attached is dmesg with message for every TX. The first part is for
qos=1, later is for qos=0.

-- 
Rafa?
-------------- next part --------------
[  169.766050] b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  169.768723] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[  171.154068] b43-phy0 debug: Chip initialized
[  171.154136] b43-phy0 debug: PIO initialized
[  171.154210] b43-phy0 debug: QoS enabled
[  171.163820] b43-phy0 debug: Wireless interface started
[  171.169096] b43-phy0 debug: Adding Interface type 2
[  171.169592] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  171.360049] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  171.529042] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  171.598038] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  171.667036] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  171.736122] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  171.805041] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  171.874037] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  171.943037] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  172.012046] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  172.081039] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  172.150040] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  172.603208] wlan0: authenticate with 00:23:69:a3:92:f0 (try 1)
[  172.603231] [DBG] TX on PIO queue 3 (0x2D8); skb is len:30	data_len:0	priority:7	queue_mapping:0
[  172.605296] wlan0: authenticated
[  172.605713] wlan0: associate with 00:23:69:a3:92:f0 (try 1)
[  172.605733] [DBG] TX on PIO queue 3 (0x2D8); skb is len:96	data_len:0	priority:7	queue_mapping:0
[  172.608515] wlan0: RX AssocResp from 00:23:69:a3:92:f0 (capab=0x411 status=0 aid=1)
[  172.608519] wlan0: associated
[  172.609485] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  172.622855] [DBG] TX on PIO queue 1 (0x258); skb is len:155	data_len:0	priority:0	queue_mapping:2
[  172.628257] [DBG] TX on PIO queue 1 (0x258); skb is len:133	data_len:0	priority:0	queue_mapping:2
[  172.628381] b43-phy0 debug: Using hardware based encryption for keyidx: 0, mac: 00:23:69:a3:92:f0
[  172.628433] b43-phy0 debug: Using hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
[  173.708053] [DBG] TX on PIO queue 3 (0x2D8); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  174.706051] [DBG] TX on PIO queue 3 (0x2D8); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  175.706051] [DBG] TX on PIO queue 3 (0x2D8); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  176.706046] [DBG] TX on PIO queue 3 (0x2D8); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  176.919236] [DBG] TX on PIO queue 1 (0x258); skb is len:370	data_len:0	priority:0	queue_mapping:2
[  177.706056] [DBG] TX on PIO queue 3 (0x2D8); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  178.207064] [DBG] TX on PIO queue 3 (0x2D8); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  178.708044] [DBG] TX on PIO queue 3 (0x2D8); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  179.209056] [DBG] TX on PIO queue 3 (0x2D8); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  179.710039] [DBG] TX on PIO queue 3 (0x2D8); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  179.922450] [DBG] TX on PIO queue 1 (0x258); skb is len:370	data_len:0	priority:0	queue_mapping:2
[  180.211041] ieee80211 phy0: wlan0: No probe response from AP 00:23:69:a3:92:f0 after 500ms, disconnecting.
[  180.213041] b43-phy0 debug: Disabling hardware based encryption for keyidx: 0, mac: 00:23:69:a3:92:f0
[  180.217030] b43-phy0 debug: Disabling hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
[  180.217083] [DBG] TX on PIO queue 3 (0x2D8); skb is len:26	data_len:0	priority:7	queue_mapping:0
[  180.217118] cfg80211: Calling CRDA to update world regulatory domain
[  180.230126] cfg80211: World regulatory domain updated:
[  180.230131] cfg80211:     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  180.230136] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  180.230139] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  180.230143] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  180.230146] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  180.230150] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  180.487049] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  180.556036] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  180.625031] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  180.694031] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  180.863031] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  180.932031] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  181.001033] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  181.070041] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  181.139031] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  181.208032] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  181.277031] [DBG] TX on PIO queue 3 (0x2D8); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  181.722499] wlan0: authenticate with 00:23:69:a3:92:f0 (try 1)
[  181.722520] [DBG] TX on PIO queue 3 (0x2D8); skb is len:30	data_len:0	priority:7	queue_mapping:0
[  181.922034] wlan0: authenticate with 00:23:69:a3:92:f0 (try 2)
[  181.922055] [DBG] TX on PIO queue 3 (0x2D8); skb is len:30	data_len:0	priority:7	queue_mapping:0
[  181.924340] b43-phy0 ERROR: PHY transmission error
[  181.925516] b43-phy0 ERROR: PHY transmission error
[  181.926696] b43-phy0 ERROR: PHY transmission error
[  181.927867] b43-phy0 ERROR: PHY transmission error
[  181.929040] b43-phy0 ERROR: PHY transmission error
[  181.930226] b43-phy0 ERROR: PHY transmission error
[  181.931389] b43-phy0 ERROR: PHY transmission error
[  181.932571] b43-phy0 ERROR: PHY transmission error
[  181.933786] b43-phy0 ERROR: PHY transmission error
[  181.934994] b43-phy0 ERROR: PHY transmission error
[  182.122033] wlan0: authenticate with 00:23:69:a3:92:f0 (try 3)
[  182.122055] [DBG] TX on PIO queue 3 (0x2D8); skb is len:30	data_len:0	priority:7	queue_mapping:0
[  182.322028] wlan0: authentication with 00:23:69:a3:92:f0 timed out
[  184.668033] b43-phy0 debug: Removing Interface type 2
[  184.668129] b43-phy0 debug: Wireless interface stopped
[  187.639590] b43-pci-bridge 0000:02:00.0: PCI INT A disabled



[  208.068049] b43-phy1: Loading firmware version 478.104 (2008-07-01 00:50:23)
[  208.070738] b43-phy1 debug: b2062: Using crystal tab entry 19200 kHz.
[  209.458072] b43-phy1 debug: Chip initialized
[  209.458145] b43-phy1 debug: PIO initialized
[  209.458158] b43-phy1 debug: QoS disabled
[  209.467813] b43-phy1 debug: Wireless interface started
[  209.473097] b43-phy1 debug: Adding Interface type 2
[  209.473425] ADDRCONF(NETDEV_UP): wlan0: link is not ready
[  209.640050] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  209.809049] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  209.878037] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  209.947034] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  210.016062] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  210.085041] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  210.154034] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  210.223037] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  210.292036] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  210.361032] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  210.430030] [DBG] TX on PIO queue 1 (0x258); skb is len:45	data_len:0	priority:7	queue_mapping:0
[  210.884198] wlan0: authenticate with 00:23:69:a3:92:f0 (try 1)
[  210.884220] [DBG] TX on PIO queue 1 (0x258); skb is len:30	data_len:0	priority:7	queue_mapping:0
[  210.886259] wlan0: authenticated
[  210.886686] wlan0: associate with 00:23:69:a3:92:f0 (try 1)
[  210.886706] [DBG] TX on PIO queue 1 (0x258); skb is len:87	data_len:0	priority:7	queue_mapping:0
[  210.889191] wlan0: RX AssocResp from 00:23:69:a3:92:f0 (capab=0x411 status=0 aid=1)
[  210.889195] wlan0: associated
[  210.889796] ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[  210.904481] [DBG] TX on PIO queue 1 (0x258); skb is len:153	data_len:0	priority:0	queue_mapping:0
[  210.909875] [DBG] TX on PIO queue 1 (0x258); skb is len:131	data_len:0	priority:0	queue_mapping:0
[  210.909997] b43-phy1 debug: Using hardware based encryption for keyidx: 0, mac: 00:23:69:a3:92:f0
[  210.910361] b43-phy1 debug: Using hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
[  211.706050] [DBG] TX on PIO queue 1 (0x258); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  212.706052] [DBG] TX on PIO queue 1 (0x258); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  213.706050] [DBG] TX on PIO queue 1 (0x258); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  214.706049] [DBG] TX on PIO queue 1 (0x258); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  215.706039] [DBG] TX on PIO queue 1 (0x258); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  215.844398] [DBG] TX on PIO queue 1 (0x258); skb is len:368	data_len:0	priority:0	queue_mapping:0
[  215.855771] [DBG] TX on PIO queue 1 (0x258); skb is len:387	data_len:0	priority:0	queue_mapping:0
[  215.871080] [DBG] TX on PIO queue 1 (0x258); skb is len:68	data_len:0	priority:0	queue_mapping:0
[  216.071413] [DBG] TX on PIO queue 1 (0x258); skb is len:68	data_len:0	priority:0	queue_mapping:0
[  216.271733] [DBG] TX on PIO queue 1 (0x258); skb is len:68	data_len:0	priority:0	queue_mapping:0
[  216.472060] [DBG] TX on PIO queue 1 (0x258); skb is len:68	data_len:0	priority:0	queue_mapping:0
[  216.672373] [DBG] TX on PIO queue 1 (0x258); skb is len:68	data_len:0	priority:0	queue_mapping:0
[  216.706044] [DBG] TX on PIO queue 1 (0x258); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  216.876136] [DBG] TX on PIO queue 1 (0x258); skb is len:80	data_len:0	priority:0	queue_mapping:0
[  216.904171] [DBG] TX on PIO queue 1 (0x258); skb is len:329	data_len:0	priority:0	queue_mapping:0
[  216.932513] [DBG] TX on PIO queue 1 (0x258); skb is len:452	data_len:0	priority:0	queue_mapping:0
[  217.182430] [DBG] TX on PIO queue 1 (0x258); skb is len:452	data_len:0	priority:0	queue_mapping:0
[  217.433694] [DBG] TX on PIO queue 1 (0x258); skb is len:452	data_len:0	priority:0	queue_mapping:0
[  217.633647] [DBG] TX on PIO queue 1 (0x258); skb is len:416	data_len:0	priority:0	queue_mapping:0
[  217.706052] [DBG] TX on PIO queue 1 (0x258); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  217.910647] [DBG] TX on PIO queue 1 (0x258); skb is len:329	data_len:0	priority:0	queue_mapping:0
[  218.640331] [DBG] TX on PIO queue 1 (0x258); skb is len:416	data_len:0	priority:0	queue_mapping:0
[  218.706057] [DBG] TX on PIO queue 1 (0x258); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  219.706049] [DBG] TX on PIO queue 1 (0x258); skb is len:64	data_len:0	priority:7	queue_mapping:0
[  219.918588] [DBG] TX on PIO queue 1 (0x258); skb is len:488	data_len:0	priority:0	queue_mapping:0
[  220.240309] wlan0: deauthenticating from 00:23:69:a3:92:f0 by local choice (reason=3)
[  220.242037] b43-phy1 debug: Disabling hardware based encryption for keyidx: 1, mac: ff:ff:ff:ff:ff:ff
[  220.242166] [DBG] TX on PIO queue 1 (0x258); skb is len:26	data_len:0	priority:7	queue_mapping:0
[  220.244042] b43-phy1 debug: Disabling hardware based encryption for keyidx: 0, mac: 00:23:69:a3:92:f0
[  220.246179] cfg80211: Calling CRDA to update world regulatory domain
[  220.257542] cfg80211: World regulatory domain updated:
[  220.257548] cfg80211:     (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[  220.257553] cfg80211:     (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  220.257557] cfg80211:     (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  220.257560] cfg80211:     (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[  220.257563] cfg80211:     (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  220.257567] cfg80211:     (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[  220.284036] b43-phy1 debug: Removing Interface type 2
[  220.284145] b43-phy1 debug: Wireless interface stopped
[  221.955593] b43-pci-bridge 0000:02:00.0: PCI INT A disabled
