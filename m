From: Clyde McPherson <ccmcphe@verizon.net>
Date: Sat, 19 Jun 2010 18:45:27 -0400
Subject: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
In-Reply-To: <AANLkTinPItb-gl2adWe4VKL1G1FH-nBFSml8K9Kd2-bC@mail.gmail.com>
References: <206328.56059.qm@web27906.mail.ukl.yahoo.com>
	<AANLkTinPItb-gl2adWe4VKL1G1FH-nBFSml8K9Kd2-bC@mail.gmail.com>
Message-ID: <4C1D4887.5080500@verizon.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Gabor:
I hopt you are talking in general terms when you say don't force PIO 
mode. My platform is the ARM processor, and all my customers use the 
4318E CF (PCMCIA) card as their choice, since we don't have a PCI bus. 
My distributions all have force PIO mode on. I hope that is okay?

-Tex

,
> 2010/6/19 neubauten84<neubauten84@yahoo.it>:
>    
>> Ok..sorry for html mails..
>> I recompiled kernel from vanilla adding PIO mode forcing and nothing changes because I still have to use b43.conf with qos=0 option. If I don't bcm4312 doesn't connect.
>>      
> Do NOT enable PIO mode forcing! The only thing that does is ALWAYS use
> PIO - even when DMA is usable. In 2.6.35, you should see the driver
> loading in DMA mode, failing, and falling back to PIO. So, it is
> important NOT to disable DMA.
>
> Also, needing qos=0 is another problem, as QoS is supported in b43 AFAIK.
>
>    
>> I attached new dmesg with or without b43.conf file.
>>
>> The problem is not related to dma, I think, because even with pio forcing the connection (specially when is under pressure, when download traffic is high) at a time falls down and I have to reload b43.
>>
>> --- Ven 18/6/10, G?bor Stefanik<netrolller.3d@gmail.com>  ha scritto:
>>
>> Da: G?bor Stefanik<netrolller.3d@gmail.com>
>> Oggetto: Re: Broadcom Corporation BCM4312 802.11b/g [14e4:4315] (rev 01)
>> A: "neubauten84"<neubauten84@yahoo.it>
>> Cc: b43-dev at lists.infradead.org
>> Data: Venerd? 18 giugno 2010, 17:41
>>
>> 2010/6/18 neubauten84<neubauten84@yahoo.it>
>>      
>>> Linux neubauten84-laptop 2.6.35-4-generic #5-Ubuntu SMP Wed Jun 16 18:53:19 UTC 2010 i686 GNU/Linux
>>> Is there a newer ubuntu kernel?
>>>
>>>        
>> No. However. for debugging kernel issues, it is not a good idea to run
>> distro kernels - try an official kernel.org release.
>>
>> Also, please stop posting HTML emails to the list.
>>
>> --
>> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>>
>>
>>
>>      
>
>
>    
