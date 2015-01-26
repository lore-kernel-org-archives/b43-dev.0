From: Kalle Valo <kvalo@codeaurora.org>
Date: Mon, 26 Jan 2015 09:04:33 +0200
Subject: [PATCH] b43: AC-PHY: prepare place for developing new PHY support
In-Reply-To: <1422205297-24767-1-git-send-email-zajec5@gmail.com>
 (=?utf-8?Q?=22Rafa=C5=82=09Mi=C5=82ecki=22's?= message of "Sun, 25 Jan 2015
 18:01:37 +0100")
References: <1422205297-24767-1-git-send-email-zajec5@gmail.com>
Message-ID: <87egqiggzi.fsf@kamboji.qca.qualcomm.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Hauke Mehrtens <hauke@hauke-m.de>

Rafa? Mi?ecki <zajec5@gmail.com> writes:

> There are new (not anymore?) Broadcom 802.11ac wireless cards based on
> chipsets like BCM4352 and BCM4360. They use a new PHY type (called
> simply AC) that will require new specific code.
>
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
>
> Kalle: as this commit & Kconfig say, this is just a beginning of new
> PHY type support. In the past we used development model this patch
> follows. Code for new PHY was added patch by patch. Adding everything
> at once would require a huge patchset & development behing the doors.
> Also sending small patches allows better review of changes & should
> result in a better code quality. Let me know if there are any
> problems.

Sounds good to me. Just keep dependency to BROKEN until it's usable and
make sure that the code compiles after every patch.

-- 
Kalle Valo
