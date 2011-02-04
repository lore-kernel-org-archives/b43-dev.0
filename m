From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 04 Feb 2011 23:34:45 +0100
Subject: [PATCH] ssb-pcmcia: Fix parsing of invariants tuples
Message-ID: <1296858885.21503.33.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John Linville <linville@tuxdriver.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>
Cc: dylan cristiani <d.cristiani@idem-tech.it>, Dominik Brodowski <linux@dominikbrodowski.net>

This fixes parsing of the device invariants (MAC address)
for PCMCIA SSB devices.

ssb_pcmcia_do_get_invariants expects an iv pointer as data
argument.

Tested-by: dylan cristiani <d.cristiani@idem-tech.it>
Signed-off-by: Michael Buesch <mb@bu3sch.de>
Cc: stable at kernel.org

---


Index: wireless-testing/drivers/ssb/pcmcia.c
===================================================================
--- wireless-testing.orig/drivers/ssb/pcmcia.c	2010-12-30 15:49:39.000000000 +0100
+++ wireless-testing/drivers/ssb/pcmcia.c	2011-02-04 23:29:37.000000000 +0100
@@ -733,7 +733,7 @@ int ssb_pcmcia_get_invariants(struct ssb
 
 	/* Fetch the vendor specific tuples. */
 	res = pcmcia_loop_tuple(bus->host_pcmcia, SSB_PCMCIA_CIS,
-				ssb_pcmcia_do_get_invariants, sprom);
+				ssb_pcmcia_do_get_invariants, iv);
 	if ((res == 0) || (res == -ENOSPC))
 		return 0;
 

-- 
Greetings Michael.
