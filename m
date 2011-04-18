From: Todd Walter <twalter@rogers.com>
Date: Mon, 18 Apr 2011 14:39:01 -0400
Subject: Strange DMA error
Message-ID: <4DAC8545.2050907@rogers.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

I have a BCM4312 (using SSB) in a HP Mini 311 with an odd disconnect
issue.  If I use the link heavily (ie, streaming a movie) then all is
usually well.  If the link is idle it bombs with an error to stderr.
This happens with the hardware power control on or off.  Long transfers
do crash as well, just much less frequently.  For instance, a streamed
movie might go an hour and I can simply re-cycle wlan0 and recover.
However, if I am surfing it will die while I am reading one web page.
PIO mode is worse; typically it fails during the 4-way handshake
(timeout) and even when it works transfers will consume >70% of the CPU
and crash.  When a PIO mode drops I have to cold-boot to recover use of
the wireless card.  I have attached the PCI information for the card and
dmesg output as I am at a loss as how to procede.

Thanks for your time,

- - Todd.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2shUUACgkQGfMwkL5Ux8eGYgCeMO0VYLPdh8E6aeht8WAL06JK
0O0AnibwqpMM1+Ane/YrCQRroyGNmNwe
=vrqi
-----END PGP SIGNATURE-----
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: b43_disconnect_problem.txt
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110418/886283dc/attachment-0003.txt>
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: b43pci.txt
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110418/886283dc/attachment-0004.txt>
-------------- next part --------------
An embedded and charset-unspecified text was scrubbed...
Name: hexspace.txt
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110418/886283dc/attachment-0005.txt>
