From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 22 Oct 2010 14:41:35 +0200
Subject: b43/SSB: SPROM revision problem
In-Reply-To: <AANLkTin5xkWBGqkNiZR3Uiys52g4t9UpRaX1LrjxrG99@mail.gmail.com>
References: <AANLkTin5xkWBGqkNiZR3Uiys52g4t9UpRaX1LrjxrG99@mail.gmail.com>
Message-ID: <AANLkTikVug2RFWFkv7_dJn_jn+NZAyTR2wMoeDzC2-WG@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>, Michael Buesch <mb@bu3sch.de>

W dniu 22 pa?dziernika 2010 13:23 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
> I've problem with initializing N radio (2055) on my Broadcom card.
>
> In case of my card simple workaround [1] for radio initialization is
> needed. If I do not use workaround radio simply does not start. I
> dumped MMIO operations of "wl" and it uses workaround for my card as
> well.
>
> The problem is that workaround condition is SPROM-based. It looks like this:
> if (sprom->revision < 4)
> ? ? ? ?workaround = (some_specific_card);
> else
> ? ? ? ?workaround = ((sprom->boardflags_hi & B43_BFH_NOPA) == 0);
>
> So now goes the tricky part. My SSB has following SPROM:
> [ 6208.080097] ssb: SPROM offset is 0x1000
> [ 6208.089815] ssb: SPROM revision 5 detected.
>
> However in drivers/ssb/pci.c there are some translations, including
> one for my card. My SPROM revision gets translated to 4. The result
> is:
> sprom->revision: 4
> sprom->boardflags_hi: 0x1
>
> With that revision and boardflags workaround is not used and my radio
> does not init. There are two possibilities:
> 1) Specs are wrong
> 2) We do SPROM translation incorrectly
>
> Any hints about that?
>
>
> [1] http://bcm-v4.sipsolutions.net/802.11/Radio/2055/Init#Post_Init

Ahhh, I should check for boardflags2! Expect patches soon ;)

-- 
Rafa?
