From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 2 Jan 2012 13:39:02 +0100
Subject: [PATCH 2/3] bcma: SPROM: add macro for easier extraction
In-Reply-To: <20120102122018.30057.qmail@stuge.se>
References: <1325490085-3806-1-git-send-email-zajec5@gmail.com>
 <1325490085-3806-2-git-send-email-zajec5@gmail.com>
 <20120102122018.30057.qmail@stuge.se>
Message-ID: <CACna6rxjZ655nnDZjGWbNcaA8PD6BRMpdhqfBZ-StX9nECrScA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 2 stycznia 2012 13:20 u?ytkownik Peter Stuge <peter@stuge.se> napisa?:
> Rafa? Mi?ecki wrote:
>> +#define SPEX(_field, _offset, _mask, _shift) \
>> + ? ? bus->sprom._field = ((sprom[SPOFF(_offset)] & (_mask)) >> (_shift))
>
> Maybe this should take at least bus as parameter too?

I don't think we will ever want to extract SPROM info to something
else. Can't imageine such a situation right now.

Of course it may happen some new requirement will appear in the
future. But it's hard to predict it right now. And we never know what
macro will handle that future requirement. Oh, and we always can
modify existing macro or add new one :) Fortunately it's not any kind
of API :)

-- 
Rafa?
