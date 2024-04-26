Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D2BC4345F
	for <b43-dev@archiver.kernel.org>; Fri, 26 Apr 2024 07:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=izknkmhMo6DrTF
	q11J5hueP4pptjrrtwtCtI3yYIX4X5hy+T2QULEo81X6UH+RjWa/G+YaqhKHSekPImsWCtUfVgtp3
	zljF7aIi+HH236Pfv4uCXKPA4gQc4V2nEFi2z7xWB1OC6X2l0cVtNRxVwCyfkJCidO8ZRZPGrR5Gl
	uU6TW9Ky7l7rzTUzZSUrdbdaW6tefwCDtxi1RAnxSv7hOBt0BhFzKwklm4RrL7W0ZdZxLB8BT4Ol5
	Dy7GSOFUKUFWFjs14s6zJeKpJOojjuXoJ8lrvryYloipxxpbbvYTIVIYTaScqIW7d9qURtvA+hoG2
	cNCEjv74isplyoHEUFbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0GRB-0000000BYIN-2nV0;
	Fri, 26 Apr 2024 07:56:05 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0GR5-0000000BYGZ-1mSd
	for b43-dev@lists.infradead.org;
	Fri, 26 Apr 2024 07:56:01 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 0AA5A2564C; Fri, 26 Apr 2024 09:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1714118152;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=YaE8wqKWqn5gMJ4rl14oMmPAeJboWH8IbQnvHjHECOMmJsfwaNHNXbcZ/Rvqr31Au
	 s1ysY+s3Mz4i/VkSx7KriW/OWvX318yaagI3Gi3PfcL27BFAr2ZpVRtOflQgjlb2Y5
	 KhXp2vAQMOFGq8sKdYmI0xVCCYDl1x0YE2oTRzE1U6cvlTgdgLg4lBoA3VKND8TKtA
	 /hezt8ty6kpeA80neu7xsKk9lceT1QuU0nx+ZSoTnBJl7vLw2gYREuuFl3/si658oI
	 nhYwrktbnNgyK3q7Qeajm7jZfUnKTXpAyx6donBZSNHSERl4Caw7oiRcRkXxzVTUML
	 LTNDmr48qW0SA==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Fri, 26 Apr 2024 07:55:43 GMT
Message-ID: <20240426084500-0.1.9z.eta8.0.0cy19322yr@venturevista.pl>
Date: Fri, 26 Apr 2024 07:55:43 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_005600_415115_5605D245 
X-CRM114-Status: UNSURE (   0.80  )
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
