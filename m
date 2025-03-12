Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 473EAC28B28
	for <b43-dev@archiver.kernel.org>; Wed, 12 Mar 2025 08:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rohV0QMEg3fB4k/HQlkO8YaURuO7z7mmwI6WFgElbgM=; b=1h5So+7M4lIwoj
	JIGduuRypTSCLD6BrNC6UMzA0ua4TShX/YHOp7LAAr4wfeE96WI9g6nB6cCG41NqLkcWf6aTXQw3C
	Yle9jVBgT2AZtvyGTGP5By3Aj/Wd+8MVhLPfQwgTlG03SCFe9g/o1cuqGtthHlL1Q8kY1sL/WtjjV
	XVawb3L2wtVC2SaJ7dsC99YYBXvQxK/DWjLoYVgwJ31IeDNFcoS+UYX7rOwoT2Cdrwxsb4ErvGKJy
	FPHq6HMiZEieRGlz4wk0Hc9wbWiPBrZ5xSto7XpyuqfGnlX3Y1E90/4ILSduqutiTuTii0H1dQCF+
	gD8Z8dTaR9N3o5takvuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsHYq-00000007qOQ-34aP;
	Wed, 12 Mar 2025 08:35:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsHYp-00000007qNq-3KDr
	for b43-dev@bombadil.infradead.org;
	Wed, 12 Mar 2025 08:35:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=nU0fzD5wnLwbt9yoUSBeMInFHzMm7DGirLXtUO2ZpV8=; b=JcrLjSA75LQEDggalq0WaD/ZLX
	bC47iBj4XvIugM0tjdUy7CmJR/F/+TsVXN3SD8oA+YUFDhizX0hRnLHZwRR038BHcOcw1hOM0Igd1
	JZVUtGQR9ia3QSEmlafuFtTOfJnxaD+vQ6eIdRCWv6MTG2iXfVj49IB70lNnucWK9LTM0EMPvswuo
	PBItzaIEFGVkNpcG3F0EkNJkByTjPt1aUEZXKfa3lh93Mlao7Kdzd3A17eGA59+rtR0NLfQTr4IJe
	ZXT8qgvFPTP9aJTmn21eGnsF/OiP5kCo2b0ZuUh+6Ms4Qx3CpY2tmyM2iz/o5X7vgpjX1gtHb4QDK
	uBbwjnbw==;
Received: from mail.growdeal.pl ([141.95.55.73])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsHYm-00000002KvO-0YoU
	for b43-dev@lists.infradead.org;
	Wed, 12 Mar 2025 08:35:30 +0000
Received: by mail.growdeal.pl (Postfix, from userid 1002)
	id 9F14A21494; Wed, 12 Mar 2025 08:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=growdeal.pl; s=mail;
	t=1741768516; bh=nU0fzD5wnLwbt9yoUSBeMInFHzMm7DGirLXtUO2ZpV8=;
	h=Date:From:To:Subject:From;
	b=lMNv+idikfysqIaxEdo75IHAS99N7RC75Jm4yRJ4je7hPcfGjw0Qn9t+WIA+A95nR
	 JoKZcxj7rl9eklsMrtK9duGgvV28FbHgwWXuNd6IkTGAt4S1LVIifG6oaNL4aLFani
	 2ELV/MgJNFaO5BBBarMkav7HMAbQvdWoUPn7/IRvVzUx5NHyzc4g+9XH4KBSOMHuhd
	 MatCAM+t/66Rm2xNoiKFm/JAES/O2LRU586beaaOZaKXc9dGh/RrrjgS3PqqorSwas
	 4vVJv4ETbg5nRg+Y5puGcnA5Q733iNZidvVLXxZKuRCP9flc8Qxun8IkVWYXqX97lW
	 HGuM88pHcnVsg==
Received: by mail.growdeal.pl for <b43-dev@lists.infradead.org>; Wed, 12 Mar 2025 08:35:04 GMT
Message-ID: <20250312074500-0.1.14.fg7p.0.kbavfh1xy5@growdeal.pl>
Date: Wed, 12 Mar 2025 08:35:04 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Zajdlicz"?= <pawel.zajdlicz@growdeal.pl>
To: <b43-dev@lists.infradead.org>
Subject: Rekrutacja handlowca 
X-Mailer: mail.growdeal.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_083528_628818_B5B09AED 
X-CRM114-Status: UNSURE (   1.87  )
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

V2l0YW0sCgpDenkgbWFqxIUgUGHFhHN0d2EgYWt0dWFsbmllIHBvdHJ6ZWJ5IHogemFrcmVzdSBy
ZWtydXRhY2ppIG9zw7NiIGRvIGR6aWHFgnUgaGFuZGxvd2Vnbz8gCgpQb21hZ2FteSBza3V0ZWN6
bmllIHJla3J1dG93YcSHIG9zb2J5IG5hIHN0YW5vd2lza2EgUHJ6ZWRzdGF3aWNpZWxhIEhhbmRs
b3dlZ28sIFNhbGVzIE1hbmFnZXJhLCBhIHRha8W8ZSBLYWRyeSBNYW5hZ2Vyc2tpZWogdyBvYnN6
YXJ6ZSBzcHJ6ZWRhxbx5LgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHPwoKClBvemRyYXdpYW0K
UGF3ZcWCIFphamRsaWN6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
