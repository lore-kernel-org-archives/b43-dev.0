From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 13 Sep 2011 08:03:59 +0200
Subject: Should my BCM4321 be working yet?
In-Reply-To: <20110913020843.22355.qmail@science.horizon.com>
References: <20110909053137.7834.qmail@science.horizon.com>
	<20110913020843.22355.qmail@science.horizon.com>
Message-ID: <CACna6rxC+bVhj_wq42aFMkZLEc+8Xq3EWGr8JAb2W80mas_vpg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/9/13 George Spelvin <linux@horizon.com>:
> But recent debates about b43 vs. brcmsmac have led me to believe that
> it should be working now, and I'm trying to figure out why it isn't.

It should me. My 14e4:4328 is working fine, my model is just PHY type
4 rev 2 (not 1). However PHYs rev 1 were tested (14e4:4329) and should
be working fine.

> "modprobe b32 verbose=3 pio=1" produces the following output:
>
> cfg80211: Calling CRDA to update world regulatory domain
> b43-phy0: Broadcom 4321 WLAN found (core revision 11)
> b43-phy0 debug: Found PHY: Analog 5, Type 4, Revision 1
> b43-phy0 debug: Found Radio: Manuf 0x17F, Version 0x2055, Revision 4
> b43-phy0 debug: DebugFS (CONFIG_DEBUG_FS) not enabled in kernel config
> ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
> Registered led device: b43-phy0::tx
> Registered led device: b43-phy0::rx
> Registered led device: b43-phy0::radio
> Broadcom 43xx driver loaded [ Features: PNL, Firmware-ID: FW13 ]

What does happen after "ifconfig wlan0 up" (or equivalent call with
"ip ... link up" tool)? What does appear in dmesg?


> But "ifconfig -a" soon reveals a previously absent ?wlan0 interface with
> a 00:19:75 MAC address (which is NOT a Broadcom address), and I can find
> an ssb_sprom in /sys (which ssb_sprom -P does reasonably sensible things
> with).

MAC can not be so short. Please provide full output of "ip a".

-- 
Rafa?
