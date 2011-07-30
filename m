From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sat, 30 Jul 2011 10:19:05 -0500
Subject: Report on bcma with 14e4:4353 (BCM43224)
Message-ID: <4E3420E9.6080603@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

Rafa?,

I'm using a recent pull from wireless-testing - 'git describe' results in 
master-2011-07-26-150-g4ea94a9.

The driver is working well with reasonable performance. Using tcpperf, I get 
8-10 Mb/s upload on an 802.11g connection. The connection has been up for 17 
hours with no disconnects.

A minor annoyance is that the driver does not autoload on boot and had to be 
manually modprobed. AFAIK, I don't have any blacklisting or other configuration 
parameters that would cause this. Furthermore, I don't see anything in the 
driver code that would cause this. Does autoload work on your system?

A more serious problem is that the driver does not work on my 802.11n AP that is 
set for "up to 270 Mbps at 2.4 GHz". It will authenticate and associate, but the 
throughput is minimal. It also gets the "PHY transmission error" messages. None 
occur with 802.11g. I would guess some kind of error in the HT40 settings.

Thanks for your hard work on this device.

Larry
