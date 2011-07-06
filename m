From: John W. Linville <linville@tuxdriver.com>
Date: Wed, 6 Jul 2011 14:37:42 -0400
Subject: [PATCH 3.0] ssb: fix init regression of hostmode PCI core
In-Reply-To: <1309879532-8704-1-git-send-email-zajec5@gmail.com>
References: <1309879532-8704-1-git-send-email-zajec5@gmail.com>
Message-ID: <20110706183742.GB2553@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>, b43-dev@lists.infradead.org

On Tue, Jul 05, 2011 at 05:25:32PM +0200, Rafa? Mi?ecki wrote:
> Our workarounds seem to be clientmode PCI specific. Using SPROM
> workaround on SoC resulted in Oops:
> 
> Data bus error, epc == 8017ed58, ra == 80225838
>  Oops[#1]:
>  Cpu 0
>  $ 0   : 00000000 10008000 b8000000 00000001
>  $ 4   : 80293b5c 00000caa ffffffff 00000000
>  $ 8   : 0000000a 00000003 00000001 696d6d20
>  $12   : ffffffff 00000000 00000000 ffffffff
>  $16   : 802d0140 b8004800 802c0000 00000000
>  $20   : 00000000 802c0000 00000000 802d04d4
>  $24   : 00000018 80151a00
>  $28   : 81816000 81817df8 8029bda0 80225838
>  Hi    : 00000000
>  Lo    : 00000000
>  epc   : 8017ed58 ssb_ssb_read16+0x48/0x60
>    Not tainted
>  ra    : 80225838 ssb_pcicore_init+0x54/0x3b4
> 
> Reported-by: Hauke Mehrtens <hauke@hauke-m.de>
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> Hauke: could you give it a try?
> 
> John: this regression was introduced in 3.0

Hauke, I'd like to see your reply before I merge this.

Thanks,

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
