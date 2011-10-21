From: =?UTF-8?B?SmVzw7pzIFZpZGFsIFBhbmFsw6lz?= <jesusvpct@vodafone.es>
Date: Fri, 21 Oct 2011 14:09:26 +0200
Subject: Broadcom 4303 HP Pavilion zv5000
In-Reply-To: <CACna6rz9AMUqcBXQgLBsu70qDJEAOQXC5f-664ygWC0KYZRdBg@mail.gmail.com>
References: <4E9BE7A2.4060703@vodafone.es> <4E9D95B4.5050706@vodafone.es>
	<4E9D9C89.9010200@lwfinger.net> <4E9DB5FD.6090902@vodafone.es>
	<4E9DC5E2.8070708@lwfinger.net> <4E9DD037.5030808@vodafone.es>
	<4E9DD41A.2030805@lwfinger.net> <4E9DD6FD.3030108@vodafone.es>
	<4E9DDC16.40501@lwfinger.net> <4E9DE41D.5020909@vodafone.es>
	<4E9DEA29.4050509@lwfinger.net> <4E9EBF72.2090505@vodafone.es>
	<4E9EC5A5.2040105@lwfinger.net> <4E9ECD29.1080105@vodafone.es>
	<4E9EDCFC.9000301@lwfinger.net> <4E9F3D9E.8020009@vodafone.es>
	<4E9F5D69.2010105@lwfinger.net> <4E9FD769.6090105@vodafone.es>
	<CACna6rz9AMUqcBXQgLBsu70qDJEAOQXC5f-664ygWC0KYZRdBg@mail.gmail.com>
Message-ID: <4EA160F6.8070403@vodafone.es>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

El vie 21 oct 2011 12:53:39 CEST, Rafa? Mi?ecki escribi?:
> 2011/10/20 Jes?s Vidal Panal?s<jesusvpct@vodafone.es>:
>> El jue 20 oct 2011 01:29:45 CEST, Larry Finger escribi?:
>>>
>>> On 10/19/2011 04:14 PM, Jes?s Vidal Panal?s wrote:
>>>>
>>>> Well, i think that i've got ndiswrapper working with the windows driver,
>>>> but i
>>>> have the same problem, is not connection. Running wpa_suplicant (using
>>>> right
>>>> configuration) i've got this output:
>>>>
>>>> ioctl[SIOCSIWENCODEEXT]: Invalid argument
>>>> ioctl[SIOCSIWENCODEEXT]: Invalid argument
>>>> Trying to associate with 20:cf:30:ce:0e:c7 (SSID='WIFI-Tux' freq=2442
>>>> MHz)
>>>> Association request to the driver failed
>>>> Associated with 00:00:00:00:00:00
>>>> CTRL-EVENT-DISCONNECTED bssid=20:cf:30:ce:0e:c7 reason=0
>>>> ioctl[SIOCSIWENCODEEXT]: Invalid argument
>>>> ioctl[SIOCSIWENCODEEXT]: Invalid argument
>>>> Trying to associate with 20:cf:30:ce:0e:c7 (SSID='WIFI-Tux' freq=2442
>>>> MHz)
>>>> Association request to the driver failed
>>>> Associated with 00:00:00:00:00:00
>>>> CTRL-EVENT-DISCONNECTED bssid=20:cf:30:ce:0e:c7 reason=0
>>>>
>>>
>>> Does wireshark on Win 7 show any packets from your device with
>>> ndiswrapper?
>>>
>>> My hotel has wifi and I will be able to see Email daily.
>>>
>>> Larry
>>>
>>>
>>
>> I don't see any packets either.
>
> Thanks a lot guys for debugging this. AFAIU:
> 1) Linux + b43 = RX ok, TX broken
> 2) Linux + ndis = RX ok, TX broken
> 3) XP = RX ok, TX ok
>
> Jes?s: I could try debugging if we got any working Linux driver. Even
> ndiswrapper is alright, we could grab MMIO dumps from ndis na b43 and
> compare them.
> Could you try using some different Windows driver with ndiswrapper?
> Maybe some another one will work with this BCM4301 device?
>

I don't know what do you mean, do you mean to use other bcm4301 windows 
driver? or bcm43xx windows driver?
