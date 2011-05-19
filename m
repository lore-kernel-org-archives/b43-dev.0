From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 19 May 2011 23:43:06 +0200
Subject: [PATCH] b43: Fix bogus compilation warning for phy_n
In-Reply-To: <4dd58d39.ev8WALmbdvCfJmAJ%Larry.Finger@lwfinger.net>
References: <4dd58d39.ev8WALmbdvCfJmAJ%Larry.Finger@lwfinger.net>
Message-ID: <BANLkTinDciqW2yJLpwKemnSM=8_1Jy3Fxw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

2011/5/19 Larry Finger <Larry.Finger@lwfinger.net>:
> When cross-compiling the 2.6.39 wireless-testing source using GCC version
> (SUSE Linux) 4.3.2 [gcc-4_3-branch revision 141291] on an x86_64 system,
> the following warning is issued:
>
> ?CC [M] ?drivers/net/wireless/b43/phy_n.o
> drivers/net/wireless/b43/phy_n.c: In function ?b43_nphy_cal_tx_iq_lo?:
> drivers/net/wireless/b43/phy_n.c:3096: warning: ?last? may be used
> ? ? ? ?uninitialized in this function
>
> A quick look at the code shows that the warning is bogus and a gcc bug,
> but to ensure clean compilation for all users, mark the offending variable
> as uninitialized.

Did you check for both "last" usages on this function? From my quick
review it seems "last" is set in case of
1) mphase_cal_phase_id > 2
xor
2) b43_nphy_tx_tone returning success

I'm not so sure if this patch is correct.

-- 
Rafa?
