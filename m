From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 17 Oct 2011 16:35:55 +0200
Subject: [PATCH 3.2 REQUEST] b43: HT-PHY: report signal to mac80211
In-Reply-To: <20111017162727.388624fc@milhouse>
References: <1318800649-5609-1-git-send-email-zajec5@gmail.com>
	<20111017162727.388624fc@milhouse>
Message-ID: <CACna6ryM-08U+Ohtm6LYTuoDqy1uFfFd4jP5PmD-X=CuNT7omA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, David Woodhouse <dwmw2@infradead.org>, b43-dev@lists.infradead.org

W dniu 17 pa?dziernika 2011 16:27 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Sun, 16 Oct 2011 23:30:49 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> + ? ? case B43_PHYTYPE_HT:
>> + ? ? ? ? ? ? /* TODO: is max the right choice? */
>> + ? ? ? ? ? ? status.signal = max(
>> + ? ? ? ? ? ? ? ? ? ? (__s8) max(rxhdr->phy_ht_power0, rxhdr->phy_ht_power1),
>
> Hm, why is this cast needed? Does it throw a warning?

warning: comparison of distinct pointer types lacks a cast

gcc 4.5.1

-- 
Rafa?
