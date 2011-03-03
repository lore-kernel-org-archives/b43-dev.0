From: chris at martin.cc <chris@martin.cc>
Date: Thu, 3 Mar 2011 15:23:03 +1100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTim4XtL9+2mw7Kx_Cu_LXak8Y6a_CgkwtrUHf_bo@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTim4XtL9+2mw7Kx_Cu_LXak8Y6a_CgkwtrUHf_bo@mail.gmail.com>
Message-ID: <AANLkTiky4YsNH7_zZRpggYHBYNyp=yNmenBN7J=cS1rq@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/2 chris at martin.cc <chris@martin.cc>:
> 2011/3/2 Rafa? Mi?ecki <zajec5@gmail.com>
>>
>> W dniu 2 marca 2011 04:30 u?ytkownik chris at martin.cc <chris@martin.cc> napisa?:
>> > 2011/3/2 chris at martin.cc <chris@martin.cc>
>> >>
>> >> As one of the people why reported some of these issues, I am going to take it upon my self to
>> >> test the current b43 firmware with an ASUS WL500pv2. ?This uses the Broadcom 5354 SoC and > has a LP-PHY with Both the stable(4.150.10.5) and experimental?(4.178.10.4)?firmware.
>> >
>> > OK. ?I managed that faster that I expected
>> > I tested the latest (fresh checkout) of OpenWrt backfire 10.03
>> > I can confirm that when using the broadcom 5354 SoC (LP-PHY) that the
>> > experimental??(4.178.10.4)?firmware. causes "oom" errors.
>> > I repeated tests with both stable and experimental with the same
>> > configuration and the
>> > experimental version always caused "oom"
>> >
>> > happy to test anything else as needed. ?I currently have the stable
>> > version under a load test
>> >
>> > The following is the first "iteration" of the log - as up can see the
>> > firmware is loaded.
>> > The radio interface is added to the bridge and ?moved to the
>> > forwarding state, then POW.
>> >
>> > b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
>> > b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
>> > device wlan0 entered promiscuous mode
>> > br-lan: port 2(wlan0) entering forwarding state
>> > hotplug2 invoked oom-killer: gfp_mask=0x80d0, order=0, oom_adj=0
>>
>> Thanks for your tests!
>>
>> I really need some help now. Does anyone have idea how changing
>> firmware can cause out of memory on host? I try to imagine some
>> reasons...
>> 1) We detect some problem with hw/fw (correctly or not) and go into
>> some infinity recursion
>> 2) Newer firmware does sth differently with DMA, we allocate too much?
>> OK, there is not even point "3" from me. I have no more ideas :|
>>
>> I could check than new vs. old firmware on my only LP-PHY, but how can
>> I check for memory allocated by module? lsmod displays column "size"
>> but I don't think it's about memory.
>>
>
> I did look in the source and found that there where 3 locations that
> kmalloc() was called,
> I added a printk(KERN_CRIT), just before each so I could determine so
> that it would be displayed on the console.
> But I didn't get anything. ?So it must be in a tight loop. ?And I'm
> pretty sure that it is triggered by a packet being sent to the radio
> from the bridge.
> I did notice that there was some debug options so I will have a look
> at that tomorrow.

I rebuild with CONFIG_B43_DEBUG
besides creating the debugfs nothing else was displayed.
Unfortunately the debugfs is not accessible once its crashed.

----------------------------------------------------------
Chris Martin
m: +61 419 812 371
----------------------------------------------------------
