Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D0FEEB64D7
	for <b43-dev@archiver.kernel.org>; Wed, 28 Jun 2023 07:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MYwtXYRj7jJfJ000ZPLTgyJoBF9wdsvWz/GNM1yBRCc=; b=ZEBHogPPBuJhOT
	CP5k0K7M6BEIoWrPaH2hKKr2nQ5Vz9g8INVE1miIrMD5+cS85Qm2zVVUy0pFpRoLr627ZKPedyxR/
	D/H9iKFGublnDnZTHJLzB9f0DyZadvL3G5u7/cCUFBuFav42AlvILGyS2vRt90Xi043hLhG0GIM9+
	uQlI8fFDTNykVEINJ1wO571TzgPrgofIZwltt8921kABRu1w8i68aldR8THqVGO2SZ3T65nrd9eGV
	pGr27tKdIKk1xDn+Dgi4mpoYxzsG3nma7JgLbWSPWJUW6dg20BruGnEu5fcnlL2z8XzUmctmGCN7r
	G59oR+8ZlVMSYMmViUiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEPnG-00F4uN-1y;
	Wed, 28 Jun 2023 07:40:50 +0000
Received: from mail.arenig.pl ([217.61.104.40])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEPn8-00F4te-1V
	for b43-dev@lists.infradead.org;
	Wed, 28 Jun 2023 07:40:44 +0000
Received: by mail.arenig.pl (Postfix, from userid 1001)
	id 5B02FA3A77; Wed, 28 Jun 2023 08:40:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=arenig.pl; s=mail;
	t=1687938035; bh=a1EaaJaePLxbFaAkUhhPvFczq4nnXrBt0/pwbbX7jFQ=;
	h=Date:From:To:Subject:From;
	b=KqwHhc8ehEz7qectC23tXTn/dbN3PUImFQPU2jAOh444wBM7L4H93SX+UUB/uC01h
	 57c5bu/lPd4HZdKZbDDs/C9WatkruZ3uBtw5R3W1CNh488uzGe7IH3i+MXdxJJ1Duc
	 8MAKRgH/uZPNryq3lRcAFGk+Tx/MVCYhXx9amRaWBt1wh3LUDWot+FN80tuA3qnESl
	 MySkIcG+O86O40wtgXw9NFUmAEUVn46eqRzxgKFv75HMhnH55uzdLpYHK2X8348XlV
	 hemwtXvbFFqFiMzjVE4IvmPdZKC1D7eVhBr8RQhjqT+zfPUs17pg90LTd044x3Y5yf
	 bt6EMO66ccknw==
Received: by mail.arenig.pl for <b43-dev@lists.infradead.org>; Wed, 28 Jun 2023 07:40:23 GMT
Message-ID: <20230628074500-0.1.af.yzsi.0.it1h0l2o6l@arenig.pl>
Date: Wed, 28 Jun 2023 07:40:23 GMT
From: "Katarzyna Kolenda" <katarzyna.kolenda@arenig.pl>
To: <b43-dev@lists.infradead.org>
Subject: Prawo pracy - nowe wytyczne
X-Mailer: mail.arenig.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230628_004043_305423_A1C1B9E8 
X-CRM114-Status: UNSURE (   2.84  )
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

RHppZcWEIGRvYnJ5LAoKV2llbXkgamFrIHRydWRuZSBpIHNrb21wbGlrb3dhbmUgbW9nxIUgYnnE
hyBuaWVrdMOzcmUgYXNwZWt0eSBwcmF3YSBwcmFjeSBpIHphdHJ1ZG5pZW5pYSwgc3pjemVnw7Ns
bmllIG5hIHR5bSBldGFwaWUgcm96d29qdSBQYcWEc3R3YSBmaXJteS4gCgpEbGF0ZWdvIG5pZSBt
dXN6xIUgUGHFhHN0d28gcHJ6ZXByb3dhZHphxIcgcHJvY2Vzw7N3IHp3acSFemFueWNoIHogcHJh
Y293bmlrYW1pIGkgZHppYcWCZW0gSFIgc2Ftb2R6aWVsbmllLgoKWmFwZXduaWFteSBrb21wbGVr
c293ZSB3c3BhcmNpZSB3IHpha3Jlc2llIHByYXdhIHByYWN5LCBkb3JhZHp0d28gdyBrd2VzdGlh
Y2ggemF0cnVkbmllbmlhLCB3eW5hZ3JvZHplxYQsIHVybG9ww7N3IGkgxZt3aWFkY3plxYQgcHJh
Y293bmljenljaCwgYSB0YWvFvGUgZXdlbnR1YWxueWNoIGtvbmZsaWt0w7N3LCBjbyBwb3p3b2xp
IHphb3N6Y3rEmWR6acSHIHphcsOzd25vIGN6YXMsIGphayBpIGtvc3p0eS4KCkplxZtsaSBjaGNp
ZWxpYnkgUGHFhHN0d28ga29yenlzdGHEhyB6IHdhcnRvxZtjaW93eWNoIHJvendpxIV6YcWELCBr
dMOzcmUgcG9tb2fEhSBza3V0ZWN6bmllIHphcnrEhWR6YcSHIHBlcnNvbmVsZW0gaSB1bmlrbsSF
xIcgcG90ZW5jamFsbnljaCBwcm9ibGVtw7N3IHByYXdueWNoLXByb3N6xJkgbyB3aWFkb21vxZvE
hy4KCgpQb3pkcmF3aWFtIApLYXRhcnp5bmEgS29sZW5kYQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYjQzLWRldgo=
