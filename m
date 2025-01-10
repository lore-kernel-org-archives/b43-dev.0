Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22896E77188
	for <b43-dev@archiver.kernel.org>; Fri, 10 Jan 2025 08:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=YVdlNDrq3N0Z9M
	eIpbi5xDvhUvXilUSeFVZa3vwR3jmMV7h+T5RNBR+r791oU7g7EiMXGh4IrfVGgTaEButg9JsXAbJ
	q4Neu5a4/yx4Xrj8M8eoaRZnfxCWmVhVANX7XrufLNcxax8OCazm2DGFjj0LW+SYXcZSHV6x31PbO
	POVfVTZQ/PkU1BYm4wjyWDIboTqqtPs2bzpMGa21c7Hp6hOsN6P6E4sX4AEAB4/1eDujGLAZPdVn+
	IMadiP40AuVsVKg4n3ZLLLyHrK6niPZawOwJF/PvwqLHQGxIpH4ddICEAWSU/fs9HaZhsBXViHOtz
	zyenBn0mokfb98nkFmug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAjL-0000000EbSB-3B7Q;
	Fri, 10 Jan 2025 08:50:59 +0000
Received: from mail.venturebloom.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAjG-0000000EbRF-0yke
	for b43-dev@lists.infradead.org;
	Fri, 10 Jan 2025 08:50:56 +0000
Received: by mail.venturebloom.pl (Postfix, from userid 1002)
	id 9C4AC2630A; Fri, 10 Jan 2025 09:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturebloom.pl;
	s=mail; t=1736499048;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=LVgwA9ioQXlDrrkACdI/8TVEgIZzENEP0z/z31vjZtoaZyDkQpxv27S0khsO/K3wL
	 6qzZcnuT7LIPrdice8cQC/vUkrrRJRey+1zr3LdqtINHJ5VPJFfYvYxH98ZfAKt6Ek
	 7X6FINQH1kA5mABE4lWhnmPdqRp8T89nI4i2c+YcVpoLdN6++eukq7sq1RY2QxzImS
	 jvqmL8FI2YEE4b/oLejZZxTS92qMc9wpnGucJogsWxD9bG2vS3dBFOWsI5FJefOjdo
	 XJ6FHTSHWE8TQ6tDvL4CpcWLz57CZDL9BMetWkV3BugIl0+BD+kPFMyKW8eDy7KAnm
	 Bx6mdFdGQOKbQ==
Received: by mail.venturebloom.pl for <b43-dev@lists.infradead.org>; Fri, 10 Jan 2025 08:50:34 GMT
Message-ID: <20250110084502-0.1.ew.iqf9.0.1arhi0mhio@venturebloom.pl>
Date: Fri, 10 Jan 2025 08:50:34 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturebloom.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturebloom.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_005054_969520_EEC83A6C 
X-CRM114-Status: UNSURE (   2.35  )
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
