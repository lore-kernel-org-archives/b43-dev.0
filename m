Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3E5CC05027
	for <b43-dev@archiver.kernel.org>; Fri, 10 Feb 2023 09:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N6Iyw1oX8fNe2yQil+1Laeacf8sKzu7rRiRZtKMM0zU=; b=oEu4LVW6tzs07j
	WTZyOJpf2RMPiMLzvnEjeEggIVvIBjbobjq8sSC8MSqjbBTUSt9SduVjS3RZfHJrgqqD+SHSN8G8s
	IDorsvcQQRWpPV+5r0mAxRGN1zjGj4/xn/tdWX1NhRYJclxevNLqCyK/Z7r8QkwuOsvTVPY0zfzwY
	cVveeaLNaDhSnUKZlQAc1wybMXkzNZOH2esA/+/oipKxnlkHTltMsyEdKv2+apARBqyZz8Vim1V5T
	7IyH418ho9m1BQzXh99xKQ+1kmcDB5tz0ATGldXzNvcsX/wJPTiHqsm/XQgxp8yhU7YI3RjDl6m1d
	RaznRztMgaJs3zD8Gx2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQPNK-004whg-EE; Fri, 10 Feb 2023 09:07:22 +0000
Received: from mail.culbokie.pl ([217.61.97.164])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQPNG-004wfT-48
	for b43-dev@lists.infradead.org; Fri, 10 Feb 2023 09:07:19 +0000
Received: by mail.culbokie.pl (Postfix, from userid 1001)
	id A36EA828E6; Fri, 10 Feb 2023 09:06:36 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=culbokie.pl; s=mail;
	t=1676020036; bh=cNbZL9WXZbgcQtzgDCharPn7EQBjUHnC1FAZ/+OQVjk=;
	h=Date:From:To:Subject:From;
	b=twE0i8+zAYFSQrveH2TlK25v+iXK8lkC6feLKnKh3ukmog6u1TEnoOa1EOHBXaHWZ
	 /rc6nhjwY7td+J5nr82lm5w+DwNPKLrckLUnCFHQdxngh10C2UknAXDPzKTrCf/Lcd
	 brrwdGO0FL8f8w90MoO8JKTjSyksJdrcFrNpzIG2vAw1nlfCbS4kaW1nuRDotpX5Pw
	 dPt65vINC6dAeCbUyXopk0BdNTwZzAB9b7M7FXQub0bxqOZ53sX20uvD1dr/UiOvXQ
	 KMcYDQ+LlzjNsNe9l7H99qFX++Sd0G32YzvpEmph5t9ruypkkv+EUd3IBLJAV5MJbO
	 /XAHwcAEwgBsg==
Received: by mail.culbokie.pl for <b43-dev@lists.infradead.org>; Fri, 10 Feb 2023 09:05:35 GMT
Message-ID: <20230210074501-0.1.1l.37yr.0.7ole9y56d6@culbokie.pl>
Date: Fri, 10 Feb 2023 09:05:35 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Kamieniecki"?= <pawel.kamieniecki@culbokie.pl>
To: <b43-dev@lists.infradead.org>
Subject: Prezentacja
X-Mailer: mail.culbokie.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_010718_308911_933D9990 
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
