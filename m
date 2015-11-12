From: Domeika, Max J <max.j.domeika@intel.com>
Date: Thu, 12 Nov 2015 20:24:36 +0000
Subject: Broadcom 4330 and Intel Edison
In-Reply-To: <D26A3282.163BD%max.j.domeika@intel.com>
References: <D25E6E76.15890%max.j.domeika@intel.com>
 <CACna6rxU-s7UKefKfPwv5ZwBQxv5_A650pbsTzaRuKv6EuHeTg@mail.gmail.com>
 <563A85BF.7050900@hauke-m.de> <563B3BF7.9010408@broadcom.com>
 <D26A3282.163BD%max.j.domeika@intel.com>
Message-ID: <D26A34FF.163D0%max.j.domeika@intel.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On 11/12/15, 12:17 PM, "b43-dev on behalf of Domeika, Max J"
<b43-dev-bounces at lists.infradead.org on behalf of max.j.domeika@intel.com>
wrote:

>On 11/5/15, 3:22 AM, "Arend van Spriel" <arend@broadcom.com> wrote:
>
>>On 11/04/2015 11:25 PM, Hauke Mehrtens wrote:
>>>On 11/04/2015 07:04 AM, Rafa? Mi?ecki wrote:
>>>>On 3 November 2015 at 23:00, Domeika, Max J <max.j.domeika@intel.com>
>>>>wrote:
>>>>>We are trying to get the Intel Edison which uses the Broadcom 4330 to
>>>>>act as both an AP and client at the same time. Iw list seems to
>>>>>suggest it is possible, but we haven't figured out the correct process
>>>>>to do so or even if the underlying kernel will allow it (using
>>>>>ubilinux 3.10.17 and the driver is bcm43340-mod-1.141-r47.
>>>>
>>>>It's some out-of-tree driver and BCM4330 is most likely a FullMAC
>>>>chip. It's not really related to b43 driver which support SoftMAC
>>>>devices.
>>>>
>>>bcm4330 is supported by the Linux upstream driver brcmfmac [0], you
>>>could take brcmfmac from backports [1] and try if that driver supports
>>>your requirements. BCM43340 seams to be a different chip, but it is also
>>>supported by brcmfmac.
>>
>>Doing AP+STA requires MBSS support, which 4330 firmware does not. At
>>least not the one in linux-firmware repo.
>>
>
>Thanks. Sorry for the delay. Trying to learn enough to ask the right
>questions. My read of this thread is that I could try brcmfmac from back
>ports, but Arend is saying the firmware in the linux-firmware repo
>wouldn't work anyways. Is that correct?
>
>Max
>
What it seems we really want is Wifi-direct support. Will the 4330
firmware in the repo support wifi-direct or is Wifi-direct also dependent
on MBSS?

Thanks,

Max
>
