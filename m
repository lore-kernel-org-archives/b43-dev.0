From: Michael Tokarev <mjt@tls.msk.ru>
Date: Wed, 19 Sep 2012 22:42:14 +0400
Subject: [PATCH 1/2] Added information about which firmware file is being
 requested.
In-Reply-To: <1348053493-22955-1-git-send-email-jarl@softace.dk>
References: <1348053493-22955-1-git-send-email-jarl@softace.dk>
Message-ID: <505A1206.4020606@msgid.tls.msk.ru>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jarl Friis <jarl@softace.dk>
Cc: Stefano Brivio <stefano.brivio@polimi.it>, =?ISO-8859-1?Q?G=E1bor_S?= =?ISO-8859-1?Q?tefanik?= <netrolller.3d@gmail.com>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>

On 19.09.2012 15:18, Jarl Friis wrote:

> +	b43info(ctx->dev->wl, "Requesting firmware file '%s'\n", ctx->fwname);
>  	err = request_firmware(&blob, ctx->fwname, ctx->dev->dev->dev);

Hmm.  I wonder if this should be printed in request_firmware()
itself instead of in all callers?

/mjt
