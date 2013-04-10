From: Matteo <matteo.danieletto@gmail.com>
Date: Wed, 10 Apr 2013 01:05:53 -0700
Subject: [b43] Station statistics 
Message-ID: <10F448AB-C01E-4E57-906A-A702DB343AAA@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Cc: b43-dev@lists.infradead.org

Hi all,
I am trying to find some data link statistics  like tx/rx packets, tx/rx
byte and
tx retries.

I found to use iw wlan0 station dump some interesting values, but I have a
doubt.

do you know why the #packets and bytes found with iw wlan0 station dump are different
if compared with cat /proc/net/dev ?

inactive time:    948 ms
   rx bytes:    12793798
   rx packets:    55705
   tx bytes:    72610
   tx packets:    377
   tx retries:    20
   tx failed:    2
   signal:      -33 dBm
   signal avg:    -33 dBm
   tx bitrate:    36.0 MBit/s
   authorized:    yes
   authenticated:    yes
   preamble:    long
   WMM/WME:    yes
   MFP:        no
   TDLS peer:        no


Inter-|   Receive                                                |  Transmit
face |bytes    packets errs drop fifo frame compressed multicast|bytes
packets errs drop fifo colls carrier compressed
   lo:  243244    1758    0    0    0     0          0         0
243244    1758    0    0    0     0       0          0
wlan0: 103605454  473003    0    0    0     0          0         0
1089910    6540    0    0    0     0       0          0
