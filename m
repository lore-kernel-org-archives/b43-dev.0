Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58C50C433F5
	for <b43-dev@archiver.kernel.org>; Mon, 28 Mar 2022 04:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:
	Message-ID:To:From:Date:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RvEemf5h2haAkw+xyhTeREIqhGe8BNulbV3yAQ0MHl8=; b=Qbl
	R2Cb55nh+3VzNHyKTMehT/Bf5XmlctONKhOoxgEQOEkq/wlZcwuixpvo3WMOykLv5cz1L/CCla2Qp
	BbSlD7aOXZXtHG7sThMijK7rkLxhHnHh+kSoEQw/6qIx2i/bGLHqgTnBlNEuUqFqWmlCk7Ue2DbMi
	wHMdVJjI08Dkhq8/OL/ATEJvjTlCaVaC0GF4RDtHgcYYVs16OoavveCFcjjPZy8CQjAVY/7F2VqCJ
	dCpeUypwzS7KQ9qcoKaFV5AHVlivly0/0ucPuSgyC/LoZapEq9kRbV7tdqXLyVlwHxWEcolVRuSh7
	VPbaYvZZDU+XCvW9i9bVL24wzhAHWBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYgkF-007FEB-LK; Mon, 28 Mar 2022 04:12:43 +0000
Received: from b2bserver.de ([195.252.157.3] helo=vm36470.psmanaged.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYgk9-007FDD-Mx
 for b43-dev@lists.infradead.org; Mon, 28 Mar 2022 04:12:39 +0000
Received: from 192.168.43.151 (unknown [83.137.6.242])
 by vm36470.psmanaged.com (Postfix) with ESMTPA id F3B2EC43FF5
 for <b43-dev@lists.infradead.org>; Sun, 27 Mar 2022 21:49:40 +0200 (CEST)
Authentication-Results: vm36470-b2b;
 spf=pass (sender IP is 83.137.6.242) smtp.mailfrom=info@enersac.com
 smtp.helo=192.168.43.151
Received-SPF: pass (vm36470-b2b: connection is authenticated)
Date: Sun, 27 Mar 2022 20:49:38 +0100 (BST)
From: Cox Haven <info@enersac.com>
To: b43-dev@lists.infradead.org
Message-ID: <28785148.816502.1648410579037.JavaMail.javamailuser@localhost>
Subject: =?Cp1252?Q?Gelegenheit_zur_Investition_in_ein_lukratives_Gesch=E4ft?=
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_211237_916251_78C80688 
X-CRM114-Status: UNSURE (  -0.75  )
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
Reply-To: Cox Haven <coxcameronhaven@zohomail.com>
Content-Type: text/plain; charset="cp1252"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

TGllYmVyIFBhcnRuZXIsCgpCaXR0ZSBmaW5kZW4gU2llIGRlbiBJbmhhbHQgZGllc2VyIE1haWwg
c2VociB2b3J0ZWlsaGFmdCBm/HIgdW5zZXJlbiBiZWlkZXJzZWl0aWdlbiBOdXR6ZW4uCgpJY2gg
aGFiZSBtaWNoIGVudHNjaGxvc3NlbiwgU2llIHdlZ2VuIGVpbmVyIEdlbGVnZW5oZWl0IHp1IGtv
bnRha3RpZXJlbiwgaW4gZWluIGx1a3JhdGl2ZXMgR2VzY2jkZnQgaW4gSWhyZW0gTGFuZCB6dSBp
bnZlc3RpZXJlbi4gSWNoIGJpbiBiZXJlaXQsIElobmVuIDQwICUgYWxzIG1laW4gR2VzY2jkZnQg
YW56dWJpZXRlbgpQYXJ0bmVyLgoKSWYgeW91IGFyZSBpbnRlcmVzdGVkLCBwbGVhc2UgcmVwbHkg
bWUgZm9yIG1vcmUgaW5mb3JtYXRpb24gb24gbXkgcHJpdmF0ZWUtbWFpbDogY294Y2FtZXJvbmhh
dmVuQGdtYWlsLmNvbQoKTWl0IGZyZXVuZGxpY2hlbiBHcvzfZW46IENveCBIYXZlbgoKCgoKLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpUaGlzIGVt
YWlsIHdhcyBzZW50IGJ5IHRoZSBzaGFyZXdhcmUgdmVyc2lvbiBvZiBQb3N0bWFuIFByb2Zlc3Np
b25hbC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
NDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
