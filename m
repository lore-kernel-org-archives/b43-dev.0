Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC33DCA0EFF
	for <b43-dev@archiver.kernel.org>; Sat, 30 Aug 2025 13:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W3mrOqt6nNps4QIKHgD6N0ceYjbEq/jMGEw/AOnN6g8=; b=qw3CVG7fWEeT9G
	A1X6XgxdsMyBm5Hxo5wZJruV0hUakcstTFPERCI7N6Wa8HbC7I7ZPUl2h+VQDGrm6cBQvn/MBB12G
	97M57fNWLEkRDNnJyGPoBCezk1EYHR2tUNvlzVTTv8FrpJBvt9UztUKf9ZW/qTFjXQWx5Nirf3eGo
	Z3ecv/W19FczXSTqIwVvkSxEBAEb216K81tfK4Bjeg7DiLIjtGZgAOJfnu7qFSRdK7chDzOJ0hELm
	wrj9jHsGQXT9dzmNbeFgpna3vJr4jE1Y6ZZefAOmpqSEx1yINL7LJzqr3bzzubbxI6kLK3aoB5KKi
	GMjE9ef9toUsBnFqtI8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usLQk-00000007v1o-2zKU;
	Sat, 30 Aug 2025 13:15:42 +0000
Received: from mx2.inter.hu ([88.99.86.175])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usL9n-00000007t4X-0Cqh
	for b43-dev@lists.infradead.org;
	Sat, 30 Aug 2025 12:58:12 +0000
Received: from mx2.inter.hu (localhost [127.0.0.1])
	by mx2.inter.hu (Postfix) with ESMTP id BA53A1E0786
	for <b43-dev@lists.infradead.org>; Sat, 30 Aug 2025 14:21:04 +0200 (CEST)
Received: from [45.138.16.152] (unknown [45.138.16.152])
	(Authenticated sender: vecseii@martonyi.hu)
	by mx2.inter.hu (Postfix) with ESMTPSA id 90A041C0B9F
	for <b43-dev@lists.infradead.org>; Sat, 30 Aug 2025 13:26:54 +0200 (CEST)
From: vecseii@martonyi.hu
To: b43-dev@lists.infradead.org
Subject: xls
Date: 30 Aug 2025 04:26:54 -0700
Message-ID: <20250830042654.CFC503B67B031763@martonyi.hu>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_055811_228995_6AAC069C 
X-CRM114-Status: UNSURE (   1.03  )
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
Reply-To: info.superenalotto@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

V2lyIGZyZXVlbiB1bnMsIElobmVuIG1pdHRlaWxlbiB6dSBrw7ZubmVuLCBkYXNzIFNpZSB6dSBk
ZW4gCkdld2lubmVybiBkZXIgasO8bmdzdGVuIFN1cGVyRW5hbG90dG8tWmllaHVuZyBpbiBadXNh
bW1lbmFyYmVpdCAKbWl0IExvdHRvMjQsIEV1cm9NaWxsaW9ucyB1bmQgUG93ZXJiYWxsIGdlaMO2
cmVuLiBTaWUgaGFiZW4gZWluZW4gCmVpbm1hbGlnZW4gR2V3aW5uIHZvbiDigqwzLjg1MC4wMDAg
IGluIGRlciB6d2VpdGVuIEdld2lubmtsYXNzZSAKZ2V3b25uZW4uIFVtIElocmVuIEdld2lubiBh
Ynp1d2lja2Vsbiwgc2VuZGVuIFNpZSB1bnMgYml0dGUgCmZvbGdlbmRlIEluZm9ybWF0aW9uZW4g
cGVyIEUtTWFpbDoKClZvbGxzdMOkbmRpZ2VyIE5hbWU6IExhbmQ6IFdvaG5hZHJlc3NlOiBBbHRl
cjogR2VzY2hsZWNodDogQmVydWY6IApIYW5keW51bW1lcjogV2hhdHNBcHAtTnVtbWVyLgoKSW0g
TmFtZW4gZGVyIE9ubGluZS1Mb3R0ZXJpZWFidGVpbHVuZ2VuIFN1cGVyRW5hbG90dG8sIApFdXJv
TWlsbGlvbnMgdW5kIFBvd2VyYmFsbCBncmF0dWxpZXJlbiB3aXIgSWhuZW4gaGVyemxpY2ggenUg
CklocmVtIEdld2lubi4KCk1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4KCkZyYXUgS2F0aGVyaW5l
IEZlZGVyaWNvCkxlaXRlcmluIE9ubGluZS1aYWhsdW5nZW4gLyBWYWxpZGllcnVuZ3NtYW5hZ2Vy
aW4KQ29kZS1OYWNocmljaHQ6IDczN0dIUzk4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
NDMtZGV2Cg==
