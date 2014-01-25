From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 25 Jan 2014 22:53:25 +0100
Subject: I'm not sure which one of you to send this to, but I do have a
 bug to report.
In-Reply-To: <CADzE2xw0vpeOXxVLdvnfnX57+gRnthrrSnNy=S0HVhH19YS7bQ@mail.gmail.com>
References: <CADzE2xw0vpeOXxVLdvnfnX57+gRnthrrSnNy=S0HVhH19YS7bQ@mail.gmail.com>
Message-ID: <CACna6ryE1At0K9TPddN6T-ySPPK+RwCsMO60yUd_RAgQDdpY8w@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Wyatt Ward <wyattfward@gmail.com>
Cc: Stefano Brivio <stefano.brivio@polimi.it>, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, Brett Rudley <brudley@broadcom.com>, Arend Van Spriel <arend@broadcom.com>, "Franky (Zhenhui) Lin" <frankyl@broadcom.com>, Hante Meuleman <meuleman@broadcom.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, brcm80211 development <brcm80211-dev-list@broadcom.com>, b43-dev <b43-dev@lists.infradead.org>

2014/1/25 Wyatt Ward <wyattfward@gmail.com>:
> The problem is that both  SSB  and BCMA are loading to support the b43
>  module, where I only want SSB to load. I had this issue in 3.11, and
> my custom build of 3.13 worked, but I don't see any changes to b43 or
> BCMA that would effect this. I think that it was my tweaking of the
> compile options for BCMA fixed this, but in any case
>
> I believe that the SSB and BCMA modules are  interfering with each
> other, killing my network speed seemingly at random.

Loading b43 (when compiled with BCMA support) will cause loading both:
ssb and bcma. That's true, this is caused by symbols b43 uses. This is
expected.

Now look at drivers/bcma/host_pci.c and try to find a reference to
0x4312 (since your card it 14e4:4312). Or try to find a sign of "bcma"
in dmesg.

bcma does not try to touch 14e4:4312 in any way. It gets loaded but
does nothing.

There must be something else in your builds affecting performance. If
you want to compare 2 kernels, remember to do cold boots. Some things
in (WiFi) hardware configuration may survive reboot.
