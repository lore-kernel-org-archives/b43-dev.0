Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE56C6FD1D
	for <b43-dev@archiver.kernel.org>; Tue, 21 Mar 2023 09:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tk9qvIFOt6zmBTabiiVk7KZiGXaBPtLJDuCjIiZhjto=; b=AIiqWRb/7hM8nT
	V4lXkJCDfboGOwjoFSnAfRmAGfVc4cpwq3TzTpBwvtEmZZpO6BiNny/ZEvpe8cqIEPm0XA58DNpca
	PJJ2woXdlMSuQim8hHCso5CM8QsJ2oJe8q9PefyNvGlAR/vY7jlErfq8MVb6hJWPLNYe7zTpNrhNh
	sRU/B/9zLl+AETjcsSVb9uScpHMIUtcT8t3rsyk3O2enleax0cGDyKSV2vJPAGk1EehYYtCX9851L
	/5U9XF4LhyGjzlihJ3cTSSB6ljcx2rk+68Jrobq7DAy1ZFW4YBoQjiv2vez9VrS0ZYSX36K6DKIHf
	WVD1lXplpBFn7lBfmxaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peXs1-00Bp0Q-1P;
	Tue, 21 Mar 2023 09:01:29 +0000
Received: from mail.craftsplex.pl ([162.19.155.126])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peXrv-00BoyH-2G
	for b43-dev@lists.infradead.org;
	Tue, 21 Mar 2023 09:01:24 +0000
Received: by mail.craftsplex.pl (Postfix, from userid 1002)
	id 059E423497; Tue, 21 Mar 2023 09:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=craftsplex.pl;
	s=mail; t=1679389282;
	bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
	h=Date:From:To:Subject:From;
	b=o3VRwRLMDSqvMRi4o7J/oG/46PPjtJwYa/DVGHqkvQxdwFTYtNtyoudN/JLGf7VIM
	 TWJEpFmzC7UcwCVrMjt9v40aoXojNr0vsIcvF+ozz4iZNOTqev3s49CFYJOZOYg33m
	 fmXJ8EnNHbxQydcM6WOJ/ftIhNWmw+FSLaw7rhWrjyM6OhbPknP7L8KtSlwsQotlwg
	 HvytZfmkXGy8BaOKWEUzNOqFRAcciwMEPlPk0Aa1zPAiWg7TOo77HOS8ofnUDp8tn0
	 hXdDFdEAmIL0NHqdfMRNr3WeCQQ9upvB23SH5X86gKmJi4fUGnz8EQUtHhzaKhs3SF
	 cB1UkmzlKbkFA==
Received: by mail.craftsplex.pl for <b43-dev@lists.infradead.org>; Tue, 21 Mar 2023 09:00:36 GMT
Message-ID: <20230321074500-0.1.51.jdrb.0.g1p27j6efl@craftsplex.pl>
Date: Tue, 21 Mar 2023 09:00:36 GMT
From: "Kamil Tralewski" <kamil.tralewski@craftsplex.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.craftsplex.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_020123_883483_D9407D60 
X-CRM114-Status: UNSURE (   1.87  )
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

RHppZcWEIGRvYnJ5LAoKemFwb3puYcWCZW0gc2nEmSB6IFBhxYRzdHdhIG9mZXJ0xIUgaSB6IHBy
enlqZW1ub8WbY2nEhSBwcnp5em5hasSZLCDFvGUgcHJ6eWNpxIVnYSB1d2FnxJkgaSB6YWNoxJlj
YSBkbyBkYWxzenljaCByb3ptw7N3LiAKClBvbXnFm2xhxYJlbSwgxbxlIG1vxbxlIG3Ds2fFgmJ5
bSBtaWXEhyBzd8OzaiB3a8WCYWQgdyBQYcWEc3R3YSByb3p3w7NqIGkgcG9tw7NjIGRvdHJ6ZcSH
IHogdMSFIG9mZXJ0xIUgZG8gd2nEmWtzemVnbyBncm9uYSBvZGJpb3Jjw7N3LiBQb3p5Y2pvbnVq
xJkgc3Ryb255IHd3dywgZHppxJlraSBjemVtdSBnZW5lcnVqxIUgxZt3aWV0bnkgcnVjaCB3IHNp
ZWNpLgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKUG96ZHJh
d2lhbQpLYW1pbCBUcmFsZXdza2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
