From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 24 Apr 2011 10:12:34 -0500
Subject: Is there 14e4:4301 with BCM4303?
In-Reply-To: <BANLkTimbOGYVofkqU1pE1=OH-2t3VAvXxQ@mail.gmail.com>
References: <BANLkTimbOGYVofkqU1pE1=OH-2t3VAvXxQ@mail.gmail.com>
Message-ID: <4DB43DE2.3030709@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On 04/24/2011 05:48 AM, Rafa? Mi?ecki wrote:
> I could not find info about BCM4303, but Jonas has posted some time
> ago bcmdevs.h with such a entry:
> #define BCM4303_D11B_ID         0x4303          /* 4303 802.11b */
>
> So maybe BCM4303 really exists, however it does not seem to appear on
> 14e4:4301. Of course Google is full of that, because we've wrong entry
> in lspci db:
> http://pci-ids.ucw.cz/read/PC/14e4/4301
> but Googling for "Broadcom 4303 WLAN found" gives only one result.
>
> The result is Ubuntu's launchpad:
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/192720
> this is full of:
> "Broadcom 4301 WLAN found"
> and only one reporter, Martin, posted info about 4303:
> "b43legacy-phy0: Broadcom 4303 WLAN found"
>
> I suspect this was hand-written with typo, probably suggested by entry in lspdi.

The lspci output for my BCM4303 is as follows:

01:09.0 Network controller [0280]: Broadcom Corporation BCM4303 802.11b Wireless 
LAN Controller [14e4:4301] (rev 02)
         Subsystem: Linksys WMP11 v2.7 802.11b Wireless-B PCI Adapter [1737:4301]
         Kernel driver in use: b43-pci-bridge

When b43legacy is loaded, it reports "b43legacy-phy0: Broadcom 4301 WLAN found", 
thus your typo theory is probably right.

Larry
