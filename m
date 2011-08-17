From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 17 Aug 2011 18:14:32 +0200
Subject: ~3.1-rc1 mac80211 regression? NULL pointer dereference, memcpy,
	nla_put
Message-ID: <CACna6rzdoAgoW8B11bpdqNAi1Gz2T6AV4g-m5WGz9X0izhCDOQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org
Cc: b43-dev <b43-dev@lists.infradead.org>

I've problem with my BCM43224 and BCM43225 cards. They stopped to work
around 3.1-rc1 and I suspect it's mac80211 regression.

When I load driver and take interface up, everything works OK.
Scanning also works OK.

The problem is connecting to the AP. Right after getting associated
("wlan0: associated") I get: lockup/reboot/oops. Fortunately I've
managed to log 2 oops.

The problem happens with both drivers I've tested: b43 and brcmsmac.

Going to back to something around 3.0.0-rc7 let me use brcmsmac
without problems (I can not test b43, because it didn't support that
cards by then).

Do attached logs give any hint? Can I provide more info?

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: dmesg.1.log
Type: application/octet-stream
Size: 18958 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110817/143dd840/attachment-0002.obj>
-------------- next part --------------
A non-text attachment was scrubbed...
Name: dmesg.2.log
Type: application/octet-stream
Size: 18029 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110817/143dd840/attachment-0003.obj>
