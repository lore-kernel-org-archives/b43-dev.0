Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D17C67861
	for <b43-dev@archiver.kernel.org>; Tue,  9 Apr 2024 08:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mrjNdmaF1YyhQEBcagSgeP2yBMvcXDfpkeED8Z7oUr4=; b=SJv8QSe0LdSTcC
	9cc+NSQZaAVd+ZOpdOE08KK9HFbnacaLQtMy/BSW2WtxZt/nPaUpoS0v6Rn2B5S2gW6zjbKmBuYP+
	8k12aRK4uYjSCVavUryyStSbN5UvG1r2Js3AvqdFutgKMwxSrfYGOyZtiDvPS2wDAfv9HTZW6sH3+
	Mo5b6Jp6hjbaJKOmY3P8QS6ZgwVlE5ag93yC3mhemDCZuTSm0d0/7amvrogGi7aKMYQwiK6+6e3Rj
	XCjyjbnwEI/DV+iTkcmbgktGb1S8Xc5K5gXhmuvo/tDNaTKsFqOJ1YgERaExb9HLsbATgBP2wx2R9
	cP2qtX0leEUPb9nDy3Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru6ls-00000000wT3-1oNH;
	Tue, 09 Apr 2024 08:24:00 +0000
Received: from mail.thrivehub.pl ([164.132.48.43])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru6li-00000000wQ6-1lZb
	for b43-dev@lists.infradead.org;
	Tue, 09 Apr 2024 08:23:52 +0000
Received: by mail.thrivehub.pl (Postfix, from userid 1002)
	id E9CAF25DF3; Tue,  9 Apr 2024 07:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=thrivehub.pl; s=mail;
	t=1712649388; bh=m3ZUCTPRVLoDFM+cXi7VhHW+xNF3eUdGHrj1eDbLwQI=;
	h=Date:From:To:Subject:From;
	b=Qi61eI6WopDX5wzoWSE24ofrDRIeDQELk0qBZxl8uYdG5/s7KGzhyl4daSS1khp2J
	 DwxRXJPnWND7o7A6txSPdDztD7YlqztgHNeZ9/QehduRcM9fDBNYWhKZCvsZItKd2O
	 F+DDy3EUYFg5sPZk5xp05b0YCXCKNYpa9kVaZ4rY2VejWI6Rtk1gVGrhAqtiI+TsUh
	 VP+bln+eTrgrt5meq37vDU6XVcYlI/6QItcbZ2EO1Xj+3ZxB+6Wph9meopiiE1b81g
	 Eref/JR7fkJHMyZZ5a+X1R2xEDW89jLASOjr48t2Ft62sDn32IC+IOmDVdsx5sc2hA
	 8fYSVQqwN0pFg==
Received: by mail.thrivehub.pl for <b43-dev@lists.infradead.org>; Tue,  9 Apr 2024 07:55:33 GMT
Message-ID: <20240409064500-0.1.5o.2ixts.0.i71ojbdmbl@thrivehub.pl>
Date: Tue,  9 Apr 2024 07:55:33 GMT
From: "Szymon Jankowski" <szymon.jankowski@thrivehub.pl>
To: <b43-dev@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.thrivehub.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_012351_194910_7817D5AB 
X-CRM114-Status: UNSURE (   2.15  )
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

RHppZcWEIGRvYnJ5LAoKUG96d29sacWCZW0gc29iaWUgbmEga29udGFrdCwgcG9uaWV3YcW8IGpl
c3RlbSB6YWludGVyZXNvd2FueSB3ZXJ5ZmlrYWNqxIUgbW/FvGxpd2/Fm2NpIG5hd2nEhXphbmlh
IHdzcMOzxYJwcmFjeS4KCldzcGllcmFteSBmaXJteSB3IHBvenlza2l3YW5pdSBub3d5Y2gga2xp
ZW50w7N3IGJpem5lc293eWNoLgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgY2VsdSBwcnpl
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCgoKUG96ZHJhd2lhbQpTenlt
b24gSmFua293c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
