Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3971CC433FE
	for <b43-dev@archiver.kernel.org>; Thu, 13 Jan 2022 14:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FWv9ZVhu8IrAHNUH1M43JFLR06gCIoWaTfHFf8A3Dcw=; b=MLcKDrx+EAaJGH
	cuYJ/Pdz4iBpkBUkwI73lmfsgPHGQQW506EJVDfYgMfsen+dJVlQ6pdtzwwjnuJZ9WhFwOEbSqAE4
	U45/RkjUPesIgr8JceaCg54JkCwpEArRFegkyWRA7UQs5B2AtuJBgvHP6c/8CGWTNFsro9HKor302
	TXVBHJeuWzUpT3dVxI+gera3BMXbkrRnpE4As6fb6lB0a+sbtMnmfYNLGJJVfcALBtyCeyOespebo
	J9U0YVwZPK73RXb3f/wligMZsMIQhKQfWLgsPZCmv4LeTkfJvHZNMF+NITTVICQjO8yCao92askwe
	76SZeReD63K+v5j87c7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n80oz-006CcD-20; Thu, 13 Jan 2022 14:11:21 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n80ot-006Cbd-D7
 for b43-dev@lists.infradead.org; Thu, 13 Jan 2022 14:11:16 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id jr5so6624159qvb.11
 for <b43-dev@lists.infradead.org>; Thu, 13 Jan 2022 06:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:mime-version:date:message-id:subject:to;
 bh=Bm+iAEJuH5zvwd0tQFXsrBBBtSuRJMvhEqJvn1X43vI=;
 b=QykmJ3YMOB12dBrxLiF1hnlAXoqlFpZkdYoSUtbFzTzOZFI6i+On1fMvDdCE1X06wb
 sjW8V16pWE32c+KE9Js7gLeTC2qcXNgqrXVct/4maL91/h4NAPdIsHRK9x25UbtcYKuq
 hdCI0/R4bmJw8l3ddVtnsHCNrh8gqSsdCyNhijHY2UQmURaLkBtheipx/P7vIYk1u3kU
 9agDRl5aOz+cZHI0Q7aKcor+Fv6cYnwIJUTPos1lcVg2zMphPaBz/iyhLwlmmf+IWBDd
 gapeT4zN1yPu+ZsFZbuGaIb7sNhE4PENOKwRGKlHCUEqfrVsNKXhnTqbYsIvnvvzuUSg
 0t8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:mime-version:date:message-id:subject:to;
 bh=Bm+iAEJuH5zvwd0tQFXsrBBBtSuRJMvhEqJvn1X43vI=;
 b=lnjErEMU0xfIHTL0jQDZWwNEVut1cgHmoEK15QOAphZQS1/HopbYf34MLj3WbHVfy0
 nIezwvbJK2KIh78V5FTduLmc608oN530rGo6LSDvVd7iFr6k5XdbUE4D0rFbyNNSO1QW
 sqR/Sr0iAKyAyEOXxY1p9VG0jZ5oAylpscYOI5HDwO9hUm4/FuHB1aufKPmcjli/XGNY
 U0v0GCW7fAcaDlM8hCPCpTfH/7SG//Cua66IcVh9xS6VxTgDhDBUoltZy642ouDhM+Xm
 juvIo4S8W3aPBGyMPT5cjy1QAOc9DOymeZ1npSG2MMOMieR6gHdKVXoC49SBLKxsTztw
 C/7A==
X-Gm-Message-State: AOAM532NpoqIb/BIZIGvAm0kiiTTtQl6sJjvjYwMu1V2xVp2kFQ5jFya
 u344WrpdAe8MkthSLNxosNMhe+Hg/Nz85pAPeTwVDn1Y0Din7Q==
X-Google-Smtp-Source: ABdhPJxhuY2EnAyWBjaW7ZDfLxX1SnYmj3OCkRHYrwSEHPvoA5BZuHATCV8lfbi0P6CRtX5S1XU4+DYWqk//CnMjfmY=
X-Received: by 2002:a05:6214:2307:: with SMTP id
 gc7mr3792106qvb.7.1642083072819; 
 Thu, 13 Jan 2022 06:11:12 -0800 (PST)
Received: from 332509754669 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 13 Jan 2022 08:11:12 -0600
From: Scott Anderson <ksantarelli256@gmail.com>
Mime-Version: 1.0
Date: Thu, 13 Jan 2022 08:11:12 -0600
Message-ID: <CAEwxCS=-Vi31APvbdBxbvbBTPN8XZXh96c7-wEjk+N6ttvtt8w@mail.gmail.com>
Subject: Cookies Needed Urgently
To: b43-dev@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_061115_470923_4645ECA7 
X-CRM114-Status: UNSURE (   1.72  )
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

Attn: Sales
           I am Scott Anderson would like to make an order of (
Cookies ) Send me a price list or a website of your stock. Also advise
if you accept credit card payment.

Regards,

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
