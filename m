Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A76FFCD5BD5
	for <b43-dev@archiver.kernel.org>; Thu, 28 May 2026 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYj5E4Htnpuy6p0VcXp8+nOATY8aD93G9uR2Dnv5lZ8=; b=32XQypS4NfoIbO
	8WdFc/wFX7VO4GQt2fpTbYPlHi4K1fU0iGdbxoVN2KD2W4keps+Oi9xOwJLh63wQ8HX9pnDOms4xn
	tPXj0HJZWQr9Kv/STNWmxqEpS3Lz85MqhdVDQ0xQtAFUy6tJCvtizh6V0LSl9laC7xkf+Vf93GFvM
	Mw3N2ynsvycwM6s/9jC3FWq2jGSWow9TleHGS0vG/bLIkjJE2RMWHp83eQtNZp8b2purhEhjoKneo
	xUXyOgA6iNmbgPMJibjAFlDIiFvCzI4mGXPvEtnzNZRjR/OZrqvm2Llff8Gmaqb15lLi9AyK9LDBl
	gnVEAEO1ANUlqwqXExFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSW0S-00000005MnL-1jEE;
	Thu, 28 May 2026 08:22:20 +0000
Received: from smtpdh18-2.aruba.it ([62.149.155.133])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSW0O-00000005Mm9-3evR
	for b43-dev@lists.infradead.org;
	Thu, 28 May 2026 08:22:19 +0000
Received: from DELL-MOBILE03.ad.smart.it ([77.89.54.34])
	by Aruba SMTP with ESMTPSA
	id SW0Hw2lBE5SteSW0Hwb4Nw; Thu, 28 May 2026 10:22:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779956530; bh=21SAsR3WJl68rB2JCZ9NOEaBf2TL1vh7yn+L5rZBWF0=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=PBgn6JKOAtCLp1mbxzN6c7SNCPJzvYJrbHTHy79yexNzG9GBn0fsGv9uL1rp9Q57x
	 KFKizEPijlbsKDzyFsHes8VDUHhA0HvPHSB9i+MgNxwSYRGKIXGzfVHWhc9df/j/st
	 UCW/IcFvz/VbkNpFwzK6qA4zDjXmPbsfTFerAmEDlxR8901gld4lTuqD72fvhxDwPD
	 V0736V/3a1567UWCONqf6Om4XXQBeblkaiwbMGeIzUygUcYotwFdY9rkRVSuDrLAMp
	 j6oVd2taUtQKGxLC2+/E4Xrx6Aayh8Wi7kVCkXnJlJBXKOxu6GWofSJdlxr3+E72Ym
	 gnYIQSA8Norlg==
Date: Thu, 28 May 2026 10:22:08 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/7] b43: add firmware mappings and remove comments
 wondering about rev22 initvals
Message-ID: <20260528102208.12dee646@DELL-MOBILE03.ad.smart.it>
In-Reply-To: <5e8cdb04c12490dca37777975e921eb1842b6b4c.camel@sipsolutions.net>
References: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
	<20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-1-cdad2c8526c6@gmail.com>
	<5e8cdb04c12490dca37777975e921eb1842b6b4c.camel@sipsolutions.net>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfK+21eEnj4S1MjFANDpBTif2ZZJMYtCEuB/PTMyyjRI2/rFCZYAFzQPBDhcv40y+LEP7YyBKKUUi68q+H9sWUzVy7xiZ573uBtNbvsQ829dYFYNkEtnD
 EEwZq/Pg/PilKG8ez2yu9Hx0BBKWPCCotHrpnKSBDWcA2XcOBySR25klBoY3BObq3Io4W8+vwS3ZbOz29EPIgDOgaPe2sQfgzLtDrQ7hESEqbceQq1NAkIIS
 vyatAfovsXmLWVznLiTYnEDhWA5x5xq4N5Dak2/EeJMCG4c1D0NQiNhGDpCVaRMTZFpRUXQVBvf4prd7EkgEfHhQBJZ5tZ7wSYebYsVozw0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_012217_368188_C9AD341C 
X-CRM114-Status: UNSURE (   8.49  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On Thu, 28 May 2026 09:43:58 +0200
Johannes Berg <johannes@sipsolutions.net> wrote:

> On Sun, 2026-05-24 at 23:56 +0200, Alessio Ferri wrote:
> > Assisted-by: Claude:claude-4.7-opus
> > Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>  
> 
> Please don't squeeze the entire commit message into the subject and
> then omit the real one.
> 
> johannes

I see, i'll resend later a v4 with the correct split between
subject/message. 
By the way there is anything else i need to correct?

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
