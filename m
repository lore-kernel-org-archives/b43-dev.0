From: Can selcuk <can.selcuk@limsi.fr>
Date: Fri, 24 Feb 2017 14:20:56 +0100
Subject: BCM4322 keeps switching band frequency
In-Reply-To: <CAJ-Vmo=AtBs0MEiewAvburjZy0yJv1zrt-WVsSDQmRp1SMZVFg@mail.gmail.com>
References: <a30409b0a29ef6c8b627314b666a0fbd@limsi.fr>
 <CAJ-VmokXon79HyBDoFR6uVFKLQ9U7Mbjm-eOFO=fmN3K6RT0sg@mail.gmail.com>
 <05DD45FD0E4040F797311BD512AE2B3B@DoraWin7PC>
 <CAJ-Vmo=AtBs0MEiewAvburjZy0yJv1zrt-WVsSDQmRp1SMZVFg@mail.gmail.com>
Message-ID: <891ae39a501de7b49881377ce9f89550@limsi.fr>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

Hi,

How do I check the "scan dump" ? Could you please be more specific and 
explain what that means ?

Best,
Can

Le 2017-02-23 01:56, Adrian Chadd a ?crit?:
> On 22 February 2017 at 16:51, Dora Smith <tiggernut24@yahoo.com> wrote:
>> I'm confused.  A MAC is not a radio.   A wireless card definitely 
>> scans for
>> things to connect to, and then you choose a connection and connect.
> 
> The MAC has a PHY attached and a radio attached. The broadcom stuff
> can actually be, hm:
> 
> MAC <-> PHY <-> Radio
> 
> MAC <-> PHY-2G <-> radio 2G
>          PHY-5G <-> radio-5G
> 
> and some earlier things:
> 
> MAC-2G <-> PHY-2G <-> radio-2G
> MAC-5G <-> PHY-5G <-> radio-5G
> 
> So MAC and PHY can sometimes need switching...
> 
> 
> -adrian
> 
> 
>> If I ever ran into the card switching frequencies, I didn't know it.  
>> I did
>> however have constant problems with the connection.
>> 
>> I finally gave up on that card and installed another one with a 
>> different
>> manufacturer; no problems since.
>> 
>> Dora
>> 
>> -----Original Message----- From: Adrian Chadd
>> Sent: Wednesday, February 22, 2017 6:30 PM
>> To: Can selcuk
>> Cc: b43-dev at lists.infradead.org
>> Subject: Re: BCM4322 keeps switching band frequency
>> 
>> 
>> Hi,
>> 
>> That's the radio doing scanning. What's the "scan dump" output look 
>> like?
>> 
>> 
>> -adrian
>> 
>> 
>> On 22 February 2017 at 04:51, Can selcuk <can.selcuk@limsi.fr> wrote:
>>> 
>>> Hi I do have an old macbook (late 2008) with an embedded BCM4322 
>>> wireless
>>> device. I use the b43 driver and I keep getting 
>>> disconnected/reconnected
>>> as
>>> the driver switches band frequencies ..  I always had this issue with 
>>> all
>>> the kernels I used. Do you guys have any idea how to force the driver
>>> working at a single frequency ??
>>> 
>>> dmesg :
>>> 
>>> [   58.001746] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   58.174227] b43-phy0 debug: Switching to 5 GHz band
>>> [   58.592232] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   58.763176] b43-phy0 debug: Switching to 5 GHz band
>>> [   59.184229] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   59.355203] b43-phy0 debug: Switching to 5 GHz band
>>> [   59.776220] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   59.947211] b43-phy0 debug: Switching to 5 GHz band
>>> [   60.368227] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   60.539231] b43-phy0 debug: Switching to 5 GHz band
>>> [   60.960210] b43-phy0 debug: Switching to 2.4 GHz band
>>> [ 61.135034] b43-phy0 debug: Switching to 5 GHz band
>>> [   61.552285] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   61.723233] b43-phy0 debug: Switching to 5 GHz band
>>> [   62.145194] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   62.321226] b43-phy0 debug: Switching to 5 GHz band
>>> [   62.736254] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   62.913209] b43-phy0 debug: Switching to 5 GHz band
>>> [   63.328209] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   63.500552] b43-phy0 debug: Switching to 5 GHz band
>>> [   63.920224] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   64.094227] b43-phy0 debug: Switching to 5 GHz band
>>> [   64.512215] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   64.685221] b43-phy0 debug: Switching to 5 GHz band
>>> [   65.112208] b43-phy0 debug: Switching to 2.4 GHz band
>>> [   65.284251] b43-phy0 debug: Switching to 5 GHz band
>>> 
>>> 
>>> uname -a
>>> 
>>> Linux djanboox 4.9.6-gentoo-r1-nouveau-kernel #2 SMP PREEMPT Wed Feb 
>>> 22
>>> 12:25:07 CET 2017 x86_64 Intel(R) Core(TM)2 Duo CPU P7350 @ 2.00GHz
>>> GenuineIntel GNU/Linux
>>> 
>>> lspci -vvn|grep 43 -A7
>>> 03:00.0 0280: 14e4:432b (rev 01)
>>>         Subsystem: 106b:008d
>>>         Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
>>> ParErr-
>>> Stepping- SERR- FastB2B- DisINTx-
>>>         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast 
>>> >TAbort-
>>> <TAbort- <MAbort- >SERR- <PERR- INTx-
>>>         Latency: 0, Cache Line Size: 256 bytes
>>>         Interrupt: pin A routed to IRQ 20
>>>         Region 0: Memory at 93100000 (64-bit, non-prefetchable) 
>>> [size=16K]
>>>         Capabilities: [40] Power Management version 3
>>> --
>>>         Kernel driver in use: b43-pci-bridge
>>> 
>>> Best,
>>> Can
>>> 
>>> _______________________________________________
>>> b43-dev mailing list
>>> b43-dev at lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/b43-dev
>> 
>> 
>> _______________________________________________
>> b43-dev mailing list
>> b43-dev at lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/b43-dev
