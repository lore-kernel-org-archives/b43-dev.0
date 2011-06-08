From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Wed, 8 Jun 2011 10:20:01 +0200
Subject: [RFC][PATCH 01/10] bcma: Use array to store cores.
In-Reply-To: <BANLkTikUqj-R72XaOXnifhKv-n1ZSJMxDQ@mail.gmail.com>
References: <1307311658-15853-1-git-send-email-hauke@hauke-m.de>
	<201106061503.14852.arnd@arndb.de> <4DED48EA.7070001@hauke-m.de>
	<201106062353.40470.arnd@arndb.de> <4DEDF98C.6020905@broadcom.com>
	<4DEE9BCD.1030304@hauke-m.de>
	<BANLkTikUqj-R72XaOXnifhKv-n1ZSJMxDQ@mail.gmail.com>
Message-ID: <20110608102001.294a4ff2@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Arend van Spriel <arend@broadcom.com>, Arnd Bergmann <arnd@arndb.de>, George Kashperko <george@znau.edu.ua>, Greg KH <greg@kroah.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "linux-mips@linux-mips.org" <linux-mips@linux-mips.org>, "mb@bu3sch.de" <mb@bu3sch.de>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "bernhardloos@googlemail.com" <bernhardloos@googlemail.com>

On Wed, 8 Jun 2011 02:06:11 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> Because full scanning needs one of the following:
> 1) Working alloc - not possible for SoCs

Isn't there a bootmem allocator available on MIPS?
