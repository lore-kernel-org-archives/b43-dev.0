From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 18 May 2014 12:18:34 +0200
Subject: [PATCH] ssb: sprom: add dev_id field for value overriding
 standard ID
In-Reply-To: <537880A4.1040102@hauke-m.de>
References: <1400365358-19604-1-git-send-email-zajec5@gmail.com>
 <537880A4.1040102@hauke-m.de>
Message-ID: <CACna6ryoHtc7tLNUwynJKP70VyqGtKk0PsMqw83cfDzsRnOg3A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hauke Mehrtens <hauke@hauke-m.de>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On 18 May 2014 11:43, Hauke Mehrtens <hauke@hauke-m.de> wrote:
> There is also a vendid var which should be used. See this code from
> brcmsmac:
> http://lxr.free-electrons.com/source/drivers/staging/brcm80211/brcmsmac/wlc_bmac.c?v=3.0#L660

You're right, but is this used anywhere?

I can't reliably follow brcmsmac code, it copies the same data over
and over. Simple grepping for "vendorid" shows copying from "vendorid"
to "vendorid" of various structs, no real usage.
The one exception is "sha_params.vid = wlc_hw->vendorid;. However grepping with:
grep -R "\.vid" ./*
grep -R "\->vid" ./*
doesn't reveal any usage neither.

Seems like a dead code.
