From: Kalle Valo <kvalo@codeaurora.org>
Date: Thu, 27 Aug 2020 13:08:40 +0000 (UTC)
Subject: [PATCH][next] b43: Use fallthrough pseudo-keyword
In-Reply-To: <20200821064218.GA19502@embeddedor>
References: <20200821064218.GA19502@embeddedor>
Message-ID: <20200827130840.9D642C433C6@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

"Gustavo A. R. Silva" <gustavoars@kernel.org> wrote:

> Replace the existing /* fall through */ comments and its variants with
> the new pseudo-keyword macro fallthrough[1].
> 
> [1] https://www.kernel.org/doc/html/v5.7/process/deprecated.html?highlight=fallthrough#implicit-switch-case-fall-through
> 
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Patch applied to wireless-drivers-next.git, thanks.

7b54281cb685 b43: Use fallthrough pseudo-keyword

-- 
https://patchwork.kernel.org/patch/11728229/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
