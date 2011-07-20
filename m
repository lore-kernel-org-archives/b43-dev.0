From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 20 Jul 2011 15:35:42 +0000
Subject: [PATCH 1/3] b43: replace DMA translation workarounds with just
	a one, commented
In-Reply-To: <CACna6rxNyZquGMVz5RUWs58ty+KTeFkv5wcccBQyw2n2A7XLMA@mail.gmail.com>
References: <1311113542-2540-1-git-send-email-zajec5@gmail.com>
	<1311113542-2540-2-git-send-email-zajec5@gmail.com>
	<20110720011509.504022f8@maggie>
	<CACna6rwMe9-dHANpDLko5yy5wu521YTGXmqBr1JYh18tYt+Z4A@mail.gmail.com>
	<20110720105540.1c9d072c@maggie>
	<CACna6rxNyZquGMVz5RUWs58ty+KTeFkv5wcccBQyw2n2A7XLMA@mail.gmail.com>
Message-ID: <20110720153542.69edd601@Nokia-N900>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, Pavel Roskin <proski@gnu.org>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>

On Wed, 20 Jul 2011 13:10:55 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> Sorry, for not explaining this well eno
> ugh. I'm afraid of situation where b44 driver supports 64-bit DMA
> device *without* handling this as such a device. 

A b44 or b43legacy device with 64bit DMA engine does not exist.
