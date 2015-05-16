From: Arend van Spriel <aspriel@gmail.com>
Date: Sat, 16 May 2015 23:16:06 +0200
Subject: lspci not working
In-Reply-To: <CACna6rwCapwThrMGt2HV_YyPQtZ+xRPJdBcapRqs2mkvGPdmSQ@mail.gmail.com>
References: <CA+0W_As0c=eAijuvWfSBLMY4vj2P1-zoMsjz1mmNm0_vfepPCA@mail.gmail.com>	<5557556C.2080107@lwfinger.net>
 <CACna6rwCapwThrMGt2HV_YyPQtZ+xRPJdBcapRqs2mkvGPdmSQ@mail.gmail.com>
Message-ID: <5557B396.9080300@gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>
Cc: Schmirr Wurst <schmirrwurst@gmail.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>



On 16-05-15 16:58, Rafa? Mi?ecki wrote:
> On 16 May 2015 at 16:34, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>> On 05/16/2015 04:12 AM, Schmirr Wurst wrote:
>>>
>>> I've already posted the message once, but as it was my first, I'm not
>>> sure, if it worked...
>>>
>>> Actually I'm trying to get read of a t100af from asus, that has a nice
>>> broadcom wifi chipset, but I'm wondering that I don't see anything
>>> with lspci, do that mean, that the chipset is broken ?
>>> (I though lspci is one level deeper than driver, and I should see
>>> something, even if I have driver problems) ?
>>>
>>> Could just somebody tell me if I'm right or wrong ?
>>
>>
>> On Intel Bay Trail tablets, the wifi device is frequently attached using an
>> SDIO bus, not a PCI connection. Accordingly, lspci will probably not show
>> the device.
>
> But you should be able to browse  /sys/bus/sdio/devices/ I guess
> (assuming bus host driver is working).

Indeed. The broadcom device would have a modalias starting 
'sdio:c00v02D0d'. The Asus T100 series use 43241 if I am not mistaken. 
It should be supported by the brcmfmac driver.

Regards,
Arend
