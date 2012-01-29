From: Hauke Mehrtens <hauke@hauke-m.de>
Date: Sun, 29 Jan 2012 23:12:55 +0100
Subject: BCM5354 SoC with LP Phy Wifi
Message-ID: <4F25C467.7070805@hauke-m.de>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I got a device with a BCM5354 SoC and a LP-Phy Wifi core on it. With
current b43 it still fails with Out of memory when using a recent
firmware 666.2 and works with an old firmware 410.2160. I tried DMA and
PIO mode and had the same results. I added some printk's into the code
and implemented some parts b43 does not have but the Braodcom sdk and
brcmsmac has in the dma code, but I haven't resolved the issue.

I found out the error occurs when send some packages doing "ifconfig
wlan0 up" does not result in any problems, but when I try to scan with
"iw wlan0 scan" it oopes very soon. The problem seams to be related to
TX as there are many packages received, but the oops occurs after 4
calls to b43_dma_tx()

Larry, you wrote some more LP spec based on a newer driver is there a
list with updated docs or should I manually look into all packages if I
want to implement it like it is in the new wl driver.
As I see there are also many parts not implemented, but described in the
spec so looking over the hole code is probably needed.
My device has a sprom of revision 3 and not the expected version 8, does
this cause any trouble?

Hauke.
