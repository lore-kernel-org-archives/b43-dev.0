From: Chris Adams <cma@cmadams.net>
Date: Wed, 19 Jun 2013 11:09:11 -0500
Subject: BCM4331 deauthenticates every five minutes
Message-ID: <20130619160911.GB4784@cmadams.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I have a MacBook Pro 8,2 with the BCM4331 wireless chip.  I pulled the
firmware (666.2, 2011-02-23 01:15:07) using b43-fwcutter, and am running
Fedora 18 (tried up to kernel 3.9.6-200.fc18.x86_64 from updates/testing
with the same results).

My problem is that it deauthenticates from the AP every 5 minutes (it
then immediately reconnects).  From what I've read, it looks like this
chip is a little "different"; any ideas/suggestions to help get this
working better?

Example dmesg chunk:

[  948.115374] wlan0: associated
[ 1249.636655] wlan0: deauthenticated from 00:a0:c8:xx:xx:xx (Reason: 1)
[ 1249.648124] cfg80211: Calling CRDA to update world regulatory domain
[ 1249.663978] cfg80211: World regulatory domain updated:
[ 1249.663981] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[ 1249.663983] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[ 1249.663985] cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[ 1249.663986] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi, 2000 mBm)
[ 1249.663987] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[ 1249.663988] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[ 1249.663999] cfg80211: Calling CRDA for country: US
[ 1249.668299] cfg80211: Regulatory domain changed to country: US
[ 1249.668306] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp)
[ 1249.668312] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi, 2700 mBm)
[ 1249.668317] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi, 1700 mBm)
[ 1249.668322] cfg80211:   (5250000 KHz - 5330000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[ 1249.668326] cfg80211:   (5490000 KHz - 5600000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[ 1249.668330] cfg80211:   (5650000 KHz - 5710000 KHz @ 40000 KHz), (300 mBi, 2000 mBm)
[ 1249.668334] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi, 3000 mBm)
[ 1249.668339] cfg80211:   (57240000 KHz - 63720000 KHz @ 2160000 KHz), (N/A, 4000 mBm)
[ 1250.492760] wlan0: authenticate with 00:a0:c8:xx:xx:xx
[ 1250.501350] wlan0: send auth to 00:a0:c8:xx:xx:xx (try 1/3)
[ 1250.503135] wlan0: authenticated
[ 1250.503462] b43 bcma0:0 wlan0: disabling HT as WMM/QoS is not supported by the AP
[ 1250.503471] b43 bcma0:0 wlan0: disabling VHT as WMM/QoS is not supported by the AP
[ 1250.503868] wlan0: associate with 00:a0:c8:xx:xx:xx (try 1/3)
[ 1250.506146] wlan0: RX AssocResp from 00:a0:c8:xx:xx:xx (capab=0x431 status=0 aid=146)
[ 1250.506916] wlan0: associated

-- 
Chris Adams <cma@cmadams.net>
