From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 22 Jul 2011 01:20:28 +0200
Subject: [PATCH v2 04/11] bcma: add SOC bus
In-Reply-To: <1310835342-18877-5-git-send-email-hauke@hauke-m.de>
References: <1310835342-18877-1-git-send-email-hauke@hauke-m.de>
	<1310835342-18877-5-git-send-email-hauke@hauke-m.de>
Message-ID: <CACna6rzf8=FpWn-=agGi4GESiw0-XG1QDS81fGTkV2J6dgtiOw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: ralf@linux-mips.org, linux-wireless@vger.kernel.org, linux-mips@linux-mips.org, jonas.gorski@gmail.com, mb@bu3sch.de, george@znau.edu.ua, arend@broadcom.com, b43-dev@lists.infradead.org, bernhardloos@googlemail.com, arnd@arndb.de, julian.calaby@gmail.com, sshtylyov@mvista.com

2011/7/16 Hauke Mehrtens <hauke@hauke-m.de>:
> This patch adds support for using bcma on a Broadcom SoC as the system
> bus. An SoC like the bcm4716 could register this bus and use it to
> searches for the bcma cores and register the devices on this bus.
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Acked-by: Rafa? Mi?ecki <zajec5@gmail.com>

Cleaning enum bcma_hosttype would be nice (see below), but we cal
always easily do this later.


> diff --git a/include/linux/bcma/bcma.h b/include/linux/bcma/bcma.h
> index 6bd7b7f..73fda1c 100644
> --- a/include/linux/bcma/bcma.h
> +++ b/include/linux/bcma/bcma.h
> @@ -16,6 +16,7 @@ enum bcma_hosttype {
> ? ? ? ?BCMA_HOSTTYPE_NONE,
> ? ? ? ?BCMA_HOSTTYPE_PCI,
> ? ? ? ?BCMA_HOSTTYPE_SDIO,
> + ? ? ? BCMA_HOSTTYPE_SOC,
> ?};

I wanted to use BCMA_HOSTTYPE_NONE for SoCs (embedded systems), when I
decided to add it. As we decided SOC is better name than NONE, you
could drop it (NONE one).

-- 
Rafa?
