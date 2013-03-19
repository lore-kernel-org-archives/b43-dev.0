From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 19 Mar 2013 12:18:59 +0100
Subject: Extracting (boardvendor and) boardtype
In-Reply-To: <CAOiHx=ngEQtEiKgW16Ah7pTYqP269s183J-e8NxUpqiK29MQ1w@mail.gmail.com>
References: <CACna6rwPvUW89k81kkARbqkN4BgoTwWkmfU234b9Cj5R1-WVsg@mail.gmail.com>
 <51483BB2.4050105@broadcom.com>
 <CACna6rzmuA5=Vhj5CwSmMgg6=segiL6RDq0TCzxgXdGfvP62uA@mail.gmail.com>
 <CAOiHx=ngEQtEiKgW16Ah7pTYqP269s183J-e8NxUpqiK29MQ1w@mail.gmail.com>
Message-ID: <CACna6rwwqYKdcyjLEecT4-9tXX-8BLm_eOWYtVhjUi+Yid3PKA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2013/3/19 Jonas Gorski <jogo@openwrt.org>:
> On 19 March 2013 11:36, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>> However take a look at siutils.c you're using internally at Broadcom.
>> I've found it in:
>> GPL_RT_AC66U_3004270/asuswrt/release/src-rt-6.x/shared/siutils.c
>> This file contains si_nvram_process. This function calls that
>> si_getdevpathintvar and getintvar I'm not sure about. Does
>> si_nvram_process prefer SPROM's boardtype (offset SROM_SSID==0x2 or
>> offset SSB_SPROM1_SPID==0x4) if it's available (not 0xFFFF)?
>
> The getdevpathintvar and getintvar are for extracting these values
> from nvram instead of SPROM - remember that embedded bcm47xx devices
> are "sprom"-less and have these values stored in nvram. Since there is
> only one global nvram, you need to prefix these values with the
> "pci/sb" device path to differentiate if you have more than one wifi
> chip (e.g. "sb/1/boardflags" or "pci/1/boardflags"). But this isn't
> necessarily done for single wifi devices, hence the getdevpathintvar
> -> getinvar path (as the fall back).

So what function does Broadcom use to extract something from SPROM?

-- 
Rafa?
