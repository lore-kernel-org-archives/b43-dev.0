From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 14 Aug 2011 19:10:37 +0200
Subject: [PATCH V2 3.2 2/2] b43: fix DMA on some bugged hardware
In-Reply-To: <1313343581-4395-2-git-send-email-zajec5@gmail.com>
References: <1313343581-4395-1-git-send-email-zajec5@gmail.com>
	<1313343581-4395-2-git-send-email-zajec5@gmail.com>
Message-ID: <20110814191037.043b0839@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Sun, 14 Aug 2011 19:39:41 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> Some hardware with 64-bit DMA uses lower address word for setting
> routing (translation) bit. Add workaround for such boards.
> 
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> ---
> V2: use (u64) to fix compilation on 32-bit systems

Note that there are the upper_32_bits() and lower_32_bits()
macros in kernel.h to address this problem.

-- 
Greetings, Michael.
