From: Antonio Quartulli <antonio@meshcoding.com>
Date: Tue, 20 May 2014 09:10:35 +0200
Subject: [PATCH] b43: xmit: set 5 GHz bit depending on current band
In-Reply-To: <CACna6rwa6zKX=ngSQhmWTrZcy_W7fjMrTmQ-A8XURZCVMX1nrA@mail.gmail.com>
References: <1400568385-26182-1-git-send-email-zajec5@gmail.com>	<537AFAA0.3070401@meshcoding.com>
 <CACna6rwa6zKX=ngSQhmWTrZcy_W7fjMrTmQ-A8XURZCVMX1nrA@mail.gmail.com>
Message-ID: <537AFFEB.1040707@meshcoding.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>



On 20/05/14 09:09, Rafa? Mi?ecki wrote:
> On 20 May 2014 08:48, Antonio Quartulli <antonio@meshcoding.com> wrote:
>> On 20/05/14 08:46, Rafa? Mi?ecki wrote:
>>> --- a/drivers/net/wireless/b43/xmit.c
>>> +++ b/drivers/net/wireless/b43/xmit.c
>>> -     if (phy->type == B43_PHYTYPE_A)
>>> +     if (!phy->gmode)
>>>               mac_ctl |= B43_TXH_MAC_5GHZ;
>>
>> I am not familiar with this driver, but wouldn't 11b mode fall in this
>> case as well ?
> 
> What Broadcom calls a "gmode" is 2GHz. So this is a simple bool
> 1) gmode = true; // we work in 2GHz mode
> 2) gmode = false; // we work in 5GHz mode

Oh ok, thanks for the clarification! I think the variable name should be
less ambiguous then, but it's your/broadcom code :)

Cheers,


-- 
Antonio Quartulli

-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 901 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140520/43f22b5b/attachment.sig>
