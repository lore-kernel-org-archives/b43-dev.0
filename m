From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 23 Aug 2011 14:45:51 +0200
Subject: [PATCH] b43: HT-PHY: init: add missing small-tables writes
In-Reply-To: <1313250844-4526-1-git-send-email-zajec5@gmail.com>
References: <1313250844-4526-1-git-send-email-zajec5@gmail.com>
Message-ID: <CACna6rwoyPuwnzcw4BR5dmOiX9ogsTbquaG6qwRMZtLZytNnoA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

W dniu 13 sierpnia 2011 17:54 u?ytkownik Rafa? Mi?ecki
<zajec5@gmail.com> napisa?:
>
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> John: this one depends on
> [RFC][PATCH] b43: HT-PHY: allow writing longer tables with a single call
> , please apply the one above.

John, I've asked you to apply the mentioned patch before this one. By
applying *just* this one you've broken build for ppl trying *BROKEN*
HT support.

-- 
Rafa?
