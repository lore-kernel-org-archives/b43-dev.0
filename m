Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89CE6C04FFE
	for <b43-dev@archiver.kernel.org>; Tue, 14 May 2024 07:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeklD/dSi7PydDGa+1pxr2KjtXQNg7nqmWG7EfUIHag=; b=BG90j6KhvFwJFG
	/8GN3vPgtuf65t9LZZDqmhnYaXEh/w2MXasFUefrYoQB5aGZgT8hqOj9ra1vaX0xChV2RENRdzJ+G
	vyi4FmFrSyJbjqljir8NxZk1OEPZdTmpyExzoL33uonkRrVDcqdlUGoS2Nhl2Dnw+MCKGyDp+cNCx
	c7Ux9BLrexCT4rH2w4dbSxwu7mCsF/UOHQoBjIBIV7VCRzE6xJRti1aWRejKiAKSFqAiqG3SmZi4r
	gttm15PW3XOyGninD5XYxWd3qwXZmfGRVescijJtWafSOoldb8cYpFuld+xC7hkeRSFJFS+DCGnwd
	7rZYDudH2wdK/Q/ixikQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6msS-0000000FGzN-1mDa;
	Tue, 14 May 2024 07:47:12 +0000
Received: from mail.venturevista.pl ([162.19.205.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6msM-0000000FGxO-20DY
	for b43-dev@lists.infradead.org;
	Tue, 14 May 2024 07:47:08 +0000
Received: by mail.venturevista.pl (Postfix, from userid 1002)
	id 691BA25496; Tue, 14 May 2024 09:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=venturevista.pl;
	s=mail; t=1715672820;
	bh=DjNALEe96gRlzA4ffLINmOD2oI1cqzpVK/E4I+uckvQ=;
	h=Date:From:To:Subject:From;
	b=Nxo81JlN7hH3xp2h4DQ2RY0/CTkR49H8yoHLYdHbz/Nu5gyF8lDtEY2KwmVN6bPuF
	 HMChJ3FSmkWTT7RSWMzXDO0scSD1G1PcmqGobJ0+NE8BcPRZ7/x1EiumuaS7UeAKbS
	 VSLvDT39qMe80AFaEQorzzoDrGLbfqWEUcMq/ZpCiLYEkX89fTjHe0yxUwm6d/aEpQ
	 3Q5hMcIRlBVppg1sjrT0HaWObDDvwaCfnZQ+pNpmsRZKyH1Rg7kpW9pyOUY3CJ1udh
	 1wAlWOhheUDv+s1Zb/LaHihbzNPWgQp0KrCZhsSFxm4bBDAJD7DW5wcJOEKWe4Jr7v
	 qXgO4UFOBICKQ==
Received: by mail.venturevista.pl for <b43-dev@lists.infradead.org>; Tue, 14 May 2024 07:46:16 GMT
Message-ID: <20240514084500-0.1.aa.eta8.0.uh50vcpdjg@venturevista.pl>
Date: Tue, 14 May 2024 07:46:16 GMT
From: "Wojciech Mroczka" <wojciech.mroczka@venturevista.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.venturevista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_004707_259280_E156E91E 
X-CRM114-Status: UNSURE (   1.39  )
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
