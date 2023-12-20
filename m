Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEACBC3DA6E
	for <b43-dev@archiver.kernel.org>; Wed, 20 Dec 2023 05:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1tNz0XfXeDAGB3t4ODf/xlpKO7V3Om6irsT6GnwqCc=; b=bOK1CNO+AcCnfD
	hRoeH6T6sbOBewU5jdl4O69WzCJJwebzMSMy3P1cgZi1Ha/bHIsTfBk96yqhOVzho+HxcRzbeZdmE
	AIcfmNnzM0tavS8xuLoyoM3lSDFb873cquKB9KDdSSSVIHyGPgo7P+4H1RySxOfyM6ee2JC6Yd3a0
	HN1Ad1MldNBHUQXD0eoyG32+4xy4VzQuPfuu7fXly9pdQUHHCVl9PDc5wY8MtBK4Vhv4XIfSTtWS7
	suuqmVrl8cxO02aXkxnmgZQEKaAcohdIR0KQvIgC6wxZ1rRQl9j1n/xdHhtterHlELPXvccDELuIJ
	HBbmtpD7TJUrXqR8PzPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFouW-00GB1F-0o;
	Wed, 20 Dec 2023 05:14:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFouR-00GB0w-0W
	for b43-dev@lists.infradead.org;
	Wed, 20 Dec 2023 05:14:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 7BFC2B81A2F;
	Wed, 20 Dec 2023 05:14:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF997C433C9;
	Wed, 20 Dec 2023 05:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703049256;
	bh=pyYKrBAS1Cco72BS17TJpIVFVTWv0EUCz7JHiNVMn/I=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=bzVz2QyE9S1JZsvF3vZy9JC96F7odjSa+s0Y96RfcDQ982VxjEsYJBcmU3Nfpe1EJ
	 ZqouCRqLJ2cGRTUJ/6DVAS2eBpTNiVXs1rfcPJznJ6JwWd30a5gCy7S+U5cgy6NF4/
	 Ex73yo0djfo9kMkYW/YNHDwrlkSjgglCsrr1zXNWk1Qc6dWZTcJoLXHOTm+WTO4WhJ
	 meRr19ne1kkLNvMfZEGemFH3ruU0UxYRJuftSMPdFrk3fOXZzeeWLag3d9Q81xn5Yu
	 rnCfea2/+HcezbBzgEq2ZO7m5ichhSmtMqZNFTL704f4ZQ7l68N9iCWW0UzblJUJ/5
	 qhF4PzsvLvs0w==
From: Kalle Valo <kvalo@kernel.org>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: Larry.Finger@lwfinger.net,  linux-wireless@vger.kernel.org,
  b43-dev@lists.infradead.org,  linux-kernel@vger.kernel.org,  Abaci Robot
 <abaci@linux.alibaba.com>
Subject: Re: [PATCH net-next] wifi: b43legacy: clean up some inconsistent
 indentings
References: <20231220011209.127586-1-yang.lee@linux.alibaba.com>
Date: Wed, 20 Dec 2023 07:14:12 +0200
In-Reply-To: <20231220011209.127586-1-yang.lee@linux.alibaba.com> (Yang Li's
	message of "Wed, 20 Dec 2023 09:12:09 +0800")
Message-ID: <87r0jh317f.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_211419_351466_CCE93B8C 
X-CRM114-Status: UNSURE (   5.68  )
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

Yang Li <yang.lee@linux.alibaba.com> writes:

> drivers/net/wireless/broadcom/b43legacy/dma.c:178 priority_to_txring() warn: inconsistent indenting
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=7783
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

wifi patches go to wireless-next, not net-next. No need to resend
because of this.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
