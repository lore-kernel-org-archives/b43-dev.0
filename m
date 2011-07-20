From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 20 Jul 2011 08:16:08 +0200
Subject: [PATCH 1/3] b43: replace DMA translation workarounds with just a
	one, commented
In-Reply-To: <20110720011509.504022f8@maggie>
References: <1311113542-2540-1-git-send-email-zajec5@gmail.com>
	<1311113542-2540-2-git-send-email-zajec5@gmail.com>
	<20110720011509.504022f8@maggie>
Message-ID: <CACna6rwMe9-dHANpDLko5yy5wu521YTGXmqBr1JYh18tYt+Z4A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, Pavel Roskin <proski@gnu.org>, b43-dev@lists.infradead.org

W dniu 20 lipca 2011 01:15 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Wed, 20 Jul 2011 00:12:20 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> + ? ? ? ? ? ? ?* be fixed on ssb side, but requires testing with b43,
>> + ? ? ? ? ? ? ?* b43legacy and b44. */
>
> No it doesn't. b44 and b43legacy don't use 64bit DMA.
> Just fix it in ssb, please.

They (drivers) don't, but what if we start giving them routing for
64-bit DMA? AFAIU they treat 64-bit DMA as 32-bit one (according to
specs: "If 64 Bit isn't an option, Silicon Backplane and PCI-E buses
can use 32 bit DMA.").

Won't they start using 64-bit DMA in the 32-bit way but with 64-bit
routing bits?

-- 
Rafa?
