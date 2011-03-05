From: Andrei R <ra@scalpnet.ru>
Date: Sun, 6 Mar 2011 01:31:52 +0600
Subject: 4311rev02 and Ad-hoc
Message-ID: <199148524218.20110306013152@scalpnet.ru>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hello everybody.

I use b43 on 2.6.35-27 kernel.
Hardware is 14e4:4311 (rev.02).
fwcutter is installed.

dmesg shows
b43-phy0: Broadcom 4311 WLAN found (core revision 13)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)

iwlist shows wifi nets near.

But if i try to connect to ad-hoc network through NetworkManager -
strange thing happens. It behaves as if a connection is established,
e.g. iwconfig shows correct ESSID and some Cell number.

ifconfig shows RX packets:0 on wlan0. Pings are timed out.

Does ad-hoc ever work on b43 with my hardware?

-- 
Best regards,
 Andrei                          mailto:ra at scalpnet.ru
