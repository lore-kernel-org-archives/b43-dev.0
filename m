From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 19 Mar 2013 12:52:12 +0100
Subject: Extracting (boardvendor and) boardtype
In-Reply-To: <51484FDA.1010706@broadcom.com>
References: <CACna6rwPvUW89k81kkARbqkN4BgoTwWkmfU234b9Cj5R1-WVsg@mail.gmail.com>
 <51483BB2.4050105@broadcom.com>
 <CACna6rzmuA5=Vhj5CwSmMgg6=segiL6RDq0TCzxgXdGfvP62uA@mail.gmail.com>
 <CAOiHx=ngEQtEiKgW16Ah7pTYqP269s183J-e8NxUpqiK29MQ1w@mail.gmail.com>
 <CACna6rwwqYKdcyjLEecT4-9tXX-8BLm_eOWYtVhjUi+Yid3PKA@mail.gmail.com>
 <51484A79.5090505@broadcom.com>
 <CACna6ryfvb4P2CefYgqyzMmb_GxiMdyL+YiFZ_VrGu631=n2LQ@mail.gmail.com>
 <51484FDA.1010706@broadcom.com>
Message-ID: <CACna6rwUTJHa772_OhdF8OZSp57DX+H1LwDWSHfWM2Frsg7AmQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2013/3/19 Arend van Spriel <arend@broadcom.com>:
> On 03/19/2013 12:37 PM, Rafa? Mi?ecki wrote:
>>
>> 2013/3/19 Arend van Spriel <arend@broadcom.com>:
>>>
>>> On 03/19/2013 12:18 PM, Rafa? Mi?ecki wrote:
>>>>
>>>>
>>>> 2013/3/19 Jonas Gorski <jogo@openwrt.org>:
>>>>>
>>>>>
>>>>> On 19 March 2013 11:36, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>>>>>>
>>>>>>
>>>>>> However take a look at siutils.c you're using internally at Broadcom.
>>>>>> I've found it in:
>>>>>> GPL_RT_AC66U_3004270/asuswrt/release/src-rt-6.x/shared/siutils.c
>>>>>> This file contains si_nvram_process. This function calls that
>>>>>> si_getdevpathintvar and getintvar I'm not sure about. Does
>>>>>> si_nvram_process prefer SPROM's boardtype (offset SROM_SSID==0x2 or
>>>>>> offset SSB_SPROM1_SPID==0x4) if it's available (not 0xFFFF)?
>>>>>
>>>>>
>>>>>
>>>>> The getdevpathintvar and getintvar are for extracting these values
>>>>> from nvram instead of SPROM - remember that embedded bcm47xx devices
>>>>> are "sprom"-less and have these values stored in nvram. Since there is
>>>>> only one global nvram, you need to prefix these values with the
>>>>> "pci/sb" device path to differentiate if you have more than one wifi
>>>>> chip (e.g. "sb/1/boardflags" or "pci/1/boardflags"). But this isn't
>>>>> necessarily done for single wifi devices, hence the getdevpathintvar
>>>>> -> getinvar path (as the fall back).
>>>>
>>>>
>>>>
>>>> So what function does Broadcom use to extract something from SPROM?
>>>
>>>
>>> srom_var_init()
>>
>>
>> OK, so for PCI:
>> 1) srom_var_init calls initvars_srom_pci
>> 2) initvars_srom_pci calls _initvars_srom_pci
>> 3) _initvars_srom_pci calls varbuf_append for every entry
>>
>> After all we end up with varbuf_t variable filled like an NVRAM
>> (foo=bar\0baz=qux\0).
>>
>> So AFAIU getdevpathintvar and getintvar are still used to access SPROM
>> (just in a form common for NVRAM), is that right?
>>
>> If the above is right, in si_nvram_process we access SPROM (with the
>> use of getdevpathintvar/getintvar). So it seems in si_nvram_process we
>> always prefer "boardtype", no matter if it comes from SPROM of NVRAM.
>> Is that correct?
>>
>
> Yes. Non-volatile variables take precedence to PCI config info regardless
> from which device, SPROM or flash, it was loaded.

Thanks a lot for your help guys :)

-- 
Rafa?
