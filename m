From: nimrodomer at gmail.com <nimrodomer@gmail.com>
Date: Mon, 27 Sep 2010 15:38:46 -0700 (PDT)
Subject: 14e4:4315 chipset glitchy Monitor mode
In-Reply-To: <AANLkTi=x1Onckk_fnYmSg=wO6UMsLWGpYNFSJ9W+rv=K@mail.gmail.com>
References: <alpine.DEB.2.00.1009260218150.18060@niemands>
	<AANLkTin5v8aUrMh-xGzHb-NA3Q0uq6BqMbeR5P+Pr1Ro@mail.gmail.com>
	<alpine.DEB.2.00.1009261316570.20459@niemands>
	<AANLkTi=x1Onckk_fnYmSg=wO6UMsLWGpYNFSJ9W+rv=K@mail.gmail.com>
Message-ID: <alpine.DEB.2.00.1009271538140.13178@niemands>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org



On Mon, 27 Sep 2010, G?bor Stefanik wrote:

> 2010/9/27 Nimrod Omer <nimrodomer@gmail.com>:
>>
>>
>> On Sun, 26 Sep 2010, G?bor Stefanik wrote:
>>
>>> On Sun, Sep 26, 2010 at 11:42 AM, Nimrod Omer <nimrodomer@gmail.com>
>>> wrote:
>>>>
>>>> Hi there,
>>>>
>>>> I googled query variations on my problem, through various email lists,
>>>> but
>>>> ultimately failed to find a solution. This is my first email to this
>>>> list,
>>>> so I can only hope that I am following proper protocol
>>>> . My apologies if I am not.
>>>>
>>>> My problem is that my wifi card spontaneously stops working in Monitor
>>>> mode.
>>>> It used to work just fine when I was using Karmic, around kernel 2.6.28
>>>> -ish, but stopped at the later kernel updates (I believe it was kernel
>>>> 2.6.31). I upgraded to Lucid, but the problem persisted.
>>>>
>>>> Other than that, the b43 driver works great (thank you, developers!). I
>>>> followed the directions on the compat-wireless site exactly for the
>>>> LP-PHY
>>>> 14e4:4315 chipset, and I did modinfo and ls -l to confirm that the b43
>>>> driver was updated. In Managed mode it does just about everything I want.
>>>>
>>>> (NB: I didn't install compat-wireless via
>>>> linux-backports-modules-wireless-lucid-generic, but compiled and
>>>> installed
>>>> everything manually per the website instructions--as I assumed you have
>>>> to
>>>> do for the 14e4:4315 LP-PHY chipset)
>>>>
>>>> This is what I do to test for Monitor mode:
>>>> 1. cd into the 9-12-2010 compat-wireless folder, and sudo make wlunload
>>>> 2. sudo modprobe b43
>>>> 3. sudo service avahi-daemon stop
>>>> 4. sudo service network-manager stop
>>>> 5. sudo airmon-ng check kill (gets rid of wpa_supplicant, and I assume
>>>> ? ? ? ?that dhclient went away with network-manager)
>>>> 6. sudo ifconfig wlan0 down
>>>> 7. sudo iwconfig wlan0 mode Monitor channel 1
>>>> 8. sudo ifconfig wlan0 up
>>>> 9. sudo tcpdump -i wlan0
>>>
>>> Instead of steps 6..9, do:
>>> 6. sudo airmon-ng start wlan0 1
>>> 7. sudo tcpdump -i mon0
>>
>> I've tried this, but it works even more poorly (hard to believe) than 6..9
>> on channel 12. That said, mon0 works just as well (or should I say, works
>> just as poorly) as wlan0 so long as I first go through 6..9 (so I have both
>> wlan0 & mon0 on Monitor mode).
>
> Leave wlan0 in managed mode. Try with wlan0 down, then with wlan0 up.

I gave this a shot, per your suggestion. I pretty much had the same 
result, irregardless of wlan0 being up or down. Namely, I see improvement 
when wlan0 is put in Monitor mode, but if it's kept on--even if I use 
mon0--the tcpdump only captures a handful of packets (if any).

>
>>
>>>
>>> Also, what happens if you simultaneously run "airodump-ng -c 1,1 mon0"
>>> in the background?
>>>
>>
>> Much of the aircrack-ng suite is extremely disabled by my Monitor mode
>> problem. As with your first suggestion, so long as I follow 6..9 I have a
>> little time before Monitor mode stops, I can get a little mileage from the
>> suite. However, I have, at most, about a minute. However, if I don't follow
>> 6..9, I get maybe a second. Thus, in answer: pretty much nothing happens.
>
> The specific command I posted causes airodump to periodically refresh
> the channel setting to channel 1, in case something else is setting
> the card to a different channel. (The trick is "-c 1,1" - change both
> 1s to the channel you want to scan on.)
>

Here I saw marginal improvement, but certainly nothing that could be 
construed as a workaround. Airodump-ng captured packets for about a minute 
before stopping--which is 55 seconds more than I am used to it capturing 
lately.

>>
>>>>
>>>> In a few seconds the tcpdump will just stop. If I ^c it, and do it again
>>>> no
>>>> packets are captured at all. To make it work again, I have to repeat
>>>> steps 6
>>>> - 8.
>>>>
>>>> One thing of note: certain channels are glitchier than others.
>>>> Specifically:
>>>> 1, 2 will capture over 1000 packets (often several k's) before failing
>>>> 3, 4, 5, 6, 7 generally fail before capturing 1000 packets
>>>> 8, 9, 10, 11, 12, 13 generally fail before capture 100 packets (though
>>>> usually
>>>> ? ? ? ?it's closer to < 10)
>>>>
>>>> Here's some info on the system I have:
>>>>
>>>> $ uname -a
>>>> Linux computername 2.6.32-24-generic #43-Ubuntu SMP Thu Sep 16 14:17:33
>>>> UTC
>>>> 2010 i686 GNU/Linux
>>>> $ lspci -vnn | grep 14e4
>>>> 03:00.0 Network controller [0280]: Broadcom Corporation BCM4312 802.11b/g
>>>> [14e4:4315] (rev 01)
>>>> $ modinfo b43
>>>> filename:
>>>> /lib/modules/2.6.32-24-generic/updates/drivers/net/wireless/b43/b43.ko
>>>> firmware: ? ? ? b43/ucode9.fw
>>>> firmware: ? ? ? b43/ucode5.fw
>>>> firmware: ? ? ? b43/ucode15.fw
>>>> firmware: ? ? ? b43/ucode14.fw
>>>> firmware: ? ? ? b43/ucode13.fw
>>>> firmware: ? ? ? b43/ucode11.fw
>>>> firmware: ? ? ? FW13
>>>> license: ? ? ? ?GPL
>>>> author: ? ? ? ? G?bor Stefanik
>>>> author: ? ? ? ? Michael Buesch
>>>> author: ? ? ? ? Stefano Brivio
>>>> author: ? ? ? ? Martin Langer
>>>> description: ? ?Broadcom B43 wireless driver
>>>> srcversion: ? ? 0E1FC248C1F9F84ED6D2E6F
>>>> alias: ? ? ? ? ?pcmcia:m02D0c0476f*fn*pfn*pa*pb*pc*pd*
>>>> alias: ? ? ? ? ?pcmcia:m02D0c0448f*fn*pfn*pa*pb*pc*pd*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev10*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev0F*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev0D*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev0C*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev0B*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev0A*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev09*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev07*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev06*
>>>> alias: ? ? ? ? ?ssb:v4243id0812rev05*
>>>> depends:
>>>> ?pcmcia,ssb,compat_firmware_class,mac80211,led-class,cfg80211
>>>> vermagic: ? ? ? 2.6.32-24-generic SMP mod_unload modversions 586 parm:
>>>> ? ? bad_frames_preempt:enable(1) / disable(0) Bad Frames Preemption (int)
>>>> parm: ? ? ? ? ? fwpostfix:Postfix for the .fw files to load. (string)
>>>> parm: ? ? ? ? ? hwpctl:Enable hardware-side power control (default off)
>>>> (int)
>>>> parm: ? ? ? ? ? nohwcrypt:Disable hardware encryption. (int)
>>>> parm: ? ? ? ? ? hwtkip:Enable hardware tkip. (int)
>>>> parm: ? ? ? ? ? qos:Enable QOS support (default on) (int)
>>>> parm: ? ? ? ? ? btcoex:Enable Bluetooth coexistence (default on) (int)
>>>> parm: ? ? ? ? ? verbose:Log message verbosity: 0=error, 1=warn,
>>>> 2=info(default), 3=debug (int)
>>>> parm: ? ? ? ? ? pio:Use PIO accesses by default: 0=DMA, 1=PIO (int)
>>>> $ ls -l
>>>> /lib/modules/2.6.32-24-generic/updates/drivers/net/wireless/b43/b43.ko
>>>> -rw-r--r-- 1 root root 287686 2010-09-25 15:34
>>>> /lib/modules/2.6.32-24-generic/updates/drivers/net/wireless/b43/b43.ko
>>>>
>>>> I'm currently running the b43 driver out of compat-wireless-2010-09-12,
>>>> downloaded from http://wireless.kernel.org/download/compat-wireless-2.6/.
>>>> As
>>>> of the other day, it is the second to latest daily snapshot of the
>>>> bleeding
>>>> edge version. I made two patches: one was the
>>>> channel-negative-one-maxim.patch and the other was the
>>>> mac80211.compat08082009.wl_frag+ack_v1.patch (both of which haven't given
>>>> me
>>>> grief in the past).
>>>>
>>>> $ lspci -vvn|grep 43 -A7
>>>> 03:00.0 0280: 14e4:4315 (rev 01)
>>>> ? ? ? ?Subsystem: 1028:000c
>>>> ? ? ? ?Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
>>>> ParErr-
>>>> Stepping- SERR- FastB2B- DisINTx-
>>>> ? ? ? ?Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
>>>> <TAbort- <MAbort- >SERR- <PERR- INTx-
>>>> ? ? ? ?Latency: 0, Cache Line Size: 64 bytes
>>>> ? ? ? ?Interrupt: pin A routed to IRQ 17
>>>> ? ? ? ?Region 0: Memory at f0100000 (64-bit, non-prefetchable) [size=16K]
>>>> ? ? ? ?Capabilities: <access denied>
>>>> ? ? ? ?Kernel driver in use: b43-pci-bridge
>>>> ? ? ? ?Kernel modules: wl, ssb
>>>>
>>>> 04:00.0 0200: 10ec:8136 (rev 02)
>>>> ? ? ? ?Subsystem: 1028:02f4
>>>> ? ? ? ?Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
>>>> ParErr-
>>>> Stepping- SERR- FastB2B- DisINTx+
>>>> ? ? ? ?Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
>>>> <TAbort- <MAbort- >SERR- <PERR- INTx-
>>>> ? ? ? ?Latency: 0, Cache Line Size: 64 bytes
>>>>
>>>> $ dmesg
>>>> [ ? ?0.000000] Initializing cgroup subsys cpuset
>>>> [ ? ?0.000000] Initializing cgroup subsys cpu
>>>> [ ? ?0.000000] Linux version 2.6.32-24-generic (buildd at palmer) (gcc
>>>> version
>>>> 4.4.3 (Ubuntu 4.4.3-4ubuntu5) ) #43-Ubuntu SMP Thu Sep 16 14:17:33 UTC
>>>> 2010
>>>> (Ubuntu 2.6.32-24.43-generic 2.6.32.15+drm33.5)
>>>> [ ? ?0.000000] KERNEL supported cpus:
>>>> [ ? ?0.000000] ? Intel GenuineIntel
>>>> [ ? ?0.000000] ? AMD AuthenticAMD
> <snip>
>>>> [ ?126.616951] cfg80211: Calling CRDA to update world regulatory domain
>>>> [ ?126.683226] cfg80211: World regulatory domain updated:
>>>> [ ?126.683241] ? ? (start_freq - end_freq @ bandwidth),
>>>> (max_antenna_gain,
>>>> max_eirp)
>>>> [ ?126.683258] ? ? (2402000 KHz - 2472000 KHz @ 40000 KHz), (300 mBi,
>>>> 2000
>>>> mBm)
>>>> [ ?126.683271] ? ? (2457000 KHz - 2482000 KHz @ 20000 KHz), (300 mBi,
>>>> 2000
>>>> mBm)
>>>> [ ?126.683284] ? ? (2474000 KHz - 2494000 KHz @ 20000 KHz), (300 mBi,
>>>> 2000
>>>> mBm)
>>>> [ ?126.683296] ? ? (5170000 KHz - 5250000 KHz @ 40000 KHz), (300 mBi,
>>>> 2000
>>>> mBm)
>>>> [ ?126.683309] ? ? (5735000 KHz - 5835000 KHz @ 40000 KHz), (300 mBi,
>>>> 2000
>>>> mBm)
>>>> [ ?126.888290] Compat-wireless backport release:
>>>> compat-wireless--2010-09-02
>>>> [ ?126.888300] Backport based on linux-next.git next-20100910
>>>> [ ?126.933368] b43-pci-bridge 0000:03:00.0: PCI INT A -> GSI 17 (level,
>>>> low)
>>>> -> IRQ 17
>>>> [ ?126.933398] b43-pci-bridge 0000:03:00.0: setting latency timer to 64
>>>> [ ?126.953911] ssb: Core 0 found: ChipCommon (cc 0x800, rev 0x16, vendor
>>>> 0x4243)
>>>> [ ?126.953984] ssb: Core 1 found: IEEE 802.11 (cc 0x812, rev 0x0F, vendor
>>>> 0x4243)
>>>> [ ?126.954014] ssb: Core 2 found: PCMCIA (cc 0x80D, rev 0x0A, vendor
>>>> 0x4243)
>>>> [ ?126.954043] ssb: Core 3 found: PCI-E (cc 0x820, rev 0x09, vendor
>>>> 0x4243)
>>>> [ ?127.000633] ssb: Sonics Silicon Backplane found on PCI device
>>>> 0000:03:00.0
>>>> [ ?127.036630] b43-phy0: Broadcom 4312 WLAN found (core revision 15)
>>>> [ ?127.167533] phy0: ee773d64
>>>> [ ?127.175188] Registered led device: b43-phy0::tx
>>>> [ ?127.177396] Registered led device: b43-phy0::rx
>>>> [ ?127.179355] Registered led device: b43-phy0::radio
>>>> [ ?127.179488] Broadcom 43xx driver loaded [ Features: PMNLS,
>>>> Firmware-ID:
>>>> FW13 ]
>>>> [ ?149.208371] b43-phy0: Loading firmware version 478.104 (2008-07-01
>>>> 00:50:23)
>>>> [ ?154.737795] b43-phy0 ERROR: Fatal DMA error: 0x00000400, 0x00000000,
>>>> 0x00000000, 0x00000000, 0x00000000, 0x00000000
>>>
>>> Oh, our old friend, the 0x400 DMA error... as a workaround, try
>>> loading and unloading wl (the Broadcom hybrid driver) before loading
>>> ssb & b43. Or, if you don't want to mess with closed-source stuff,
>>> load b43 with "pio=1 qos=0 nohwcrypt=1".
>>>
>>
>> I have been having a very hard time getting wl to work, to no avail (someone
>> suggested on the meego forums that it's a GPL problem
>> [http://forum.meego.com/showthread.php?p=9702]). Also, loading b43 with
>> pio=1, etc. didn't fix the problem...
>>
>>>> [ ?154.737823] b43-phy0 ERROR: This device does not support DMA on your
>>>> system. It will now be switched to PIO.
>>>> [ ?154.737839] b43-phy0: Controller RESET (DMA error) ...
>>>> [ ?154.737882] phy0: ee7bfe04
>>>> [ ?154.964352] b43-phy0: Loading firmware version 478.104 (2008-07-01
>>>> 00:50:23)
>>>> [ ?160.488168] b43-phy0: Controller restarted
>>>> [ ?169.620176] device wlan0 entered promiscuous mode
>>>> [ ?244.477193] device wlan0 left promiscuous mode
>>>>
>>>> $ iw event -t
>>>> 1285461826.005040: wlan0 (phy #0): scan started
>>>> 1285461827.908088: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
>>>> 1285461946.005223: wlan0 (phy #0): scan started
>>>> 1285461947.900706: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
>>>> 1285462066.005307: wlan0 (phy #0): scan started
>>>> 1285462067.912618: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
>>>> 1285462186.007133: wlan0 (phy #0): scan started
>>>> 1285462187.901580: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
>>>> 1285462306.006669: wlan0 (phy #0): scan started
>>>> 1285462307.900188: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
>>>> 1285462426.006714: wlan0 (phy #0): scan started
>>>> 1285462427.908087: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
>>>> 1285462546.005434: wlan0 (phy #0): scan started
>>>> 1285462547.900196: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
>>>> 1285462666.005884: wlan0 (phy #0): scan started
>>>> 1285462667.900720: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
>>>> 1285462786.005273: wlan0 (phy #0): scan started
>>>> 1285462787.899915: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
>>>> 1285462906.004987: wlan0 (phy #0): scan started
>>>> 1285462907.907964: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
>>>> 1285463026.006441: wlan0 (phy #0): scan started
>>>> 1285463027.900710: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
>>>> 1285463146.005031: wlan0 (phy #0): scan started
>>>> 1285463147.908142: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, ""
>>>> 1285463266.005550: wlan0 (phy #0): scan started
>>>> 1285463267.900163: wlan0 (phy #0): scan finished: 2412 2417 2422 2427
>>>> 2432
>>>> 2437 2442 2447 2452 2457 2462 2467 2472 2484, "2WIRE166"
>>>>
>>>> (I ^c this after 15 minutes, as it seemed to just be essentially
>>>> repeating)
>>>
>>> Something seems to be scanning in the background.
>>
>> I ran iw event -t after I loaded b43, my network manager, etc. again--would
>> that explain the background scanning? Let me know if you want me to run it
>> again with all of the wifi modules stopped.
>
> Is your network manager loaded? That is probably the reason for the scanning.
>

Do you want me to unload all of the modules that might be interfering with 
iw, run it again, and past the output here?

>
> Anyway, I'll hopefully be able to access a system with the same DMA
> error today, I'll report back with the results when that happens.
>

I sincerely appreciate your help. I have done all that I can to resolve 
this on my own, but I am no driver developer, and I've reached the limits 
of what I can do on my own.

>>
>>>
>>>>
>>>> I sincerely hope that someone out there can solve this, as I'm tapped out
>>>> for ideas.
>>>>
>>>> Any help is appreciated,
>>>>
>>>> NO
>>>> _______________________________________________
>>>> b43-dev mailing list
>>>> b43-dev at lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/b43-dev
>>>>
>>>>
>>>
>>>
>>>
>>> --
>>> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>>>
>>
>
>
>
> -- 
> Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
>
