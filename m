From: Kalle Valo <kvalo@codeaurora.org>
Date: Fri, 11 May 2018 13:15:49 +0300
Subject: [PATCH v2] drivers/net/wireless/broadcom/b43: fix transmit
 failure when VT is switched
In-Reply-To: <5AF41F55.4060606@sra-tohoku.co.jp> (Taketo Kabe's message of
 "Thu, 10 May 2018 19:30:45 +0900")
References: <5AF2DE73.20608@sra-tohoku.co.jp> <20180509185101.0888bd7a@wiggum>
 <5AF41F55.4060606@sra-tohoku.co.jp>
Message-ID: <877eoacxbe.fsf@codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Taketo Kabe <kabe@sra-tohoku.co.jp>
Cc: b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

Taketo Kabe <kabe@sra-tohoku.co.jp> writes:

> From: Taketo Kabe <kabe@sra-tohoku.co.jp>
>
> Fix for b43 wireless card stopping transmission when switching VTs.

The title is wrong, it should be:

b43: fix transmit failure when VT is switched

I can fix that during commit.

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#commit_title_is_wrong


-- 
Kalle Valo
