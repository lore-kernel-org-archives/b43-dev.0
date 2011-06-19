From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 19 Jun 2011 11:43:46 +0200
Subject: [PATCH 3/3] b43: HT-PHY: switch radio to requested channel
In-Reply-To: <1308478641-6207-3-git-send-email-zajec5@gmail.com>
References: <1308478641-6207-1-git-send-email-zajec5@gmail.com>
	<1308478641-6207-3-git-send-email-zajec5@gmail.com>
Message-ID: <BANLkTikBHeNqB6bvo9ziA2OVcm=Swx_tCQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

W dniu 19 czerwca 2011 12:17 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
>>>> Something different happening with udelay 30
> ?radio_read(0x002b) -> 0x0008
> radio_write(0x002b) <- 0x0008

I meant udelay 50 ofc. The code it alright. Here goes the proof:
W 2 3855.940527 9 0xb06003da 0x0 0x0 0
W 2 3855.940578 9 0xb06003d8 0x22b 0x0 0
R 2 3855.940581 9 0xb06003da 0x8 0x0 0
W 2 3855.940583 9 0xb06003d8 0x2b 0x0 0
W 2 3855.940584 9 0xb06003da 0x8 0x0 0

940578 - 940527 = 51 us

-- 
Rafa?
