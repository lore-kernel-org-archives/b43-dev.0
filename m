Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD4FDC433EF
	for <b43-dev@archiver.kernel.org>; Thu, 16 Dec 2021 18:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:From:
	Date:Subject:To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IyizqtDIRae0D3yjef3kmJpMXVSIUfl0vtmlfAajAB4=; b=G4/hH1V0N4UzHa
	b7BUSJQM3/rfW8M0Oa9d3GHFpGOO2sckIDvQSooQpJiHzLELmPDy/XIRrtt6HE9uJp4QqdShu/7E4
	d6hYJrXYSclj5yjXdGg4cCv+3SyB2v5zurQXpATMaJ1O2eK2E7siMmbyElQ9MCN42yF8ZhYrk0WM8
	KDGMnintcV1HARZAzfC9Qwg0q2C6nQZ4Rqg02zwTgahcVYtdFKmFUpeO4lW/g6GBi0x0EaREb2SOu
	6ejy4aIflGysMKMJx1+MBZa4UNDsIH+oLxDY3PTHUBIm0mBHxHiVwq0XjXTU1FftP4bCTwsGgPJUA
	vktE0lS1PQ226zxdGbuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxvw4-007Ep7-BW; Thu, 16 Dec 2021 18:57:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxvvE-007ESh-HS
 for b43-dev@bombadil.infradead.org; Thu, 16 Dec 2021 18:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=SmPHKorNA5zrFnfqjgJmSpkl594Aj1zO3NTrzvsudgM=; b=i5ucX/vtqOnccXMUEsMAWCf12t
 WmDDVwlcF5+Fc2yPbUl4AgpojLDUlhXjwiIaDO3MoTTP4LXqr50XfctMo1LPShbfi0WkFWT1EE2Ow
 6lv9iLFC7lEUzoHmdGToQST5xhy4ZZO22lwkneWFVhL8EVev8W8c7pSfeR7vZJyj55YXeIjwDRyWR
 vmr7maU/tUW+GVCARKJHxromVl9mgdjbXXyPFE9UpMC9Pfz6Tx0THRTeodvVWxOx/3r70LvCJcYEC
 6zEarT85hilYP8IlD4CqgTJ8ItvzwXc4EKeQJKQWvXo/tDaP0JP8TwxAZQomW1x8xDm3YyByr7Eyb
 esib/eIg==;
Received: from web01.webmedia-nijmegen.nl ([45.87.43.254])
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxvv8-00Frjv-B4
 for b43-dev@lists.infradead.org; Thu, 16 Dec 2021 18:56:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=laurasboutique.nl; s=x; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SmPHKorNA5zrFnfqjgJmSpkl594Aj1zO3NTrzvsudgM=; b=ib+SS+p4ZUmwAlk2t+Dn9R6Mof
 z4eKDddq8Rp5w6Boqx+K/FPBHPurgsEoIjY5nCmNBrKiidcZaI3c8Et6NyVB1qK8V/ZZugpqxKtz9
 pfXbi+z12DG7zKDANzvj7f1tRDEiyc/kd0324bMuU05uVH/cebckwMy/sXhivu35t2yA0c+uvLSPS
 S5WsX1G9pV5CFqdAI5Me4VWwWgIbhq4Hq2AsJ8uDRXNAF8Y2dNJ+IQycz+hRAoWPaUSPigKtWel52
 lxCBJSR9kqeQRFtxfAT/v8b7cyszDYR5gqx4Y1zO78QR8Bq9oYk/SNk3EXe1wSSONOZnYALXMQrXv
 scq1zs7g==;
Received: from laurasbout by web01.webmedia-nijmegen.nl with local (Exim 4.95)
 (envelope-from <laurasbout@laurasboutique.nl>) id 1mxvuq-00BTLq-Re
 for b43-dev@lists.infradead.org; Thu, 16 Dec 2021 19:55:44 +0100
To: b43-dev@lists.infradead.org
Subject: Thank you for submission
X-PHP-Originating-Script: 1022:PHPMailer.php
Date: Thu, 16 Dec 2021 18:55:44 +0000
From: Oasis <info@laurasboutique.nl>
Message-ID: <Q2dESzamfkScwnZFvhqxdOXrdI6c40NbHb2Mypwc4@laurasboutique.nl>
X-Mailer: PHPMailer 6.1.6 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
X-Authenticated-Id: laurasbout
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_185603_158105_9253105F 
X-CRM114-Status: UNSURE (   2.53  )
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
Reply-To: info@laurasboutique.nl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

TWVzc2FnZSBCb2R5OgpIaSDinaTvuI8gSmFzbWluZSBsaWtlZCB5b3UhIENsaWNrIEhlcmU6IGh0
dHA6Ly9iaXQuZG8vZlNUSHo/ZHM5IOKdpO+4jyEKVGhpcyBpcyB0ZXN0aW5nIGVtYWlsIQoKLS0K
VGhpcyBlLW1haWwgd2FzIHNlbnQgZnJvbSBhIGNvbnRhY3QgZm9ybSBvbiBPYXNpcyAoaHR0cDov
L29hc2lzLmxhLXN0dWRpb3dlYi5jb20pCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQz
LWRldgo=
