From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 16 Jul 2011 11:51:52 +0200
Subject: Enabling PLL timeout on BCMA bus
In-Reply-To: <CACna6rxrwLTrph6gh8HAPziTWCQ2yX7zNpr-dunAWKAhHw-VSA@mail.gmail.com>
References: <CACna6rwX55Vrj2RdxsPKrCZhS=m9ZjnN10Rom1g6sU7Y4uypyA@mail.gmail.com>
	<CACna6rxHbAM-q85sGePr29y4ccPaUidL+N0XEjkLt5HhbtXuAw@mail.gmail.com>
	<CACna6rxrwLTrph6gh8HAPziTWCQ2yX7zNpr-dunAWKAhHw-VSA@mail.gmail.com>
Message-ID: <CACna6rwtv2noEAEg8O4sOy5sUY_rLJWfdk3EDpkTkkEMu3ADag@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 16 lipca 2011 03:14 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
> My last hope is to find some magic in PCI config space.

After dumping PCI config space ops, I've noticed there are writes to 4
uniq registers:
0x0D ? latency timer (setting to 64)
0x40 ? Disabling RETRY_TIMEOUT register (0x41)
0x80 ? PCI_BAR0_WIN
0xAC ? PCI_BAR0_WIN2

No magic here :( I've no idea what now. I don't see a single
difference between b43 and wl.

-- 
Rafa?
