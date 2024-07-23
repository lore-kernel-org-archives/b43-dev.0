Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D5FDC3DA49
	for <b43-dev@archiver.kernel.org>; Tue, 23 Jul 2024 07:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=YGhQm4xBpqxovq
	ol3p1llcH+OfMCze5jDd3vO0+q/FBlYZjlWAUIip+XPuYaGGurL/fdgI+Rzz8cHfl/RFKsUuSNVBZ
	7EuIGJGOVGq9Zvb0z1vB1Y1b7yZESR9iUdLgGIKCop3nmeNdkXBIINSczsTymjUtVZ3p2IqDUmziI
	m5FI6lqOKRYoU6oNLCE2Yzz1+ZqTrKM8UZ5nALBkax85Jhr9E/i/20E2n4+Ck5j4GCUisbWmePY/g
	5gFcU0PzZ2XdmcIJv+sAlV/poNGHkStq/K64GbQNt+ZcEfzRS1xZlXXvwmWJloOryRs4Sz18Iz8ml
	P85+qwPO1TWsvE4dPmmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW9zz-0000000BjJ1-3uau;
	Tue, 23 Jul 2024 07:31:51 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW9zw-0000000BjHx-3MUv
	for b43-dev@lists.infradead.org;
	Tue, 23 Jul 2024 07:31:51 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 7C7EF250BD; Tue, 23 Jul 2024 09:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1721719902;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=t93H6hscA2CnkmHGrRvcePWyErfTIcu6H99DYBzM17Z1MfUWRGLY1j+kMYacn0X9i
	 8igP2GVcJKQBnStPrzPq+HHqXVfAPTG03uOIoL1Bw4hRvtfIdzl+0fl/dXxingYFJu
	 EemtrIq1eKKni92pUd86j90coSLzdHgO/RSyH1TaxpD2Twm0d/W+93P3REGUfWFIFb
	 VskR90Y2eHSfw4yeMiG2RJcj1VdSqAVlsmALz6ez/DYfEfedvIafK97GhcYvTwiVRa
	 OYVaoGmekgWJwqz9tXyPLxJTIGz16my1y6Fz4YzD7CxzRTWDviIiSL3gERUzRPlplg
	 fAXAeG02jQdYw==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Tue, 23 Jul 2024 07:31:19 GMT
Message-ID: <20240723084500-0.1.bn.eta8.0.154i0rvq7w@venturevista.pl>
Date: Tue, 23 Jul 2024 07:31:19 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_003149_549949_08E33029 
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
