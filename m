Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37F6AC9832A
	for <b43-dev@archiver.kernel.org>; Tue, 29 Sep 2026 07:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fx3ZYFTNys9ls/8MNv5CAKJahhGMerTgKpeZNfM7w8=; b=3UJAgZoAlV4xQ4
	5aNEwWTTsL/E5fvy+YfmUrtLQ84w1kovfsm3f6QxZCHiS5yjyw/8iOTyY0ER4gCjrHv0sJhfNsKIj
	vjKjzZcVzVOB51jjcJ9mqzgofIlFl+Y2OcutztGjRexmVCi4caAP74XmXZcj3bGMkp31r27//sQOu
	TsiYlCvOjddO3C4aURIzcFd0a4vr9VJTKGEARdoacTfLmVJj+S/v2LW51c7ZUcvxoJAYIj36CZVN9
	elz7sQ1kzGi6EwkfRW/bSUMkZwK4x0sdefdFC4k+IqdQ41KskejGfSYlRL32A6eT2GV8Mny3iA6Jg
	5e2oanM5zyz6wOdXS/qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSaw-00000002elw-0QPL;
	Tue, 29 Sep 2026 07:49:46 +0000
Received: from mail-106102.protonmail.ch ([79.135.106.102])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSas-00000002elG-2x4R
	for b43-dev@lists.infradead.org;
	Tue, 29 Sep 2026 07:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail2; t=1790668179; x=1790927379;
	bh=7tgvkiW9tuK5qU8lEBwCsfj/Lj2Gg4b9QPSYAhGCqvw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ERcLiu4jOZL7Sipf0y1odLzJjLot6jx2YtWnOFEPKvbMqYIY3O9EprBaA6rGmPDq2
	 8RwqDHsZoJjXUp8O8E3VWV81sI4E3GSW/BnS0wzrkaA9IQKNAaRACaA94giuGHQDRX
	 t2cv5KRhU7v0hZDgWTWrH26co4z1u7a0mUAwgGtZPKNGANg7enikF9D8SfvWEeRYCi
	 pjP+vQHJnQxXy7A9qZ/fOU38+JYzgrLBX24+8nYV/Hsg1SuZymw3VKXZA1hCXCedWB
	 DwDY7AwYLgl2O14qOsQ27f+b1FrbuDSMf4Qt7ilMntive0Vu/zBcYTHwmysB8mCH48
	 o+DbudJ0rXGHQ==
Date: Tue, 29 Sep 2026 07:49:35 +0000
To: Alessio Ferri <alessio.ferri@mythread.it>
From: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: =?utf-8?Q?AW:_Re:_BCM4360_AC-PHY_support_for_b43_=E2=80=94_reverse-engineered,_seeking_guidance_on_a_clean_path_upstream?=
Message-ID: <hCBGuqVmDlV3Y7f2t6L8DtnoyBNbC8KghHXm0fZCHLDLrtfaoYw9e0UcCCsQHHK1X4TBz0DuvSL4zmAx_dVS3q54BZ0JZXtjXXNnuSAFtyo=@proton.me>
In-Reply-To: <20260929093405.79d9f4ec@DELL-MOBILE03.ad.smart.it>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me> <ih-lXs5OlHxMhydtcZFtKNhGg3cGlR137CEMZ07_zFQcfCYAImW6MRWPDjkdwy-xK9bIwpDK9ImgerqHmQMsAxX3ckEjsiN8QoCSlpvIsSM=@proton.me> <20260928200309.01a36f5e@barney> <DL5AS1oidqGRAmMHt0Jcp3X4T3ob_Fa-lfhTmMMak3ATUnfcyETDn65CQf3iLvVeg4ExYoc_0GW7QMoaB1jEW4nzKAKFDv8bD0hqBEtkUKg=@proton.me> <20260929081403.6076a6da@barney> <20260929093405.79d9f4ec@DELL-MOBILE03.ad.smart.it>
Feedback-ID: 189422222:user:proton
X-Pm-Message-ID: f23eb0d4d67ab88b5e3816eb09d4b0a76e1a2b66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_004943_371582_2E7258F7 
X-CRM114-Status: UNSURE (   6.53  )
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

> > Maybe we can find somebody doing an AI implementation from specs.
> > But then, why not publish yours instead?
> >
> 
> I'm still working on my driver for 4352/4360, so two of us actually.

Cool. Does it work? What does work?

So how do we proceed from here? I'm in the dirty room. :)
 

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
