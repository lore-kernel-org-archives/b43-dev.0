From: Dennis Nezic <dennisn@dennisn.dyndns.org>
Date: Tue, 15 Jun 2010 21:55:08 -0400
Subject: Stalling scp transfers with my BCM431
Message-ID: <20100615215508.ef356d10.dennisn@dennisn.dyndns.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

My scp transfers are stalling, both to and from my server. My laptop is
using the Broadcom pcie card:

06:02.0 Network controller: Broadcom Corporation BCM4318 [AirForce One
54g] 802.11g Wireless LAN Controller (rev 02)
b43-pci-bridge 0000:06:02.0: PCI INT A -> GSI 21 (level, low) -> IRQ 9
b43-phy0: Broadcom 4318 WLAN found (core revision 9)
b43-phy0: Loading firmware version 410.2160 (2007-05-26 15:32:10)

(To be honest, I'm not 100% where the problem is, but for completeness,
my server is running the madwifi-ng wireless driver, with the following
card:
0000:00:0b.0 Ethernet controller: Atheros Communications, Inc. AR5212
802.11abg NIC (rev 01))

The reason I suspect it's my b43 laptop is because scp transfers don't
stall with my secondary laptop. They also don't stall on my main laptop
if I wire it directly to my gigabit ethernet port.

Transfering from my laptop (b43) to my server (madwifi) seems to stall
noticeably faster than in the reverse direction -- by about a factor
of 10. Stalls also seem to occur far more frequently when there is other
activity on my wifi connection.

Here are snippets from a tcpdump -- I'm not sure if anything can be
learned from it?
http://dennisn.dyndns.org/guest/pubstuff/scp-stalls/stall-client
http://dennisn.dyndns.org/guest/pubstuff/scp-stalls/stall-server

Ideas? :\
