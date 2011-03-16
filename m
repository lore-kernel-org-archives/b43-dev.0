From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 16 Mar 2011 09:29:38 +0100
Subject: Strange problem with b43
In-Reply-To: <4D807358.8010004@gmail.com>
References: <16089082.1300241728470.JavaMail.root@mswamui-swiss.atl.sa.earthlink.net>
	<AANLkTinvUO+PhES7oWyL4UxvWX=wMzGANqQqYURunMgP@mail.gmail.com>
	<4D807358.8010004@gmail.com>
Message-ID: <AANLkTin+VpuixKm=7dGS4zpSd3h7GTj8gwcuncvcYBkb@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/16 Nicolas de Peslo?an <nicolas.2p.debian@gmail.com>:
> Le 16/03/2011 09:02, Rafa? Mi?ecki a ?crit :
>>
>> W dniu 16 marca 2011 03:15 u?ytkownik<ikorot@earthlink.net> ?napisa?:
>>>>>>
>>>>>> The situation sounds pretty simple. Your connection was broken (that
>>>>>> happens in WiFI, with every card/driver) and SOMETHING tries to
>>>>>> connect to another AP you configured...
>>>>>
>>>>> Well I have only one card in laptop and I ran wpa_supplicant and dhcpcd
>>>>> only once.
>>>>> So I don't know what tries to connect to the AP that is further away.
>>>>>
>>>>> Any idea?
>>>>
>>>> I don't know but I believe, this is your real problem. You have to
>>>> find out what deamon manages your connections without you begin aware
>>>> of that.
>>>
>>> I think you missed something in my explanation.
>>> If you associate with a secure newtwork and then open the browser it asks
>>> you for
>>> credentials to connect to the network. Especially if you wpa_supplicant
>>> does not
>>> know about such network.
>>
>> I'm sorry, but I have no knowledge about such a network solutions and
>> I still don't understand the real problem I'm afraid. I can't really
>> help with that.
>>
>> Does someone from ML understand that and can help?
>
> ***** PLEASE USE "REPLY TO ALL" *****
>
> My two cents:
>
> If the browser asks you for a credential, then you are probably connected to
> an open unauthenticating AP, which give access to a local network only. When
> your browser try to reach something outside of this local network, it cross
> a transparent HTTP proxy, that ask for a credential.
>
> This is the typical kind of WiFi you use in an hotel.

I suspected that, but I was confused by:
"browser (...) asks you for credentials (...) Especially if you
wpa_supplicant does not know about such network."
So I decided it's not such a HTTP transparent proxy, because
wpa_supplicant would not have anything to do with that.


> I suspect you wpa_supplicant.conf configuration allow for the connection to
> open APs.
>
> For unknown reason, you get disconnected from your normal AP and
> wpa_supplicant try to connect to another one, because the normal one is
> unreachable. The other one happens to be an open one.

I was sure wpa supplicant connects only to the network that was typed
in passed configuration file...? And AFAIK only can network can by
specified. That would not explain connecting to other open network
with transparent HTTP proxy.

-- 
Rafa?
