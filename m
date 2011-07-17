From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 17 Jul 2011 18:40:44 +0200
Subject: Enabling PLL timeout on BCMA bus
In-Reply-To: <87ipr1urym.fsf@purkki.adurom.net>
References: <CACna6rwX55Vrj2RdxsPKrCZhS=m9ZjnN10Rom1g6sU7Y4uypyA@mail.gmail.com>
	<CACna6rxHbAM-q85sGePr29y4ccPaUidL+N0XEjkLt5HhbtXuAw@mail.gmail.com>
	<CACna6rxrwLTrph6gh8HAPziTWCQ2yX7zNpr-dunAWKAhHw-VSA@mail.gmail.com>
	<CACna6rwtv2noEAEg8O4sOy5sUY_rLJWfdk3EDpkTkkEMu3ADag@mail.gmail.com>
	<87ipr1urym.fsf@purkki.adurom.net>
Message-ID: <CACna6rwDcgA4DnwjBJXqaXWbC1vNwMe5vtxOTFtiwVkyy0U3Yg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 17 lipca 2011 12:22 u?ytkownik Kalle Valo <kvalo@adurom.com> napisa?:
> Rafa? Mi?ecki <zajec5@gmail.com> writes:
>
>> W dniu 16 lipca 2011 03:14 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
>>> My last hope is to find some magic in PCI config space.
>>
>> After dumping PCI config space ops, I've noticed there are writes to 4
>> uniq registers:
>> 0x0D ? latency timer (setting to 64)
>> 0x40 ? Disabling RETRY_TIMEOUT register (0x41)
>> 0x80 ? PCI_BAR0_WIN
>> 0xAC ? PCI_BAR0_WIN2
>>
>> No magic here :( I've no idea what now. I don't see a single
>> difference between b43 and wl.
>
> What about timing? Maybe wl is slower in some cases?

I've hacked bcma putting mdelay(1) after ever R/W op. It didn't help.

I've discovered different interesting thing however. Register 0x1E0 is
not ChipCommon specific. It is valid for every core on my boards:
ChipCommon, 80211 and PCIE.

I've already sent patch implementing correct core reset, including PLL.


-- 
Rafa?
