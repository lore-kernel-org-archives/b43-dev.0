From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 4 May 2011 14:45:25 +0200
Subject: Question about IMCFGLO timeouts workaround
In-Reply-To: <1304512532.32096.4.camel@maggie>
References: <BANLkTi=bppqp9K50n-5d5MOW53-LvdbfyQ@mail.gmail.com>
	<1304512532.32096.4.camel@maggie>
Message-ID: <BANLkTimyDunC7anVitk=wCNJg5XN4B239A@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 4 maja 2011 14:35 u?ytkownik Michael B?sch <m@bues.ch> napisa?:
> On Wed, 2011-05-04 at 12:41 +0200, Rafa? Mi?ecki wrote:
>> drivers/net/wireless/b43/main.c
>> b43_imcfglo_timeouts_workaround
>>
>> Does it make sense to have here code:
>> case SSB_BUSTYPE_SSB:
>> ? ? ? tmp &= ~SSB_IMCFGLO_REQTO;
>> ? ? ? tmp &= ~SSB_IMCFGLO_SERTO;
>> ? ? ? tmp |= 0x53;
>> ? ? ? break;
>>
>> Does SSB_BUSTYPE_SSB still have PCI core? I though SSB_BUSTYPE_SSB is
>> some kind of native, not attached with PCI host.
>
> Well, is REQTO and SERTO related to the PCI core only?

No. There are two documented cases:
1) PCI (not e) cores rev < 5 need x32
2) Some BCM4311 and BCM4312 need 0x03

This SSB_BUSTYPE_SSB with 0x53 is tricky for me and seems to be undocumented.

-- 
Rafa?
