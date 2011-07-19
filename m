From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 20 Jul 2011 01:15:09 +0200
Subject: [PATCH 1/3] b43: replace DMA translation workarounds with just
	a one, commented
In-Reply-To: <1311113542-2540-2-git-send-email-zajec5@gmail.com>
References: <1311113542-2540-1-git-send-email-zajec5@gmail.com>
	<1311113542-2540-2-git-send-email-zajec5@gmail.com>
Message-ID: <20110720011509.504022f8@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, Pavel Roskin <proski@gnu.org>, b43-dev@lists.infradead.org

On Wed, 20 Jul 2011 00:12:20 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> +		 * be fixed on ssb side, but requires testing with b43,
> +		 * b43legacy and b44. */

No it doesn't. b44 and b43legacy don't use 64bit DMA.
Just fix it in ssb, please.
