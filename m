From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 6 Jul 2011 17:52:40 +0200
Subject: [PATCH 2/2] b43: implement BCMA bus ops
In-Reply-To: <20110706174046.0ae24b6d@maggie>
References: <1309902848-3141-1-git-send-email-zajec5@gmail.com>
	<1309902848-3141-2-git-send-email-zajec5@gmail.com>
	<20110706174046.0ae24b6d@maggie>
Message-ID: <CACna6ryHRNLNPrPam2dAWLysqtFLtE8bcu4A26A4xFj2ui2eNg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 6 lipca 2011 17:40 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Tue, ?5 Jul 2011 23:54:08 +0200
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>
>>
>> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
>> ---
>> ?drivers/net/wireless/b43/bus.c ?| ?100 +++++++++++++++++++++++++++++++++++++++
>> ?drivers/net/wireless/b43/bus.h ?| ? ?3 +
>> ?drivers/net/wireless/b43/main.c | ? ?7 +++
>> ?3 files changed, 110 insertions(+), 0 deletions(-)
>>
>> diff --git a/drivers/net/wireless/b43/bus.c b/drivers/net/wireless/b43/bus.c
>> index 4200713..f56604f 100644
>> --- a/drivers/net/wireless/b43/bus.c
>> +++ b/drivers/net/wireless/b43/bus.c
>> @@ -23,6 +23,106 @@
>> ?#include "b43.h"
>> ?#include "bus.h"
>>
>> +/* BCMA */
>> +#ifdef CONFIG_B43_BCMA
>> +static inline int b43_bus_bcma_bus_may_powerdown(struct b43_bus_dev *dev)
>> +{
>> + ? ? return 0; /* bcma_bus_may_powerdown(dev->bdev->bus); */
>> +}
>
> Why is this inline?
> You can't inline and take a pointer of the function at the same time.
> (The compiler will workaround this by generating multiple versions of
> the function, of which at least one is not inline).
> So remove it, please. Same below...

I didn't know about any such a limitation.

Just for sure: did you really mean "pointer of the function"? Cause my
function is taking pointer of the struct, not pointer of function.

-- 
Rafa?
