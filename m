From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 09 Dec 2011 12:17:01 -0600
Subject: Performance of BCM43224 (14e4:4353)
In-Reply-To: <4EE24615.9020003@broadcom.com>
References: <4EE15A4E.1090500@lwfinger.net> <4EE1E2AC.8030002@broadcom.com>
 <4EE23AF5.8000400@lwfinger.net> <4EE24615.9020003@broadcom.com>
Message-ID: <4EE2509D.6020501@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Francesco Gringoli <francesco.gringoli@ing.unibs.it>, b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

Arend,

I got a little further. The error message was modified as below:

         /* scan for cores */
         if (socitype == SOCI_AI) {
                 SI_MSG("Found chip type AI (0x%08x)\n", w);
                 /* pass chipc address instead of original core base */
                 ai_scan(&sii->pub, pbus);
         } else {
                 /* Found chip of unknown type */
                 pr_err("Found chip of type %d, chipid is 0x%x\n", socitype, w);
                 return NULL;
         }

This one logs "brcmsmac: Found chip of type 4, chipid is 0x4bf80001". That is a 
very strange chip ID.

Larry
