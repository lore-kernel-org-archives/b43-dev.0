Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9E55C48260
	for <b43-dev@archiver.kernel.org>; Fri, 16 Feb 2024 08:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YuQUJyNBcvRyHQJvHtbHncbB5dyLgBV13UmDAds1s7Y=; b=45tUg4NkcXq9Lu
	KdT5X8X/2N79jyn7/wPdl+LLikogTFNtHEg3I1YHpbfsPsyPJjffg0Xk3gOhJHB6UZJ0Ovd56ivJf
	m9t9Qgp7jifliavch6FtAwImrkVykNNQxsXmr1J/tTepkxjJBLkysDMd2+5gC81ox0TgtD4cKx0xt
	yAtczqAAdBZQ8Hq8Yn6m0FHl1pPapZpGzrPd3U+iO+xdVkDXmPwTyDsH1fujXqxH+p4RoufEp7uGK
	DXU06y9RZwdMEVJLl0lfrWjbm2EHXkztvfJDuuK8JLn1nMZaa44Flq3wdz4aY0YJtX3ab7EASqLlt
	HZ5eKEKak9nkeQqaUeJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ratcv-00000001XGc-1Qqv;
	Fri, 16 Feb 2024 08:31:21 +0000
Received: from mail.explorepulse.pl ([51.91.254.67])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ratcp-00000001XG4-1ZPf
	for b43-dev@lists.infradead.org;
	Fri, 16 Feb 2024 08:31:17 +0000
Received: by mail.explorepulse.pl (Postfix, from userid 1002)
	id F243C230B0; Fri, 16 Feb 2024 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=explorepulse.pl;
	s=mail; t=1708072267;
	bh=dqx6etWJTU7o7oR1uR2aRBCwaPXPl4dirwwzUCFBDcc=;
	h=Date:From:To:Subject:From;
	b=qIvJ5OYXhb6lAVmllHVzWliG0jAdPlVQA6CFiJDeddPtGx51Hnf4TgJDS4nifrTfU
	 +bCeg2XSVr8P488t5DKbd3bQSqb/RkgInoC75US1CxZB3hr80blbk/QlE71n2UTJKN
	 lOpRUrJckx5SSalNWApoTLqRYUtdG90zbqS9cfKBudmZanUBf/J+7yFvu0eVEdtrl9
	 omWoeKyB+N6oMaHitnN5fGPt26zOLT4ZgmUjR+N5A+GlMLpUk1e5n4p11+XixsjltN
	 Ve9WONfkfFbsHgQVirfbIVJa4quBbG6bqhARtwOFBhefitT9aOlZGwuXzxgRPgZ8eI
	 SMt9dLLRXM1gQ==
Received: by mail.explorepulse.pl for <b43-dev@lists.infradead.org>; Fri, 16 Feb 2024 08:30:52 GMT
Message-ID: <20240216074500-0.1.9i.7icw.0.pfk9p9lj7g@explorepulse.pl>
Date: Fri, 16 Feb 2024 08:30:52 GMT
From: "Marcin Gard" <marcin.grad@explorepulse.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.explorepulse.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_003116_170047_A5D40EC0 
X-CRM114-Status: UNSURE (   1.61  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbSBzZXJkZWN6bmllCk1hcmNpbiBHYXJkCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcg
bGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
