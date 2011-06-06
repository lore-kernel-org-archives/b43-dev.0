From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 6 Jun 2011 13:34:15 +0200
Subject: [RFC][PATCH 07/10] bcma: add pci(e) host mode
In-Reply-To: <1307311658-15853-8-git-send-email-hauke@hauke-m.de>
References: <1307311658-15853-1-git-send-email-hauke@hauke-m.de>
	<1307311658-15853-8-git-send-email-hauke@hauke-m.de>
Message-ID: <BANLkTi=6F_T1vwJL3e0DMbKhuFjjnF5pAQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-wireless@vger.kernel.org, linux-mips@linux-mips.org, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com

2011/6/6 Hauke Mehrtens <hauke@hauke-m.de>:
> +#ifdef CONFIG_BCMA_PCICORE_HOSTMODE
> +/* driver_pci_host.c */
> +extern int bcma_pcicore_is_in_hostmode(struct bcma_drv_pci *pc);
> +extern void bcma_pcicore_init_hostmode(struct bcma_drv_pci *pc);
> +#endif /* CONFIG_BCMA_PCICORE_HOSTMODE */

I don't know if I'm overreacting, but I really don't like naming mess
in the ssb.

Why don't you use bcma_core_pci_* to be consistent?

-- 
Rafa?
