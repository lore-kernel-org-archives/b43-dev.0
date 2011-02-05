From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 5 Feb 2011 18:35:38 +0100
Subject: Table of PCIs, chipsets, etc. on b43 wiki page
In-Reply-To: <4D4D733C.30906@lwfinger.net>
References: <AANLkTimPBdmiOQ=+TRzEGK4N8yZwj071b_pVkQzmw0RW@mail.gmail.com>
	<4D4C5595.7060903@lwfinger.net>
	<AANLkTi=QUEYGSnatgc6vfpOht0K3FzYRE38WgrAWbb8N@mail.gmail.com>
	<4D4CC268.2080008@lwfinger.net>
	<AANLkTinSVSx_AZ=sc+f5UF_8WRRtnotXZxOdXU4YOEB8@mail.gmail.com>
	<4D4D733C.30906@lwfinger.net>
Message-ID: <AANLkTi=7mQw4xn4MrSo2FXzxM38XhxHxDoV-ESDm6OQe@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

W dniu 5 lutego 2011 16:56 u?ytkownik Larry Finger
<Larry.Finger@lwfinger.net> napisa?:
> On 02/04/2011 11:56 PM, G?bor Stefanik wrote:
>> 2011/2/5 Larry Finger <Larry.Finger@lwfinger.net>:
>>> On 02/04/2011 02:27 PM, Rafa? Mi?ecki wrote:
>>>> W dniu 4 lutego 2011 20:37 u?ytkownik Larry Finger
>>>> <Larry.Finger@lwfinger.net> napisa?:
>>>>> On 02/04/2011 12:56 PM, Rafa? Mi?ecki wrote:
>>>>>> I'd like to propose little (nothing big) reogranisation of b43 hardware table:
>>>>>> http://wireless.kernel.org/Zajec?action=recall&rev=4
>>>>>>
>>>>>> Changed columns support/supported and driver/alternatives.
>>>>>>
>>>>>> Are you fine with that? Can we use colored one?
>>>>>
>>>>> I like the colored one.
>>>>>
>>>>> Some small changes:
>>>>>
>>>>> I would eliminate the second 14e4:4312 line and move the wl entry to the first
>>>>> one. I don't know if wl supports 5 GHz on that chip. I don't have mine any longer.
>>>>
>>>> Do you know anything about that duplicated ID? Is that true at all?
>>>> Why we don't support device with that duplicated ID? Why do you want
>>>> to remove it?
>>>
>>> I'm not sure that there really is an 802.11b/g device with ID 14e4:4312. There
>>> are two flavors of BCM4312, one that is 802.11a/b/g (14e4:4312), and an
>>> 802.11b/g device with ID 14e4:4315, which is the LP PHY. I suspect that the
>>> confusion over the two BCM4312 items led to the duplicate entry in this table.
>>
>> The device with PCI ID 0x4312 is called BCM4311 (dual-band) - check
>> Broadcom's official brochure on BCM4311 (has a single-band and a
>> dual-band version). Same for 0x4319 - it's actually BCM4318 dual-band
>> (for example, the BCM94318MPAGH has this ID). The only BCM4312 is
>> 0x4315 (also, there exists no "BCM4315", and while BCM4310 might
>> indeed be real, it has nothing to do with PCI ID 0x4315). Apparently
>> the correlation between PCI ID and chip ID only exists for pure G-PHY
>> cards.
>>
> Check Comment #6 in the thread at
> http://forums.opensuse.org/forums/english/get-technical-help-here/wireless/453614-wireless-card-dormant-until-wired-connection-detected.html.
> A BCM4312 with ID 14e4:4312.

It's like from PCI database. Please check comment #17:
[  281.996359] b43-phy0: Broadcom 4311 WLAN found (core revision 10)
[  282.544261] Registered led device: b43-phy0::tx
[  282.544338] Registered led device: b43-phy0::rx
[  282.544390] Registered led device: b43-phy0::radio
[  283.943092] b43 ssb0:0: firmware: requesting b43/ucode5.fw
[  284.106390] b43 ssb0:0: firmware: requesting b43/pcm5.fw
[  284.120338] b43 ssb0:0: firmware: requesting b43/b0g0initvals5.fw
[  284.195838] b43 ssb0:0: firmware: requesting b43/b0g0bsinitvals5.fw

This 14e4:4312 is BCM4311 according to our logs and driver loads
b0g0initvals5, so it is G-PHY.

-- 
Rafa?
