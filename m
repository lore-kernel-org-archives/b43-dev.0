Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95323C4345F
	for <b43-dev@archiver.kernel.org>; Fri, 12 Apr 2024 07:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=WWto+Oeb7trAfH
	nXjNfnOmOyI7oCpR8wXFgrqVMRdW5ylBUKyeu6luu97elamOqKhdNqnAxnrjHi0oqqGvfDgz0kKT8
	54rR96scbYf6brZMjUAKQiZhtgVEwtKuCUtLOEqJ0t2b7goGceB830Up+w6rZ/3iJffZgTnMsLLXp
	vmzigHuYQsmG8O3gUlY3aWywBEBItuOffVmb0XZiCoCGBMDJb0Y7gY0ZiGB7ybsczkrru+eiowHq6
	fEAeXDkmI0Hh71i4Ex2hr/81lHnb7GNgg4s1EIIjQ8WLa2BNRI831oGaSEWC1nnVwlDvJqfMackON
	fCA4RfxP34K45PwPb15g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvBcJ-0000000FuUc-47xm;
	Fri, 12 Apr 2024 07:46:35 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvBcD-0000000FuTr-1tdJ
	for b43-dev@lists.infradead.org;
	Fri, 12 Apr 2024 07:46:31 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 7BCCD2516F; Fri, 12 Apr 2024 09:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1712907983;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=jDvPWMS7AoQFK3bx8Tt23pU/hSUDwPv/3LaFyeuDpDK6iai7xd/GZlGn5/4Gj919I
	 de1OfiaQbYe1BtG+NOyUqw1VsijjbSQLVGUvTveCKeS70rnXcOPZ8N3dyfAXZbt9Ce
	 ZRNMvTkLf7bjI6cTm5IBuR5QfETxbb+vMveu9QGIOq+S2LcI4Xitq8tLtNwwPPfKzB
	 59C0g4gzXa54QuZjdkClmVm+AN/uA8YIAexUItwE4AO0wWED0JKmI5hzTzyF08BgHh
	 E+FUeTMcy7IiNvAXi6DQzP/8Bf3PKj5ZLw1tWGlFtfvl1perPlV1OsDzpk6Qw5FpUH
	 zjOuRbxAZ3Mow==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Fri, 12 Apr 2024 07:46:18 GMT
Message-ID: <20240412084500-0.1.9p.eta8.0.emj284cdnq@venturevista.pl>
Date: Fri, 12 Apr 2024 07:46:18 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_004630_305798_80E53D2D 
X-CRM114-Status: UNSURE (   0.75  )
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

RHppZcWEIGRvYnJ5LAoKY3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIG5pZXpvYm93acSFenVq
xIVjxIUgcm96bW93xJkgbmEgdGVtYXQgZm90b3dvbHRhaWtpPwoKSmFrbyBmaXJtYSBzcGVjamFs
aXp1asSFY2Egc2nEmSB3IGluc3RhbGFjamkgaSBzZXJ3aXNpZSBuYWpsZXBzenljaCBqYWtvxZtj
aW93byBwYW5lbGkgc8WCb25lY3pueWNoIG5hIHJ5bmt1IGNoY2lhxYJieW0gcHJ6ZWRzdGF3acSH
IHByb3BvenljasSZLCBqYWvEhSB3c3DDs2xuaWUgeiB6ZXNwb8WCZW0gcHJ6eWdvdG93YWxpxZtt
eSBkbGEgUGHFhHN0d2Egb2JpZWt0dS4KCkLEmWTEmSB3ZHppxJljem55IHphIHdpYWRvbW/Fm8SH
IG9kIFBhxYRzdHdhIGN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhwoKClBvemRyYXdpYW0KV29qY2ll
Y2ggTXJvY3prYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
