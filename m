Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E681FC00A8F
	for <b43-dev@archiver.kernel.org>; Tue, 24 Oct 2023 07:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tk9qvIFOt6zmBTabiiVk7KZiGXaBPtLJDuCjIiZhjto=; b=fG5wzB7DkrNs/a
	3pJ5eFyOMyy7r2IXNVlOThvkgy7A8jM+UfdaRjRzMa9RJMDjGOknarIAYEdb/D1ujdji9Lj+H+e5c
	UW3w449gwlf30kuWXZi9O8knOX32e4T/RYFP1/PfDXffZGPUHP0YqS2Hn03tWCH+TJomWdQ2HLmbd
	/UNh0dj39k4WACVH/ROEpI6Qd4vmbP3NGQjo+ziykTOqQTqX1C/KM8AFJHvUQvfUvKnu6LeJnr3iN
	3xvZmJDuyX4DKaH07kGO5wnQo12KYQTlkL85sLmwPARwBpdwskrhJFIe7YeQMade4eR1h1W71m7zR
	+amZpvaSRmiZ5pPuimvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvBys-0095ny-0J;
	Tue, 24 Oct 2023 07:37:38 +0000
Received: from [162.19.155.126] (helo=mail.commercesolutions.pl)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvByk-0095md-21
	for b43-dev@lists.infradead.org;
	Tue, 24 Oct 2023 07:37:33 +0000
Received: by mail.commercesolutions.pl (Postfix, from userid 1002)
	id 311C423079; Tue, 24 Oct 2023 07:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commercesolutions.pl;
	s=mail; t=1698133026;
	bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
	h=Date:From:To:Subject:From;
	b=HJMdiJ88c7wzeCqaxC2yd4/QjVZKhHi2/WdSR0C+AE7NDsVNQEJYEc0S6qkEdCNGn
	 Wh2bCk/I2FGoTDB5+3P34rlBFOLZL7II/eDEY2sAGaQMSl3e7Fk+ipB/o8kH79Dkro
	 WuaoUUsPRot3oktGEz47/Wm6Y8Flq4ApzfKC2h02DtZW2wCTPwzHrVSaeGkXjG/gs6
	 JrMs8+1jUtYlJ4nIxLWJaCwOAIh7eRd8SLuRNZYlNiI4dNRX5NwYrGIVGQjiUpw9xf
	 a6Si5WdtEv4Bxgcl9H3ttKs2+FoS1cZ6P9mEQY10fY8FyVq9tghk4VFLB840I5OMau
	 o4pbP4b1JDRIQ==
Received: by mail.commercesolutions.pl for <b43-dev@lists.infradead.org>; Tue, 24 Oct 2023 07:35:41 GMT
Message-ID: <20231024064500-0.1.9i.1vwqb.0.njo05vokom@commercesolutions.pl>
Date: Tue, 24 Oct 2023 07:35:41 GMT
From: "Kamil Tralewski" <kamil.tralewski@commercesolutions.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.commercesolutions.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_003731_440079_644E7109 
X-CRM114-Status: UNSURE (   1.92  )
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
