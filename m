Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C2460A2612
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=099DwkuQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=D7zgJhtk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XWrDFYZ5tM9bI8f6qiQJCaDFOn1JqGoKcQSizwQf2wc=; b=099DwkuQcix1UtphrX/LcA1wVi
	LuhGcj2Sqs12c7VUX8HWU/FkdHsr6HP5ETw6rmu0Rix65mny5A8QQzWMPuiN4+S96drUf4nUSM+TA
	VLof8XVadgRUJ+NXyLtoZjsBxoRAjX7uMEydm3WgxXV1DykaQh6lZMwG7NhhyF2krL3osTA9W2XZJ
	1wmlhS2BI9hGrNdwmBvkYIqMotw+QT/Chj2KvRoit4i/7t8IMVWkIttUngSzYWQcmm1Ub/gzf2kvt
	zGLV7RD4z/UenlKJ7YlMh5/zn1EhzvDg4eLHNZ6ZapTWvrK/8TB7acfIUPKLFwlpdk1IjO3c/uJ99
	V1modgug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2u-0000000Aotv-1iQH;
	Thu, 12 Nov 2026 17:57:12 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2n-0000000Aohm-2VM2
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:57:08 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4a5036bbac7so489375e9.3
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:57:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506224; x=1795111024; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=c2U1ozXjTAQOgzzVeR9AQpZIkT5n1EJnb4FCuDvRTJk=;
        b=D7zgJhtkAGiaM/dBxp7/qxu0UYsnye03TAcX8Qypl5WC4XH+Vg/c7kaiZGVHp/+Zhm
         yM8KskMwMDT1UqVeoet5o+u1Rv7SNt9XTaesRifrAs6BDaPJmgYtDs/53lHbqsJUp3/C
         px183WBGq72uybZqkONPwK6wU56vmw6Wvi4yM/L2pQbDkBtlLva8kEnUxcZWHDYKoOgW
         s4lYX5wco0FhmU3L5ADxoWc7/IK1bAeulSpHW4QvWA6KWjgfcJs090/l9xHGGSDkPGTT
         cQRmAmPWUBPbqQ9S0F2s6nIjuCPEMHQNUmU5PDhCH0oLBL9Rptbf+HOZmMMqWsU1vI86
         ktTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506224; x=1795111024;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=c2U1ozXjTAQOgzzVeR9AQpZIkT5n1EJnb4FCuDvRTJk=;
        b=bCZHjHFoijW4AYHky/lMDKJ9/3KHS4tAHyVJ/GZIcFYK3KWibFoQQ1HsTjJ9Bus9CV
         Io+w9CKSU2WoGzv2/uYpWo3TYCo5yz88JSwX/QzSWAv8iWND2V8C0qL0Aos6MT1/tLo5
         K1DjHKVqU4gCC+BO2ob4T2JxuMSEcqCArJ2knkn2bG1XR0lfoizJr3iDQ4y0XDNi+lH5
         eISwRar5NMfKwVMGScE+vfTvmJSxgw/rx/i5XbvsLaj6qbPJUzJwMnKeknOzCXEK43b2
         6QyWdN0CWRJnWY/N41ib6kQMQRtGvBNwmYo2DgTkyqLaQFTLtAhrmgQx9spznCOfdz7N
         Q8ew==
X-Forwarded-Encrypted: i=1; AL+hErHkQhJBD9j/aio6nmlgQaU1io0loQyIhwrgvCnIOtqz06yKw2xb7o539hZxeVCGyB5TiLNcjqZ/@lists.infradead.org
X-Gm-Message-State: APuU4Z8/edJI7OBj0/HMKpLvM5THyQWeM8Tfjj7w4YCdKhcpD5N9oVeM
	udf3uCYnJdQz9cq7b4jzKWZmUgalCE3Q9YmPjT5EN/AnsOlbTlPnGeN1
X-Gm-Gg: AYBFou13BJt/6VM/TdfvmbszNHzdnLgnldlMA7iNpZ060ZgMHquUurLn82R4N+kRV6N
	y530vD0uATdZfapASyciB95/gMmSlsdeu70UBUAfeizcaCay53+9GsFNJwnYRgWl+xwtsaw18/t
	w2dJ1uHW/ImVQQ6GQfz+h1JTWLA36UkdjuCC3QHN2CX3HSfbT48NjRwedWWDqZaXpv1VPtqi4Pb
	az7u7t7zpCUjuEr2ljF/Kd6FswTPyIt21b9QcPrcScHsYsdfSXEzzKNt7V8R2yg7pfgoDvNyyQQ
	YS8HeimHdvcwaevO/IioWNkOvGM7FnfJDa63sJ5A1d3PRnN50FP0Xmtl0QoEHEmUcLAmFvYCrae
	1fQg4WU9NmfsRr6Zyey4CrEAVTEWzxB4L/Bfjz4nm+ZNr1105ODfD3EqswcQgPkCiw4BszsPiQd
	1E0sI0AMJdwAB8ifnuuXTLt3Hi/SGfTWsxgsMjRKBOjeHiuQVvOit8qODIznWvSXn8k7hpxSsNh
	WIo+Ax8FXBpG4VAP98rf5qJTeXvAMu7F+PMCWMLcCkbpNqLweH2iSZyB09zYgEQSlDcdv1l1qnv
	argdl9rp5hAxavlaZMJbifxMxWCSHmSchUbq6VI0ZQHaFMjS8/yL/aj8mEFCDHESHzZTL0zjzvp
	x0d7L93mA4l5db/HKPMK6r5Ed90sIkRdqtlSQ0cs4CmYGw5uA/4LYwD6BOj9btg9FW5IyF3MAju
	A8xgw1WzwqA3Sm4AhOKDxV5sIqE3B9AXID9uTI330NG5YMd4Ah1+rL8CDYpZDKTnw=
X-Received: by 2002:a05:600c:8b24:b0:4a2:1364:252b with SMTP id 5b1f17b1804b1-4ba09383fd2mr113475005e9.35.1794506223952;
        Thu, 12 Nov 2026 09:57:03 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb527c755esm31491425e9.4.2026.11.12.09.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:57:03 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 4/4] wifi: b43: enable the AC-PHY support
Date: Thu, 12 Nov 2026 18:56:56 +0100
Message-ID: <20261112175656.40686-5-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261112175656.40686-1-gonsolo@gmail.com>
References: <20261112175656.40686-1-gonsolo@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095705_704096_54227C06 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: jpeisach@ubuntu.com, julian.calaby@gmail.com, kvalo@kernel.org, linux-kernel@vger.kernel.org, rosenp@gmail.com, b43-dev@lists.infradead.org, Michael Buesch <m@bues.ch>, Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The AC-PHY now brings up a BCM4352/BCM4360 on 2.4 GHz and 5 GHz and
transmits and receives with HT (20 MHz, 2.4 GHz) and VHT (80 MHz, 5 GHz),
the two that were tested. Remove the
dependency on BROKEN and say what is missing: no TX calibration, no TX
power control beyond the hardware loop, no hardware crypto and no power
save.
Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/Kconfig b/drivers/net/wireless/broadcom/b43/Kconfig
index 4559549..a8321ca 100644
--- a/drivers/net/wireless/broadcom/b43/Kconfig
+++ b/drivers/net/wireless/broadcom/b43/Kconfig
@@ -149,8 +149,8 @@ config B43_PHY_LCN
 	  Say N, this is BROKEN and crashes driver.
 
 config B43_PHY_AC
-	bool "Support for AC-PHY (802.11ac) devices (BROKEN)"
-	depends on B43 && B43_BCMA && BROKEN
+	bool "Support for AC-PHY (802.11ac) devices (EXPERIMENTAL)"
+	depends on B43 && B43_BCMA
 	help
 	  This PHY type can be found in the following chipsets:
 	  PCI: BCM4352, BCM4360

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
