From: Benjamin Daines <benjamindaines@gmail.com>
Date: Mon, 25 Mar 2013 21:46:20 -0400
Subject: b43 - roaming issues with small, weak network
Message-ID: <4659921.Jebp0KbpUY@ben-linux>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I'm using the provided wireless network in my apartment building that consists 
of roughly  6-10 access points on different channels.  I can't give an exact 
amount, because they don't all show up simultaneously in iwlist.  If 
connection stalls with the connected AP (always does at some point) the driver 
will try to roam to another AP.  Sometimes it's successful, sometimes it drops 
the connection.  Syslog indicates authentication time out.  No encryption is 
used on the network, just MAC filtering.  All APs are horribly slow, except 
one.  I assume this is due to my location.  Will provide further details upon 
request. 

Here is a log from disconnect, connection troubles, me disabling the card, 
reenabling card, and successful connection. 

Mar 25 21:17:12 ben-linux kernel: [ 6920.189219] ieee80211 phy0: wlan0: No 
probe response from AP 00:22:7f:18:11:f8 after 500ms, disconnecting.
Mar 25 21:17:12 ben-linux kernel: [ 6920.189932] cfg80211: Calling CRDA to 
update world regulatory domain
Mar 25 21:17:12 ben-linux NetworkManager[1375]: <info> (wlan0): roamed from 
BSSID 00:22:7F:18:11:F8 (Kardon_Wifi) to (none) ((none))
Mar 25 21:17:12 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: completed -> disconnected
Mar 25 21:17:12 ben-linux kernel: [ 6920.199224] cfg80211: World regulatory 
domain updated:
Mar 25 21:17:12 ben-linux kernel: [ 6920.199235] cfg80211:   (start_freq - 
end_freq @ bandwidth), (max_antenna_gain, max_eirp)
Mar 25 21:17:12 ben-linux kernel: [ 6920.199244] cfg80211:   (2402000 KHz - 
2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
Mar 25 21:17:12 ben-linux kernel: [ 6920.199251] cfg80211:   (2457000 KHz - 
2482000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
Mar 25 21:17:12 ben-linux kernel: [ 6920.199258] cfg80211:   (2474000 KHz - 
2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
Mar 25 21:17:12 ben-linux kernel: [ 6920.199265] cfg80211:   (5170000 KHz - 
5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
Mar 25 21:17:12 ben-linux kernel: [ 6920.199271] cfg80211:   (5735000 KHz - 
5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
Mar 25 21:17:13 ben-linux wpa_supplicant[1549]: wlan0: Failed to initiate AP 
scan
Mar 25 21:17:14 ben-linux wpa_supplicant[1549]: wlan0: Failed to initiate AP 
scan
Mar 25 21:17:14 ben-linux wpa_supplicant[1549]: wlan0: SME: Trying to 
authenticate with 00:22:7f:18:11:98 (SSID='Kardon_Wifi' freq=2412 MHz)
Mar 25 21:17:14 ben-linux kernel: [ 6921.417127] wlan0: authenticate with 
00:22:7f:18:11:98
Mar 25 21:17:14 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: disconnected -> authenticating
Mar 25 21:17:14 ben-linux kernel: [ 6921.440401] wlan0: send auth to 
00:22:7f:18:11:98 (try 1/3)
Mar 25 21:17:14 ben-linux kernel: [ 6921.643777] wlan0: send auth to 
00:22:7f:18:11:98 (try 2/3)
Mar 25 21:17:14 ben-linux kernel: [ 6921.847525] wlan0: send auth to 
00:22:7f:18:11:98 (try 3/3)
Mar 25 21:17:14 ben-linux kernel: [ 6922.051411] wlan0: authentication with 
00:22:7f:18:11:98 timed out
Mar 25 21:17:14 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: authenticating -> disconnected
Mar 25 21:17:14 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: disconnected -> scanning
Mar 25 21:17:15 ben-linux wpa_supplicant[1549]: wlan0: SME: Trying to 
authenticate with 00:22:7f:18:11:d8 (SSID='Kardon_Wifi' freq=2462 MHz)
Mar 25 21:17:16 ben-linux kernel: [ 6923.259541] wlan0: authenticate with 
00:22:7f:18:11:d8
Mar 25 21:17:16 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: scanning -> authenticating
Mar 25 21:17:16 ben-linux kernel: [ 6923.282542] wlan0: send auth to 
00:22:7f:18:11:d8 (try 1/3)
Mar 25 21:17:16 ben-linux kernel: [ 6923.485993] wlan0: send auth to 
00:22:7f:18:11:d8 (try 2/3)
Mar 25 21:17:16 ben-linux kernel: [ 6923.689798] wlan0: send auth to 
00:22:7f:18:11:d8 (try 3/3)
Mar 25 21:17:16 ben-linux kernel: [ 6923.893592] wlan0: authentication with 
00:22:7f:18:11:d8 timed out
Mar 25 21:17:16 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: authenticating -> disconnected
Mar 25 21:17:16 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: disconnected -> scanning
Mar 25 21:17:17 ben-linux wpa_supplicant[1549]: wlan0: SME: Trying to 
authenticate with 00:22:7f:18:11:f8 (SSID='Kardon_Wifi' freq=2442 MHz)
Mar 25 21:17:17 ben-linux kernel: [ 6925.113479] wlan0: authenticate with 
00:22:7f:18:11:f8
Mar 25 21:17:17 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: scanning -> authenticating
Mar 25 21:17:17 ben-linux kernel: [ 6925.136819] wlan0: send auth to 
00:22:7f:18:11:f8 (try 1/3)
Mar 25 21:17:18 ben-linux kernel: [ 6925.340209] wlan0: send auth to 
00:22:7f:18:11:f8 (try 2/3)
Mar 25 21:17:18 ben-linux kernel: [ 6925.544000] wlan0: send auth to 
00:22:7f:18:11:f8 (try 3/3)
Mar 25 21:17:18 ben-linux kernel: [ 6925.747792] wlan0: authentication with 
00:22:7f:18:11:f8 timed out
Mar 25 21:17:18 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: authenticating -> disconnected
Mar 25 21:17:19 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: disconnected -> scanning
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <warn> (wlan0): link timed 
out.
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: activated -> failed (reason 'SSID not found') [100 120 53]
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <warn> Activation (wlan0) 
failed for connection 'Kardon_Wifi'
Mar 25 21:17:28 ben-linux dbus[955]: [system] Activating service 
name='org.freedesktop.nm_dispatcher' (using servicehelper)
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: failed -> disconnected (reason 'none') [120 30 0]
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> (wlan0): deactivating 
device (reason 'none') [0]
Mar 25 21:17:28 ben-linux dbus[955]: [system] Successfully activated service 
'org.freedesktop.nm_dispatcher'
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> (wlan0): canceled DHCP 
transaction, DHCP client pid 7014
Mar 25 21:17:28 ben-linux avahi-daemon[1204]: Withdrawing address record for 
174.141.133.162 on wlan0.
Mar 25 21:17:28 ben-linux avahi-daemon[1204]: Leaving mDNS multicast group on 
interface wlan0.IPv4 with address 174.141.133.162.
Mar 25 21:17:28 ben-linux avahi-daemon[1204]: Interface wlan0.IPv4 no longer 
relevant for mDNS.
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <warn> DNS: plugin dnsmasq 
update failed
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Removing DNS 
information from /sbin/resolvconf
Mar 25 21:17:28 ben-linux dnsmasq[2214]: setting upstream servers from DBus
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <warn> Couldn't disconnect 
supplicant interface: This interface is not connected.
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Auto-activating 
connection 'Kardon_Wifi'.
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
starting connection 'Kardon_Wifi'
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: disconnected -> prepare (reason 'none') [30 40 0]
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 1 of 5 (Device Prepare) scheduled...
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 1 of 5 (Device Prepare) started...
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 2 of 5 (Device Configure) scheduled...
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 1 of 5 (Device Prepare) complete.
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 2 of 5 (Device Configure) starting...
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: prepare -> config (reason 'none') [40 50 0]
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Activation 
(wlan0/wireless): connection 'Kardon_Wifi' requires no security.  No secrets 
needed.
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Config: added 'ssid' 
value 'Kardon_Wifi'
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Config: added 
'scan_ssid' value '1'
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Config: added 'key_mgmt' 
value 'NONE'
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 2 of 5 (Device Configure) complete.
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <warn> Couldn't disconnect 
supplicant interface: This interface is not connected.
Mar 25 21:17:28 ben-linux NetworkManager[1375]: <info> Config: set interface 
ap_scan to 1
Mar 25 21:17:31 ben-linux nm-dispatcher.action: Script 
'/etc/NetworkManager/dispatcher.d/01ifupdown' took too long; killing it.
Mar 25 21:17:31 ben-linux NetworkManager[1375]: <warn> Dispatcher script timed 
out: Script '/etc/NetworkManager/dispatcher.d/01ifupdown' timed out.
Mar 25 21:17:37 ben-linux wpa_supplicant[1549]: wlan0: SME: Trying to 
authenticate with 00:22:7f:18:11:a8 (SSID='Kardon_Wifi' freq=2427 MHz)
Mar 25 21:17:37 ben-linux kernel: [ 6945.090177] wlan0: authenticate with 
00:22:7f:18:11:a8
Mar 25 21:17:37 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: scanning -> authenticating
Mar 25 21:17:37 ben-linux kernel: [ 6945.114148] wlan0: send auth to 
00:22:7f:18:11:a8 (try 1/3)
Mar 25 21:17:38 ben-linux kernel: [ 6945.316798] wlan0: send auth to 
00:22:7f:18:11:a8 (try 2/3)
Mar 25 21:17:38 ben-linux kernel: [ 6945.520605] wlan0: send auth to 
00:22:7f:18:11:a8 (try 3/3)
Mar 25 21:17:38 ben-linux wpa_supplicant[1549]: wlan0: Trying to associate 
with 00:22:7f:18:11:a8 (SSID='Kardon_Wifi' freq=2427 MHz)
Mar 25 21:17:38 ben-linux kernel: [ 6945.534689] wlan0: authenticated
Mar 25 21:17:38 ben-linux kernel: [ 6945.536540] wlan0: associate with 
00:22:7f:18:11:a8 (try 1/3)
Mar 25 21:17:38 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: authenticating -> associating
Mar 25 21:17:38 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: config -> unavailable (reason 'none') [50 20 0]
Mar 25 21:17:38 ben-linux NetworkManager[1375]: <info> (wlan0): deactivating 
device (reason 'none') [0]
Mar 25 21:17:38 ben-linux wpa_supplicant[1549]: wlan0: CTRL-EVENT-DISCONNECTED 
bssid=00:22:7f:18:11:a8 reason=3 locally_generated=1
Mar 25 21:17:38 ben-linux kernel: [ 6945.686553] wlan0: deauthenticating from 
00:22:7f:18:11:a8 by local choice (reason=3)
Mar 25 21:17:38 ben-linux NetworkManager[1375]: <info> (wlan0): taking down 
device.
Mar 25 21:17:38 ben-linux avahi-daemon[1204]: Interface wlan0.IPv6 no longer 
relevant for mDNS.
Mar 25 21:17:38 ben-linux avahi-daemon[1204]: Leaving mDNS multicast group on 
interface wlan0.IPv6 with address fe80::e6ce:8fff:fe3e:15a.
Mar 25 21:17:38 ben-linux avahi-daemon[1204]: Withdrawing address record for 
fe80::e6ce:8fff:fe3e:15a on wlan0.
Mar 25 21:17:38 ben-linux NetworkManager[1375]: <info> WiFi hardware radio set 
disabled
Mar 25 21:17:38 ben-linux NetworkManager[1375]: <info> WiFi now disabled by 
radio killswitch
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <info> (wlan0): bringing up 
device.
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <info> WiFi hardware radio set 
enabled
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <info> WiFi now enabled by 
radio killswitch
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <info> (wlan0): bringing up 
device.
Mar 25 21:17:42 ben-linux kernel: [ 6949.672681] b43-phy0: Loading firmware 
version 666.2 (2011-02-23 01:15:07)
Mar 25 21:17:42 ben-linux kernel: [ 6949.733109] IPv6: ADDRCONF(NETDEV_UP): 
wlan0: link is not ready
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <info> (wlan0) supports 4 scan 
SSIDs
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: starting -> ready
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: unavailable -> disconnected (reason 'supplicant-available') [20 30 42]
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <warn> Trying to remove a non-
existant call id.
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: ready -> disconnected
Mar 25 21:17:42 ben-linux NetworkManager[1375]: <info> (wlan0) supports 4 scan 
SSIDs
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: disconnected -> inactive
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Auto-activating 
connection 'Kardon_Wifi'.
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
starting connection 'Kardon_Wifi'
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: disconnected -> prepare (reason 'none') [30 40 0]
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 1 of 5 (Device Prepare) scheduled...
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 1 of 5 (Device Prepare) started...
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 2 of 5 (Device Configure) scheduled...
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 1 of 5 (Device Prepare) complete.
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 2 of 5 (Device Configure) starting...
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: prepare -> config (reason 'none') [40 50 0]
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Activation 
(wlan0/wireless): connection 'Kardon_Wifi' requires no security.  No secrets 
needed.
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Config: added 'ssid' 
value 'Kardon_Wifi'
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Config: added 
'scan_ssid' value '1'
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Config: added 'key_mgmt' 
value 'NONE'
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 2 of 5 (Device Configure) complete.
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> Config: set interface 
ap_scan to 1
Mar 25 21:17:43 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: inactive -> scanning
Mar 25 21:17:44 ben-linux wpa_supplicant[1549]: wlan0: SME: Trying to 
authenticate with 00:22:7f:18:11:d8 (SSID='Kardon_Wifi' freq=2462 MHz)
Mar 25 21:17:44 ben-linux kernel: [ 6951.979532] wlan0: authenticate with 
00:22:7f:18:11:d8
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: scanning -> authenticating
Mar 25 21:17:44 ben-linux wpa_supplicant[1549]: wlan0: Trying to associate 
with 00:22:7f:18:11:d8 (SSID='Kardon_Wifi' freq=2462 MHz)
Mar 25 21:17:44 ben-linux kernel: [ 6952.002564] wlan0: send auth to 
00:22:7f:18:11:d8 (try 1/3)
Mar 25 21:17:44 ben-linux kernel: [ 6952.003676] wlan0: authenticated
Mar 25 21:17:44 ben-linux kernel: [ 6952.006309] wlan0: associate with 
00:22:7f:18:11:d8 (try 1/3)
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: authenticating -> associating
Mar 25 21:17:44 ben-linux wpa_supplicant[1549]: wlan0: Associated with 
00:22:7f:18:11:d8
Mar 25 21:17:44 ben-linux wpa_supplicant[1549]: wlan0: CTRL-EVENT-CONNECTED - 
Connection to 00:22:7f:18:11:d8 completed [id=0 id_str=]
Mar 25 21:17:44 ben-linux kernel: [ 6952.008989] wlan0: RX AssocResp from 
00:22:7f:18:11:d8 (capab=0x421 status=0 aid=1)
Mar 25 21:17:44 ben-linux kernel: [ 6952.009345] wlan0: associated
Mar 25 21:17:44 ben-linux kernel: [ 6952.009399] IPv6: 
ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
Mar 25 21:17:44 ben-linux kernel: [ 6952.009593] cfg80211: Calling CRDA for 
country: US
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> (wlan0): supplicant 
interface state: associating -> completed
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> Activation 
(wlan0/wireless) Stage 2 of 5 (Device Configure) successful.  Connected to 
wireless network 'Kardon_Wifi'.
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 3 of 5 (IP Configure Start) scheduled.
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 3 of 5 (IP Configure Start) started...
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: config -> ip-config (reason 'none') [50 70 0]
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Beginning DHCPv4 transaction (timeout in 45 seconds)
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> dhclient started with 
pid 7276
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Beginning IP6 addrconf.
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 3 of 5 (IP Configure Start) complete.
Mar 25 21:17:44 ben-linux kernel: [ 6952.015312] cfg80211: Regulatory domain 
changed to country: US
Mar 25 21:17:44 ben-linux kernel: [ 6952.015315] cfg80211:   (start_freq - 
end_freq @ bandwidth), (max_antenna_gain, max_eirp)
Mar 25 21:17:44 ben-linux kernel: [ 6952.015317] cfg80211:   (2402000 KHz - 
2472000 KHz @ 40000 KHz), (300 mBi, 2700 mBm)
Mar 25 21:17:44 ben-linux kernel: [ 6952.015319] cfg80211:   (5170000 KHz - 
5250000 KHz @ 40000 KHz), (300 mBi, 1700 mBm)
Mar 25 21:17:44 ben-linux kernel: [ 6952.015320] cfg80211:   (5250000 KHz - 
5330000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
Mar 25 21:17:44 ben-linux kernel: [ 6952.015322] cfg80211:   (5490000 KHz - 
5600000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
Mar 25 21:17:44 ben-linux kernel: [ 6952.015323] cfg80211:   (5650000 KHz - 
5710000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
Mar 25 21:17:44 ben-linux kernel: [ 6952.015325] cfg80211:   (5735000 KHz - 
5835000 KHz @ 40000 KHz), (300 mBi, 3000 mBm)
Mar 25 21:17:44 ben-linux dhclient: Internet Systems Consortium DHCP Client 
4.2.4
Mar 25 21:17:44 ben-linux dhclient: Copyright 2004-2012 Internet Systems 
Consortium.
Mar 25 21:17:44 ben-linux dhclient: All rights reserved.
Mar 25 21:17:44 ben-linux dhclient: For info, please visit 
https://www.isc.org/software/dhcp/
Mar 25 21:17:44 ben-linux dhclient: 
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> (wlan0): DHCPv4 state 
changed nbi -> preinit
Mar 25 21:17:44 ben-linux dhclient: Listening on LPF/wlan0/e4:ce:8f:3e:01:5a
Mar 25 21:17:44 ben-linux dhclient: Sending on   LPF/wlan0/e4:ce:8f:3e:01:5a
Mar 25 21:17:44 ben-linux dhclient: Sending on   Socket/fallback
Mar 25 21:17:44 ben-linux dhclient: DHCPREQUEST of 174.141.133.162 on wlan0 to 
255.255.255.255 port 67 (xid=0xd47f0d0)
Mar 25 21:17:44 ben-linux dhclient: DHCPACK of 174.141.133.162 from 
174.141.132.1
Mar 25 21:17:44 ben-linux dhclient: bound to 174.141.133.162 -- renewal in 
17139 seconds.
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> (wlan0): DHCPv4 state 
changed preinit -> reboot
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info>   address 
174.141.133.162
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info>   prefix 22 
(255.255.252.0)
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info>   gateway 174.141.132.1
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info>   nameserver 
'24.238.1.61'
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info>   nameserver 
'24.238.1.62'
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info>   nameserver '8.8.8.8'
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 5 of 5 (IPv4 Configure Commit) scheduled...
Mar 25 21:17:44 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 5 of 5 (IPv4 Commit) started...
Mar 25 21:17:44 ben-linux avahi-daemon[1204]: Joining mDNS multicast group on 
interface wlan0.IPv4 with address 174.141.133.162.
Mar 25 21:17:44 ben-linux avahi-daemon[1204]: New relevant interface 
wlan0.IPv4 for mDNS.
Mar 25 21:17:44 ben-linux avahi-daemon[1204]: Registering new address record 
for 174.141.133.162 on wlan0.IPv4.
Mar 25 21:17:45 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: ip-config -> secondaries (reason 'none') [70 90 0]
Mar 25 21:17:45 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
Stage 5 of 5 (IPv4 Commit) complete.
Mar 25 21:17:45 ben-linux NetworkManager[1375]: <info> (wlan0): device state 
change: secondaries -> activated (reason 'none') [90 100 0]
Mar 25 21:17:45 ben-linux NetworkManager[1375]: <info> Policy set 'Kardon_Wifi' 
(wlan0) as default for IPv4 routing and DNS.
Mar 25 21:17:45 ben-linux NetworkManager[1375]: <info> Writing DNS information 
to /sbin/resolvconf
Mar 25 21:17:45 ben-linux dnsmasq[2214]: setting upstream servers from DBus
Mar 25 21:17:45 ben-linux dnsmasq[2214]: using nameserver 8.8.8.8#53
Mar 25 21:17:45 ben-linux dnsmasq[2214]: using nameserver 24.238.1.62#53
Mar 25 21:17:45 ben-linux dnsmasq[2214]: using nameserver 24.238.1.61#53
Mar 25 21:17:45 ben-linux NetworkManager[1375]: <info> Activation (wlan0) 
successful, device activated.
Mar 25 21:17:45 ben-linux dbus[955]: [system] Activating service 
name='org.freedesktop.nm_dispatcher' (using servicehelper)
Mar 25 21:17:45 ben-linux dbus[955]: [system] Successfully activated service 
'org.freedesktop.nm_dispatcher'

uname -a
Linux ben-linux 3.7.0-7-generic #15-Ubuntu SMP Sat Dec 15 16:34:25 UTC 2012 
x86_64 x86_64 x86_64 GNU/Linux

Running with 3.9rc2 compat drivers

03:00.0 0280: 14e4:4331 (rev 02)
        Subsystem: 106b:00d6
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- 
Stepping- SERR- FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- 
<TAbort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0, Cache Line Size: 256 bytes
        Interrupt: pin A routed to IRQ 17
        Region 0: Memory@b0600000 (64-bit, non-prefetchable) [size=16K]
        Capabilities: <access denied>


dmesg output:

[   52.270398] wlan0: authenticate with 00:22:7f:11:51:38
[   52.294406] wlan0: send auth to 00:22:7f:11:51:38 (try 1/3)
[   52.295876] wlan0: authenticated
[   52.297900] wlan0: associate with 00:22:7f:11:51:38 (try 1/3)
[   52.302147] wlan0: RX AssocResp from 00:22:7f:11:51:38 (capab=0x421 
status=0 aid=1)
[   52.302507] wlan0: associated
[   52.302514] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[   52.302568] cfg80211: Calling CRDA for country: US
[   52.304933] cfg80211: Regulatory domain changed to country: US
[   52.304936] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[   52.304937] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[   52.304939] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[   52.304940] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   52.304941] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   52.304942] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   52.304943] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[   88.260445] wlan0: deauthenticating from 00:22:7f:11:51:38 by local choice 
(reason=3)
[   88.261449] cfg80211: Calling CRDA to update world regulatory domain
[   88.263875] cfg80211: World regulatory domain updated:
[   88.263877] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[   88.263878] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   88.263879] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[   88.263881] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[   88.263882] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   88.263883] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   95.778327] wlan0: authenticate with 00:22:7f:18:11:98
[   95.802325] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[   95.804503] wlan0: authenticated
[   95.806037] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[   96.009641] wlan0: associate with 00:22:7f:18:11:98 (try 2/3)
[   96.012933] wlan0: RX AssocResp from 00:22:7f:18:11:98 (capab=0x421 
status=0 aid=1)
[   96.013304] wlan0: associated
[   96.013351] cfg80211: Calling CRDA for country: US
[   96.018944] cfg80211: Regulatory domain changed to country: US
[   96.018952] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[   96.018958] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[   96.018962] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[   96.018966] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   96.018970] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   96.018974] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[   96.018978] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[  104.350890] wlan0: deauthenticating from 00:22:7f:18:11:98 by local choice 
(reason=3)
[  104.358021] cfg80211: Calling CRDA to update world regulatory domain
[  104.363128] cfg80211: World regulatory domain updated:
[  104.363135] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[  104.363141] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[  104.363146] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[  104.363150] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[  104.363154] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[  104.363158] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[  105.679906] wlan0: authenticate with 00:22:7f:18:11:d8
[  105.703803] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[  105.705540] wlan0: authenticated
[  105.707484] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[  105.711191] wlan0: RX AssocResp from 00:22:7f:18:11:d8 (capab=0x421 
status=0 aid=2)
[  105.712025] wlan0: associated
[  105.712162] cfg80211: Calling CRDA for country: US
[  105.717920] cfg80211: Regulatory domain changed to country: US
[  105.717923] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[  105.717925] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[  105.717926] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[  105.717928] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[  105.717929] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[  105.717930] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[  105.717932] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[  219.859781] CPU1: Core temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.859783] CPU2: Package temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.859785] CPU7: Package temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.859786] CPU3: Package temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.859787] CPU5: Core temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.859789] CPU6: Package temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.859790] CPU5: Package temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.859796] CPU1: Package temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.859809] CPU4: Package temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.859811] CPU0: Package temperature above threshold, cpu clock throttled 
(total events = 1)
[  219.861765] CPU1: Core temperature/speed normal
[  219.861766] CPU7: Package temperature/speed normal
[  219.861767] CPU2: Package temperature/speed normal
[  219.861769] CPU0: Package temperature/speed normal
[  219.861770] CPU5: Core temperature/speed normal
[  219.861771] CPU4: Package temperature/speed normal
[  219.861772] CPU6: Package temperature/speed normal
[  219.861773] CPU3: Package temperature/speed normal
[  219.861774] CPU5: Package temperature/speed normal
[  219.861779] CPU1: Package temperature/speed normal
[  299.518236] mce: [Hardware Error]: Machine check events logged
[  763.049327] wlan0: authenticate with 00:22:7f:18:11:a8
[  763.061354] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[  763.063529] wlan0: authenticated
[  763.064975] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[  763.071123] wlan0: RX AssocResp from 00:22:7f:18:11:a8 (capab=0x421 
status=0 aid=7)
[  763.077185] wlan0: associated
[ 1375.874823] tg3 0000:02:00.0: wake-up capability enabled by ACPI
[ 1376.092096] wlan0: deauthenticating from 00:22:7f:18:11:a8 by local choice 
(reason=3)
[ 1376.100459] cfg80211: Calling CRDA to update world regulatory domain
[ 1376.111005] cfg80211: World regulatory domain updated:
[ 1376.111015] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 1376.111023] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1376.111030] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1376.111037] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1376.111043] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1376.111050] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1387.624490] PM: Syncing filesystems ... done.
[ 1387.627583] Freezing user space processes ... (elapsed 0.01 seconds) done.
[ 1387.642801] Freezing remaining freezable tasks ... (elapsed 0.01 seconds) 
done.
[ 1387.658898] Suspending console(s) (use no_console_suspend to debug)
[ 1387.659219] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[ 1387.659228] apple-gmux 00:08: wake-up capability disabled by ACPI
[ 1387.675062] <6>[fglrx] IRQ 54 Disabled
[ 1387.675201] <6>[fglrx] Preparing suspend fglrx in kernel.
[ 1387.720024] sd 0:0:0:0: [sda] Stopping disk
[ 1388.168708] <6>[fglrx] Suspending fglrx in kernel completed.
[ 1388.168709] <6>[fglrx] Power down the ASIC .
[ 1388.298201] PM: suspend of devices complete after 639.826 msecs
[ 1388.298322] PM: late suspend of devices complete after 0.119 msecs
[ 1388.314181] ehci_hcd 0000:00:1d.7: wake-up capability enabled by ACPI
[ 1388.330088] ehci_hcd 0000:00:1a.7: wake-up capability enabled by ACPI
[ 1388.362048] PM: noirq suspend of devices complete after 63.784 msecs
[ 1388.362260] ACPI: Preparing to enter system sleep state S3
[ 1388.402023] PM: Saving platform NVS memory
[ 1388.402275] Disabling non-boot CPUs ...
[ 1388.403525] smpboot: CPU 1 is now offline
[ 1388.505807] smpboot: CPU 2 is now offline
[ 1388.609705] smpboot: CPU 3 is now offline
[ 1388.713604] smpboot: CPU 4 is now offline
[ 1388.714026] Broke affinity for irq 19
[ 1388.817502] smpboot: CPU 5 is now offline
[ 1388.817881] NOHZ: local_softirq_pending 02
[ 1388.817892] NOHZ: local_softirq_pending 02
[ 1388.817893] NOHZ: local_softirq_pending 202
[ 1388.817895] NOHZ: local_softirq_pending 202
[ 1388.817896] NOHZ: local_softirq_pending 202
[ 1388.817897] NOHZ: local_softirq_pending 202
[ 1388.817899] NOHZ: local_softirq_pending 202
[ 1388.921403] smpboot: CPU 6 is now offline
[ 1388.921799] NOHZ: local_softirq_pending 02
[ 1388.921851] Broke affinity for irq 22
[ 1388.921859] Broke affinity for irq 23
[ 1388.922866] smpboot: CPU 7 is now offline
[ 1388.923123] Extended CMOS year: 2000
[ 1388.924294] ACPI: Low-level resume complete
[ 1388.924333] PM: Restoring platform NVS memory
[ 1388.924627] Extended CMOS year: 2000
[ 1388.924682] Enabling non-boot CPUs ...
[ 1388.924743] smpboot: Booting Node 0 Processor 1 APIC 0x2
[ 1388.938760] CPU1 is up
[ 1388.938805] smpboot: Booting Node 0 Processor 2 APIC 0x4
[ 1388.952872] CPU2 is up
[ 1388.953385] smpboot: Booting Node 0 Processor 3 APIC 0x6
[ 1388.967487] CPU3 is up
[ 1388.968200] smpboot: Booting Node 0 Processor 4 APIC 0x1
[ 1388.981666] CPU4 is up
[ 1388.982403] smpboot: Booting Node 0 Processor 5 APIC 0x3
[ 1388.996670] CPU5 is up
[ 1388.997477] smpboot: Booting Node 0 Processor 6 APIC 0x5
[ 1389.011770] CPU6 is up
[ 1389.012739] smpboot: Booting Node 0 Processor 7 APIC 0x7
[ 1389.027204] CPU7 is up
[ 1389.035130] ACPI: Waking up from system sleep state S3
[ 1390.033922] ehci_hcd 0000:00:1a.7: wake-up capability disabled by ACPI
[ 1390.049969] pcieport 0000:00:1c.1: power state changed by ACPI to D0
[ 1390.065876] ehci_hcd 0000:00:1d.7: wake-up capability disabled by ACPI
[ 1390.161849] PM: noirq resume of devices complete after 160.091 msecs
[ 1390.161907] PM: early resume of devices complete after 0.037 msecs
[ 1390.161954] uhci_hcd 0000:00:1a.0: setting latency timer to 64
[ 1390.161956] ehci_hcd 0000:00:1a.7: setting latency timer to 64
[ 1390.161995] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[ 1390.162005] usb usb3: root hub lost power or was reset
[ 1390.162007] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[ 1390.162012] ata_piix 0000:00:1f.2: setting latency timer to 64
[ 1390.162134] usb usb4: root hub lost power or was reset
[ 1390.162218] mei 0000:00:16.0: irq 45 for MSI/MSI-X
[ 1390.162289] snd_hda_intel 0000:00:1b.0: irq 46 for MSI/MSI-X
[ 1390.162372] snd_hda_intel 0000:01:00.1: irq 47 for MSI/MSI-X
[ 1390.162846] mei 0000:00:16.0: wd: failed to find the client
[ 1390.164182] tg3 0000:02:00.0: wake-up capability disabled by ACPI
[ 1390.168155] <6>[fglrx] Power up the ASIC
[ 1390.168355] <6>[fglrx] Preparing resume fglrx in kernel.
[ 1390.191674] <6>[fglrx] Resuming fglrx in kernel completed.
[ 1390.191752] <6>[fglrx] IRQ 54 Enabled
[ 1390.217869] firewire_ohci 0000:04:00.0: irq 48 for MSI/MSI-X
[ 1390.717295] firewire_core 0000:04:00.0: rediscovered device fw0
[ 1391.508515] ata1.01: failed to resume link (SControl 0)
[ 1391.508589] ata2.01: failed to resume link (SControl 0)
[ 1391.664440] ata2.00: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
[ 1391.664454] ata2.01: SATA link down (SStatus 0 SControl 0)
[ 1391.664465] ata2.01: link offline, clearing class 3 to NONE
[ 1391.672608] ata2.00: ACPI cmd ef/03:46:00:00:00:a0 (SET FEATURES) filtered 
out
[ 1391.688588] ata2.00: configured for UDMA/100
[ 1391.944127] ata1.00: SATA link up 3.0 Gbps (SStatus 123 SControl 300)
[ 1391.944138] ata1.01: SATA link down (SStatus 0 SControl 0)
[ 1392.216087] ata1.00: ACPI cmd ef/03:46:00:00:00:a0 (SET FEATURES) filtered 
out
[ 1392.244419] ata1.00: failed to get Identify Device Data, Emask 0x1
[ 1392.252655] ata1.00: failed to get Identify Device Data, Emask 0x1
[ 1392.252664] ata1.00: configured for UDMA/133
[ 1392.253051] sd 0:0:0:0: [sda] Starting disk
[ 1392.265666] PM: resume of devices complete after 2105.799 msecs
[ 1392.265820] Restarting tasks ... done.
[ 1392.552505] tg3 0000:02:00.0: irq 49 for MSI/MSI-X
[ 1392.552510] tg3 0000:02:00.0: irq 50 for MSI/MSI-X
[ 1392.552514] tg3 0000:02:00.0: irq 51 for MSI/MSI-X
[ 1392.552517] tg3 0000:02:00.0: irq 52 for MSI/MSI-X
[ 1392.552520] tg3 0000:02:00.0: irq 53 for MSI/MSI-X
[ 1393.582212] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[ 1393.738269] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[ 1393.798748] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 1394.453696] usb 2-1.2: new low-speed USB device number 4 using ehci_hcd
[ 1394.549013] usb 2-1.2: New USB device found, idVendor=093a, idProduct=2521
[ 1394.549024] usb 2-1.2: New USB device strings: Mfr=0, Product=2, 
SerialNumber=0
[ 1394.549030] usb 2-1.2: Product: USB OPTICAL MOUSE
[ 1394.552694] input: USB OPTICAL MOUSE as 
/devices/pci0000:00/0000:00:1d.7/usb2/2-1/2-1.2/2-1.2:1.0/input/input15
[ 1394.552856] hid-generic 0003:093A:2521.0006: input,hidraw3: USB HID v1.11 
Mouse [USB OPTICAL MOUSE] on usb-0000:00:1d.7-1.2/input0
[ 1419.786023] wlan0: authenticate with 00:22:7f:18:11:98
[ 1419.809484] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 1419.811923] wlan0: authenticated
[ 1419.812995] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 1419.815737] wlan0: RX AssocResp from 00:22:7f:18:11:98 (capab=0x421 
status=0 aid=2)
[ 1419.816412] wlan0: associated
[ 1419.816469] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[ 1419.816664] cfg80211: Calling CRDA for country: US
[ 1419.827442] cfg80211: Regulatory domain changed to country: US
[ 1419.827452] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 1419.827460] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 1419.827467] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 1419.827474] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1419.827480] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1419.827487] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1419.827494] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 1514.682526] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:98 after 500ms, disconnecting.
[ 1514.683292] cfg80211: Calling CRDA to update world regulatory domain
[ 1514.691878] cfg80211: World regulatory domain updated:
[ 1514.691885] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 1514.691890] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1514.691895] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1514.691899] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1514.691903] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1514.691907] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1515.866719] wlan0: authenticate with 00:22:7f:18:11:a8
[ 1515.889178] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 1515.895967] wlan0: authenticated
[ 1515.896658] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[ 1516.100410] wlan0: associate with 00:22:7f:18:11:a8 (try 2/3)
[ 1516.105627] wlan0: RX AssocResp from 00:22:7f:18:11:a8 (capab=0x421 
status=0 aid=2)
[ 1516.106269] wlan0: associated
[ 1516.106413] cfg80211: Calling CRDA for country: US
[ 1516.115454] cfg80211: Regulatory domain changed to country: US
[ 1516.115462] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 1516.115468] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 1516.115473] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 1516.115477] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1516.115481] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1516.115485] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1516.115488] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 1521.676257] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:a8 after 500ms, disconnecting.
[ 1521.677116] cfg80211: Calling CRDA to update world regulatory domain
[ 1521.685700] cfg80211: World regulatory domain updated:
[ 1521.685707] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 1521.685712] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1521.685717] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1521.685721] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1521.685725] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1521.685729] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1521.844853] wlan0: authenticate with 00:22:7f:11:72:e8
[ 1521.868523] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 1522.071595] wlan0: send auth to 00:22:7f:11:72:e8 (try 2/3)
[ 1522.076280] wlan0: authenticated
[ 1522.079659] wlan0: associate with 00:22:7f:11:72:e8 (try 1/3)
[ 1522.082717] wlan0: RX AssocResp from 00:22:7f:11:72:e8 (capab=0x421 
status=0 aid=4)
[ 1522.083355] wlan0: associated
[ 1522.083486] cfg80211: Calling CRDA for country: US
[ 1522.092196] cfg80211: Regulatory domain changed to country: US
[ 1522.092204] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 1522.092210] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 1522.092214] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 1522.092218] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1522.092222] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1522.092226] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1522.092230] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 1970.012684] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:11:72:e8 after 500ms, disconnecting.
[ 1970.013427] cfg80211: Calling CRDA to update world regulatory domain
[ 1970.022598] cfg80211: World regulatory domain updated:
[ 1970.022605] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 1970.022611] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1970.022615] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1970.022619] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1970.022623] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1970.022627] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1971.203842] wlan0: authenticate with 00:22:7f:11:72:e8
[ 1971.215294] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 1971.418541] wlan0: send auth to 00:22:7f:11:72:e8 (try 2/3)
[ 1971.622246] wlan0: send auth to 00:22:7f:11:72:e8 (try 3/3)
[ 1971.825895] wlan0: authentication with 00:22:7f:11:72:e8 timed out
[ 1973.916501] wlan0: authenticate with 00:22:7f:18:11:a8
[ 1973.939224] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 1973.945336] wlan0: authenticated
[ 1973.946820] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[ 1974.150524] wlan0: associate with 00:22:7f:18:11:a8 (try 2/3)
[ 1974.354225] wlan0: associate with 00:22:7f:18:11:a8 (try 3/3)
[ 1974.358639] wlan0: RX AssocResp from 00:22:7f:18:11:a8 (capab=0x421 
status=0 aid=4)
[ 1974.359277] wlan0: associated
[ 1974.359419] cfg80211: Calling CRDA for country: US
[ 1974.368069] cfg80211: Regulatory domain changed to country: US
[ 1974.368077] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 1974.368082] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 1974.368087] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 1974.368091] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1974.368095] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1974.368099] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1974.368103] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 1978.004909] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:a8 after 500ms, disconnecting.
[ 1978.005662] cfg80211: Calling CRDA to update world regulatory domain
[ 1978.010505] cfg80211: World regulatory domain updated:
[ 1978.010507] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 1978.010508] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1978.010509] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1978.010510] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 1978.010511] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1978.010512] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 1979.208619] wlan0: authenticate with 00:22:7f:18:11:98
[ 1979.231377] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 1979.233062] wlan0: authenticated
[ 1979.235036] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 1979.438719] wlan0: associate with 00:22:7f:18:11:98 (try 2/3)
[ 1979.642447] wlan0: associate with 00:22:7f:18:11:98 (try 3/3)
[ 1979.846151] wlan0: association with 00:22:7f:18:11:98 timed out
[ 1980.014804] wlan0: authenticate with 00:22:7f:18:11:d8
[ 1980.038345] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 1980.241563] wlan0: send auth to 00:22:7f:18:11:d8 (try 2/3)
[ 1980.242961] wlan0: authenticated
[ 1980.245558] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 1980.449254] wlan0: associate with 00:22:7f:18:11:d8 (try 2/3)
[ 1980.652980] wlan0: associate with 00:22:7f:18:11:d8 (try 3/3)
[ 1980.856681] wlan0: association with 00:22:7f:18:11:d8 timed out
[ 1982.068120] wlan0: authenticate with 00:22:7f:18:11:a8
[ 1982.091413] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 1982.294550] wlan0: send auth to 00:22:7f:18:11:a8 (try 2/3)
[ 1982.498245] wlan0: send auth to 00:22:7f:18:11:a8 (try 3/3)
[ 1982.701940] wlan0: authentication with 00:22:7f:18:11:a8 timed out
[ 1989.944305] wlan0: authenticate with 00:22:7f:11:72:e8
[ 1989.967554] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 1990.170919] wlan0: send auth to 00:22:7f:11:72:e8 (try 2/3)
[ 1990.374702] wlan0: send auth to 00:22:7f:11:72:e8 (try 3/3)
[ 1990.578318] wlan0: authentication with 00:22:7f:11:72:e8 timed out
[ 1995.056990] wlan0: authenticate with 00:22:7f:18:11:d8
[ 1995.080139] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 1995.283431] wlan0: send auth to 00:22:7f:18:11:d8 (try 2/3)
[ 1995.487137] wlan0: send auth to 00:22:7f:18:11:d8 (try 3/3)
[ 1995.488408] wlan0: authenticated
[ 1995.491150] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 1995.694783] wlan0: associate with 00:22:7f:18:11:d8 (try 2/3)
[ 1995.898549] wlan0: associate with 00:22:7f:18:11:d8 (try 3/3)
[ 1996.102224] wlan0: association with 00:22:7f:18:11:d8 timed out
[ 2024.513606] wlan0: authenticate with 00:22:7f:11:72:e8
[ 2024.536849] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 2024.740099] wlan0: send auth to 00:22:7f:11:72:e8 (try 2/3)
[ 2024.748235] wlan0: authenticated
[ 2024.752158] wlan0: associate with 00:22:7f:11:72:e8 (try 1/3)
[ 2024.955731] wlan0: associate with 00:22:7f:11:72:e8 (try 2/3)
[ 2025.159481] wlan0: associate with 00:22:7f:11:72:e8 (try 3/3)
[ 2025.363121] wlan0: association with 00:22:7f:11:72:e8 timed out
[ 2037.265829] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[ 2037.326230] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2039.539404] wlan0: authenticate with 00:22:7f:18:11:98
[ 2039.550634] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 2039.554212] wlan0: authenticated
[ 2039.558274] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 2039.560894] wlan0: RX AssocResp from 00:22:7f:18:11:98 (capab=0x421 
status=0 aid=2)
[ 2039.561560] wlan0: associated
[ 2039.561633] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[ 2039.561826] cfg80211: Calling CRDA for country: US
[ 2039.571240] cfg80211: Regulatory domain changed to country: US
[ 2039.571248] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 2039.571253] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 2039.571258] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 2039.571262] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 2039.571266] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 2039.571270] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 2039.571274] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 2612.246184] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:98 after 500ms, disconnecting.
[ 2612.246943] cfg80211: Calling CRDA to update world regulatory domain
[ 2612.255650] cfg80211: World regulatory domain updated:
[ 2612.255658] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 2612.255663] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 2612.255668] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 2612.255672] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 2612.255676] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 2612.255680] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 2613.430998] wlan0: authenticate with 00:22:7f:18:11:d8
[ 2613.453251] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 2613.455009] wlan0: authenticated
[ 2613.457034] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 2613.460027] wlan0: RX AssocResp from 00:22:7f:18:11:d8 (capab=0x421 
status=0 aid=5)
[ 2613.460944] wlan0: associated
[ 2613.461106] cfg80211: Calling CRDA for country: US
[ 2613.470873] cfg80211: Regulatory domain changed to country: US
[ 2613.470880] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 2613.470886] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 2613.470890] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 2613.470894] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 2613.470898] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 2613.470902] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 2613.470906] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 2715.404076] wlan0: authenticate with 00:22:7f:18:11:a8
[ 2715.414371] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 2715.417216] wlan0: authenticated
[ 2715.417934] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[ 2715.422905] wlan0: RX AssocResp from 00:22:7f:18:11:a8 (capab=0x421 
status=0 aid=7)
[ 2715.423540] wlan0: associated
[ 3650.242641] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:a8 after 500ms, disconnecting.
[ 3650.243358] cfg80211: Calling CRDA to update world regulatory domain
[ 3650.252123] cfg80211: World regulatory domain updated:
[ 3650.252131] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 3650.252136] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3650.252141] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 3650.252145] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 3650.252149] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3650.252153] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3651.454037] wlan0: authenticate with 00:22:7f:18:11:a8
[ 3651.465739] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 3651.467126] wlan0: authenticated
[ 3651.469434] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[ 3651.472349] wlan0: RX AssocResp from 00:22:7f:18:11:a8 (capab=0x421 
status=0 aid=7)
[ 3651.473037] wlan0: associated
[ 3651.473176] cfg80211: Calling CRDA for country: US
[ 3651.482289] cfg80211: Regulatory domain changed to country: US
[ 3651.482299] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 3651.482305] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 3651.482309] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 3651.482313] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3651.482317] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3651.482321] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3651.482325] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 3659.229833] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:a8 after 500ms, disconnecting.
[ 3659.230442] cfg80211: Calling CRDA to update world regulatory domain
[ 3659.239159] cfg80211: World regulatory domain updated:
[ 3659.239167] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 3659.239173] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3659.239178] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 3659.239182] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 3659.239185] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3659.239189] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3660.434438] wlan0: authenticate with 00:22:7f:18:11:98
[ 3660.457107] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 3660.458947] wlan0: authenticated
[ 3660.460622] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 3660.463148] wlan0: RX AssocResp from 00:22:7f:18:11:98 (capab=0x421 
status=0 aid=2)
[ 3660.463826] wlan0: associated
[ 3660.463984] cfg80211: Calling CRDA for country: US
[ 3660.473454] cfg80211: Regulatory domain changed to country: US
[ 3660.473462] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 3660.473468] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 3660.473473] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 3660.473477] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3660.473482] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3660.473485] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3660.473489] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 3801.104122] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:98 after 500ms, disconnecting.
[ 3801.104744] cfg80211: Calling CRDA to update world regulatory domain
[ 3801.113637] cfg80211: World regulatory domain updated:
[ 3801.113645] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 3801.113651] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3801.113655] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 3801.113659] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 3801.113663] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3801.113667] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3801.341196] wlan0: authenticate with 00:22:7f:18:11:d8
[ 3801.352224] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 3801.555652] wlan0: send auth to 00:22:7f:18:11:d8 (try 2/3)
[ 3801.557136] wlan0: authenticated
[ 3801.559711] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 3801.763504] wlan0: associate with 00:22:7f:18:11:d8 (try 2/3)
[ 3801.967364] wlan0: associate with 00:22:7f:18:11:d8 (try 3/3)
[ 3802.171104] wlan0: association with 00:22:7f:18:11:d8 timed out
[ 3802.339741] wlan0: authenticate with 00:22:7f:11:72:e8
[ 3802.363390] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 3802.365041] wlan0: authenticated
[ 3802.366944] wlan0: associate with 00:22:7f:11:72:e8 (try 1/3)
[ 3802.570737] wlan0: associate with 00:22:7f:11:72:e8 (try 2/3)
[ 3802.774514] wlan0: associate with 00:22:7f:11:72:e8 (try 3/3)
[ 3802.978317] wlan0: association with 00:22:7f:11:72:e8 timed out
[ 3804.177994] wlan0: authenticate with 00:22:7f:18:11:98
[ 3804.189547] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 3804.392895] wlan0: send auth to 00:22:7f:18:11:98 (try 2/3)
[ 3804.596694] wlan0: send auth to 00:22:7f:18:11:98 (try 3/3)
[ 3804.800546] wlan0: authentication with 00:22:7f:18:11:98 timed out
[ 3805.935937] wlan0: authenticate with 00:22:7f:11:72:e8
[ 3805.936136] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 3805.940705] wlan0: authenticated
[ 3805.943402] wlan0: associate with 00:22:7f:11:72:e8 (try 1/3)
[ 3806.147243] wlan0: associate with 00:22:7f:11:72:e8 (try 2/3)
[ 3806.351050] wlan0: associate with 00:22:7f:11:72:e8 (try 3/3)
[ 3806.554843] wlan0: association with 00:22:7f:11:72:e8 timed out
[ 3807.622813] wlan0: authenticate with 00:22:7f:18:11:d8
[ 3807.646313] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 3807.849623] wlan0: send auth to 00:22:7f:18:11:d8 (try 2/3)
[ 3807.850888] wlan0: authenticated
[ 3807.853598] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 3807.857182] wlan0: RX AssocResp from 00:22:7f:18:11:d8 (capab=0x421 
status=0 aid=6)
[ 3807.858006] wlan0: associated
[ 3807.858157] cfg80211: Calling CRDA for country: US
[ 3807.866079] cfg80211: Regulatory domain changed to country: US
[ 3807.866081] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 3807.866083] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 3807.866084] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 3807.866085] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3807.866086] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3807.866087] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 3807.866088] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 3914.556061] wlan0: authenticate with 00:22:7f:18:11:a8
[ 3914.566339] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 3914.576445] wlan0: authenticated
[ 3914.578013] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[ 3914.583476] wlan0: RX AssocResp from 00:22:7f:18:11:a8 (capab=0x421 
status=0 aid=7)
[ 3914.584146] wlan0: associated
[ 4216.688740] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:a8 after 500ms, disconnecting.
[ 4216.689551] cfg80211: Calling CRDA to update world regulatory domain
[ 4216.696368] cfg80211: World regulatory domain updated:
[ 4216.696375] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4216.696380] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4216.696385] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4216.696389] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4216.696393] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4216.696397] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4217.884664] wlan0: authenticate with 00:22:7f:18:11:a8
[ 4217.896040] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 4218.099380] wlan0: send auth to 00:22:7f:18:11:a8 (try 2/3)
[ 4218.303138] wlan0: send auth to 00:22:7f:18:11:a8 (try 3/3)
[ 4218.506986] wlan0: authentication with 00:22:7f:18:11:a8 timed out
[ 4220.603066] wlan0: authenticate with 00:22:7f:18:11:f8
[ 4220.625402] wlan0: send auth to 00:22:7f:18:11:f8 (try 1/3)
[ 4220.828734] wlan0: send auth to 00:22:7f:18:11:f8 (try 2/3)
[ 4221.032534] wlan0: send auth to 00:22:7f:18:11:f8 (try 3/3)
[ 4221.091328] wlan0: authenticated
[ 4221.092487] wlan0: associate with 00:22:7f:18:11:f8 (try 1/3)
[ 4221.296272] wlan0: associate with 00:22:7f:18:11:f8 (try 2/3)
[ 4221.302680] wlan0: RX AssocResp from 00:22:7f:18:11:f8 (capab=0x421 
status=0 aid=1)
[ 4221.303321] wlan0: associated
[ 4221.303465] cfg80211: Calling CRDA for country: US
[ 4221.310072] cfg80211: Regulatory domain changed to country: US
[ 4221.310075] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4221.310076] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 4221.310077] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 4221.310078] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4221.310079] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4221.310080] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4221.310081] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 4248.661782] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:f8 after 500ms, disconnecting.
[ 4248.662434] cfg80211: Calling CRDA to update world regulatory domain
[ 4248.666965] cfg80211: World regulatory domain updated:
[ 4248.666972] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4248.666977] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4248.666982] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4248.666986] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4248.666990] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4248.666994] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4249.857514] wlan0: authenticate with 00:22:7f:18:11:f8
[ 4249.868901] wlan0: send auth to 00:22:7f:18:11:f8 (try 1/3)
[ 4250.072295] wlan0: send auth to 00:22:7f:18:11:f8 (try 2/3)
[ 4250.276104] wlan0: send auth to 00:22:7f:18:11:f8 (try 3/3)
[ 4250.479901] wlan0: authentication with 00:22:7f:18:11:f8 timed out
[ 4252.075494] wlan0: authenticate with 00:22:7f:11:51:38
[ 4252.098640] wlan0: send auth to 00:22:7f:11:51:38 (try 1/3)
[ 4252.302179] wlan0: send auth to 00:22:7f:11:51:38 (try 2/3)
[ 4252.303954] wlan0: authenticated
[ 4252.306171] wlan0: associate with 00:22:7f:11:51:38 (try 1/3)
[ 4252.509931] wlan0: associate with 00:22:7f:11:51:38 (try 2/3)
[ 4252.713779] wlan0: associate with 00:22:7f:11:51:38 (try 3/3)
[ 4252.727562] wlan0: RX AssocResp from 00:22:7f:11:51:38 (capab=0x421 
status=0 aid=2)
[ 4252.728316] wlan0: associated
[ 4252.728457] cfg80211: Calling CRDA for country: US
[ 4252.735133] cfg80211: Regulatory domain changed to country: US
[ 4252.735136] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4252.735138] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 4252.735140] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 4252.735142] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4252.735144] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4252.735145] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4252.735147] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 4267.655337] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:11:51:38 after 500ms, disconnecting.
[ 4267.655975] cfg80211: Calling CRDA to update world regulatory domain
[ 4267.664443] cfg80211: World regulatory domain updated:
[ 4267.664451] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4267.664457] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4267.664462] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4267.664466] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4267.664469] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4267.664473] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4268.859339] wlan0: authenticate with 00:22:7f:18:11:a8
[ 4268.882621] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 4268.885942] wlan0: authenticated
[ 4268.890078] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[ 4269.093887] wlan0: associate with 00:22:7f:18:11:a8 (try 2/3)
[ 4269.099430] wlan0: RX AssocResp from 00:22:7f:18:11:a8 (capab=0x421 
status=0 aid=5)
[ 4269.100064] wlan0: associated
[ 4269.100201] cfg80211: Calling CRDA for country: US
[ 4269.109248] cfg80211: Regulatory domain changed to country: US
[ 4269.109256] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4269.109261] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 4269.109266] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 4269.109271] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4269.109274] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4269.109278] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4269.109282] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 4767.454210] wlan0: deauthenticating from 00:22:7f:18:11:a8 by local choice 
(reason=3)
[ 4767.464411] cfg80211: Calling CRDA to update world regulatory domain
[ 4767.474596] cfg80211: World regulatory domain updated:
[ 4767.474599] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4767.474600] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4767.474602] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4767.474603] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4767.474604] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4767.474605] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4768.661596] wlan0: authenticate with 00:22:7f:18:11:d8
[ 4768.685348] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 4768.686491] wlan0: authenticated
[ 4768.688930] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 4768.692100] wlan0: RX AssocResp from 00:22:7f:18:11:d8 (capab=0x421 
status=0 aid=1)
[ 4768.692555] wlan0: associated
[ 4768.692625] cfg80211: Calling CRDA for country: US
[ 4768.698953] cfg80211: Regulatory domain changed to country: US
[ 4768.698956] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4768.698958] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 4768.698960] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 4768.698961] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4768.698962] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4768.698964] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4768.698965] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 4787.151008] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:d8 after 500ms, disconnecting.
[ 4787.151781] cfg80211: Calling CRDA to update world regulatory domain
[ 4787.158214] cfg80211: World regulatory domain updated:
[ 4787.158222] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4787.158227] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4787.158232] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4787.158236] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4787.158240] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4787.158244] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4787.319797] wlan0: authenticate with 00:22:7f:11:72:e8
[ 4787.343286] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 4787.345337] wlan0: authenticated
[ 4787.346902] wlan0: associate with 00:22:7f:11:72:e8 (try 1/3)
[ 4787.350020] wlan0: RX AssocResp from 00:22:7f:11:72:e8 (capab=0x421 
status=0 aid=5)
[ 4787.350646] wlan0: associated
[ 4787.350780] cfg80211: Calling CRDA for country: US
[ 4787.359861] cfg80211: Regulatory domain changed to country: US
[ 4787.359868] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4787.359873] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 4787.359878] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 4787.359882] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4787.359886] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4787.359890] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4787.359894] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 4891.223238] wlan0: deauthenticating from 00:22:7f:11:72:e8 by local choice 
(reason=3)
[ 4891.232275] cfg80211: Calling CRDA to update world regulatory domain
[ 4891.240459] cfg80211: World regulatory domain updated:
[ 4891.240467] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4891.240472] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4891.240477] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4891.240481] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 4891.240485] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4891.240489] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4892.497600] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[ 4892.558031] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 4894.809075] wlan0: authenticate with 00:22:7f:18:11:98
[ 4894.820582] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 4894.826927] wlan0: authenticated
[ 4894.828312] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 4894.840069] wlan0: RX AssocResp from 00:22:7f:18:11:98 (capab=0x421 
status=0 aid=2)
[ 4894.841077] wlan0: associated
[ 4894.841130] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[ 4894.841253] cfg80211: Calling CRDA for country: US
[ 4894.849000] cfg80211: Regulatory domain changed to country: US
[ 4894.849009] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 4894.849014] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 4894.849019] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 4894.849023] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4894.849027] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4894.849031] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 4894.849035] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 5296.712545] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:98 after 500ms, disconnecting.
[ 5296.713310] cfg80211: Calling CRDA to update world regulatory domain
[ 5296.722220] cfg80211: World regulatory domain updated:
[ 5296.722232] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 5296.722241] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5296.722248] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 5296.722254] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 5296.722260] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5296.722266] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5297.920598] wlan0: authenticate with 00:22:7f:11:72:e8
[ 5297.931466] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 5298.135096] wlan0: send auth to 00:22:7f:11:72:e8 (try 2/3)
[ 5298.338851] wlan0: send auth to 00:22:7f:11:72:e8 (try 3/3)
[ 5298.542693] wlan0: authentication with 00:22:7f:11:72:e8 timed out
[ 5299.726995] wlan0: authenticate with 00:22:7f:18:11:a8
[ 5299.749944] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 5299.754940] wlan0: authenticated
[ 5299.757521] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[ 5299.762224] wlan0: RX AssocResp from 00:22:7f:18:11:a8 (capab=0x421 
status=0 aid=1)
[ 5299.762855] wlan0: associated
[ 5299.762983] cfg80211: Calling CRDA for country: US
[ 5299.770346] cfg80211: Regulatory domain changed to country: US
[ 5299.770349] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 5299.770351] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 5299.770352] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 5299.770353] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5299.770354] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5299.770355] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5299.770356] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 5309.703898] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:a8 after 500ms, disconnecting.
[ 5309.704857] cfg80211: Calling CRDA to update world regulatory domain
[ 5309.713206] cfg80211: World regulatory domain updated:
[ 5309.713213] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 5309.713219] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5309.713224] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 5309.713228] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 5309.713232] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5309.713236] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5310.900316] wlan0: authenticate with 00:22:7f:11:51:38
[ 5310.923063] wlan0: send auth to 00:22:7f:11:51:38 (try 1/3)
[ 5311.126481] wlan0: send auth to 00:22:7f:11:51:38 (try 2/3)
[ 5311.330290] wlan0: send auth to 00:22:7f:11:51:38 (try 3/3)
[ 5311.355129] wlan0: authenticated
[ 5311.358239] wlan0: associate with 00:22:7f:11:51:38 (try 1/3)
[ 5311.562062] wlan0: associate with 00:22:7f:11:51:38 (try 2/3)
[ 5311.765888] wlan0: associate with 00:22:7f:11:51:38 (try 3/3)
[ 5311.969667] wlan0: association with 00:22:7f:11:51:38 timed out
[ 5313.172954] wlan0: authenticate with 00:22:7f:18:11:d8
[ 5313.196926] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 5313.400281] wlan0: send auth to 00:22:7f:18:11:d8 (try 2/3)
[ 5313.604081] wlan0: send auth to 00:22:7f:18:11:d8 (try 3/3)
[ 5313.807898] wlan0: authentication with 00:22:7f:18:11:d8 timed out
[ 5315.004055] wlan0: authenticate with 00:22:7f:18:11:a8
[ 5315.027130] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 5315.230505] wlan0: send auth to 00:22:7f:18:11:a8 (try 2/3)
[ 5315.434267] wlan0: send auth to 00:22:7f:18:11:a8 (try 3/3)
[ 5315.638133] wlan0: authentication with 00:22:7f:18:11:a8 timed out
[ 5316.274491] wlan0: authenticate with 00:22:7f:11:72:e8
[ 5316.297885] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 5316.304313] wlan0: authenticated
[ 5316.305418] wlan0: associate with 00:22:7f:11:72:e8 (try 1/3)
[ 5316.309235] wlan0: RX AssocResp from 00:22:7f:11:72:e8 (capab=0x421 
status=0 aid=3)
[ 5316.309896] wlan0: associated
[ 5316.309946] cfg80211: Calling CRDA for country: US
[ 5316.315274] cfg80211: Regulatory domain changed to country: US
[ 5316.315276] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 5316.315278] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 5316.315279] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 5316.315280] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5316.315281] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5316.315282] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 5316.315283] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 6060.970677] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:11:72:e8 after 500ms, disconnecting.
[ 6060.979071] cfg80211: Calling CRDA to update world regulatory domain
[ 6060.987823] cfg80211: World regulatory domain updated:
[ 6060.987830] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6060.987836] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6060.987840] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6060.987845] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6060.987848] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6060.987852] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6062.187437] wlan0: authenticate with 00:22:7f:18:11:98
[ 6062.197693] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 6062.401251] wlan0: send auth to 00:22:7f:18:11:98 (try 2/3)
[ 6062.605052] wlan0: send auth to 00:22:7f:18:11:98 (try 3/3)
[ 6062.808858] wlan0: authentication with 00:22:7f:18:11:98 timed out
[ 6064.000854] wlan0: authenticate with 00:22:7f:18:11:a8
[ 6064.024004] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 6064.227484] wlan0: send auth to 00:22:7f:18:11:a8 (try 2/3)
[ 6064.233268] wlan0: authenticated
[ 6064.235475] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[ 6064.439269] wlan0: associate with 00:22:7f:18:11:a8 (try 2/3)
[ 6064.643105] wlan0: associate with 00:22:7f:18:11:a8 (try 3/3)
[ 6064.846880] wlan0: association with 00:22:7f:18:11:a8 timed out
[ 6065.914936] wlan0: authenticate with 00:22:7f:18:11:d8
[ 6065.938384] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 6066.141620] wlan0: send auth to 00:22:7f:18:11:d8 (try 2/3)
[ 6066.345372] wlan0: send auth to 00:22:7f:18:11:d8 (try 3/3)
[ 6066.549226] wlan0: authentication with 00:22:7f:18:11:d8 timed out
[ 6067.617290] wlan0: authenticate with 00:22:7f:11:72:e8
[ 6067.640558] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 6067.843925] wlan0: send auth to 00:22:7f:11:72:e8 (try 2/3)
[ 6067.848701] wlan0: authenticated
[ 6067.851994] wlan0: associate with 00:22:7f:11:72:e8 (try 1/3)
[ 6068.055765] wlan0: associate with 00:22:7f:11:72:e8 (try 2/3)
[ 6068.259568] wlan0: associate with 00:22:7f:11:72:e8 (try 3/3)
[ 6068.463365] wlan0: association with 00:22:7f:11:72:e8 timed out
[ 6070.546741] wlan0: authenticate with 00:22:7f:18:11:98
[ 6070.565644] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 6070.568170] wlan0: authenticated
[ 6070.569386] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 6070.773126] wlan0: associate with 00:22:7f:18:11:98 (try 2/3)
[ 6070.976928] wlan0: associate with 00:22:7f:18:11:98 (try 3/3)
[ 6071.180752] wlan0: association with 00:22:7f:18:11:98 timed out
[ 6079.382089] wlan0: authenticate with 00:22:7f:11:72:e8
[ 6079.393051] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 6079.596560] wlan0: send auth to 00:22:7f:11:72:e8 (try 2/3)
[ 6079.800327] wlan0: send auth to 00:22:7f:11:72:e8 (try 3/3)
[ 6080.004169] wlan0: authentication with 00:22:7f:11:72:e8 timed out
[ 6090.079505] wlan0: authenticate with 00:22:7f:18:11:d8
[ 6090.102850] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 6090.104541] wlan0: authenticated
[ 6090.106352] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 6090.310163] wlan0: associate with 00:22:7f:18:11:d8 (try 2/3)
[ 6090.513972] wlan0: associate with 00:22:7f:18:11:d8 (try 3/3)
[ 6090.717763] wlan0: association with 00:22:7f:18:11:d8 timed out
[ 6100.784696] wlan0: authenticate with 00:22:7f:18:11:98
[ 6100.808484] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 6100.813967] wlan0: authenticated
[ 6100.815935] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 6101.019760] wlan0: associate with 00:22:7f:18:11:98 (try 2/3)
[ 6101.030541] wlan0: RX AssocResp from 00:22:7f:18:11:98 (capab=0x421 
status=0 aid=5)
[ 6101.031282] wlan0: associated
[ 6101.031418] cfg80211: Calling CRDA for country: US
[ 6101.039248] cfg80211: Regulatory domain changed to country: US
[ 6101.039256] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6101.039262] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 6101.039266] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 6101.039271] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6101.039274] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6101.039278] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6101.039282] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 6104.968011] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:98 after 500ms, disconnecting.
[ 6104.968855] cfg80211: Calling CRDA to update world regulatory domain
[ 6104.977582] cfg80211: World regulatory domain updated:
[ 6104.977589] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6104.977595] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6104.977600] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6104.977604] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6104.977608] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6104.977612] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6106.167703] wlan0: authenticate with 00:22:7f:18:11:98
[ 6106.179218] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 6106.382568] wlan0: send auth to 00:22:7f:18:11:98 (try 2/3)
[ 6106.586366] wlan0: send auth to 00:22:7f:18:11:98 (try 3/3)
[ 6106.592794] wlan0: authenticated
[ 6106.594333] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 6106.798158] wlan0: associate with 00:22:7f:18:11:98 (try 2/3)
[ 6107.001931] wlan0: associate with 00:22:7f:18:11:98 (try 3/3)
[ 6107.205763] wlan0: association with 00:22:7f:18:11:98 timed out
[ 6108.273891] wlan0: authenticate with 00:22:7f:18:11:f8
[ 6108.297087] wlan0: send auth to 00:22:7f:18:11:f8 (try 1/3)
[ 6108.395205] wlan0: authenticated
[ 6108.396636] wlan0: associate with 00:22:7f:18:11:f8 (try 1/3)
[ 6108.600433] wlan0: associate with 00:22:7f:18:11:f8 (try 2/3)
[ 6108.804216] wlan0: associate with 00:22:7f:18:11:f8 (try 3/3)
[ 6109.008014] wlan0: association with 00:22:7f:18:11:f8 timed out
[ 6117.229634] wlan0: authenticate with 00:22:7f:18:11:98
[ 6117.252509] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 6117.255275] wlan0: authenticated
[ 6117.256003] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 6117.278318] wlan0: RX AssocResp from 00:22:7f:18:11:98 (capab=0x421 
status=0 aid=5)
[ 6117.278948] wlan0: associated
[ 6117.278998] cfg80211: Calling CRDA for country: US
[ 6117.281701] cfg80211: Regulatory domain changed to country: US
[ 6117.281703] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6117.281705] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 6117.281706] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 6117.281707] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6117.281708] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6117.281709] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6117.281710] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 6771.295379] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:98 after 500ms, disconnecting.
[ 6771.303728] cfg80211: Calling CRDA to update world regulatory domain
[ 6771.312200] cfg80211: World regulatory domain updated:
[ 6771.312208] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6771.312213] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6771.312218] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6771.312222] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6771.312226] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6771.312230] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6772.503207] wlan0: authenticate with 00:22:7f:18:11:98
[ 6772.522541] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 6772.725935] wlan0: send auth to 00:22:7f:18:11:98 (try 2/3)
[ 6772.929735] wlan0: send auth to 00:22:7f:18:11:98 (try 3/3)
[ 6773.133537] wlan0: authentication with 00:22:7f:18:11:98 timed out
[ 6780.823702] wlan0: authenticate with 00:22:7f:18:11:a8
[ 6780.846484] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 6781.049814] wlan0: send auth to 00:22:7f:18:11:a8 (try 2/3)
[ 6781.253677] wlan0: send auth to 00:22:7f:18:11:a8 (try 3/3)
[ 6781.457406] wlan0: authentication with 00:22:7f:18:11:a8 timed out
[ 6782.525471] wlan0: authenticate with 00:22:7f:18:11:d8
[ 6782.548799] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 6782.752202] wlan0: send auth to 00:22:7f:18:11:d8 (try 2/3)
[ 6782.956003] wlan0: send auth to 00:22:7f:18:11:d8 (try 3/3)
[ 6782.957380] wlan0: authenticated
[ 6782.959991] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 6783.163796] wlan0: associate with 00:22:7f:18:11:d8 (try 2/3)
[ 6783.367600] wlan0: associate with 00:22:7f:18:11:d8 (try 3/3)
[ 6783.571401] wlan0: association with 00:22:7f:18:11:d8 timed out
[ 6788.387875] wlan0: authenticate with 00:22:7f:18:11:d8
[ 6788.399171] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 6788.409122] wlan0: authenticated
[ 6788.410660] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 6788.614512] wlan0: associate with 00:22:7f:18:11:d8 (try 2/3)
[ 6788.818316] wlan0: associate with 00:22:7f:18:11:d8 (try 3/3)
[ 6789.022114] wlan0: association with 00:22:7f:18:11:d8 timed out
[ 6812.340460] wlan0: authenticate with 00:22:7f:18:11:d8
[ 6812.351804] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 6812.352859] wlan0: authenticated
[ 6812.355477] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 6812.358429] wlan0: RX AssocResp from 00:22:7f:18:11:d8 (capab=0x421 
status=0 aid=1)
[ 6812.358746] wlan0: associated
[ 6812.358798] cfg80211: Calling CRDA for country: US
[ 6812.361567] cfg80211: Regulatory domain changed to country: US
[ 6812.361570] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6812.361572] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 6812.361573] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 6812.361574] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6812.361575] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6812.361576] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6812.361577] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 6817.842532] wlan0: authenticate with 00:22:7f:18:11:98
[ 6817.854584] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 6817.855593] wlan0: authenticated
[ 6817.858173] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 6817.862517] wlan0: RX AssocResp from 00:22:7f:18:11:98 (capab=0x421 
status=0 aid=2)
[ 6817.862840] wlan0: associated
[ 6903.181724] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:98 after 500ms, disconnecting.
[ 6903.182432] cfg80211: Calling CRDA to update world regulatory domain
[ 6903.190717] cfg80211: World regulatory domain updated:
[ 6903.190725] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6903.190730] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6903.190735] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6903.190739] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6903.190743] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6903.190747] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6903.562443] wlan0: authenticate with 00:22:7f:18:11:f8
[ 6903.573711] wlan0: send auth to 00:22:7f:18:11:f8 (try 1/3)
[ 6903.777128] wlan0: send auth to 00:22:7f:18:11:f8 (try 2/3)
[ 6903.782518] wlan0: authenticated
[ 6903.785065] wlan0: associate with 00:22:7f:18:11:f8 (try 1/3)
[ 6903.793955] wlan0: RX AssocResp from 00:22:7f:18:11:f8 (capab=0x421 
status=0 aid=6)
[ 6903.794660] wlan0: associated
[ 6903.794813] cfg80211: Calling CRDA for country: US
[ 6903.803156] cfg80211: Regulatory domain changed to country: US
[ 6903.803164] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6903.803170] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 6903.803174] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 6903.803178] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6903.803182] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6903.803186] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6903.803190] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 6913.168043] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:f8 after 500ms, disconnecting.
[ 6913.168847] cfg80211: Calling CRDA to update world regulatory domain
[ 6913.177453] cfg80211: World regulatory domain updated:
[ 6913.177461] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6913.177467] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6913.177471] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6913.177475] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6913.177479] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6913.177483] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6914.387791] wlan0: authenticate with 00:22:7f:18:11:f8
[ 6914.399254] wlan0: send auth to 00:22:7f:18:11:f8 (try 1/3)
[ 6914.400646] wlan0: authenticated
[ 6914.402818] wlan0: associate with 00:22:7f:18:11:f8 (try 1/3)
[ 6914.415395] wlan0: RX AssocResp from 00:22:7f:18:11:f8 (capab=0x421 
status=0 aid=6)
[ 6914.416101] wlan0: associated
[ 6914.416246] cfg80211: Calling CRDA for country: US
[ 6914.423599] cfg80211: Regulatory domain changed to country: US
[ 6914.423607] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6914.423612] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 6914.423617] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 6914.423621] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6914.423625] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6914.423629] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6914.423633] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 6920.189219] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:f8 after 500ms, disconnecting.
[ 6920.189932] cfg80211: Calling CRDA to update world regulatory domain
[ 6920.199224] cfg80211: World regulatory domain updated:
[ 6920.199235] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6920.199244] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6920.199251] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6920.199258] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 6920.199265] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6920.199271] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6921.417127] wlan0: authenticate with 00:22:7f:18:11:98
[ 6921.440401] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 6921.643777] wlan0: send auth to 00:22:7f:18:11:98 (try 2/3)
[ 6921.847525] wlan0: send auth to 00:22:7f:18:11:98 (try 3/3)
[ 6922.051411] wlan0: authentication with 00:22:7f:18:11:98 timed out
[ 6923.259541] wlan0: authenticate with 00:22:7f:18:11:d8
[ 6923.282542] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 6923.485993] wlan0: send auth to 00:22:7f:18:11:d8 (try 2/3)
[ 6923.689798] wlan0: send auth to 00:22:7f:18:11:d8 (try 3/3)
[ 6923.893592] wlan0: authentication with 00:22:7f:18:11:d8 timed out
[ 6925.113479] wlan0: authenticate with 00:22:7f:18:11:f8
[ 6925.136819] wlan0: send auth to 00:22:7f:18:11:f8 (try 1/3)
[ 6925.340209] wlan0: send auth to 00:22:7f:18:11:f8 (try 2/3)
[ 6925.544000] wlan0: send auth to 00:22:7f:18:11:f8 (try 3/3)
[ 6925.747792] wlan0: authentication with 00:22:7f:18:11:f8 timed out
[ 6945.090177] wlan0: authenticate with 00:22:7f:18:11:a8
[ 6945.114148] wlan0: send auth to 00:22:7f:18:11:a8 (try 1/3)
[ 6945.316798] wlan0: send auth to 00:22:7f:18:11:a8 (try 2/3)
[ 6945.520605] wlan0: send auth to 00:22:7f:18:11:a8 (try 3/3)
[ 6945.534689] wlan0: authenticated
[ 6945.536540] wlan0: associate with 00:22:7f:18:11:a8 (try 1/3)
[ 6945.686553] wlan0: deauthenticating from 00:22:7f:18:11:a8 by local choice 
(reason=3)
[ 6949.672681] b43-phy0: Loading firmware version 666.2 (2011-02-23 01:15:07)
[ 6949.733109] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 6951.979532] wlan0: authenticate with 00:22:7f:18:11:d8
[ 6952.002564] wlan0: send auth to 00:22:7f:18:11:d8 (try 1/3)
[ 6952.003676] wlan0: authenticated
[ 6952.006309] wlan0: associate with 00:22:7f:18:11:d8 (try 1/3)
[ 6952.008989] wlan0: RX AssocResp from 00:22:7f:18:11:d8 (capab=0x421 
status=0 aid=1)
[ 6952.009345] wlan0: associated
[ 6952.009399] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[ 6952.009593] cfg80211: Calling CRDA for country: US
[ 6952.015312] cfg80211: Regulatory domain changed to country: US
[ 6952.015315] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 6952.015317] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 6952.015319] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 6952.015320] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6952.015322] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6952.015323] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 6952.015325] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)
[ 7268.088220] wlan0: authenticate with 00:22:7f:18:11:98
[ 7268.098711] wlan0: send auth to 00:22:7f:18:11:98 (try 1/3)
[ 7268.100002] wlan0: authenticated
[ 7268.102257] wlan0: associate with 00:22:7f:18:11:98 (try 1/3)
[ 7268.105120] wlan0: RX AssocResp from 00:22:7f:18:11:98 (capab=0x421 
status=0 aid=5)
[ 7268.105752] wlan0: associated
[ 8438.726018] ieee80211 phy0: wlan0: No probe response from AP 
00:22:7f:18:11:98 after 500ms, disconnecting.
[ 8438.726765] cfg80211: Calling CRDA to update world regulatory domain
[ 8438.735244] cfg80211: World regulatory domain updated:
[ 8438.735252] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 8438.735257] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 8438.735262] cfg80211:   (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 8438.735266] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 
2000 mBm)
[ 8438.735270] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 8438.735274] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 8439.917869] wlan0: authenticate with 00:22:7f:11:72:e8
[ 8439.937301] wlan0: send auth to 00:22:7f:11:72:e8 (try 1/3)
[ 8439.941105] wlan0: authenticated
[ 8439.944751] wlan0: associate with 00:22:7f:11:72:e8 (try 1/3)
[ 8439.949943] wlan0: RX AssocResp from 00:22:7f:11:72:e8 (capab=0x421 
status=0 aid=2)
[ 8439.950581] wlan0: associated
[ 8439.950707] cfg80211: Calling CRDA for country: US
[ 8439.959153] cfg80211: Regulatory domain changed to country: US
[ 8439.959161] cfg80211:   (start_freq - end_freq @ bandwidth), 
(max_antenna_gain, max_eirp)
[ 8439.959166] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 
2700 mBm)
[ 8439.959171] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 
1700 mBm)
[ 8439.959175] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 8439.959179] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 8439.959182] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 
2000 mBm)
[ 8439.959186] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 
3000 mBm)

Could be wpa_supplicant issue too, have updated to version 2, but same issue. 

Doesn't happen when booting different OS with manufacture drivers. 
