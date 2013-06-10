From: =?UTF-8?B?RnJhbsOnb2lz?= Ravaillac <neutrino.nuovo@yahoo.com>
Date: Mon, 10 Jun 2013 18:23:17 +0400
Subject: [DEFECT] iw: No output if passive scanning is requested
Message-ID: <20130610182317.3beb2841@lenovo-laptop>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless <linux-wireless@vger.kernel.org>
Cc: b43-dev <b43-dev@lists.infradead.org>


Using b43 driver with newer kernels (namely, 3.8-1-686-pae from Debian
and 3.10.0-rc4 from git) it isn't possible to perform passive scanning
(in 2.4GHz band) using 'iw' tool. The command 'iw dev wlan0 scan
passive' doesn't print any output. At the same time, a usual scan with
sending probe requests ('iw wlan0 scan' or 'iwlist wlan0 scan') does
work as expected.

The radio module I'm using is
05:00.0 Network controller [0280]: Broadcom Corporation BCM4312
802.11b/g LP-PHY [14e4:4315] (rev 01)

Copy of dmesg, lspci, lsmod, 'iw phy0 info' outputs and kernel config file
is attached.


P.S. I'm not a developer nor programmer, but I'm ready to help to make
linux better :)

--

Ravaillac
