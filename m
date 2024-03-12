Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74886C54E58
	for <b43-dev@archiver.kernel.org>; Tue, 12 Mar 2024 08:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tk9qvIFOt6zmBTabiiVk7KZiGXaBPtLJDuCjIiZhjto=; b=EhfCbMV2QaK9D5
	/Q0An+iTTSYW8W/WuvZdsUMJH0BH2w6vYaLyzM7CeeWVdIkyPpCddycNQ8Nr6wZ8uRW8tyUvWzxOT
	TlCqc2lbAKVqXEjUQ98DDaD4rO4ZRqntSQjxlweFesCrsBd10wrIyK8uDN60ra1ue11fUipH45iXV
	rqXK+h9J2N925vQpzFj9x/KxLFGr1j+qiITFSf2dKAADeGUwoHoJsTyWDFp9BxDvGEQrTvMKsulG7
	bUL1eDii8cJY11dVWlrwwPd0SLDjN00Zbi9lONKloUHjzUlaBo465E+vlxqjc98oFsDJ24YuqVrtB
	eLinvQksTgk2GCzmLJ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjxZ2-00000004tad-17Or;
	Tue, 12 Mar 2024 08:32:48 +0000
Received: from [162.19.155.126] (helo=mail.commercesolutions.pl)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjxYv-00000004tXW-34k3
	for b43-dev@lists.infradead.org;
	Tue, 12 Mar 2024 08:32:44 +0000
Received: by mail.commercesolutions.pl (Postfix, from userid 1002)
	id 3602F22C98; Tue, 12 Mar 2024 08:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commercesolutions.pl;
	s=mail; t=1710232351;
	bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
	h=Date:From:To:Subject:From;
	b=elZ0bHgPL4JObVv3sWSQCxmLT9DiJzIIhhOCLdhaTSoUcN5iMiCXu0NwxHRDM6IxW
	 E180Ypko/Wgtt9iAOCeiE0NHltTwb62nKgI6vZND/T/yHLQZZ1WbnQHxEsAaewW6hi
	 CEKUVj6AB8KVzaQNd4A0/MDoya440aT10YHrdYDgMOxwBAkbZ3rF9gwzLuP4yoYsQU
	 RXcUf/gj+Y7YqZ6bSNs/mu842Pi6L/XuDbrJjx3aellaOvUsXQYDvxVNTgzinvO9z1
	 T77bRZRMD4KwXVEXA6LfDDJ0Zm3dcpLYi2W2CAsTvMPRcwvBTwK+IEtO3vnYHy2Cz8
	 yx5yu0qnstnLQ==
Received: by mail.commercesolutions.pl for <b43-dev@lists.infradead.org>; Tue, 12 Mar 2024 08:31:21 GMT
Message-ID: <20240312074500-0.1.c6.2qreg.0.4re4for8kn@commercesolutions.pl>
Date: Tue, 12 Mar 2024 08:31:21 GMT
From: "Kamil Tralewski" <kamil.tralewski@commercesolutions.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.commercesolutions.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_013242_526021_1311D754 
X-CRM114-Status: UNSURE (   1.97  )
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
