From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 17 May 2015 13:18:38 +0200
Subject: lspci not working
In-Reply-To: <55586C06.8050803@broadcom.com>
References: <CA+0W_As0c=eAijuvWfSBLMY4vj2P1-zoMsjz1mmNm0_vfepPCA@mail.gmail.com>
 <5557556C.2080107@lwfinger.net>
 <CACna6rwCapwThrMGt2HV_YyPQtZ+xRPJdBcapRqs2mkvGPdmSQ@mail.gmail.com>
 <5557B396.9080300@gmail.com>
 <CA+0W_At43pB=FeBR4jJzKxO3ruaATAidU8rimBOE3bLM1wKGsA@mail.gmail.com>
 <55586C06.8050803@broadcom.com>
Message-ID: <CACna6ryMdaK7htOT2W_kWurMwn6KSRNNrXwnMMEBCOLcG-qKNw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: Schmirr Wurst <schmirrwurst@gmail.com>, Arend van Spriel <aspriel@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

On 17 May 2015 at 12:23, Arend van Spriel <arend@broadcom.com> wrote:
> On 05/17/15 02:21, Schmirr Wurst wrote:
>> I tried as suggested to had a look at
>> /sys/bus/sdio/devices, but the only devices around there a 3
>> mmc1:0001:1 to :3, I guess it is something else...
>>
>> I already try to install brcmfmac_sdio , with some tutorial from the
>> internet, but it didn't work...
>> actually, I see under /sys/bus/sdio/drivers brcmfmac_sdio ...
>>
>> In that directory, I see a directory mmc1:0001:2
>> under device I have 0xa94d
>>
>> I completly lost, maybe you understand that information, sorry..
>
>
> I do. The fact that you see a subdirectory mmc1:0001:2 in
> /sys/bus/sdio/drivers/brcmfmac_sdio means that the driver was probed for
> this device. Now would be a good time to share your (friends') kernel log,
> but my guess is you are either missing firmware or nvram data or both for
> this device.

It could also mean driver was loaded manually. So please also make
sure the friend uses kernel 4.0 or newer.


> And could you try to answer inline instead of top-posting.

Ack

-- 
Rafa?
