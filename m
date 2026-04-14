Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09EB1F9D0C0
	for <b43-dev@archiver.kernel.org>; Tue, 14 Apr 2026 11:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:Message-Id:
	Date:Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HPRQw3bDkS9ErEMLVmMxu4Z3dV/vuwc9WTJdlixhBKA=; b=ZWhdBTuqNHUzaRau80+TFVOQXR
	wL5r0ULHyQaCONBVgEqQNkIu8cWjNt45SP5BhSdnaj0deW+VWAEi4iq9EuCQV7RxxbhsdJc1KaE7K
	Hpbvc3xb5DULS30mo/N0xOih7jCaWHPzDE08A/a9g/07kLFaAf4q1Ix+k5WdBbaaVN8gpkXOnMqj3
	uYGNbU4pcUMs765k5FBOCxLfb7hEMrDM6BaKIVMXk0D1OQewAB4rEBXxzNibKhjbWMd5OLZ6icq46
	Eru3lXeNpi/CNzjhgWxMX2d08jAelxfyZGL9QC1W7mRPGI90Ur5+ShlxdBCupOAlFfG96ufuAIgDa
	VDgOFC+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCbyo-0000000HEc2-09AR;
	Tue, 14 Apr 2026 11:30:54 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCbyi-0000000HEbV-3BR5
	for b43-dev@lists.infradead.org;
	Tue, 14 Apr 2026 11:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=In-Reply-To: References: To: From: Subject: Message-Id: Date:
 Content-Type: Content-Transfer-Encoding: Mime-Version; q=dns/txt;
 s=fe-953a8a3ca9; t=1776166247;
 bh=Xitvg6EmoRMrDndV4vUkzGscWrGz8aNvlTxgksPRITo=;
 b=Sw/x50hnJhWmDl9Uikpf5/xQkojwAPgHjOtkDQI5sxbOmV2J/rQgMQkD26fQgpeFgm4fj6nuu
 rldgxCkP13iACNiavPcSfl9blyI1u8Ogb66MvKn4MIhZwsfTeHfBhSKQFa5prFqAN23TkB4zf/A
 e0mgUSYsRiAO65Mz7eNiVlxrU15TdFren5UPkmiWvY4fWy6o1ezgpacyo7xMS/UpXKwPmweyy1S
 QFMO439jksJRTh2dv7k2WN7bIxMkp1WY0UHxomy8jiOgWjcg54VghJQ0HSpHhmOcD0FqOCmzUmz
 6sjMpyhz28qZJVJuheH9+ovLB//0k893EKAdSTwcwUGg==
X-Forward-Email-ID: 69de25640963e560b6266193
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.7.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Tue, 14 Apr 2026 07:30:43 -0400
Message-Id: <DHSUDVMGW0PS.2LYWKGG1C1135@ubuntu.com>
Subject: Re: Firmware for reverse engineering b43?
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: "Johannes Berg" <johannes@sipsolutions.net>, "Joshua Peisach"
 <jpeisach@ubuntu.com>, <b43-dev@lists.infradead.org>,
 <linux-wireless@vger.kernel.org>
X-Mailer: aerc 0.21.0
References: <DHS1BJ5XFYRC.GCF9PXS0OSRI@ubuntu.com>
 <c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
In-Reply-To: <c62a448843f189d78187de18d3fcb955f2779d13.camel@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_043049_078065_1CA8E7DB 
X-CRM114-Status: GOOD (  12.95  )
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

On Tue Apr 14, 2026 at 5:14 AM EDT, Johannes Berg wrote:
> I think there's no easy answer - what are you even trying to achieve?
> Does b43 not work sufficiently well? Do you even know if some specific
> calibration have a tendency to go out of whack? Is there later firmware
> that has some advantage (given how little actually happens in firmware
> in these devices, I'd be surprised by that) but isn't compatible with
> the driver now, and you want to change that?
>
> I'd be tempted to say that if there's no problem there don't try to fix
> anything, the hardware is ancient anyway, likely has few users, and
> those users would probably be fine with just leaving it?
>
> johannes

The BCM4321 (nphy) doesn't connect to my 5G network, so I figured that
by filling in TODOs and FIXME's, I could eventually get something
working.

Other than that, I was thinking of making improvements for the sake of
improving the driver.

-Josh

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
