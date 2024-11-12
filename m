Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8563AD41D6B
	for <b43-dev@archiver.kernel.org>; Tue, 12 Nov 2024 08:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zZjneiBtTHphuPhK1hmkrM+meTfSLcyuyARPcU3JvZE=; b=aJHjuWRUO8VPdj
	5XTA713Vwe24MEsxBxmlcKnu/sKKwkGGuO5UDDe6wlYIz4GqGIwxDHyyvErwF8I/ww+HXF6jrvhkG
	bDQHRDMUR6JMNJLM7Cxbiu22TykWadTCR1VTOENaSueowiFxbmrwBmK7nvEZAZf7o5ZfiOPy7gXSi
	O/UXAixKnWpdBxaZV7SB3k0ijEGlxIjEVp1sBNEoqG/CnTSRLuJcrCWFSuKu+fSonAHA3KjaoZRMy
	Jgpv7R/6pp4jo+09vhLrwnTBrn59OUO9gXLAwOIRsT249CFViWW0KUypOxHStEDvSmM9SBFWuaNkI
	/o23JcArYY0RY8+D5hwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmJK-00000002dwJ-3xIG;
	Tue, 12 Nov 2024 08:31:42 +0000
Received: from mail.imaginesphere.pl ([92.222.170.29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmJD-00000002du8-43l0
	for b43-dev@lists.infradead.org;
	Tue, 12 Nov 2024 08:31:38 +0000
Received: by mail.ImagineSphere.pl (Postfix, from userid 1002)
	id 1B96F236A3; Tue, 12 Nov 2024 09:30:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ImagineSphere.pl;
	s=mail; t=1731400289;
	bh=AdLbcIxsmZbVLQJvO/zDYc3Y9p7RFt8eMYlzRMLZu+Y=;
	h=Date:From:To:Subject:From;
	b=T3aX0exgsHAGubmWAOiZbG5YVp+I4aCMxwnydXJDiCWZGT6hXvZ59HghL08ZcSfBD
	 pjq0sf+tPH+0f8FW4Kj9f6uePMDc+h4mM9Vr32ooEvBeduBFwuO4/nS7r6vQAtY4aW
	 b+YQM92bHnS2uOoNcgjb9OCu28UfLEVhnRolVzXj8109zF++DhbTIV6alToBSl7LFJ
	 1cpOxVUgRDCSEI49d2hYD9WeJDQvPirRSe0Lv6fsxp3RIFA1w+jqf8rU7EbyI3Jfyq
	 iw2IabzNW51QrkxDbxDwb8FWyI+EzMX9NCXW+P9YoJwDEhl/88xSeetZtquOFAog4o
	 JdpC9LGvPnVNQ==
Received: by mail.ImagineSphere.pl for <b43-dev@lists.infradead.org>; Tue, 12 Nov 2024 08:30:25 GMT
Message-ID: <20241112084500-0.1.cj.1wara.0.nlp52b5bcd@ImagineSphere.pl>
Date: Tue, 12 Nov 2024 08:30:25 GMT
From: "Szymon Jankowski" <szymon.jankowski@imaginesphere.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.ImagineSphere.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_003136_796754_8E175D26 
X-CRM114-Status: UNSURE (   2.37  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbSBzZXJkZWN6bmllClN6eW1vbiBKYW5rb3dza2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFp
bGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
