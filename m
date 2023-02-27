Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A6E1C64ED8
	for <b43-dev@archiver.kernel.org>; Mon, 27 Feb 2023 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N6Iyw1oX8fNe2yQil+1Laeacf8sKzu7rRiRZtKMM0zU=; b=DIfxQnW/Pdqx8q
	maXCTqD9XsrwNI209+UjyjKpqfM2M6JJOJEkFRzd1k7tjtDoChPkB+diyoCYIil6n5J41jhGYbvas
	JqyszIxcY51oMOFiXU2axuRwGJW7UVUctGPR5Cr9585e0gKfoQpARKL+PuSX/hCtGbKxiphWb3j20
	VBIicbPfAnIYVM+1gXnzu8fqpXXe38oS7YZPe2G7XzEhIFFV063v8rzsrOTZzEKEXBI9bVKmbuMQ2
	J9ze4p2S96GjDEz2KPd+bpmyFB7QJtlBIEh5cZS8Y+cIGCccoAfIL5CqLx2Q7fbaW2lkz64/TUT8u
	JoFTMhhXsNLqDatkga+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWafg-009DGJ-9r; Mon, 27 Feb 2023 10:23:52 +0000
Received: from mail.cannich.pl ([94.177.238.223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWafY-009DFd-ON
	for b43-dev@lists.infradead.org; Mon, 27 Feb 2023 10:23:46 +0000
Received: by mail.cannich.pl (Postfix, from userid 1001)
	id 92D2882343; Mon, 27 Feb 2023 10:23:36 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cannich.pl; s=mail;
	t=1677493422; bh=cNbZL9WXZbgcQtzgDCharPn7EQBjUHnC1FAZ/+OQVjk=;
	h=Date:From:To:Subject:From;
	b=ejen87RtkHKSeHXcHYyP/XPj/qwOanVXB2Xj2I/qhwLKFrkIK27XXADMazk6Nbqhz
	 m7SEBenU8m/uV6wceBavUv/UbLcW2HhCdHG9t/UNm5FmBePKUDiWKTWbfHwAr4Zq8P
	 8mK5gKGlbr/AVv9FMA0oMUeUqqE6sh7tmjSIy8lHxdgOZ5t5DCbpvptLTYcaB6Ypk/
	 6ykOB9Hb6hUwTVKT55/aEa5Uy2FowEhSissbmKxRGlXp87OXOBw2aZR+eLHOTiiSf1
	 7CORMZuQyYNu9zn7uld8rNbgJ3iPXmZUHtKvsDbS9e2jesbQjwU5qihRNowuHQc3wI
	 K/YBhBlZwRENQ==
Received: by mail.cannich.pl for <b43-dev@lists.infradead.org>; Mon, 27 Feb 2023 10:23:29 GMT
Message-ID: <20230227095324-0.1.23.1efi.0.y0m484i3r9@cannich.pl>
Date: Mon, 27 Feb 2023 10:23:29 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Kamieniecki"?= <pawel.kamieniecki@cannich.pl>
To: <b43-dev@lists.infradead.org>
Subject: Prezentacja
X-Mailer: mail.cannich.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_022345_286496_6175CB10 
X-CRM114-Status: UNSURE (   1.91  )
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

RHppZcWEIGRvYnJ5IQoKQ3p5IG3Ds2fFgmJ5bSBwcnplZHN0YXdpxIcgcm96d2nEhXphbmllLCBr
dMOzcmUgdW1vxbxsaXdpYSBtb25pdG9yaW5nIGthxbxkZWdvIGF1dGEgdyBjemFzaWUgcnplY3p5
d2lzdHltIHcgdHltIGplZ28gcG96eWNqxJksIHp1xbx5Y2llIHBhbGl3YSBpIHByemViaWVnPwoK
RG9kYXRrb3dvIG5hc3plIG5hcnrEmWR6aWUgbWluaW1hbGl6dWplIGtvc3p0eSB1dHJ6eW1hbmlh
IHNhbW9jaG9kw7N3LCBza3JhY2EgY3phcyBwcnplamF6ZMOzdywgYSB0YWvFvGUgdHdvcnplbmll
IHBsYW51IHRyYXMgY3p5IGRvc3Rhdy4KClogbmFzemVqIHdpZWR6eSBpIGRvxZt3aWFkY3plbmlh
IGtvcnp5c3RhIGp1xbwgcG9uYWQgNDkgdHlzLiBLbGllbnTDs3cuIE1vbml0b3J1amVteSA4MDkg
MDAwIHBvamF6ZMOzdyBuYSBjYcWCeW0gxZt3aWVjaWUsIGNvIGplc3QgbmFzesSFIG5hamxlcHN6
xIUgd2l6eXTDs3drxIUuCgpCYXJkem8gcHJvc3rEmSBvIGUtbWFpbGEgendyb3RuZWdvLCBqZcWb
bGkgbW9nbGliecWbbXkgd3Nww7NsbmllIG9tw7N3acSHIHBvdGVuY2phxYIgd3lrb3J6eXN0YW5p
YSB0YWtpZWdvIHJvendpxIV6YW5pYSB3IFBhxYRzdHdhIGZpcm1pZS4KCgpQb3pkcmF3aWFtLApQ
YXdlxYIgS2FtaWVuaWVja2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
