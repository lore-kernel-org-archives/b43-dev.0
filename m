From: Faissal Bensefia <faissaloo@me.com>
Date: Sat, 03 Dec 2016 10:31:04 +0000
Subject: BCM43224
In-Reply-To: <u1d4h6rs6i83hi154hnklibm.1480451893397@email.android.com>
References: <u1d4h6rs6i83hi154hnklibm.1480451893397@email.android.com>
Message-ID: <20009b01-d725-13a8-698e-ce0939d08e20@me.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On 29/11/16 20:37, Faissal Bensefia wrote:
> 
> On 29 Nov 2016 11:01 a.m., Rafa? Mi?ecki <zajec5@gmail.com> wrote:
>>
>> On 29 November 2016 at 11:48, Faissal Bensefia <faissaloo@me.com> wrote: 
>>> On 28/11/16 21:03, Rafa? Mi?ecki wrote: 
>>>> On 23 November 2016 at 21:27, Faissal Bensefia <faissaloo@me.com> wrote: 
>>>>> To my knowledge the only drivers for this card are brcmsmac and 
>>>>> broadcom-wl, both of which require proprietary firmware, which I'd like 
>>>>> to do without. How can I assist in reverse engineering the BCM43224 
>>>>> firmware? Are there any resources that explain how to use b43-tools? 
>>>>
>>>> b43 also has (very) limited support for BCM43224, after all you 
>>>> e-mailed b43 mailing list. 
>>>>
>>> I've attempted to use b43 but on my card but it doesn't work, the module 
>>> never loads, despite me removing brcmsmac making sure that everything 
>>> has been unloaded and then loading b43, as well as blacklisting 
>>> brcmsmac, none of which worked. From what I've read there is meant to be 
>>> support but it's not been tested (I don't remember where the site was 
>>> but it had a list of Broadcom cards and their support status). 
>>
>> Please be specific. 
>>
>> "the module never loads" - what error do you see after doing "modprobe b43"? 
>>
>> -- 
>> Rafa? 
> 
> I get no error when I do that. When I say the module never loads I'm assuming it hasn't because I have no network connection and network manager doesn't detect a Wi-Fi interface.
> 

Ok, just a follow up, I was looking through my journalctl and found this:
Dec 03 10:29:27 macbook-xubuntu kernel: b43: probe of bcma0:1 failed
with error -524

~Faissal
