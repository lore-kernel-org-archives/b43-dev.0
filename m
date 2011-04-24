From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 24 Apr 2011 12:48:35 +0200
Subject: Is there 14e4:4301 with BCM4303?
Message-ID: <BANLkTimbOGYVofkqU1pE1=OH-2t3VAvXxQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I could not find info about BCM4303, but Jonas has posted some time
ago bcmdevs.h with such a entry:
#define BCM4303_D11B_ID         0x4303          /* 4303 802.11b */

So maybe BCM4303 really exists, however it does not seem to appear on
14e4:4301. Of course Google is full of that, because we've wrong entry
in lspci db:
http://pci-ids.ucw.cz/read/PC/14e4/4301
but Googling for "Broadcom 4303 WLAN found" gives only one result.

The result is Ubuntu's launchpad:
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/192720
this is full of:
"Broadcom 4301 WLAN found"
and only one reporter, Martin, posted info about 4303:
"b43legacy-phy0: Broadcom 4303 WLAN found"

I suspect this was hand-written with typo, probably suggested by entry in lspdi.

Martin, can you comment on this?

-- 
Rafa?
