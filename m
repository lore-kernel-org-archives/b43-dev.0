Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C5CC27C6E
	for <b43-dev@archiver.kernel.org>; Mon, 10 Jun 2024 07:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=2ItZBqycw+7iSP
	PAz/7CJEJ2h/h2BbsEv9ZfEUTGdvQS+TOq5etbeFbDd2MHuA3O2PzmHYgTG7Ie1SRoQP98qpiVfN/
	ZINeztpiyrPUu+qlcAmH+YbNjc0ayd55bVhGvTIsNdrz3poL7GEfIW763CpPVojZ7/KNFp0MAwoW0
	zVaQ0zGT8rIXbJhc/zuA+AzSge7VwOMKAV4vZ64P44lIefOvV3p3hkUQUJq9gZi+yuMFTkVh6w4Nu
	aRDzWj3MunNkncDq1SX+bongOEDdyxGVftjUso2j4r3LXIVSstK79pSlV6weWnTtbZG/hW6q2Y06t
	C2Rr82M4Hw/sXdGt9UIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZZg-000000046M7-1UNO;
	Mon, 10 Jun 2024 07:36:16 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGZZW-000000046IE-15vH
	for b43-dev@lists.infradead.org;
	Mon, 10 Jun 2024 07:36:11 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id D2ACF251B7; Mon, 10 Jun 2024 09:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1718004959;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=GeQq/5NvhYa0LafEiDdRhBcEesF1GeewVblDeq+idr7+7oodc+lAQku4qsgpwdu05
	 KxRrPuSMkVqNd9q0M5nn2g3biqOFyf6bbmHEBCXG85C6UF9ckGrMr43wTH7bQF1K0l
	 2u10mxlHx44wveD1LPfTIoRbDHn8w//GOpXfAKESVghvW3WE4bGc51+th9rHrlxW88
	 XfZZtOIWFZ21XahvorFV+cfZgTXNvjN2+ek60nke832XuHXgDp8hyro8CuPcHvSSu6
	 02zPNnCFTMlkAtWSKlt90lzgnrcKXzyizWm53yd/f+oYSRbforeA9m5ObYelBRcBn+
	 4uFchIl9NRaRg==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Mon, 10 Jun 2024 07:35:48 GMT
Message-ID: <20240610084500-0.1.as.eta8.0.ajuo8hrqqd@venturevista.pl>
Date: Mon, 10 Jun 2024 07:35:48 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_003607_074413_CA62DB00 
X-CRM114-Status: UNSURE (   1.29  )
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
