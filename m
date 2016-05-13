From: Jan Sobotka <xSobotkaJ@seznam.cz>
Date: Fri, 13 May 2016 20:10:47 +0200 (CEST)
Subject: Broadcom BCM43162 [14e4:43ae] Support
References: <CADW8vZJFgb0zTd44oueaQoVH416Axk0Xt-=fOt5crt1qmixgdw@mail.gmail.com>
 <1463115008.17952.11.camel@gmail.com>
 <1BA.2TDT.2JBpGL4MFRD.1NDNUc@seznam.cz>
 <CAJ-VmomB-voodPai0wmU+M36puH_DwCsOhDS4JrD-yn8oHPgAg@mail.gmail.com>
Message-ID: <F8.2TD1.7rzuKKxe7nC.1NDXYd@seznam.cz>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

I'm not sure. 

"Rafa? Mi?ecki"  said:
>So this is device with BCM4335 chipset which is a FullMAC one AFAIK.
>It may be supported by brcmfmac. There is already support for BCM4335
>in brcmfmac but it was developed for SDIO devices only. I don't think
>we ever met BCM4335 on PCIe device.

but 

Arend Van Spriel (arend.vanspriel at broadcom.com) said:
>It does have an ARM core, but for fullmac we need RAM as well and I
>don't see that listed. So I guess it is a 43162 and needs softmac
>driver. Also could not find any fullmac firmware for it. The only thing
>I found was a hybrid wl driver release for it.

If I understand these posts right, it is not sure which one it is.

Regards,

Jan

---------- P?vodn? zpr?va ----------
Od: Adrian Chadd 
Komu: Rod Manning 
Datum: 13. 5. 2016 19:51:50
P?edm?t: Re: Broadcom BCM43162 [14e4:43ae] Support

Hi,

This is a fullmac part, right?



-adrian
