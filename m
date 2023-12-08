Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58C40C4167B
	for <b43-dev@archiver.kernel.org>; Fri,  8 Dec 2023 08:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tk9qvIFOt6zmBTabiiVk7KZiGXaBPtLJDuCjIiZhjto=; b=ylOl4rdlyv87VG
	e0drSTbm5N8zpD3AIOnovvUM6Ginx8xDtVurhReVEJtEgFwGDafr0eWNmpfDtKe3rMyVkGJIVgkEn
	TJHitGJq4uO8e2vQApJ5QkgMSmkEkyim1aEeCXKNmGzDZrD2/03pjHj2AdylmHO3ZGyzqVRhbwXea
	vAQLXcEBC3V3wdGmrbXFO4xncbMuibGXfepyIZxFMlRFQZLibNWBTi3x8O+fEMWzGMpOCjcXQHKDl
	uvfsrzKiMiO/H648jTwKQY+7jOHfRE8ADnYAzn4Md30Er7zs22XACfF3WLagZqlLJ2PIXZhY3D8rj
	NcAfnQ8o/OH0HWDaRroQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBWbt-00F56x-2y;
	Fri, 08 Dec 2023 08:53:25 +0000
Received: from [162.19.155.126] (helo=mail.commercesolutions.pl)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBWbr-00F56e-1o
	for b43-dev@lists.infradead.org;
	Fri, 08 Dec 2023 08:53:24 +0000
Received: by mail.commercesolutions.pl (Postfix, from userid 1002)
	id 52D5A26285; Fri,  8 Dec 2023 08:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commercesolutions.pl;
	s=mail; t=1702025533;
	bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
	h=Date:From:To:Subject:From;
	b=Em3Oda/AG7/vRcW8ZvIMyrrQwAq9gVy99jR9CLBd6d70J8drN/37WiEclbSZZscGJ
	 lqz6jsrVHMUUToVKgxHTUnDERCckHo8Q0qK27TGGlE/PYf2HjP6yI4KuRVUFrjscIP
	 sZYGZR2WQ56QPSlBeBI3keY+hUg+gtOuYwCaT1poxIqO1OwCGDeohjNIgEoL/m54TZ
	 jIVh47a3S+4lAL6bVZzE2N6N5SAabZeSOEKgO+QxKpSueGTqM11Nh8MFZpF7Xv+aV7
	 obLrf8rui+hiJI1z8JjUgb2gt0CejGCMduGesh11OfAMEi/RVP7S5AH3k9b9I02SSX
	 M3ldlUYs77NiQ==
Received: by mail.commercesolutions.pl for <b43-dev@lists.infradead.org>; Fri,  8 Dec 2023 08:51:00 GMT
Message-ID: <20231208074500-0.1.ae.267ma.0.f52l5e2h2k@commercesolutions.pl>
Date: Fri,  8 Dec 2023 08:51:00 GMT
From: "Kamil Tralewski" <kamil.tralewski@commercesolutions.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.commercesolutions.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_005323_776587_9FAAEE23 
X-CRM114-Status: UNSURE (   1.24  )
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
