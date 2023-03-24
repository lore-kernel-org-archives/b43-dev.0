Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E5EBC6FD1C
	for <b43-dev@archiver.kernel.org>; Fri, 24 Mar 2023 13:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZIYMo36Z9B5s4Z39X1OPaHMe3wHIrvls83XrwkX6k74=; b=N6w+hNiGBiy9BU
	KhFzNAcE4SXQb4A8u4p4YYEwyPwLeGg7/weueorh9lC7zzsqbWq2NZtrvvYcsxaAUlsIqGXq2rJfT
	pT23uJIF7ZyEajq2U4xXCD7yinxRNdW5hZN10SepZwWnv6eTrhnElkIXFr1dwZ4v2ZXKaP1KXC885
	6LSvA6GiQIoQeK7cw2seh49wlvCG7wN4110ThKBNZSLR5rVZt0hG0oWTOThbtABBuZWyYBVOde+6/
	oAR2nti0tKEeMhPfbS6OAksncTwFi1iyjNdENW+n4jn4zZ/ixSS4a9hBdFDYjuvmMTVyiK6GtC4I4
	+0Av4Lnwb53kH35HZQOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhoZ-004XTU-0Y;
	Fri, 24 Mar 2023 13:50:43 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhoS-004XRu-2u
	for b43-dev@lists.infradead.org;
	Fri, 24 Mar 2023 13:50:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679665835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FMTjZQ/T7fVsB9p23mpEDbCQHzwssIrPeWULDPJBsw4=;
	b=BFIbtyQx88GiNdnUEKEBM4On3FAeE4FRVTg2w+h8L5QGO1OoxELhDFx+5OUVxC5a0ngWEd
	KUajk0mBUgcod3QS/ffp9E+Yi1YZeO+y9GKz9GRqoi9EiiXPbKC0NhfIt6Invg2FaY5kH/
	gg9Ysz7Ha5asYvFy9zjYh/exs+KgGqw=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-212--jvziwD2NCKiU9V3hOkFmw-1; Fri, 24 Mar 2023 09:50:34 -0400
X-MC-Unique: -jvziwD2NCKiU9V3hOkFmw-1
Received: by mail-qt1-f197.google.com with SMTP id h6-20020ac85846000000b003e3c23d562aso1084697qth.1
        for <b43-dev@lists.infradead.org>; Fri, 24 Mar 2023 06:50:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679665834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FMTjZQ/T7fVsB9p23mpEDbCQHzwssIrPeWULDPJBsw4=;
        b=KZQmYi62HuW5DW3Mr4VoRPR8zS8ldsWtDEIHkyHKcQI1B5A7tz9LMVjI81AjHEf7hh
         LEpbCgzDxAFHpEsVxMjVjHNpzN7H2IgaME1Ak5DWv6XQ6VtyfVeH0hTU703GagNvMPpT
         soxZ0HTIEZ0RcRRvnGz/NklG221PCtKDxFlUI2wkP2IVo1f/GnpbHKlhWdvUcb5h5mAU
         iYqx/I3HD/hP0/dgDnLEUOCUjzSjiuV5HPXVCN3Ak8/owJp9qugYLsjzdSeEpyNDw6xq
         CqOvp0ucNpW2diSF484y+j5ALmlvkVTlMeWuAGx7dFtHoqU35pAaHYlzH7yLLd6fE+h1
         SFkQ==
X-Gm-Message-State: AAQBX9eHmf+IH3WDLzEXo/y+S0945i8z1zff1ZbwF+DW3wDFixs/SBi7
	n9lITuHD30x35o/YQRG4XK1GVAd1EN9EcaFO16W8kRDVzEnpvd3kekkaziT4Tac2I4L451Vj4wK
	zEqBJkx6pa8g7VmDWxAC+GiY=
X-Received: by 2002:a05:6214:1c81:b0:5cc:97fa:eec9 with SMTP id ib1-20020a0562141c8100b005cc97faeec9mr4261659qvb.25.1679665834191;
        Fri, 24 Mar 2023 06:50:34 -0700 (PDT)
X-Google-Smtp-Source: AKy350ahlHZPmdC3xd97ab7RGu9groXWTX+2fdJ9Ht5qCwv4vBumlH8C1WLa0jD3fUCrLsQs2svgVg==
X-Received: by 2002:a05:6214:1c81:b0:5cc:97fa:eec9 with SMTP id ib1-20020a0562141c8100b005cc97faeec9mr4261627qvb.25.1679665833983;
        Fri, 24 Mar 2023 06:50:33 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id ks10-20020a056214310a00b005dd8b934573sm697466qvb.11.2023.03.24.06.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 06:50:33 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: Larry.Finger@lwfinger.net,
	kvalo@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	nathan@kernel.org,
	ndesaulniers@google.com
Cc: linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] b43legacy: remove unused freq_r3A_value function
Date: Fri, 24 Mar 2023 09:50:22 -0400
Message-Id: <20230324135022.2649735-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_065037_152251_E5E947BF 
X-CRM114-Status: UNSURE (   7.49  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

clang with W=1 reports
drivers/net/wireless/broadcom/b43legacy/radio.c:1713:5: error:
  unused function 'freq_r3A_value' [-Werror,-Wunused-function]
u16 freq_r3A_value(u16 frequency)
    ^
This function is not used so remove it.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/wireless/broadcom/b43legacy/radio.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43legacy/radio.c b/drivers/net/wireless/broadcom/b43legacy/radio.c
index fdf78c10a05c..8d7eb89c1628 100644
--- a/drivers/net/wireless/broadcom/b43legacy/radio.c
+++ b/drivers/net/wireless/broadcom/b43legacy/radio.c
@@ -1709,23 +1709,6 @@ u16 b43legacy_radio_init2050(struct b43legacy_wldev *dev)
 	return ret;
 }
 
-static inline
-u16 freq_r3A_value(u16 frequency)
-{
-	u16 value;
-
-	if (frequency < 5091)
-		value = 0x0040;
-	else if (frequency < 5321)
-		value = 0x0000;
-	else if (frequency < 5806)
-		value = 0x0080;
-	else
-		value = 0x0040;
-
-	return value;
-}
-
 int b43legacy_radio_selectchannel(struct b43legacy_wldev *dev,
 				  u8 channel,
 				  int synthetic_pu_workaround)
-- 
2.27.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
