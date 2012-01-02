From: Peter Stuge <peter@stuge.se>
Date: Mon, 2 Jan 2012 13:20:18 +0100
Subject: [PATCH 2/3] bcma: SPROM: add macro for easier extraction
In-Reply-To: <1325490085-3806-2-git-send-email-zajec5@gmail.com>
References: <1325490085-3806-1-git-send-email-zajec5@gmail.com>
 <1325490085-3806-2-git-send-email-zajec5@gmail.com>
Message-ID: <20120102122018.30057.qmail@stuge.se>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

Rafa? Mi?ecki wrote:
> +#define SPEX(_field, _offset, _mask, _shift)	\
> +	bus->sprom._field = ((sprom[SPOFF(_offset)] & (_mask)) >> (_shift))

Maybe this should take at least bus as parameter too?


//Peter
