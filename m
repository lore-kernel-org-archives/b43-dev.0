From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 28 Aug 2014 14:39:06 +0200
Subject: Looking for someone with BCM43227 and (maybe) compilation skill ;
 )
In-Reply-To: <53FF21AA.5040406@telenet.be>
References: <CACna6rxVjnpMgQx9+d_LbROYNnnjnuMEGo-38MPwjsPtxYdN8w@mail.gmail.com>
 <CACna6rx+EkoCPQ06qDTbaDFEJ1hrn_CYSbrPmosF0ikhkqDxpA@mail.gmail.com>
 <53FF21AA.5040406@telenet.be>
Message-ID: <CACna6rwde+H8K42FgsHH=FT2tW_3o_NwVbk0ZyM_L3fVtfwAsA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ruben De Smet <ruben.de.smet@telenet.be>
Cc: b43-dev <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>

On 28 August 2014 14:33, Ruben De Smet <ruben.de.smet@telenet.be> wrote:
> On 07/03/2014 02:50 PM, Rafa? Mi?ecki wrote:
>> On 3 July 2014 14:32, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>>> I want to add support for BCM43227 in b43, however I need help of some
>>> BCM43227 owner. Well, I could buy one by myself (less than 10$ on
>>> eBay), but I don't want to wait a month to receive it.
>>>
>>> So I need someone with:
>>> 1) BCM43227 ;)
>>> 2) Kernel with CONFIG_MMIOTRACE=y*
>>> 3) Broadcom Linux STA driver 6.30.223.141
>>>
>>> So? Is there anyone around with BCM43227 willing to help?
>>
>> I'd need someone to:
>> 1) Disable NetworkManager & blacklist wl
>> 2) Make a cold boot (power off for 3 seconds)
>> 3) Run attached script
>> 4) Provide me /tmp/dump.txt (preferably compressed)
>>
>
> Still needed? I have
> 03:00.0 Network controller: Broadcom Corporation BCM43228 802.11a/b/g/n
> That is one iteration higher.

It has appeared that BCM43227 and BCM43228 are pretty much identical
from programming POV. You can try 3.17-rc1 (or newer) to see if it
supports your wireless card :)

-- 
Rafa?
