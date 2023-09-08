Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8C90EE57E0
	for <b43-dev@archiver.kernel.org>; Fri,  8 Sep 2023 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tk9qvIFOt6zmBTabiiVk7KZiGXaBPtLJDuCjIiZhjto=; b=1I8a4HY9FVrnQT
	9Gv5YpnCElJBqNTtsYARWqeNnJy896u95VqT4YeMbCFy6qxRpyu0xXcG/pCg3ffbFC33mW7dyuJcO
	c7I1NxnTqum2fjTybbJGUOfQprj3fPILAr8BApgWL3lYhElKqHOAKyh2eg2MgraOmS28beAi439Iw
	jV0jte08SPanardBnB3Q1rMLDgn94BUoq7nwIrazNprA6QsNMGKwygw7f3nXDluh44G8UrfBTdFVJ
	N+S3WeFBs4yFqn3pgGMuAG5WTv+yc+57UGZ/5Qsx+61MOkjehDY8xt28WdgzS6CtWMjwcqByYPSe4
	KQ1c/JCCQMfypS6VC//g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeWaD-00DISq-0A;
	Fri, 08 Sep 2023 08:11:17 +0000
Received: from [162.19.155.126] (helo=mail.commercesolutions.pl)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeWa7-00DIS7-2z
	for b43-dev@lists.infradead.org;
	Fri, 08 Sep 2023 08:11:13 +0000
Received: by mail.commercesolutions.pl (Postfix, from userid 1002)
	id 5C1B7246C4; Fri,  8 Sep 2023 08:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commercesolutions.pl;
	s=mail; t=1694160668;
	bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
	h=Date:From:To:Subject:From;
	b=TsCakSVx5ZqCnEYfRpjUIVU3iNJfbEs3CGmCe2p9UEDUTUf7KqPsEd6rkjUqsF6u+
	 otzNXrAYJITubXrA0Gbwjyxs5vKcBhQvvMG2MZObJiaaX6Gi+yPtc56GMlVU/Q8N8F
	 gIR/Ee4N14tzUOGjKFzbYhaF/6RRiyG5UOG3sMCsDDny9XOha0LgfP+lbQcuqu5si4
	 uZsN3Q85K0eD8r25Sys6vJ65RoHvSqjUlAl+zuQn55CXnRkv22wnRPoM/I3W5uS73c
	 uNK/l5o56Pr2mXrmmlESjMlX8IQfWDYfMlX43HcCKbpQqxqgtBb2BgkJ/z45tt3stI
	 V3LnIl74egctA==
Received: by mail.commercesolutions.pl for <b43-dev@lists.infradead.org>; Fri,  8 Sep 2023 08:11:02 GMT
Message-ID: <20230908064500-0.1.8j.1lnd2.0.r4cm06xjq1@commercesolutions.pl>
Date: Fri,  8 Sep 2023 08:11:02 GMT
From: "Kamil Tralewski" <kamil.tralewski@commercesolutions.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.commercesolutions.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_011112_112731_9B3629BE 
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
