Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BE7606A31E
	for <b43-dev@archiver.kernel.org>; Thu, 22 Oct 2026 19:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hpEy5SeC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=BUqhUL0M
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=/qopKAA7RUc9YVTvp0sS1NwN34oOf+O4SvWZg8ca38Q=; b=hpEy5SeChdgvOVjzvKq72xYbwl
	VRZR9i8irp+xr+OFkQFXNZKDKJ2plb/GjKuyHyMVWMY5a+3h3MFECtz8dcguOt4xNO7Hx3QFEkxz/
	VOSF/46zEzmxMhom6IGAfcp5mh4p+xhXSqHBaFu+U9ZU+t9hP265RYDl4zmKb56WiUl4V0BHwpxMu
	5smSgXof5AmM0YevRXoV6n3tGS/sc7A2Pajo8YBqBhCsgSQ4SMPS8wnnzQjsTH3/yp0GHdHBqSsvL
	upr61g5KtSostw6AHTq9V54Ad2NJ4bx8nA1ecRfobih6Mc0wTMPut8Q0HGjSyBMB5akrFa6lwojhd
	MPzo8C9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJyQd-0000000Ep6K-2oy8;
	Thu, 22 Oct 2026 19:26:19 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJyQa-0000000Ep5w-1Qpv
	for b43-dev@lists.infradead.org;
	Thu, 22 Oct 2026 19:26:18 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-35d0be18c71so1392688eec.1
        for <b43-dev@lists.infradead.org>; Thu, 22 Oct 2026 12:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792697175; x=1793301975; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=gK7izGGtZVYQa86HMWiLhtBvLLYZxvuYYPXUeMfCAJs=;
        b=BUqhUL0Mli5Wk7zExnVw5cWDTXZa8gBK//CFCjN5CkYOrx//nC//TBx17UiEFOeBz5
         uDWKiVBMi0vj7gzEEJeOQE1jPk30AlGtexfsSLgGDCtH6cFam5gEOR1HRkuP9b6WiXjP
         yGKHQGUxhpI5A7DM7DxZ/5YPaKvqUJYhUIS6wcQ2i+WW9adoF4J+c483B/immiA4tXIj
         7rxT4qEUI5S6kEb8sHptfJmGAjHw8zFokIrxELwhqgSXG7Kad1lQP3088ttMasixdpux
         OTVCGqAhDKTOAvRFppJFSzDCdf8yDG5SqUvsLNS20PN0o2KfCbXtg8cDaF32HQg58XQD
         7yzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792697175; x=1793301975;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gK7izGGtZVYQa86HMWiLhtBvLLYZxvuYYPXUeMfCAJs=;
        b=b26HgvoFtD48KghKbgppuWsI27/Xtu+DvwJ1nGaRsCAVqyCg0Y0CLjlyMLMaPB3SIW
         eJPxSMbs2Q6OsDKgZwurknqJQSvPMZ7y7Ld5Z9ght46NyEulGiGj4IMbsHVBdiae5EyW
         rnYT4lsbFCNzQJtl/C5W+aqW6mOGea4vuhzi1dOyyAZdzMI3pb7mUxIE2A9ZkfuATGnr
         aHyVEVHX5CXYLkcJZpNiW1Ch2MOb+lGg9wwQRgp1JlWcyfLKae4gvDhzL6HgL97Gw1xV
         boESODVY8IIeo9ELhO0t22HCLwIttEo/8dY9haMxSYvnbTUQpMrR035/J+jmQvNVGYzB
         22PQ==
X-Forwarded-Encrypted: i=1; AKwUvBzjCRJnlEueJ4HJDL/rv2tVtH1e8g6ZrcMGmWoc71qN9sbTwFWifhc8oygN2I+k3MoVY+R2fT3P@lists.infradead.org
X-Gm-Message-State: AFq9FYLiLpw6JWDKd6RcM3KcDoGqCzpF1zuc+ESwCzEObQXStcoFyL5r
	ceffomfmEn1v2zhRgJcQ6w+TLVp9z473v5kw434EG7QPNY6jL8rnCfpn
X-Gm-Gg: AYBFou3chbPLKinPMAr/lMQEljk1cR3W9d/NiDdMm3bjW0dEF9Xue2jKVWviMUNe5Vj
	WSd2mY8w9Rj2AVcfSGWvPVbRTCatCiar1z0bQYI3NXmaDW1ncehmjwonT9yXiz3lrPxxkmj0b/F
	udWIZ47Xnc5JRbhXah9QkesX7dLwd6Lv36mJQlU/u3MXqLcz3eKdIR1jQQNmxmnzCsdyrQu/Omf
	2ZdUrHhdIOBAkdvtf7pJwl1sQjHObYQWZACRaMcBhl2SnSmdLCcc5N9ubei/9PIBtkQRQCsedG0
	0LEtexqTW+733bCcP580DEPNmBX5dCH66AqlZOIaDsPRRU58ma4WCDhfb/sKLrhYHE+6n+JJm1t
	dBrzLjYkabQwEAfA3kn64pqpActfQD1foA+CORA2KIGiXEBmF1oh5dRSifSxpqaJtQQC6a35/YY
	QxYQv7H7Jnx1xAVk48vPkG0sEZQdueUaUZOv6If42zkV21fCzC3HruO5S0WyPteuqz6EYa6V6bU
	A4tAw0oYuTIMDFZ32EF42I4grNjCuer+bb1JWcsOFTMJmb2aIGOBTXUsFczk10e5TT1LmsS74Cd
	pyOHEhlLI7kEWvUpsutXTX0L3fHjOqGF6WEjjQAspVvscdXZDh0cz+BrPJpNnSEL+UBz+AT45Km
	JFEWlXy2Iz926AI2xNpg4pN/Vwol3
X-Received: by 2002:a05:7300:559a:b0:360:aeee:9b8a with SMTP id 5a478bee46e88-368afd86aabmr3963048eec.8.1792697175344;
        Thu, 22 Oct 2026 12:26:15 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:37f::e36])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369d8fb1a06sm328384eec.23.2026.10.22.12.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 12:26:14 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless] wifi: b43: HT-PHY: read 32-bit table entries low half first
Date: Thu, 22 Oct 2026 12:26:13 -0700
Message-ID: <20261022192613.3329978-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_122616_575152_B27C7EBD 
X-CRM114-Status: GOOD (  10.48  )
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
Cc: open list <linux-kernel@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, "open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>
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

From: Erik Conijn <egc112@msn.com>

The PHY latches a 32-bit table entry on the access to the low data
register, as b43's N-PHY table code and Broadcom's wlc_phy_read_table
assume. The HT-PHY code read the high half first and got the stale high
half of the previous access: TX gain table entry 0x1a/0xc0 0x10f90040
read back as 0x10190040, so b43_phy_ht_tx_power_fix() programmed a
corrupted radio gain word.

Fixes: 1a9313923718 ("b43: HT-PHY: prepare place for HT-PHY tables")
Signed-off-by: Erik Conijn <egc112@msn.com>
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/tables_phy_ht.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/tables_phy_ht.c b/drivers/net/wireless/broadcom/b43/tables_phy_ht.c
index 1acf2df66e5e..a6db39c644e3 100644
--- a/drivers/net/wireless/broadcom/b43/tables_phy_ht.c
+++ b/drivers/net/wireless/broadcom/b43/tables_phy_ht.c
@@ -622,9 +622,9 @@ u32 b43_httab_read(struct b43_wldev *dev, u32 offset)
 		break;
 	case B43_HTTAB_32BIT:
 		b43_phy_write(dev, B43_PHY_HT_TABLE_ADDR, offset);
-		value = b43_phy_read(dev, B43_PHY_HT_TABLE_DATAHI);
-		value <<= 16;
-		value |= b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO);
+		/* the low half latches the entry: read it first */
+		value = b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO);
+		value |= b43_phy_read(dev, B43_PHY_HT_TABLE_DATAHI) << 16;
 		break;
 	default:
 		B43_WARN_ON(1);
@@ -658,9 +658,8 @@ void b43_httab_read_bulk(struct b43_wldev *dev, u32 offset,
 			data += 2;
 			break;
 		case B43_HTTAB_32BIT:
-			*((u32 *)data) = b43_phy_read(dev, B43_PHY_HT_TABLE_DATAHI);
-			*((u32 *)data) <<= 16;
-			*((u32 *)data) |= b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO);
+			*((u32 *)data) = b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO);
+			*((u32 *)data) |= b43_phy_read(dev, B43_PHY_HT_TABLE_DATAHI) << 16;
 			data += 4;
 			break;
 		default:
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
