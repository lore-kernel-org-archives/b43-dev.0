From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 21 Aug 2010 19:38:20 +0200
Subject: Problem with BCM4312 802.11b/g [14e4:4315]
In-Reply-To: <20100821193150.fbd36368.cyrille@cbiot.fr>
References: <20100821193150.fbd36368.cyrille@cbiot.fr>
Message-ID: <AANLkTi=cx2SzeLyS67v2zrTr2AGe048MajOFw-zZAqWH@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, Aug 21, 2010 at 7:31 PM, Cyrille <cyrille@cbiot.fr> wrote:
> Hi I'm a BLAG user with BCM4312 802.11b/g [14e4:4315] (rev 01). But don't seem work.
>
>
> I tested to compile myself the driver like explain here
> http://wireless.kernel.org/en/users/Drivers/b43#device_firmware_installation
> with the source file : broadcom-wl-4.150.10.5.tar.bz2 and too this source file
> broadcom-wl-4.178.10.4.tar.bz2 but always the same error notification.
>
>
> - - - ?- dmesg | tail
> ?b43 ssb0:0: firmware: requesting b43-open/lp0initvals15.fw
> ?b43 ssb0:0: firmware: requesting b43-open/lp0bsinitvals15.fw
> ?b43-phy0 ERROR: Rejected non-Free firmware
> - - -
>
> The dir is b43-open --> specific to BLAG.

You should put it in b43, not b43-open - b43-open is only for
OpenFWWF. (It is not actually "specific to BLAG" - all distros can use
it to house OpenFWWF.) And OpenFWWF doesn't support LP-PHY.

>
>
> lspci -vnn
> 0b:00.0 0280: 14e4:4315 (rev 01)
> ? ? ? ?Subsystem: 1028:000b
> ? ? ? ?Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
> ? ? ? ?Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
> ? ? ? ?Latency: 0, Cache Line Size: 64 bytes
> ? ? ? ?Interrupt: pin A routed to IRQ 17
> ? ? ? ?Region 0: Memory at fe7fc000 (64-bit, non-prefetchable) [size=16K]
> ? ? ? ?Capabilities: <access denied>
> ? ? ? ?Kernel driver in use: wl ? ? ? ? ? ?---> I write with another driver
> ? ? ? ?Kernel modules: wl, ssb ? ? ? ? ? ---> *****
>
>
> uname : 2.6.32.11-libre.99.fc12.x86_64
>
>
>
> Finally, I have installed broadcom-wl from rpmfusion nonfree. It works great but it's non free :-(
>
>
> So I report the situation to you if ever you want the debug it!
>
> More info here ?: http://forums.blagblagblag.org/viewtopic.php?p=27627
>
> Thanx a lot ! Cheers !
>
> Cyrille
>
>
>
>
> ----
> [ cyrille at cbiot.fr | http://cbiot.fr ]
>
> "Ils ne me comprennent point,
> je ne suis pas la bouche qui convient ??ces oreilles"
> ?- - - Ainsi parlait Zarathoustra - - -
> ?- - - - - - - - - - - ?NIETZSCHE - - -
>
> Blag'em up! http://zenblagger.org
>
>
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
