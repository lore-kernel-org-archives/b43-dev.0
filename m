From: Cedric Sodhi <manday@gmx.net>
Date: Sun, 8 Dec 2013 11:29:22 +0100
Subject: BCM43228 (14e4:4359) with broadcom-sta "system busy", connection
 unstable
Message-ID: <20131208102921.GD3040@slate>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello, I originally had trouble with the "official" broadcom-sta package
(on Gentoo) because the interface was neither appropriately named (it
was called ethX among other things) nor did it work. I then found a
solution for Gentoo in a separate ebuild which contained a couple of
handmade patches. That was about a year ago.

As of recently, the custom ebuild did no longer work (the source tarball
was no longer available) so I gave the "official" broadcom-sta another
try. As opposed to a year ago, it compiled and after reboot, "wlan0"
became available.

However, and that is the problem, the interface is not usable. On dmesg
there are recurring chunks of

cfg80211: Calling CRDA to update world regulatory domain
cfg80211: World regulatory domain updated:
cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
INFO @wl_cfg80211_scan : system busy : scan for "NetworkA" canceled
INFO @wl_cfg80211_scan : system busy : scan for "NetworkB" canceled
INFO @wl_cfg80211_scan : system busy : scan for "NetworkC" canceled

and `wpa_cli` says 

<3>CTRL-EVENT-DISCONNECTED bssid=20:2b:c1:e9:db:85 reason=0
<3>CTRL-EVENT-SCAN-RESULTS
<3>Trying to associate with 20:2b:c1:e9:db:85 (SSID='NetworkA' freq=2447 MHz)
<3>Association request to the driver failed
<3>Authentication with 20:2b:c1:e9:db:85 timed out.
<3>CTRL-EVENT-DISCONNECTED bssid=20:2b:c1:e9:db:85 reason=3 locally_generated=1
<4>Failed to initiate AP scan
<3>CTRL-EVENT-SCAN-RESULTS
<3>Trying to associate with 20:2b:c1:e9:db:85 (SSID='NetworkA' freq=2447 MHz)
<3>Association request to the driver failed
<3>Authentication with 20:2b:c1:e9:db:85 timed out.
<3>CTRL-EVENT-DISCONNECTED bssid=20:2b:c1:e9:db:85 reason=3 locally_generated=1
<4>Failed to initiate AP scan
<3>CTRL-EVENT-SCAN-RESULTS 
<3>Trying to associate with 20:2b:c1:e9:db:85 (SSID='NetworkA' freq=2447 MHz)
<3>Association request to the driver failed
<3>Authentication with 20:2b:c1:e9:db:85 timed out.
<3>CTRL-EVENT-DISCONNECTED bssid=20:2b:c1:e9:db:85 reason=3 locally_generated=1

in rapid repetition.

In fact, I just noticed that while the connection was unstable for the
first 10 minutes after boot, it is almost completely dead now. Kernel is

3.10.17-gentoo with

CONFIG_CFG80211=m
CONFIG_CFG80211_WEXT=y
# CONFIG_MAC80211 is not set

Thank you
