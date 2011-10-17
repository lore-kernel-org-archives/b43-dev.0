From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 17 Oct 2011 16:27:27 +0200
Subject: [PATCH 3.2 REQUEST] b43: HT-PHY: report signal to mac80211
In-Reply-To: <1318800649-5609-1-git-send-email-zajec5@gmail.com>
References: <1318800649-5609-1-git-send-email-zajec5@gmail.com>
Message-ID: <20111017162727.388624fc@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, David Woodhouse <dwmw2@infradead.org>, b43-dev@lists.infradead.org

On Sun, 16 Oct 2011 23:30:49 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> +	case B43_PHYTYPE_HT:
> +		/* TODO: is max the right choice? */
> +		status.signal = max(
> +			(__s8) max(rxhdr->phy_ht_power0, rxhdr->phy_ht_power1),

Hm, why is this cast needed? Does it throw a warning?

-- 
Greetings, Michael.
