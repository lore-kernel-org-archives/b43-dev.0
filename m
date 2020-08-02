From: Kalle Valo <kvalo@codeaurora.org>
Date: Sun,  2 Aug 2020 15:16:55 +0000 (UTC)
Subject: [PATCH for v5.9] b43: Replace HTTP links with HTTPS ones
In-Reply-To: <20200719110115.58085-1-grandmaster@al2klimov.de>
References: <20200719110115.58085-1-grandmaster@al2klimov.de>
Message-ID: <20200802151655.D959CC433C6@smtp.codeaurora.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

"Alexander A. Klimov" <grandmaster@al2klimov.de> wrote:

> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
> 
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>             If both the HTTP and HTTPS versions
>             return 200 OK and serve the same content:
>               Replace HTTP with HTTPS.
> 
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>

Patch applied to wireless-drivers-next.git, thanks.

2d96c1ed4bab b43: Replace HTTP links with HTTPS ones

-- 
https://patchwork.kernel.org/patch/11672421/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
