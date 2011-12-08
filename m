From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 8 Dec 2011 12:19:58 +0100
Subject: b43-mmio
Message-ID: <CACna6rzqUS7A8ZBpaKb+CmzL-bBoq-sCaFON2TU6qv3NRNQ3zA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

I'd like to share my MMIO tools for translating dumps into
human-readable and comparable code.

How does it work?

1) mmio-tools contain some scripts for translating MMIO dump into more
friendly format
2) ssb contains simple script for describing ssb operations
3) b43 contains script for detecting PHY/radio operations
4) scripts in root directory find PHY specific routines

** How to use **

1) Grab dump

2) Apply all basic converting filters with "conver.sh" helper:
./convert.sh BCM43224-dump.txt
This generates new file with .b43 extension append. It contains ops like:
 phy_read(0x0078) -> 0x0f7c
phy_write(0x0078) <- 0x0f7c
radio_write(0x0053) <- 0x00f7

3) Apply PHY specific script like:
./phy.n.rev.0123456.sh BCM43224-dump.txt.b43
This modified .b43 file adding some descriptions in it. For example:
phy_write(0x01d3) <- 0x0443

>>> b43_nphy_classifier start
 phy_read(0x00b0) -> 0x0df7
 phy_read(0x00b0) -> 0x0df7
phy_write(0x00b0) <- 0x0df7
>>> b43_nphy_classifier end

 phy_read(0x0c0a) -> 0x0100
phy_write(0x0c0a) <- 0x0100

>>> b43_nphy_tx_power_fix [rev3+] start
 phy_read(0x008f) -> 0x0000
phy_write(0x008f) <- 0x0100

-- 
Rafa?
-------------- next part --------------
A non-text attachment was scrubbed...
Name: b43-mmio.tar.bz2
Type: application/x-bzip2
Size: 8560 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20111208/838b6804/attachment-0001.bz2>
