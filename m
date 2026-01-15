Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0CFDD41141
	for <b43-dev@archiver.kernel.org>; Thu, 15 Jan 2026 08:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LVSaRg0BcAeIF6lzcGLhYOLQYFJ7z+GTDFeNL6q/AXQ=; b=iUC6hv1WwTbWz7
	aGs9mnItPtZ5xuP79FD/01FHlu1R3V2quTlFaNP3Y670+T4Nrqnz0fIAZaPMlgLUQfWU15cjkewpD
	YmR0f7+Q6O/el5MwNlkXZoQoFyFwoz0K6BrwW7lc+Yd70gDY6VBeUXiZtR/vlhSftnw+efI3tCmfn
	fsx7wGU8UVmM9JejFGC8JysoHHj9endccWR8SOUdpvauCB41zLlxw4VlkR9u/TdExdjZTrCVScudG
	YVarvB5ZqFqKqVSSwIbLlYQiabYE2H/zvZczbptl2UUpb33KCrT2XEOgaM7f2+2QIYRCFeLQq/MDl
	9/I5MO+th4wuvEQOXcUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgIvW-0000000C0kg-2D52;
	Thu, 15 Jan 2026 08:41:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgIvS-0000000C0kV-14ca
	for b43-dev@bombadil.infradead.org;
	Thu, 15 Jan 2026 08:41:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=RKULtWCrk7rMpNvYcbLIEGSRWQOXlP1htSRO3YuwWGw=; b=ZEhznqUIGjPN521JPrhwGc2ARG
	rmbT6gMq2ePtx9XuZ6QInLKgF7ttgDOi0zzs9dhUjzNxwLQxQKngT+8orzUL+W8PltH9eKb9MG3i/
	4zaK04BDzQgVs5qRxZhPRzb+7uGjqzLHYu8IhvId+ah79GuGZOOTEhVPBtc6CgJNfJZmhufVMvGEh
	mpkYzyOb/ZOj0u0H535feEOiCyqGTtpyuCFLiv2rvidoRjgp+ZIMjG4tjjNjxFzCq6y73+5Nz/rEo
	GXK2dasLcwuVQQkeu9VlDkdmgvnqa3fJD2EFk+HEGgeg/4YUQO+idNldFcWrg8PDVcHICZhjnPyam
	cTKtfpsg==;
Received: from mail.crymo.pl ([94.177.230.33])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgIvE-00000006LAu-0hD4
	for b43-dev@lists.infradead.org;
	Thu, 15 Jan 2026 08:41:52 +0000
Received: by mail.crymo.pl (Postfix, from userid 1002)
	id 558DC84834; Thu, 15 Jan 2026 09:41:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=crymo.pl; s=mail;
	t=1768466487; bh=RKULtWCrk7rMpNvYcbLIEGSRWQOXlP1htSRO3YuwWGw=;
	h=Date:From:To:Subject:From;
	b=YgxXgA267peAFSZgfBR2PG59CQoZ6hDL+I8a8exHFs0oYIkHUrjKv/dXWtrnzeDKo
	 9ied4WtZ/J592Ch1t7NqGWMg0tiEIJ1uqYvneYTE7OXwpWSEznCBsNKWzqKI3ObE18
	 tu9Rszt2ELNyMfWGO9V7IqCT0lSqgdpuZOcLaWqpXFGDOa12f3vO/S7qNWe10zCwA1
	 EojlVmff1fIUX6ERCekHlTwC2czpTqB937OjBLfxBg9ZtG3TBCHb2tvvS9YhaFKBKF
	 Rrs0Wcs2R0fRWhSWIwIwfee9bmRgtR5zM3cCjxIM7vtDeDHv8AZwFS3BRryZEla2RY
	 yWAG1yaLhYCdw==
Received: by mail.crymo.pl for <b43-dev@lists.infradead.org>; Thu, 15 Jan 2026 08:41:04 GMT
Message-ID: <20260115084500-0.1.dr.1rbyu.0.x50sb6ju5u@crymo.pl>
Date: Thu, 15 Jan 2026 08:41:04 GMT
From: "Tomasz Lewandowski" <tomasz.lewandowski@crymo.pl>
To: <b43-dev@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.crymo.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_084146_875140_7B5DE7E4 
X-CRM114-Status: UNSURE (   2.12  )
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
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCgoKUG96ZHJhd2lhbQpUb21h
c3ogTGV3YW5kb3dza2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
