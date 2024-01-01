Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B73EC4706F
	for <b43-dev@archiver.kernel.org>; Mon,  1 Jan 2024 08:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kzjx2TgF3XSJjdqWVeFiqaykM0Y/I/Dz0Mz2X2P3BgQ=; b=k6xYBdnQza0A0V
	VBIhDuCzjdB1qD8w/4kCs5jHr12JEzLGYT+dqnby7GJAZ41mAu+J+gM2FM4ayr0GimfR8K3ARENwk
	rrZHPav2Kw33wYjsrfSwL1WJpd78zH9OkFNbQ69ggGyNBcUp8SqCflwHInUBG9b+OuMX06vp0EGid
	xe95dSZigPwrzepqLLtwebgjPrbWTUWax94i06Gn61a++0qeQAcLGrvQKuIduziWP4Ar6pU046SdV
	+5XJ+lxre15VdZkc7bbUqd3jfrdethihYJC1on3aSAlRf9oNlBIdYFdANPooT4UXJBR7v0xGzb06c
	OsJ6X4ceyGc1CDAC7EXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKDFh-005l5e-0q;
	Mon, 01 Jan 2024 08:02:25 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKDFd-005l54-2D
	for b43-dev@lists.infradead.org;
	Mon, 01 Jan 2024 08:02:23 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-67fdfed519dso54321036d6.2
        for <b43-dev@lists.infradead.org>; Mon, 01 Jan 2024 00:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704096139; x=1704700939; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1rJnDmzlUj/s6A95/HoZSsfVtTM//vdjgKa3suazdZU=;
        b=Ls+wnrp+HC1F2uvJ8Ek/wFZr2do2Wlw6f1Dx7JXI8dWTm4VUm6eDmlIySFkDm1VJVW
         asCIDh7dPST2ufbTZllV7Pnu5fikU+hKlL40jdlvzzD+106y4SpZmVf9oaFAIcCl9AX1
         U0d+LNT+Q1f6h1ZSs5WRt+NLWMg8A84zJnc3JvFu7njMI8qTBztehxkKejiI+R2g33ip
         jl7P3gixAtw7UD+kwptGtr6nK4Wi1ailUkvtw+1nO/S3qWw3OhXPBsdTtvRn/1pil6sy
         u+yzwcr52ssYeUPzdBmr5Wn6gS4eeJ8rUFDGyLrxnCovAH1gLcDWcghJNfdv7F4LWnRp
         uQow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704096139; x=1704700939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1rJnDmzlUj/s6A95/HoZSsfVtTM//vdjgKa3suazdZU=;
        b=P421IYau7ZJ4B4OduLQcLx07qRrT76DVjm7W8v2TLIm/twkDHXHfZhRn2TOYwhY+6A
         QFOn12R3UquOyiRKKM60JQvVDelG5/zTGwz1rQjIhNz9WCYl6iYOnJxWeIsN58hEvdCp
         fda2xEudfIXweHEjhRKxzdxTzOxik25frfY3W9rpSfznx5V1zTask00uqGP/vE+75igt
         NdDW/lAH7qvwYVOEXwIvt596LOiKzENUUntNz78JG3qefACusWpjDUJPHFCWDSm5eqUT
         +DXNaoBALKJUYv1c8XE0Zd15gmDPzm53CG445M4sKQMGNt7dwsNWVUft1Fz/f0tx3ZUs
         nZSw==
X-Gm-Message-State: AOJu0Yw8vyHtPHp0RmVQcTi5v3t9kmBBrsFC/bR9tesGQBgiuG/Kncch
	R0KJgYa4a5Z1kXpE8+wKNAbDI78Am3TiYbhnu1A=
X-Google-Smtp-Source: AGHT+IGzStSNwCQg7DOE6sSUb75JH7fuWQQZ76dLolrSuMj6vDv3gR6Vt9WDoQ6lpEYdRNE/DRqyPdIsN5IZ1ULw3W0=
X-Received: by 2002:ad4:4ea5:0:b0:680:b224:2e5c with SMTP id
 ed5-20020ad44ea5000000b00680b2242e5cmr2445509qvb.128.1704096139203; Mon, 01
 Jan 2024 00:02:19 -0800 (PST)
MIME-Version: 1.0
References: <20231231050300.122806-1-sergeantsagara@protonmail.com> <20231231050300.122806-3-sergeantsagara@protonmail.com>
In-Reply-To: <20231231050300.122806-3-sergeantsagara@protonmail.com>
From: Julian Calaby <julian.calaby@gmail.com>
Date: Mon, 1 Jan 2024 19:02:05 +1100
Message-ID: <CAGRGNgWgki7_3e8Zk=kURo4ZxC13DqDM7P96g_o2ptAhUA6nNQ@mail.gmail.com>
Subject: Re: [PATCH wireless v2 2/4] wifi: b43: Stop/wake correct queue in PIO
 Tx path when QoS is disabled
To: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, 
	=?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, linux-wireless@vger.kernel.org, 
	b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240101_000221_728924_8D8CA90F 
X-CRM114-Status: GOOD (  10.68  )
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

SGkgUmFodWwsCgpPbiBTdW4sIERlYyAzMSwgMjAyMyBhdCA0OjAz4oCvUE0gUmFodWwgUmFtZXNo
YmFidQo8c2VyZ2VhbnRzYWdhcmFAcHJvdG9ubWFpbC5jb20+IHdyb3RlOgo+Cj4gV2hlbiBRb1Mg
aXMgZGlzYWJsZWQsIHRoZSBxdWV1ZSBwcmlvcml0eSB2YWx1ZSB3aWxsIG5vdCBtYXAgdG8gdGhl
IGNvcnJlY3QKPiBpZWVlODAyMTEgcXVldWUgc2luY2UgdGhlcmUgaXMgb25seSBvbmUgcXVldWUu
IFN0b3Avd2FrZSBxdWV1ZSAwIHdoZW4gUW9TCj4gaXMgZGlzYWJsZWQgdG8gcHJldmVudCB0cnlp
bmcgdG8gc3RvcC93YWtlIGEgbm9uLWV4aXN0ZW50IHF1ZXVlIGFuZCBmYWlsaW5nCj4gdG8gc3Rv
cC93YWtlIHRoZSBhY3R1YWwgcXVldWUgaW5zdGFudGlhdGVkLgo+Cj4gRml4ZXM6IDUxMDBkNWFj
ODFiOSAoImI0MzogQWRkIFBJTyBzdXBwb3J0IGZvciBQQ01DSUEgZGV2aWNlcyIpCj4gU2lnbmVk
LW9mZi1ieTogUmFodWwgUmFtZXNoYmFidSA8c2VyZ2VhbnRzYWdhcmFAcHJvdG9ubWFpbC5jb20+
CgpMR1RNCgpSZXZpZXdlZC1ieTogSnVsaWFuIENhbGFieSA8anVsaWFuLmNhbGFieUBnbWFpbC5j
b20+CgpUaGFua3MsCgotLSAKSnVsaWFuIENhbGFieQoKRW1haWw6IGp1bGlhbi5jYWxhYnlAZ21h
aWwuY29tClByb2ZpbGU6IGh0dHA6Ly93d3cuZ29vZ2xlLmNvbS9wcm9maWxlcy9qdWxpYW4uY2Fs
YWJ5LwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQz
LWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
