From: chris at martin.cc <chris@martin.cc>
Date: Wed, 2 Mar 2011 11:11:29 +1100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
Message-ID: <AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

As one of the people why reported some of these issues, I am going to take
it upon my self to test the current b43 firmware with an ASUS WL500pv2.
 This uses the Broadcom 5354 SoC and has a LP-PHY with Both the
stable(4.150.10.5) and experimental (4.178.10.4) firmware.

I will report back in the next couple of days.

Cheers
----------------------------------------------------------
Chris Martin
m: 0419812371
----------------------------------------------------------


2011/3/2 Rafa? Mi?ecki <zajec5@gmail.com>

> W dniu 7 grudnia 2010 20:21 u?ytkownik Hauke Mehrtens
> <hauke@hauke-m.de> napisa?:
> > On 12/07/2010 04:32 PM, Larry Finger wrote:
> >> On 12/07/2010 06:28 AM, Rafa? Mi?ecki wrote:
> >>> W dniu 7 grudnia 2010 13:21 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com>
> napisa?:
> >>>> Currently we tell ppl to use 4.150.10.5 for G-PHY and 4.174.64.19 for
> >>>> LP-PHY on our wiki page.
> >>>>
> >>>> Firmware files for G-PHY differ a little between there two versions,
> >>>> but did we actually get any problems reports?
> >>>>
> >>>> Can we drop 4.150.10.5 description?
> >>>
> >>> openSUSE 11.3 seems to download 4.174.64.19 only with it's script and
> >>> I didn't heard about any reports. One more point for dropping
> >>> 4.150.10.5?
> >>
> >> I pushed the patch to change openSUSE's script early in the beta testing
> for
> >> that release. I have heard no complaints either. I agree that 4.150.10.5
> should
> >> be dropped.
>
> Sorry for responding so late, that bug reports scared me at first
> look, I switched to sth else to forgot that case.
>
>
> > We had serious issues with firmware version 4.174.64.19 in OpenWrt and
> > switched back to the old on as the default option. This issue afftected
> > mostly LP-PHY devices.
> >
> > See the Bug report: https://dev.openwrt.org/ticket/6907 This was with
> > kernel 2.6.32 and compat-wireless from  round about March to May 2010.
> > Stable means the old firmware version and experimental the new one in
> > the bug report.
>
> OK, I can see there are 2 bug reports:
> https://dev.openwrt.org/ticket/7117
> https://dev.openwrt.org/ticket/6907
>
> First one #7117 is about some memory leak and "page allocation
> failure" as a result. It really should have nothing to do with
> firmware, I guess we just had some memory leak in b43.
>
> Second one #6907 is much worse...
>
> 1) At beginning it's about hanging router, it seems to be also (the
> same?) memory leak. Probably scanning triggers it. Out of memory leads
> to killing process but that resulted in router hang. No firmware
> related. Not sure if it was fixed.
>
> 2) jbemmel reported issue with card hang (not whole router), it
> happened with messages: "Channel switch to default failed" /
> "Microcode not responding". It was related to not allowed access to
> B43_MMIO_PHY0 register. No firmware related. Fixed by updating
> http://bcm-v4.sipsolutions.net/802.11/PHY/Anacore
>
> 3) Now, (maybe) firmware related...
>
> a) jbemmel switched to 4.150.10.5 and updated b43 at the same time and
> reported success. No idea what really helped.
>
> b) ldolse reported success when "building with the stable B43". Not
> sure if he tried experimental.
>
> c) anup.vasudev probably tried 4.150.10.5 but reported "It still dosent
> work"
>
> d) linchen987 tried experimental firmware only and reported success
> for AP, error for STA. Didn't compare to stable firmware.
>
> e) zooloz tried experimental firmware reported success for few hours,
> then duplicated "MAC suspend failed" messages. Didn't compare this to
> stable firmware.
>
> f) anonymous reported "This still dosent work with the latest build
> from trunk.", even after trunk witched to stable firmware as default
>
> g) metamatt posted some reports but he didn't give us direct hint
> about firmware version.
>
> So... generally we know nothing :| Not a single straight report about
> relation between firmware and stability.
>
> --
> Rafa?
>
> _______________________________________________
> b43-dev mailing list
> b43-dev at lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/b43-dev
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110302/0b5e4bbb/attachment-0001.html>
