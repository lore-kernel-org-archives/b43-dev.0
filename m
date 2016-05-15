From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 15 May 2016 16:39:06 +0200
Subject: [b43] don't unconditionally fall back to CCK if the rate is 6MB
 OFDM.
In-Reply-To: <CAJ-Vmom45Pb9X_1Zw6VdszZAiizZUUd=HbEFw0hFMmPFFSNbpQ@mail.gmail.com>
References: <CAJ-Vmom45Pb9X_1Zw6VdszZAiizZUUd=HbEFw0hFMmPFFSNbpQ@mail.gmail.com>
Message-ID: <20160515163906.3d64d8fe@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Adrian Chadd <adrian@freebsd.org>
Cc: b43-dev@lists.infradead.org, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Kalle Valo <kvalo@codeaurora.org>

On Sun, 15 May 2016 07:23:25 -0700
Adrian Chadd <adrian@freebsd.org> wrote:

> @@ -438,7 +446,7 @@ int b43_generate_txhdr(struct b43_wldev *dev,
> 
>                 rts_rate = rts_cts_rate ? rts_cts_rate->hw_value :
> B43_CCK_RATE_1MB;

I just noticed that this is incorrect for 5GHz, too.
Maybe there are more such bugs.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160515/2a00a94e/attachment.sig>
