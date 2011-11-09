From: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 09 Nov 2011 11:14:57 +0000
Subject: [PATCH] ssb: Ignore dangling ethernet cores on wireless devices
In-Reply-To: <1294426085.18385.8.camel@maggie>
References: <1294426085.18385.8.camel@maggie>
Message-ID: <1320837297.1926.6.camel@shinybook.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Cc: John Linville <linville@tuxdriver.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Larry Finger <Larry.Finger@lwfinger.net>

On Fri, 2011-01-07 at 19:48 +0100, Michael B?sch wrote:
> 
> +               case SSB_DEV_ETHERNET:
> +                       if (bus->bustype == SSB_BUSTYPE_PCI) {
> +                               if (bus->host_pci->vendor == PCI_VENDOR_ID_BROADCOM &&
> +                                   (bus->host_pci->device & 0xFF00) == 0x4300) {
> +                                       /* This is a dangling ethernet core on a
> +                                        * wireless device. Ignore it. */
> +                                       continue;
> +                               }
> +                       }
> +                       break; 

Do you also need to check for (bus->host_pci->device / 1000) == 43?
Or do the chips with 5-digit 'decimal' IDs not have the Ethernet cores?

Would it be better to invert the test and check for != 0x4400?

-- 
dwmw2
-------------- next part --------------
A non-text attachment was scrubbed...
Name: smime.p7s
Type: application/x-pkcs7-signature
Size: 5818 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20111109/c750bf6b/attachment.bin>
