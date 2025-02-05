Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23A9EC02192
	for <b43-dev@archiver.kernel.org>; Wed,  5 Feb 2025 11:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xf020YUXTm9h6UfGIpq9WWSUKjUOp067pEpbnTrhVj0=; b=EHIDuGRzt796Hp
	Wafw98ha03qPjvKfADGog09IPd4LiGKMc2sPJ19uBzQ5q/5IznINguENw3/QALA92m/MjE5zeDGiE
	/38daOkKI0fzRyoSA5lFAuvwspHNZbkPZlm/7t/Q9/FQIwUuuzK3z18gTYbONk+muVPoQVR3A3U79
	fQ3ZC6RGqo4Fu5Y0psVaR2dyYIMSY5IWCAfp3lC5SR0yIpQxzXXMJJgk8qvlWXCwEqiF0N5jV69/g
	tdcPuHwOgG4CFfFXgMv1AYjh8xD9vg4THjdbATIFs0p8X4CtfMYGxfrxvB67qVr2PvF6Pmw/XwWiQ
	juoxRMz69UoWlfs9elXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfdEf-000000030U9-2XjW;
	Wed, 05 Feb 2025 11:06:25 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfdEa-000000030T8-2wX1
	for b43-dev@lists.infradead.org;
	Wed, 05 Feb 2025 11:06:22 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-aaec61d0f65so1191276866b.1
        for <b43-dev@lists.infradead.org>; Wed, 05 Feb 2025 03:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738753578; x=1739358378; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EFvTTGlu7Xiejg+RENXn6LD9Xqubdth3nzEQ18VyCyQ=;
        b=VFvvMRUpXZAGKraZHPo+APE2VVgkMs/tRw7Bsx3dP3B5zGiEoZ/dl2EV/HGY1jWmgm
         HEqNgew25klW8Y5bTvT6JzXoQ1wKhlVjysDW45bZ6kZwS/j9SsJp7zwWmC9TKa6sMmIn
         bZRDgN0uWvGk/S3VFpMw+cslTS2MinIrkjgpmK2t6ycIJ5lMukoRVbCRg3ssCegpSJ4m
         S4Pj4nDSO2V4+ydeeCxIHiNbCIZbwW//xVrCqfRstbxj20Wz+7wq24YzmuWtpeKrV3yA
         ol9CwWZgrpqwcgMO2p3b61w+1KhhyhJzSOFVROPTcDlBtxvacp6qt8yCmfj562bRfw1j
         6RnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738753578; x=1739358378;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EFvTTGlu7Xiejg+RENXn6LD9Xqubdth3nzEQ18VyCyQ=;
        b=ikEa/QzAwxqwu6Otg5AtkxW5h51V7aMMZe22tyUxjZsFVl+GhCBt2mar40sqnJ6NN2
         YXdfbxReIqc9+Qp0uY2F01yDWp+k2LKD3NXbbL20sma0UxxlrCisAs88SL8vROYpZ9WH
         pR/HGVeEDca5uTd1Fxnigq94sOB09T3tXK+T7jO4TWFzdDhaDGPNi00VwBMCcn26eWlE
         +A5fOjCt7sEJ+RuvjdfkuYFho2k3SzXHAgKQKKOO82Kfjavwk6qfCfoaKPbGVucTKw9K
         /1r7Bv80lXAPl4rVV+z/huX2TQew+fDsEd4zladCwdI/1JQjTkaUSNuS6Ytsn74VUgwf
         EedA==
X-Forwarded-Encrypted: i=1; AJvYcCV+AiR4QV3OTf/BGEzx9mprx70C+o2bgWMYiy781CWccjHiEKBfeq0Y98jg/DNmlhprZFs7niY5@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5G8Af+xM+xz6r9gcxO0NaIWrO8N0nU4L0HC+4vY2uwDSiqriu
	Xo5/uOxWag2jmnSlSD+O09QLroRPZZhsoApI7PQlhX6iG7TAm8cjeF8dvHV9
X-Gm-Gg: ASbGnctpyo45/j/QNEPb8Rf/qNZhahjq/hQd/KqoGKpaR3KjqC2XUs+5N/o0sYozaJX
	41xtKWz06FCvrlALPXm3Dvx1toiCtl5/ULJwEvHhsL3c2R1I63MZRfhjykmWqscAecvIB2d2ATS
	SVQ8Q7InFOS7ZTIoqp5ZH+gG9+5wbiSKJVCNFN/6H+DaDZ4EKZiXTz/DzHPvd/oEl0796CoAMv/
	kszZg5SilzD2c9i6O5+Ni3W85ZLVIwneS1or1I8XA6HwRwckf2V8Eywxpw8KUV+x9WS/rEkulPn
	+PJaxKctBVsv158eZNUFbBcsnn3TX8sRa6JmU3MwipmLo6Jq
X-Google-Smtp-Source: AGHT+IHXrvo8JotKw9JqjHjM8kH2tEuwtzlIKz8RB0EOSkb5LyGMPbWWIfmxqiR/hGf1Ce6qe9p1Bg==
X-Received: by 2002:a17:906:794c:b0:ab7:5901:c6b1 with SMTP id a640c23a62f3a-ab75e2a4e97mr245670266b.25.1738753578355;
        Wed, 05 Feb 2025 03:06:18 -0800 (PST)
Received: from eldamar.lan (c-82-192-244-13.customer.ggaweb.ch. [82.192.244.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e49ff968sm1084391666b.111.2025.02.05.03.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 03:06:17 -0800 (PST)
Received: by eldamar.lan (Postfix, from userid 1000)
	id D74D2BE2EE7; Wed, 05 Feb 2025 12:06:16 +0100 (CET)
From: Salvatore Bonaccorso <carnil@debian.org>
To: Johannes Berg <johannes.berg@intel.com>
Cc: linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Salvatore Bonaccorso <carnil@debian.org>
Subject: [PATCH] drivers: wireless: broadcom: b43: Replace outdated firmware URL
Date: Wed,  5 Feb 2025 12:06:14 +0100
Message-ID: <20250205110614.216958-1-carnil@debian.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_030620_746244_9A4AAE4B 
X-CRM114-Status: GOOD (  12.20  )
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

https://wireless.wiki.kernel.org site now redirects to
https://wireless.docs.kernel.org/en/latest/ making the reference
information for the b43 firmware inaccessible. Update the URL to the
current location.

Link: https://bugs.debian.org/1095062
Signed-off-by: Salvatore Bonaccorso <carnil@debian.org>
---
 drivers/net/wireless/broadcom/b43/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 25b4ef9d3c9a..7529afd24aed 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -2166,7 +2166,7 @@ static void b43_print_fw_helptext(struct b43_wl *wl, bool error)
 {
 	const char text[] =
 		"You must go to " \
-		"https://wireless.wiki.kernel.org/en/users/Drivers/b43#devicefirmware " \
+		"https://wireless.docs.kernel.org/en/latest/en/users/drivers/b43/developers.html#list-of-firmware " \
 		"and download the correct firmware for this driver version. " \
 		"Please carefully read all instructions on this website.\n";
 
-- 
2.47.2


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
