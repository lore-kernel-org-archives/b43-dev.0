From: Octavian Voicu <octavian.voicu@gmail.com>
Date: Wed, 24 Aug 2011 19:42:27 +0300
Subject: BCM4321 support
In-Reply-To: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
References: <CAM0=5GvUyMeE3BdYHQZjZWB9kGxYLJfcJ4ky1BC2m81sdM-XpA@mail.gmail.com>
Message-ID: <CAM0=5GsfL388OpyNx37Bqu9a7+vE5NSZ9S2YPhYMQHtrkOqwcA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Some extra debug output from inserting the module with verbose=3:

[ 4887.725591] b43-phy0: Broadcom 4321 WLAN found (core revision 12)
[ 4887.820235] b43-phy0 debug: Found PHY: Analog 5, Type 4, Revision 2
[ 4887.820268] b43-phy0 debug: Found Radio: Manuf 0x17F, Version
0x2055, Revision 4
[ 4887.886958] Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]
[ 4888.170254] b43-phy0: Loading firmware version 508.1084 (2009-01-14 01:32:01)
[ 4888.330209] b43-phy0 debug: Chip initialized
[ 4888.330470] b43-phy0 debug: 64-bit DMA initialized
[ 4888.330544] b43-phy0 debug: QoS enabled
[ 4888.371215] b43-phy0 debug: Wireless interface started
[ 4888.371258] b43-phy0 debug: Adding Interface type 2

Octavian
