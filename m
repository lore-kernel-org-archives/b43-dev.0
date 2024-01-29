Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9C47C47422
	for <b43-dev@archiver.kernel.org>; Mon, 29 Jan 2024 09:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tk9qvIFOt6zmBTabiiVk7KZiGXaBPtLJDuCjIiZhjto=; b=dlzFshp7cG/8nb
	KYSRPNYrwWqFUDzS5XGxulRFLmmhy1ucNZSbF3irY0FbsAlC2gyNNKgyjM7avO+v1TR7/ncROvhXa
	8IaFWNZE9ZBj/JsSLwuLG631JM2Yhlmxj9RDscf+YWW51rt2QWMcFJ7I6D4cro7tGVngWZMvja/Aa
	OZNegZgjvSkLvIIKDDy09U4a+HDr5TWtmoJuFoAD6XZgzAmS4mPtb2kXAgEGami3RYfGNqSnia2Ub
	FdvNE+ea55Rp8xp0NMA5UUtI27K3nbItb7lr0g5f2Aszda9RtIb1wm+TX+qWY5L1ilBU0ggHXU7o9
	EW0qmT1yw39h4lVXQ91Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUNun-0000000C0UL-2ClN;
	Mon, 29 Jan 2024 09:26:53 +0000
Received: from [162.19.155.126] (helo=mail.commercesolutions.pl)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUNug-0000000C0Q9-1JRT
	for b43-dev@lists.infradead.org;
	Mon, 29 Jan 2024 09:26:49 +0000
Received: by mail.commercesolutions.pl (Postfix, from userid 1002)
	id 24962229C0; Mon, 29 Jan 2024 09:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commercesolutions.pl;
	s=mail; t=1706520399;
	bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
	h=Date:From:To:Subject:From;
	b=QsVdfjCCNyn1iC3UlnXid32ch6q8f06itDmXl6XTMdTCxPiQUR9dE87g+LualUgj4
	 oI6okz8S6e/KaycWq+LtePBgQqaNQSjImrhOZ/RZfc4Knvqe1YqzE9lbRQLLcB/8/u
	 +EimE97lbJlJELm2MlPIaAbBJI2oI6F02E9jhp+XlAkUB+vnDT4R9EGI/94OvUSTwY
	 hWfPIDLPHI1AFvyfHdg0kaEK1mMh+sFiWrkCREoKEVyfwoYhkuS3mHxLFdyGVO+/up
	 16DAGYWNSBbR7NhohWRABV24fesDETvg8L+OnXNRV4ze7f0KOoeNeRyQYhJSOpWvhY
	 9PyDrjSk+arEw==
Received: by mail.commercesolutions.pl for <b43-dev@lists.infradead.org>; Mon, 29 Jan 2024 09:25:58 GMT
Message-ID: <20240129091233-0.1.ba.2gif8.0.j8knsrqixy@commercesolutions.pl>
Date: Mon, 29 Jan 2024 09:25:58 GMT
From: "Kamil Tralewski" <kamil.tralewski@commercesolutions.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.commercesolutions.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_012647_127583_4E663904 
X-CRM114-Status: UNSURE (   1.88  )
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
