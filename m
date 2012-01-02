From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 2 Jan 2012 13:41:42 +0100
Subject: [PATCH 2/3] bcma: SPROM: add macro for easier extraction
In-Reply-To: <20120102122018.30057.qmail@stuge.se>
References: <1325490085-3806-1-git-send-email-zajec5@gmail.com>
 <1325490085-3806-2-git-send-email-zajec5@gmail.com>
 <20120102122018.30057.qmail@stuge.se>
Message-ID: <CACna6rxiHydMmVOK18DO6X5COSUvZ+2c5=n-_oztBsP3NkxFhQ@mail.gmail.com>
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

I also like the proposed solution because it let me fit some lines 80
chars length. See all the
SSB_SROM8_*_PA_[0-2]
from the next patch. Most of them are 80 char long ;)

-- 
Rafa?
