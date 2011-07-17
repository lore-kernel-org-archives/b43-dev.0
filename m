From: Kalle Valo <kvalo@adurom.com>
Date: Sun, 17 Jul 2011 13:22:41 +0300
Subject: Enabling PLL timeout on BCMA bus
In-Reply-To: <CACna6rwtv2noEAEg8O4sOy5sUY_rLJWfdk3EDpkTkkEMu3ADag@mail.gmail.com>
	(=?utf-8?Q?=22Rafa=C5=82_Mi=C5=82ecki=22's?= message of "Sat\,
	16 Jul 2011 11\:51\:52 +0200")
References: <CACna6rwX55Vrj2RdxsPKrCZhS=m9ZjnN10Rom1g6sU7Y4uypyA@mail.gmail.com>
	<CACna6rxHbAM-q85sGePr29y4ccPaUidL+N0XEjkLt5HhbtXuAw@mail.gmail.com>
	<CACna6rxrwLTrph6gh8HAPziTWCQ2yX7zNpr-dunAWKAhHw-VSA@mail.gmail.com>
	<CACna6rwtv2noEAEg8O4sOy5sUY_rLJWfdk3EDpkTkkEMu3ADag@mail.gmail.com>
Message-ID: <87ipr1urym.fsf@purkki.adurom.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Rafa? Mi?ecki <zajec5@gmail.com> writes:

> W dniu 16 lipca 2011 03:14 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
>> My last hope is to find some magic in PCI config space.
>
> After dumping PCI config space ops, I've noticed there are writes to 4
> uniq registers:
> 0x0D ? latency timer (setting to 64)
> 0x40 ? Disabling RETRY_TIMEOUT register (0x41)
> 0x80 ? PCI_BAR0_WIN
> 0xAC ? PCI_BAR0_WIN2
>
> No magic here :( I've no idea what now. I don't see a single
> difference between b43 and wl.

What about timing? Maybe wl is slower in some cases?

-- 
Kalle Valo
