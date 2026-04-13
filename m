Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE919F34C50
	for <b43-dev@archiver.kernel.org>; Mon, 13 Apr 2026 12:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:From:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bUzrpOpzlXnjly4NqmOylCdLw1qvNYOyVXCPH/WddDU=; b=Nq5NORRdJ2b10h
	9CBy5zVfygKIaQ0lTCCGAiaIpo9LbZikxaS+0lJyFTyZtqyJXYIiF5bLIQZ8jn/2TfLDEcGIxPf9e
	0zl01eJC/MfHllzAPhXNs07bEnaBgwJr5Tc6DVonY+wkr+ii5yhqSY39Xu4/pqhwxnMrKBi/EXcjY
	WJqVPtpb5HI8z1hou8+PZ6AypviwERnwQskrZK+sLoFl1LzTi8hI2KZvI9okn6cL0LxszMWpj5jbY
	s7LVLaxdL7egQT1FvXwnh3Km1fEgksZyyGNquQ9s/1B/82e687/sAvaWEzS//2CFVlApDZsq0zNzZ
	UJhHhxPcTw5am/JjfMDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGeI-0000000Fftj-0Uqr;
	Mon, 13 Apr 2026 12:44:18 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGeE-0000000FftQ-3rBl
	for b43-dev@lists.infradead.org;
	Mon, 13 Apr 2026 12:44:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com; h=To:
 From: Subject: Message-Id: Date: Content-Type: Content-Transfer-Encoding:
 Mime-Version; q=dns/txt; s=fe-953a8a3ca9; t=1776084253;
 bh=jL9WLZFDk2hi9oFYTtBZIRNy5tdekSoo1/lRAL9IAqs=;
 b=GUNxNNKsND4wktBJml5mRscMTIXnTBNbXD9VfwEnW6UufIOd00nvNOpIPCUDJwq3oVb0orQeR
 hb6P08v3Z+wVcK96b2So2Dm3ZXsO4bco73R//ucrppHZrpD8T/eYSJeaPCtxbWWrRQQ3HjgF2y9
 qAcx67hKJ4FZcim4L+exzCW1YaUClSDKw1xM8WPFtTDc4k5Z8TP6nAlaQOgZc7o5j4vN/ObSg2h
 OtVXO1EY+ACw1IpXZewixYvrTwWGd3PX4bx7vv1V6hWFvjueJwdDdvrVEw3szh0INr2DHHTBLf9
 XyaxhloZvLAUs0IaOC60iuzxJGW0/8Fd+4tOaeu46zDg==
X-Forward-Email-ID: 69dce51911ae2e8efa0d45ca
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.7.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Mon, 13 Apr 2026 08:44:07 -0400
Message-Id: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com>
Subject: Firmware for reverse engineering b43?
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: <b43-dev@lists.infradead.org>, <linux-wireless@vger.kernel.org>
X-Mailer: aerc 0.21.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_054415_219544_BAE64ECE 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="Flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Hi all,

As I've been getting into kernel development, I found the b43 driver
as a suitable place for me to work in, given its status as orphan and
my access to it having an old iMac.

When it comes to figuring out what code to write and how to implement
functions, I see that there has been a mix of answers across the driver.

Lots of functions refer to specs RE'd from the 4.x firmware[1], but
my own install uses 5.x firmware. Additionally, the 6.x firmware is
available.

For my reverse engineering process, I opened the firmware in Ghidra
and basically try to map the functionality to the driver, which appears
to be what was done with the 4.x specs?

But, as I compare to the newer firmware, some functions have been moved
or replaced. And sometimes, the newer firmware functions contradict the
RE'd 4.x specs, or have extra steps in its process.

Take b43_nphy_perical, or as known in the v4 firmware,
wlc_phy_perical_nphy. I got to this function because wlc_nphy_init calls
it. But actually, the RE'd version says init calls
wlc_phy_perical_nphy_run, which the firmware says is not the case
(it goes through wlc_phy_perical_nphy first, which has its own
conditions).

So, which is the best source of truth(s) for this driver? The v4.x
specs, the v5 firmware, or the v6 firmware? Which one should be used,
and which has a higher priority level over the other?

Keep in mind the v4 specs came before the release of Ghidra; now that
it exists, we can refer to it instead of manually probing functionality.
I've even seen Ghidra show different instructions than the 4.x spec.

Thanks,
-Josh

[1]: https://bcm-v4.sipsolutions.net

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
