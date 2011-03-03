From: chris at martin.cc <chris@martin.cc>
Date: Thu, 3 Mar 2011 14:44:19 +1100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTi=9HiTE47FSoJzngG5HdbsbrYnjdxMRT0E-qKg8@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTinPWhA_ArMhDXC7XwCT14qH-H19r0m79CoHj0nj@mail.gmail.com>
	<AANLkTi=9HiTE47FSoJzngG5HdbsbrYnjdxMRT0E-qKg8@mail.gmail.com>
Message-ID: <AANLkTi=yn7f487ZJMpEOUJESYVj--JOHK3FBgWs4qPf_@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/2 chris at martin.cc <chris@martin.cc>
>
> 2011/3/2 Rafa? Mi?ecki <zajec5@gmail.com>:
> >> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> >> b43-phy0: Loading firmware version 478.104 (2008-07-01 00:50:23)
> >
> > Did you brought interface up, then down, then again up? I try to check
> > if there is reason for loading firmware twice.
> >
> > Did you get the same messages with old (stable) firmware?
> >
>
> No, not deliberately, it is done by the network start script, so it may.
> It does the same when I us the "Stable" version.
> Tomorrow I will manually bring up the interface and add it to the bridge.

I have had a look at the script. and it appear that the interface is
brought up twice.
The first time to test that it is there and perform some configuration
against it.
The second time when it is passed to hostapd - looks like it resets the device.

----------------------------------------------------------
Chris Martin
m: +61 419 812 371
----------------------------------------------------------
