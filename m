Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 755FEC87FD2
	for <b43-dev@archiver.kernel.org>; Mon, 11 Aug 2025 08:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hNNPpEvvJBG1EO9Q0wAQhB7RPwf/RhhYK8ZxvZr4NW4=; b=d3qzImphvriY0v
	gWpf9PXxKjMNfz3pijmf9H/aL30hRlqC1eab17n4k849SF1CDYdpBF5QrcZIxMc2m5eXd07bzOHHm
	Qoaxopt/uhmm3n5UMfoV8cXLc2h1ICNqRP+0I8J7XBxjhVQ5n9yV4VsshlZ6JOwlkqh/6+GwnPxoE
	T0MgpHHTvcbd7ZxTG4613Rqu+9mpL34o6VA+9pmvVjb2SYI0MjXyw2yQpeKx+dJ28ShJ4uLjYq8TM
	Q3piVvHhy4N5YegvU751zP+Yk3aSsuDDR7/FX5kBdmdxISyu7Vwt3Z/k5a+HxCn7p+hNciDxCafVI
	EG5mqeHnSWgbRBHKrC3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulO7A-00000006sxd-31TZ;
	Mon, 11 Aug 2025 08:42:44 +0000
Received: from mail.novafirma.pl ([151.80.57.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulNca-00000006oWZ-1Irr
	for b43-dev@lists.infradead.org;
	Mon, 11 Aug 2025 08:11:12 +0000
Received: by mail.novafirma.pl (Postfix, from userid 1002)
	id 5FE47A45E4; Mon, 11 Aug 2025 10:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novafirma.pl; s=mail;
	t=1754899864; bh=6e7m2oCltpDJ6Z385exoCtdAMDYbdCGRZj9R1h6ceWs=;
	h=Date:From:To:Subject:From;
	b=mQlmSDQOo91t4XEFek6NCbKG1XEKdv0ajVEhn/XgQqNO2eu/nlWDxaPCrWLDkhBup
	 jVa2o1HORxKWukoEF4kd0qwx3zXGf0QZtVZE0KpCcd5gcl0b8agxhxTC2iKeN+/ElA
	 l2MkRXBcT8E28PsGrOgB0EH4WuAqSwjel0Uaj6F9MpvdSWxeygbC8yi0rIsNTz9rRj
	 gbeFkjbZL7NIstagi9OSPLfnajQtZ/faYwuqiwyZ78Rl563tDhOhx2vbSgOE6ngjg5
	 fWV9njl/0bynLn1FwBdLev6jtOtK2sTd4ijXTlkKWSqcTGatBVvm7XtM1poQFt9OaS
	 GT6YAv3w3CcWw==
Received: by mail.novafirma.pl for <b43-dev@lists.infradead.org>; Mon, 11 Aug 2025 08:11:01 GMT
Message-ID: <20250811084500-0.1.px.2kdzx.0.rd8iijoj29@novafirma.pl>
Date: Mon, 11 Aug 2025 08:11:01 GMT
From: "Jakub Olejniczak" <jakub.olejniczak@novafirma.pl>
To: <b43-dev@lists.infradead.org>
Subject: Szansa dla firm z Wielkopolskiego
X-Mailer: mail.novafirma.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_011108_630154_E793E86F 
X-CRM114-Status: UNSURE (   1.25  )
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

U3phbm93bmkgUGHFhHN0d28sCgp3IHJhbWFjaCB3c3BhcmNpYSBkbGEgcHJ6ZWRzacSZYmlvcmPD
s3cgemFwZXduaWFteSBrb21wbGVrc293ZSBtb8W8bGl3b8WbY2kgZmluYW5zb3dhbmlhIG5hIGF0
cmFrY3lqbnljaCB3YXJ1bmthY2guCgpPZmVydWplbXkgZWxhc3R5Y3puZSByb3p3acSFemFuaWEg
a3JlZHl0b3dlLCBrdMOzcmUgbW9nxIUgd2VzcHJ6ZcSHIHJvenfDs2ogaSBzdGFiaWxuZSBmdW5r
Y2pvbm93YW5pZSBQYcWEc3R3YSBkemlhxYJhbG5vxZtjaS4gCgpOYXN6ZSBwcm9wb3p5Y2plIHRv
IG0uaW4uIGtyZWR5dCB3IHJhY2h1bmt1IGRvIDEgbWxuIFBMTiB6IGd3YXJhbmNqxIUgQkdLLCBy
YXRhbG55IGJleiB6YWJlenBpZWN6ZW5pYSBoaXBvdGVjem5lZ28geiBtYXLFvMSFIDMlIGkgbmEg
MTIwIG1pZXNpxJljeSBvcmF6IGlud2VzdHljeWpueSBuYSBidWRvd8SZIGN6eSB6YWt1cCBuaWVy
dWNob21vxZtjaSB6IG1vxbxsaXdvxZtjacSFIG5lZ29jamFjamkgd2FydW5rw7N3LgoKQ3p5IHPE
hSBQYcWEc3R3byB6YWludGVyZXNvd2FuaSBlbGFzdHljem55bSBmaW5hbnNvd2FuaWVtIHN3b2pl
Z28gYml6bmVzdT8KCgpQb3pkcmF3aWFtCkpha3ViIE9sZWpuaWN6YWsKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0
My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2I0My1kZXYK
