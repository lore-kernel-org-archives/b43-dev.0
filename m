From: chris at martin.cc <chris@martin.cc>
Date: Tue, 8 Mar 2011 12:25:57 +1100
Subject: Switching to 4.174.64.19 firmware for G-PHY cards?
In-Reply-To: <AANLkTimgfBXR6PxMM2V3DG9D0OvLhAd-PPkthN19UH8L@mail.gmail.com>
References: <AANLkTi=8ENWqp81v3KF=nf3Bi6Y2P92NL9x4T2SMd+NZ@mail.gmail.com>
	<AANLkTimyHvCh_k9fV1v_OpcLFvobudRriB4GqvJNrciL@mail.gmail.com>
	<4CFE538A.10808@lwfinger.net> <4CFE8934.4060803@hauke-m.de>
	<AANLkTiku-AWYY2_J9JXOvh=5fu+q8uspcaXzo5mj-tXS@mail.gmail.com>
	<AANLkTinY_f8d7kue+k6TEQaotYc_7BP_nAxwubGt0eYJ@mail.gmail.com>
	<AANLkTimiPiEXftgg09HNAEp3N2+To+cn6uvsQ8+2ckNN@mail.gmail.com>
	<AANLkTikmckvf3K-KEF7h0L-2mx-N5eQyapaF8fJiYrbs@mail.gmail.com>
	<AANLkTikcvuBdOi=LM5Bx9cxO2yY=0BzSTn18r938KjSr@mail.gmail.com>
	<AANLkTi=gjvA5=UxHENZ1ALcxomPEdL7NGeb7oFtdZ+t3@mail.gmail.com>
	<4D6EBDE0.8020005@lwfinger.net>
	<AANLkTimz2_tReWABmqH5HsNjzYRW0fkidS1qmQbSAoqr@mail.gmail.com>
	<AANLkTin1SKsQSsMMUq-+0K_j=8GUxWQmP0HyyaxtD3z3@mail.gmail.com>
	<AANLkTimwByPJQe-LK+qYx8r+mjjqrku5ios8Lzn2N84W@mail.gmail.com>
	<AANLkTi=4zfLqC3uVi35TgehNYmm5SnoRph3=vPM+MWua@mail.gmail.com>
	<AANLkTimgfBXR6PxMM2V3DG9D0OvLhAd-PPkthN19UH8L@mail.gmail.com>
Message-ID: <AANLkTinn=A6ySigu+8AOUtt3QDa7=NpO882Q_Ln76CA+@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

2011/3/8 Rafa? Mi?ecki <zajec5@gmail.com>

> W dniu 4 marca 2011 01:37 u?ytkownik chris at martin.cc <chris@martin.cc>
> napisa?:
> > Maybe the way to investigate this further is to look at what is being
> > passed between
> > mac80211 and b43, with the different firmwares.
> >
> > I will add some debugging on the weekend and see what I can uncover.
>
> Maybe it'd make sense to check what we get from hardware with older
> vs. newer firmware?
>
> Attached patch was compile-tested only.
>
> It may put a lot of messages in your dmesg, don't try to run it for too
> long ;)
>
>
Rafal

I think something went wrong with the patch you attached.
when I detach it, it contains

  Building modules, stage 2.
  MODPOST 1 modules

And nothing else.


Further..  When I was testing the driver (both in AP and STA modes) I had it
disconnected form the network, and disconnected from the bridge.  As a
result there would have been very little data transmitted.  However there is
lots of 802.11 traffic in the air.  So I think that we will find the problem
on the receive path rather than the transmit path,  Just my 2c worth until I
get some logging in there.


----------------------------------------------------------
Chris Martin
m: +61 419 812 371
----------------------------------------------------------
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20110308/bb28d478/attachment.html>
