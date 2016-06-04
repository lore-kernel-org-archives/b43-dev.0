From: Kalle Valo <kvalo@codeaurora.org>
Date: Sat,  4 Jun 2016 15:00:59 +0000 (UTC)
Subject: b43: don't unconditionally fall back to CCK if the rate is 6MB
 OFDM.
In-Reply-To: <1463455534-22512-2-git-send-email-adrian@freebsd.org>
Message-ID: <20160604150059.D7551613D3@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Adrian Chadd <adrian@freebsd.org> wrote:
> Check the current PHY operating mode (gmode) to see if we should
> fall back from 6MB OFDM to 11MB CCK.  For 5GHz operation this isn't
> allowed.
> 
> Note, the fallback lookup is only done for RTS rates; normal fallback
> rates are done via mac80211 and aren't affected by this change.
> 
> Signed-off-by: Adrian Chadd <adrian@freebsd.org>

Thanks, 1 patch applied to wireless-drivers-next.git:

d0b03439f784 b43: don't unconditionally fall back to CCK if the rate is 6MB OFDM.

-- 
Sent by pwcli
https://patchwork.kernel.org/patch/9108351/
