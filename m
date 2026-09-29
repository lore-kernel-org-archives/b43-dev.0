Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFBEBCA5FA1
	for <b43-dev@archiver.kernel.org>; Tue, 29 Sep 2026 08:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thA3ePzacnNyaXTIKHkH0Tb9VCR/9NlUHDBqNUEKxxQ=; b=VNpLWvyGAxoJRr
	rsGb6JM8c27ELmvwXbPjazMMQ501ZK04gP+Ay5Pb5TA33nX7Rdx9Fodt8HY73Xl6Xil/vA9lTvFR3
	9kU3nPdupA/2l2dQFsk5EUyxGrbpY3medmwND0IExk6+b4dEy/GbYb6gU1gASZPAzjws0lNbPh2yV
	Su4tquyUUspyRWhV6i3SuJ2umduFxp+cB9kJuzXw/YEYHYoQhcjj7cTI793ayWAh79qVkuz9egqQ9
	kKPY4zx53k66tCmzeaDplWkWNWV9ujC5gW59/JoJpxAmF6xP96iLkPn90RK/dPIvXlxvbJOt5ARPO
	9K/lSxdM0uInmpvggm8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTg4-00000002u64-41rH;
	Tue, 29 Sep 2026 08:59:08 +0000
Received: from smtpcmd03116.aruba.it ([62.149.158.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTg1-00000002u5H-09Q9
	for b43-dev@lists.infradead.org;
	Tue, 29 Sep 2026 08:59:07 +0000
Received: from DELL-MOBILE03.ad.smart.it ([77.89.54.34])
	by Aruba SMTP with ESMTPSA
	id BTfwxW6R0dVTCBTfxx07qk; Tue, 29 Sep 2026 10:59:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1790672341; bh=F770U/ZW9dr6tmV9XMmJ7Hip1w4hincRL7oGr6NNsZc=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=nU12D5xPKlCl5dTOJfCmY+GmQnImlqBaWDn0RquvwlekMflXGrhHD4hezfbtIQaRT
	 B9BslVv79tHs65RJhtYrT8sZoi7IMBZEad1Mrq3u/Af262aWIb2IckHN92q9VcI70y
	 R9hQtGyUX8jMX8mDHqhLJTEWW008qPuV3m1fwmRI1gQqjRY7FWMUcWC4i4GeT4nw2n
	 fw02iF17f0MEIeTV5hQnOUDSuslhRQyfds/3OR36SoYO/gLe1z7Yz7LgynEVBpNLsj
	 Wi7py1Z6IhtLt2OzEVJ0KXJpY8KD6b1mhxknT/sZD4TMtBcdsDMYq4pNxeUa4pnNd2
	 IGiXg17wPf0jg==
Date: Tue, 29 Sep 2026 10:58:59 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>, "b43-dev@lists.infradead.org"
 <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>
Subject: Re: BCM4360 AC-PHY support for b43 =?UTF-8?B?4oCU?=
 reverse-engineered, seeking guidance on a clean path upstream
Message-ID: <20260929105859.364ea71b@DELL-MOBILE03.ad.smart.it>
In-Reply-To: <d6tVX7HBAW4Qnebx5Enj79edWG_LVmnRT0bjhcfv9bb1h0cewrTEDHK-VVoSy0NZcMzv3FB8OVEyTFNgA7rs_zaplEfiLXdwcCqhYDeonMo=@proton.me>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me>
	<ih-lXs5OlHxMhydtcZFtKNhGg3cGlR137CEMZ07_zFQcfCYAImW6MRWPDjkdwy-xK9bIwpDK9ImgerqHmQMsAxX3ckEjsiN8QoCSlpvIsSM=@proton.me>
	<20260928200309.01a36f5e@barney>
	<DL5AS1oidqGRAmMHt0Jcp3X4T3ob_Fa-lfhTmMMak3ATUnfcyETDn65CQf3iLvVeg4ExYoc_0GW7QMoaB1jEW4nzKAKFDv8bD0hqBEtkUKg=@proton.me>
	<20260929081403.6076a6da@barney>
	<20260929093405.79d9f4ec@DELL-MOBILE03.ad.smart.it>
	<hCBGuqVmDlV3Y7f2t6L8DtnoyBNbC8KghHXm0fZCHLDLrtfaoYw9e0UcCCsQHHK1X4TBz0DuvSL4zmAx_dVS3q54BZ0JZXtjXXNnuSAFtyo=@proton.me>
	<20260929100544.343ce6d2@DELL-MOBILE03.ad.smart.it>
	<d6tVX7HBAW4Qnebx5Enj79edWG_LVmnRT0bjhcfv9bb1h0cewrTEDHK-VVoSy0NZcMzv3FB8OVEyTFNgA7rs_zaplEfiLXdwcCqhYDeonMo=@proton.me>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfEjpnqeaAJaKmk86tSb054r59JtrAzJIjBaPxFrSPI24Hc5WRIc6kUncSgii1yRrXvK4+CH+6A9xKyc7qu0OXXIzyZqwbvf5XfL/sJgOKY/MQMUvWkuC
 U7bLpsoWwuCByfZDZkZpgzEgF5ZzQUKGbYkW9eBhKEaIwaFMEhMXjEY5hJI1yxUCeHKb13V2vdK2v+T8TcT+5cTZ4i0vidYsEl31U+d6Y8sBgFpY3UL0BlGE
 r4jkXr4DZOqsU6ty4CewdOCuCcBNBopImYM9nT8PNmBcfRsVIp+h3KjEZPrsNl3cBa/L99Fmx1t0szmifX2qUw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_015906_011729_F3AD9771 
X-CRM114-Status: GOOD (  14.59  )
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On Tue, 29 Sep 2026 08:27:53 +0000
"andreas.wendleder" <andreas.wendleder@proton.me> wrote:

> > Least, but not last, the wl order of macro operation and b43 order
> > are different in multiple places, how did you reconcile the two?  
> 
> Good sign: we're core_rev 42 too, so our disassembly and yours should
> be directly comparable.
> 

I didn't mass disassemble, i just hooked the io accessors, both because
it is faster to learn what the driver is doing and less problematic if
someone ask. Also the trace can be shared, the disassembly does not.

> femctrl/srom: not touched, no handling anywhere in our port. One fixed
> test board, so we've never hit a different value. No data point to
> offer - if you find out what it gates, let me know.

So you harcoded your srom?

> 
> wl order vs b43 order: we captured wl's real register-access sequence
> live (bpftrace kprobes on its own osl_readl/writel/delay, wl left
> loaded and bound throughout - never touch its binding while probes
> attach) and diffed it against our call order, case by case. 
> 
> Sharpest example:
> b43's generic switch_channel calls the per-channel tune, then
> unconditionally re-applies a captured POR snapshot afterward -
> captured during wl's first association, on channel 1. So channel 6
> got tuned correctly, then immediately overwritten back to channel 1's
> values. wl's real order runs the POR replay once at attach, not after
> every switch. Cost us a real mistune bug before the trace diff caught
> it. Smaller example, same category: our TX-cal port was missing one
> PHY register write wl issues between the gain-table override and
> starting the test tone - doesn't crash, just makes the measurement
> never differentiate.
>

But which driver version did you look at? The 6.30 hybrid?

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
