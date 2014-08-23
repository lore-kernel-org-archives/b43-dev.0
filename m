From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 23 Aug 2014 10:24:18 -0500
Subject: B43 driver problem
In-Reply-To: <CA+FnnTw=KFJrQNzK0sphH5bmr26uaQx39UUkVV6Pu+NMJ8JpyA@mail.gmail.com>
References: <CA+FnnTyEX5c07N12vX98xkxje8SFk43w9kvokUsvrzBJTbkVQg@mail.gmail.com>	<53F75312.60200@lwfinger.net>
 <CA+FnnTw=KFJrQNzK0sphH5bmr26uaQx39UUkVV6Pu+NMJ8JpyA@mail.gmail.com>
Message-ID: <53F8B222.3080406@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 08/22/2014 05:15 PM, Igor Korot wrote:
> Kernel config file is attached.

I used your .config and the 3.12.20 source to create a kernel that loads b43. I
have no idea what is causing your problem. One change you should make is to add
RFKILL.

My log at startup is as follows:

[   10.678421] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
[   10.693035] b43-phy0: Found PHY: Analog 6, Type 5 (LP), Revision 1
[   10.693049] b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2062, Revision 2
[   10.700445] Broadcom 43xx driver loaded [ Features: PNL ]
[   11.284732] cfg80211: World regulatory domain updated:
[   11.284740] cfg80211:   (start_freq - end_freq @ bandwidth),
(max_antenna_gain, max_eirp)
[   11.284743] cfg80211:   (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi,
2000 mBm)
[   11.284745] cfg80211:   (2457000 KHz - 2482000 KHz @ 40000 KHz), (300 mBi,
2000 mBm)
[   11.284748] cfg80211:   (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi,
2000 mBm)
[   11.284750] cfg80211:   (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi,
2000 mBm)
[   11.284752] cfg80211:   (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi,
2000 mBm)
[   11.675482] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   13.336820] Adding 4192252k swap on /dev/sda1.  Priority:-1 extents:1
across:4192252k
[   14.310440] EXT4-fs (sda3): mounted filesystem with ordered data mode. Opts:
acl,user_xattr
[   14.889470] EXT4-fs (sda5): mounted filesystem with ordered data mode. Opts:
acl,user_xattr
[   19.177057] b43-phy0: Loading firmware version 508.154 (2009-08-18 00:58:22)
[   19.179614] b43-phy0 debug: b2062: Using crystal tab entry 19200 kHz.
[   19.675054] systemd-journald[1682]: Received request to flush runtime journal
from PID 1
[   20.606075] b43-phy0 debug: Chip initialized
[   20.606430] b43-phy0 debug: 64-bit DMA initialized
[   20.606499] b43-phy0 debug: QoS enabled
[   20.614715] b43-phy0 debug: Wireless interface started
[   20.620195] b43-phy0 debug: Adding Interface type 2

Larry
