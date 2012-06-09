From: Nathan Little <nathan.p.little@gmail.com>
Date: Sat, 09 Jun 2012 02:17:51 -0400
Subject: No Simultaneous Bluetooth and WIFI with 14e4:4315
Message-ID: <4FD2EA8F.4060005@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

It is not possible to use both bluetooth and wifi at the same time with
my 14e4:4315. I can use one or the other; for example I can boot and
then pair and communicate with a bluetooth device if I do not make use
of the wifi (includes scannning), but if I scan or associate with an AP
the bluetooth connection is immediately dropped and cannot be
reestablished, and though bluetooth commands can be issue they do not
appear to do anything. It is possible to maintain simultaneous
connections with the wl driver. Is this a known problem?

Thanks,
Nathan

-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: uname
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120609/7eb8557f/attachment-0003.ksh>
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: lspci
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120609/7eb8557f/attachment-0004.ksh>
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: dmesg
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20120609/7eb8557f/attachment-0005.ksh>
