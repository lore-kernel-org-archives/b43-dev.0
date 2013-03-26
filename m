From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 26 Mar 2013 18:10:37 +0100
Subject: Scanning regression since "cfg80211: use DS or HT operation IEs to
 determine BSS channel"
Message-ID: <CACna6rwdAAsCX76=nwHpj-grVvQznbNCPVnpXL9kP2TkvhR-yw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, Johannes Berg <johannes.berg@intel.com>
Cc: b43-dev <b43-dev@lists.infradead.org>

Hi,

I've just finished bisecting wireless scanning regression I'm
experiencing with my 14e4:432b (BCM4322) and b43 driver.

The problem is getting my network visible in scanning results (iw dev
wlan0 scan). I've to repeat scanning dozens of time to notice my AP.
It's also well visible when using wpa_supplicant. It takes from 20s to
100s before I get the "Trying to authenticate with".
The performance however is not affected. Once I connect to my network,
I can transmit (tested with iperf) with stable 21.5Mb/s which is just
great for 802.11g.

After going back to the kernel before that commit it takes
wpa_supplicant less than 2 seconds to connect to my WiFi network.

My network is at channel 13, I still have to verify if it matters.

Any thought about that?


The first bad commit (I've verified manually after bisecting) appears to be:

0172bb75073e11a5aa9d8a953bdaefb8709f00c8 is the first bad commit
commit 0172bb75073e11a5aa9d8a953bdaefb8709f00c8
Author: Johannes Berg <johannes.berg@intel.com>
Date:   Fri Nov 23 14:23:30 2012 +0100

    cfg80211: use DS or HT operation IEs to determine BSS channel

    Currently, mac80211 checks the DS params IE if present and
    uses it for the (primary) BSS channel, instead of the one
    that the frame was received on. This is particularly useful
    in the 2.4 GHz band since a frame is often received on one
    of the adjacent channels due to overlap.

    Move this code to cfg80211 so other drivers also do this.

    Additionally, on 5 GHz, in particular with some (possibly)
    upcoming changes in 802.11ai and duplicate transmissions
    when wider channels are used, something similar happens.
    So if present, also use the (primary) channel information
    contained in the HT operation IE.

    Signed-off-by: Johannes Berg <johannes.berg@intel.com>

-- 
Rafa?
-------------- next part --------------
BSS 00:11:22:33:44:55 (on wlan0)
	TSF: 165376384 usec (0d, 00:02:45)
	freq: 2472
	beacon interval: 100
	capability: ESS Privacy ShortSlotTime (0x0411)
	signal: -50.00 dBm
	last seen: 153 ms ago
	Information elements from Probe Response frame:
	SSID: zajec_poznan_160
	Supported rates: 1.0* 2.0* 5.5* 11.0* 6.0 9.0 12.0 18.0 
	DS Parameter set: channel 13
	Country: PL     Environment: Indoor/Outdoor
		Channels [1 - 13] @ 20 dBm
	ERP: Barker_Preamble_Mode
	Extended supported rates: 24.0 36.0 48.0 54.0 
	RSN:     * Version: 1
		 * Group cipher: CCMP
		 * Pairwise ciphers: CCMP
		 * Authentication suites: PSK
		 * Capabilities: 16-PTKSA-RC (0x000c)
	HT capabilities:
		Capabilities: 0x104e
			HT20/HT40
			SM Power Save disabled
			RX HT40 SGI
			No RX STBC
			Max AMSDU length: 3839 bytes
			DSSS/CCK HT40
		Maximum RX AMPDU length 65535 bytes (exponent: 0x003)
		Minimum RX AMPDU time spacing: 8 usec (0x06)
		HT TX/RX MCS rate indexes supported: 0-15
	HT operation:
		 * primary channel: 13
		 * secondary channel offset: below
		 * STA channel width: any
		 * RIFS: 0
		 * HT protection: 20 MHz
		 * non-GF present: 0
		 * OBSS non-GF present: 0
		 * dual beacon: 0
		 * dual CTS protection: 0
		 * STBC beacon: 0
		 * L-SIG TXOP Prot: 0
		 * PCO active: 0
		 * PCO phase: 0
	WMM:     * Parameter version 1
		 * BE: CW 15-1023, AIFSN 3
		 * BK: CW 15-1023, AIFSN 7
		 * VI: CW 7-15, AIFSN 2, TXOP 3008 usec
		 * VO: acm CW 3-7, AIFSN 2, TXOP 1504 usec
