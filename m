From: h2o-post <h2o-post@gmx.net>
Date: Tue, 28 Sep 2010 08:29:19 +0200
Subject: How to set multicast rate ?
Message-ID: <001201cb5ed6$7bcaed60$7360c820$@gmx.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi all,

 

In our Freifunk mesh network we run several broadcom devices in adhoc
modewith olsr routing.

To move to b43 we did some testing with current OpenWrt trunk and b43. 

One crutial observation we made: We were not able to find the knob to change
the multicast rate in b43.

Since this is an essential tuning parameter in our current mesh and
essential for proper olsr routing.

To be more precise, olsr probing traffic is send out as mulicast traffic,
therefore we use a multicast rate 

e.g. of 6MBit/sec . so in densed mesh you got only routes with the multicast
rate as lower limit.

Is there any secret I missed to change the multicast rate in b43 ? 

If this is not implemented so far, what would be a sketch to help here
implementing ?

 

Bye Thomas

-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20100928/68413ebe/attachment.html>
