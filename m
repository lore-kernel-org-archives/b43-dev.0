From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 4 Feb 2011 23:55:18 +0100
Subject: [PATCH] ssb-pcmcia: Fix parsing of invariants tuples
In-Reply-To: <1296858885.21503.33.camel@maggie>
References: <1296858885.21503.33.camel@maggie>
Message-ID: <AANLkTimo61j4K8MW7z5ssc=yjE=D--xX6oextej8q84q@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: John Linville <linville@tuxdriver.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Dominik Brodowski <linux@dominikbrodowski.net>

2011/2/4 Michael B?sch <mb@bu3sch.de>:
> This fixes parsing of the device invariants (MAC address)
> for PCMCIA SSB devices.
>
> ssb_pcmcia_do_get_invariants expects an iv pointer as data
> argument.
>
> Tested-by: dylan cristiani <d.cristiani@idem-tech.it>
> Signed-off-by: Michael Buesch <mb@bu3sch.de>
> Cc: stable at kernel.org

For stable: it's regression in 2.6.33. AFAIU there is no need to apply
that for 2.6.32.

-- 
Rafa?
