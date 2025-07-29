Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65BC2C83F26
	for <b43-dev@archiver.kernel.org>; Tue, 29 Jul 2025 08:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gJbl+hZwj6XyJnIISd6odV4Otgf+EiKLZ6/vlxJohWU=; b=461g1UOadCoAJp
	Z+bxydDKnnsIlDDhwVutreNnX1on4dllxl69NxQ4Td2ww7hY67OAtTVaXIFSkCsR/2c8h8AJY7bDg
	JHVpbWZ6uvyw4hTRX1hZm4us4ohVYFbNP2lrnFpa6vBim6uLKM0LdqLCubzHlMAfXRwa6ba7TF1HC
	vWQ4dY5RcwOqPGDcLejMq7tvLRXspcTBDS0O5/p34wSAsNaTfa0aee+Y5jm6+9Xi3yHeNvx6FjMKV
	Xnw8DUl98ll/xV3T3L093PT+8TolsEYx/C2CWj68eLxQHEZu4Xd9CF/UaguSa9878swK963V15PDr
	QjFD+0th/0VoP4oBUmmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugfZ1-0000000GF0G-1uCJ;
	Tue, 29 Jul 2025 08:19:59 +0000
Received: from mail.grablo.pl ([51.77.231.136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugfYw-0000000GEzJ-014r
	for b43-dev@lists.infradead.org;
	Tue, 29 Jul 2025 08:19:55 +0000
Authentication-Results: grablo.pl; arc=none smtp.remote-ip=127.0.0.1
ARC-Seal: i=1; d=grablo.pl; s=default; a=rsa-sha256; cv=none; t=1753777189;
	b=c7+nyyUgQbcZb4TCY4QHUW717gd4LyvEqig1Zx0nwXhq37g8pKLxyJjRaj/f2x6QTPLF
	 lEwKqmp0glrshZZaiIx0Wa/AmGPlL+Jr8uk0ofFZ7Fj5zUHg4aCjYO3f8bcJeLTgCcpQ1
	 Jxij9g3JKZaubPJxcHRRYOE+oSx/XrJ1f2xuIJyRJ2QBhVj2/OrItPsflb5isuTDSyOV6
	 A04vrPqCqQJMkQL39mUqg3hmgvyTRVbDGQ7MfqEkT0WrgwC5svmbYZiDdPaxWj88LSgoG
	 2t//4/qqPbSywcGoAhd/PKAUa7HNMTLi+aqi0eC4hXH+S/WZ5yikg+rcH2iAPIfZ/VQ==
ARC-Message-Signature: i=1; d=grablo.pl; s=default; a=rsa-sha256;
	c=relaxed/simple; t=1753777189;
	h=Message-ID:Date:From:Subject:From;
	bh=kRFyF5IqcbkY6iIzjZrZ2MrYZFacmXII8t02DtySBB4=;
	b=Ab5L+MfYqbD2oHgIRz27OHM8xGh6lPTrOnn20DKF0pUjyMwKFQbwGfmuCJCyaNdU5haM
	 cbowMVTQp1fiC0oxB1Yg6UW4qf2H8s0Et6a5hKko0R+uQ/6lJrkDldL9tEq1B76SU3dqi
	 s26u6Esw3gbd22QsDZD3mbST6e/nnDBq7b2UCSOuUY+Zr7mPHgB8965W/VQpw9P+PmU/e
	 Qb3ajS9jngEkZlYoljXf6pNp6fsFS2WVlzvs267SpByLjcsQCCzerW1h+E6267onnwlRS
	 H/4st3IT9YvBOZCrLuVCfT7YI7rPIpDfLDCf81Dwzo58zzMB+ueNlmzawlN+lLmx/Bg==
ARC-Authentication-Results: i=1; grablo.pl; arc=none smtp.remote-ip=127.0.0.1
Received: by mail.grablo.pl (Postfix, from userid 1002)
	id D219126BA4; Tue, 29 Jul 2025 08:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=grablo.pl; s=mail;
	t=1753777189; bh=kRFyF5IqcbkY6iIzjZrZ2MrYZFacmXII8t02DtySBB4=;
	h=Date:From:To:Subject:From;
	b=cSbOdq89UK1gdWyNwMdqCDVcuHFuSYStZMBBBsDBeeYBb2x+e6w8j4h8lISjiFu+8
	 W02RqaX2+yZJ/CG/Vr6BpFORgJWG3BwQyHCHC3d9euXkZvnfRwUo7sNHrVxTZ1j2yz
	 v9poaUI3whw4aU9j35VbCt7JiTRUl/GRXVhxufrSf+0/o9l2qBnvEdLEl+wJSAxuU/
	 Og8rx2r0iJCI3fkQCncomu4OwKLBNikA61OL2fXRkmvxnfREpr85I/afFRHWRLwB9h
	 bFAYYVvWxuWfLZBbo5z9iiDw6azskmTE6ZcgTOlE3+RBs+NyUMPfXCbbbmjgWF+pPu
	 q2AWsTw4MOj5A==
Received: by mail.grablo.pl for <b43-dev@lists.infradead.org>; Tue, 29 Jul 2025 08:15:25 GMT
Message-ID: <20250729064500-0.1.3v.1k9ok.0.4rjdlrld50@grablo.pl>
Date: Tue, 29 Jul 2025 08:15:25 GMT
From: "Tomasz Biegun" <tomasz.biegun@grablo.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Wsp=C3=B3=C5=82praca?=
X-Mailer: mail.grablo.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_011954_308316_D19EE440 
X-CRM114-Status: UNSURE (   2.12  )
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

RHppZcWEIGRvYnJ5LCAKCkN6eSBpbnRlcmVzdWplIFBhxYRzdHdhIHBvenlza2FuaWUgbm93eWNo
IGtsaWVudMOzdz8KClpham11amVteSBzacSZIHByb2Zlc2pvbmFsbmllIHdzcGFyY2llbSBmaXJt
IHcgdHltIHpha3Jlc2llLiAKCk5hc2kgcGFydG5lcnp5IHp5c2t1asSFIHN0YcWCeSBuYXDFgnl3
IG5vd3ljaCB6bGVjZcWEIG9yYXogemFtw7N3aWXFhCwgYSB0eW0gc2FteW0gendpxJlrc3phasSF
IHN3b2plIHd5bmlraSBzcHJ6ZWRhxbx5LgoKQ3p5IG1vxbxlbXkgcHJ6ZWRzdGF3acSHIHN6Y3pl
Z8OzxYJ5IGRvdHljesSFY2UgemFzYWQgaSBtb8W8bGl3b8WbY2kgd3Nww7PFgnByYWN5PwoKClBv
emRyYXdpYW0KVG9tYXN6IEJpZWd1bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRl
dgo=
