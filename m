From: Wifi User <mywifiismycastle@gmail.com>
Date: Mon, 14 Sep 2015 17:48:41 +0200
Subject: b43 with Kernel 4.1?
Message-ID: <CABC5CqK2A7N5MN8in00953LfTOB=21NW0sJF2bWpG92c+ypXYw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

did someone mange to get b43 running under kernel 4.1?

With an older kernel everything is perfect. After an upgrade to 4.1 my
wireless card doesn't seem to get recognized. :( - The firmware cutter used
broadcom-wl-6.30.163.46

I can clearly see the card with lspci but I don't get a wlan0 device.

---
09:00.0 Network controller [0280]: Broadcom Corporation BCM4322
802.11a/b/g/n Wireless LAN Controller [14e4:432b] (rev 01)
    Subsystem: Broadcom Corporation Device [14e4:04a4]
    Flags: bus master, fast devsel, latency 0, IRQ 18
    Memory at dfcfc000 (64-bit, non-prefetchable) [size=16K]
    Capabilities: [40] Power Management version 3
    Capabilities: [58] Vendor Specific Information: Len=78 <?>
    Capabilities: [e8] MSI: Enable- Count=1/1 Maskable- 64bit+
    Capabilities: [d0] Express Endpoint, MSI 00
    Kernel driver in use: b43-pci-bridge
---

Thx
Wifiuser
