From: Benjamin Daines <benjamindaines@gmail.com>
Date: Tue, 26 Mar 2013 15:18:40 -0400
Subject: Further info on b43 roaming issues
Message-ID: <2031697.MdoeHcjIok@ben-linux>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

wpa_cli readout of event

<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 50:a7:33:03:47:78 (SSID='Kardon_Wifi' 
freq=2412 MHz)
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 50:a7:33:03:47:78 (SSID='Kardon_Wifi' 
freq=2412 MHz)
<3>Trying to associate with 50:a7:33:03:47:78 (SSID='Kardon_Wifi' freq=2412 
MHz)
<3>Associated with 50:a7:33:03:47:78
<3>CTRL-EVENT-CONNECTED - Connection to 50:a7:33:03:47:78 completed [id=0 
id_str=]
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-DISCONNECTED bssid=50:a7:33:03:47:78 reason=4 
locally_generated=1
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 00:22:7f:18:11:d8 (SSID='Kardon_Wifi' 
freq=2462 MHz)
<3>Trying to associate with 00:22:7f:18:11:d8 (SSID='Kardon_Wifi' freq=2462 
MHz)
<3>Associated with 00:22:7f:18:11:d8
<3>CTRL-EVENT-CONNECTED - Connection to 00:22:7f:18:11:d8 completed [id=0 
id_str=]
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 00:22:7f:18:11:98 (SSID='Kardon_Wifi' 
freq=2412 MHz)
<3>Trying to associate with 00:22:7f:18:11:98 (SSID='Kardon_Wifi' freq=2412 
MHz)
<3>Associated with 00:22:7f:18:11:98
<3>CTRL-EVENT-CONNECTED - Connection to 00:22:7f:18:11:98 completed [id=0 
id_str=]
<3>CTRL-EVENT-DISCONNECTED bssid=00:22:7f:18:11:98 reason=3 
locally_generated=1
> 'PING' command failed.
Connection to wpa_supplicant lost - trying to reconnect                                                           
Connection to wpa_supplicant re-established                                                                       
<3>CTRL-EVENT-SCAN-RESULTS                                                                                        
<3>SME: Trying to authenticate with 00:22:7f:18:11:98 (SSID='Kardon_Wifi' 
freq=2412 MHz)                          
<3>Trying to associate with 00:22:7f:18:11:98 (SSID='Kardon_Wifi' freq=2412 
MHz)                                  
<3>Associated with 00:22:7f:18:11:98
<3>CTRL-EVENT-CONNECTED - Connection to 00:22:7f:18:11:98 completed [id=0 
id_str=]
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-DISCONNECTED bssid=00:22:7f:18:11:98 reason=4 
locally_generated=1
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 50:a7:33:03:47:78 (SSID='Kardon_Wifi' 
freq=2412 MHz)
<3>Trying to associate with 50:a7:33:03:47:78 (SSID='Kardon_Wifi' freq=2412 
MHz)
<3>Associated with 50:a7:33:03:47:78
<3>CTRL-EVENT-CONNECTED - Connection to 50:a7:33:03:47:78 completed [id=0 
id_str=]
<3>CTRL-EVENT-DISCONNECTED bssid=50:a7:33:03:47:78 reason=4 
locally_generated=1
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 00:22:7f:18:11:d8 (SSID='Kardon_Wifi' 
freq=2462 MHz)
<3>Trying to associate with 00:22:7f:18:11:d8 (SSID='Kardon_Wifi' freq=2462 
MHz)
<3>Associated with 00:22:7f:18:11:d8
<3>CTRL-EVENT-CONNECTED - Connection to 00:22:7f:18:11:d8 completed [id=0 
id_str=]
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 00:22:7f:11:51:38 (SSID='Kardon_Wifi' 
freq=2432 MHz)
<3>Trying to associate with 00:22:7f:11:51:38 (SSID='Kardon_Wifi' freq=2432 
MHz)
<3>Associated with 00:22:7f:11:51:38
<3>CTRL-EVENT-CONNECTED - Connection to 00:22:7f:11:51:38 completed [id=0 
id_str=]
<3>CTRL-EVENT-DISCONNECTED bssid=00:22:7f:11:51:38 reason=4 
locally_generated=1
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 00:22:7f:0f:9c:28 (SSID='Kardon_Wifi' 
freq=2432 MHz)
<3>Trying to associate with 00:22:7f:0f:9c:28 (SSID='Kardon_Wifi' freq=2432 
MHz)
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 00:22:7f:11:51:38 (SSID='Kardon_Wifi' 
freq=2432 MHz)
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 00:22:7f:18:11:98 (SSID='Kardon_Wifi' 
freq=2412 MHz)
<3>Trying to associate with 00:22:7f:18:11:98 (SSID='Kardon_Wifi' freq=2412 
MHz)
<3>CTRL-EVENT-DISCONNECTED bssid=00:22:7f:18:11:98 reason=3 
locally_generated=1
<4>Failed to initiate AP scan
<4>Failed to initiate AP scan
<3>CTRL-EVENT-SCAN-RESULTS 
<3>SME: Trying to authenticate with 00:22:7f:18:11:98 (SSID='Kardon_Wifi' 
freq=2412 MHz)
<3>SME: Authentication request to the driver failed
