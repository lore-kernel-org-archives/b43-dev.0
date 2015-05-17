From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 17 May 2015 13:17:19 +0200
Subject: lspci not working
In-Reply-To: <55585F1B.5050008@gmail.com>
References: <CA+0W_As0c=eAijuvWfSBLMY4vj2P1-zoMsjz1mmNm0_vfepPCA@mail.gmail.com>
 <5557556C.2080107@lwfinger.net>
 <CACna6rwCapwThrMGt2HV_YyPQtZ+xRPJdBcapRqs2mkvGPdmSQ@mail.gmail.com>
 <5557B396.9080300@gmail.com>
 <CA+0W_At43pB=FeBR4jJzKxO3ruaATAidU8rimBOE3bLM1wKGsA@mail.gmail.com>
 <CACna6rzxZJg3MHsBV3vtaEtgUbh9umE6CS=2YkgkexT51J1oiw@mail.gmail.com>
 <55585F1B.5050008@gmail.com>
Message-ID: <CACna6rz-GKJ0AkYzR5GUVUWSrp1Sje7WbY-kZ-i4yhkEXaOEww@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <aspriel@gmail.com>
Cc: Schmirr Wurst <schmirrwurst@gmail.com>, Larry Finger <Larry.Finger@lwfinger.net>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

On 17 May 2015 at 11:27, Arend van Spriel <aspriel@gmail.com> wrote:
> On 17-05-15 10:47, Rafa? Mi?ecki wrote:
>> On 17 May 2015 at 02:21, Schmirr Wurst <schmirrwurst@gmail.com> wrote:
>>> In that directory, I see a directory mmc1:0001:2
>>> under device I have 0xa94d
>>>
>>> I completly lost, maybe you understand that information, sorry..
>>
>>
>> You provided only one single device id, without even vendor id. Give
>> us at least a list of devices, e.g. by their modalias, like
>> cat /sys/bus/sdio/devices/*/modalias
>>
>
> Converting 0xa94d gives 43341, which does not look like a coincidence to me.
> So this Asus device comes with a newer chip, but it is supported by brcmfmac
> (provided vendor id is indeed 0x02d0!).

I had no idea its supported, it would be nice if you could keep wiki
page up to date. I've just added entries for BCM4334[01]:
https://wireless.wiki.kernel.org/en/users/drivers/brcm80211#brcmfmac

-- 
Rafa?
