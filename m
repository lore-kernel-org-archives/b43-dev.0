From: Kalle Valo <kvalo@codeaurora.org>
Date: Tue, 17 May 2016 07:47:45 +0300
Subject: [PATCH] [b43] don't unconditionally fall back to CCK if the rate
 is 6MB OFDM.
In-Reply-To: <1463455534-22512-2-git-send-email-adrian@freebsd.org> (Adrian
 Chadd's message of "Mon, 16 May 2016 20:25:34 -0700")
References: <1463455534-22512-1-git-send-email-adrian@freebsd.org>
 <1463455534-22512-2-git-send-email-adrian@freebsd.org>
Message-ID: <877fet8f4e.fsf@kamboji.qca.qualcomm.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Adrian Chadd <adrian@freebsd.org>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

Adrian Chadd <adrian@freebsd.org> writes:

> Check the current PHY operating mode (gmode) to see if we should
> fall back from 6MB OFDM to 11MB CCK.  For 5GHz operation this isn't
> allowed.
>
> Note, the fallback lookup is only done for RTS rates; normal fallback
> rates are done via mac80211 and aren't affected by this change.
>
> 	Signed-off-by: Adrian Chadd <adrian@freebsd.org>

Two cosmetic problems: s/\[b43\]/b43: / and remove the tab before the
S-o-b. I can fix them before applying. But most probably I'll apply this
only after the merge window closes, in two weeks or so.

-- 
Kalle Valo
