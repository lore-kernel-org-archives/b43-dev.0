From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 10 Aug 2011 21:11:30 +0200
Subject: [RFC][RFT][PATCH V2 2/2] b43: fix DMA on some bugged hardware
In-Reply-To: <1313001339-11211-2-git-send-email-zajec5@gmail.com>
References: <1313001339-11211-1-git-send-email-zajec5@gmail.com>
	<1313001339-11211-2-git-send-email-zajec5@gmail.com>
Message-ID: <20110810211130.4943d75d@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Wed, 10 Aug 2011 20:35:39 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> Some hardware with 64-bit DMA uses lower address word for setting
> routing (translation) bit. Add workaround for such boards.
> 
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> This requires testing on at least 1 normal 64-bit DMA card and 1 32-bit
> DMA card. So far it was tested only on my 14e4:4329 where it fixed DMA.
> ---

Looks good. I didn't test it, though.

-- 
Greetings, Michael.
