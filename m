Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3955ECA601D
	for <b43-dev@archiver.kernel.org>; Fri,  9 Oct 2026 15:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/efM4Xq6iA79zO3hjweHpDhEbyBbzh+wPzSHVQnl5kw=; b=RYRsTYA6g643C4
	PfsytKBv/NNw9tDsM8sNSkJ3fmxPpBmq33/75jN4m0r1ZOmSKUojaMtHKjTGNOnQ2WOL3R9kbRrnG
	8Pe7TTnM9zctmuRLKtIovbw6FAg+2h3CPeIxq00slgm99BcbvrwrETx3517Jncf3EpKEStocWd416
	Q/w0KQf0uNTPblpaJpZAX62ikwfUJkQEfv6oAD33iSCYnu7ddAZOsSKxLxrCnqbiDjTegBWj65lz6
	LKKuXta2QFy0FNK007SJeUeJ83Y1uHICCL7VyDjmxijjK3dqR7R9ydqbuogfXZll3ykS8Q6Wx7cHb
	Z5akHDqnmr3/3qQOGUZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFCaU-00000006XPS-2a0m;
	Fri, 09 Oct 2026 15:32:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFCaQ-00000006XOZ-1vZG
	for b43-dev@bombadil.infradead.org;
	Fri, 09 Oct 2026 15:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=aAAzy8Xpfclxr8sbhy1tW1Gg28Lv/oUjU6H6kpBjtZk=; b=gpBbTmwoXAZmVhucGKHJV4Daw1
	zn3CLSiFL2681elhviaVnyWAxeOAK4w9C/KZPmHYnpB3vT0zo2UJ68PdUsBjxJpA6KjGlJ81fPpKc
	SD2z0ZQOu3rp49ZGGh3dEdEDF4jxSFc1hpK0eSedxIIjWNCf/IZxqy8JPWsV6jBAbxj6vv+veKyln
	OH1+6yQl5Erq29uL8zUyYuGreiVKNrkANTN/Zo9HY6aCHHmIjACpdBSVM2O4SOGwGPSHhJc07KMyS
	xSRw+msnVwQ97DsXJV+64lnh2jgBOlKYYdYir4HRcVxBWRGwH83ORZaGRjVQl7WclcZ0XUPXw1rgP
	694u5GBA==;
Received: from smtpdh17-1.aruba.it ([62.149.155.116])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xFCaM-0000000BMpI-43of
	for b43-dev@lists.infradead.org;
	Fri, 09 Oct 2026 15:32:40 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id FCZJxb5c776R9FCZKxHpWK; Fri, 09 Oct 2026 17:31:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1791559894; bh=aAAzy8Xpfclxr8sbhy1tW1Gg28Lv/oUjU6H6kpBjtZk=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=mTxwehMzOj+Ck8+BPeDPNACESeAEuzxq+hJUTk+/b4+z5npRP7dJmUGIQda0xVd94
	 2Tjh1s0yD812QPjjsKSsyGXrdNVcNycndd/huq1Dyjr7xzYLvvDrdDJr1FxVwyRfW+
	 mEuvpI4Hub9qMpqQiiLakLxHBol2G1KxUpJxyVWLQJdeWkJe5QJqTnmzYwEBcjLMOq
	 0EVNt40+QKuqppkZm7fv3alrpYWLscy4OnnnNYlTQiA29SDpc69aqXvZLHEVZiTr6U
	 x9YhNVJZB2Ln1sOZNoKEjPCJA/hUUoFEFX8CdKNfxzTmkw0PYUDhagO6LzZ3IPGVJ/
	 hJKeKn3ImZRUA==
Date: Fri, 9 Oct 2026 17:31:33 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: b43: ac rev1 captured packets with ampdu
Message-ID: <20261009173133.0e534ec2@fedora>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfPEcsmLD5XZdGsQIP8Hr8oY2Ggz1/0k/ocMpdkVu35TcNHDFFW1jYuIiUV5SWj3D9OdeVNjsFxP84iPQ3zjVqrlixSPYCo3jlzdywMQtmyhZ7+6VzSpg
 ZExBAsYSaFe04ppcwHLlnBGRZRqJyP/r2+SWDP2jK44dfYi8czpp8XMmblTSi66mTkyad7tNiMvS999wzTqORjQmJabGPckhJ3m5ftL38gksQhClWDgx/avE
 JOXKksPXDifH8Mks4TGdknkUJMWGN4HpWbDbO2R38pU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_163239_250680_C4A1A616 
X-CRM114-Status: UNSURE (   5.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Hi Andreas,
i captured some tx/rx packets in transit using ampdu with my vd625
(bcm4360 3x3), some packets with 2 HT streams and some with 1 HT stream
at various bandwith, all 5Ghz, if you want to look at them. They are in
my repo under router-data/vd625-agcombo/{rxtx-1s-h20-40-80,
rxtx-2s-ht20-40-80, rxtx-1s-ht-ampdu}.
I still figuring even-length ssid problems and testing ht modes.
Hope to finish soon to then tackle ampdu fully.

Have a nice day
Alessio

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
