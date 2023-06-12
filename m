Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3803C7EE23
	for <b43-dev@archiver.kernel.org>; Mon, 12 Jun 2023 08:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tk9qvIFOt6zmBTabiiVk7KZiGXaBPtLJDuCjIiZhjto=; b=FXCvzn4RtaC69Q
	RqN7DaBPoCrJfaMWmGbuCEWdfBTym08SiQbFrHKKHd6SzfIOopMClg2NYP8HoYSgNU0RH3bR2F59h
	sUHDxp5rrEmp45ATaoLDpwxlJ1/vpcgi+qtWpuZvAss3s0cwkzAajlfLFpwl5kjIqQUa/Us4480gb
	ilbN9q9i2C3O2JXdglKYzgYPHbTKxaa69X0e6ZBNu/DsrArVx3yzXjPsQ/ENpvcoLdGcvVkurb48N
	dzFl8ZL/d4t6bhrupa8JFOc9mmem+vIyHSjtl0mgkc6rb1/aaXZpogAR0yTtizgxb2ltl17yQoEEn
	BB8l95uePEru1ZJKq8mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cZx-0032L0-2Q;
	Mon, 12 Jun 2023 08:07:09 +0000
Received: from mail.craftsplex.pl ([162.19.155.126])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cZs-0032KT-1M
	for b43-dev@lists.infradead.org;
	Mon, 12 Jun 2023 08:07:05 +0000
Received: by mail.craftsplex.pl (Postfix, from userid 1002)
	id 14F7422E7B; Mon, 12 Jun 2023 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=craftsplex.pl;
	s=mail; t=1686557223;
	bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
	h=Date:From:To:Subject:From;
	b=qdtaE0L6l3z65aPwH9ObF+BrcCfmwJ/5BozPSXbq/GCDcyha73v4tGpWyxNRioqxr
	 92VhYtDSk4GQPchzC8q3gRxNCiswVbvfyj3VsIPZLCxvfP3tnUFHqO6yIbK4ToCKnm
	 4CocvF9MhonluF1gDMoo2h85ts9PQf+sKV0v8rEdkGF/X/DEF5YjkodyXnMQuj7auI
	 WRpKrVj69t5SiES/315tSPFIYBnOCY54EBHwBu8vIOOA4y7eYkgmNBYAFugXLk0pnf
	 LvtI0U6bEs0Cj1gxa7WvDpnYBV1y59Esyguc0MnXH6zc/b321sFInNHSI4wgMFTDiE
	 e9SmI9gvmx2yA==
Received: by mail.craftsplex.pl for <b43-dev@lists.infradead.org>; Mon, 12 Jun 2023 08:05:38 GMT
Message-ID: <20230612064501-0.1.6n.111rh.0.6grv4yj8m8@craftsplex.pl>
Date: Mon, 12 Jun 2023 08:05:38 GMT
From: "Kamil Tralewski" <kamil.tralewski@craftsplex.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.craftsplex.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_010704_615552_FF55B166 
X-CRM114-Status: UNSURE (   1.82  )
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
