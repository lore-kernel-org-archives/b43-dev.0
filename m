Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFB94CD5BAB
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cAsW+4Yn/PBXr9zO55RxQiI2qEsemx469/IhyNqDDw=; b=06KWQfvzZHoQsY
	n25Py4NPIGMjcWAMjmaWjf3ifUpdXAekFoFcCO03wKfqUYVxmwZkDFyTiP8+acbCKwDW+lyZLbVfo
	dt3SuD1w43uwAvnMLxYlWes41r7Jwsr+lzjU6rHlO19doZpWrH8HSmWylgxET2Bco0p9N8JAGpmSN
	TrV8GdVYlDfh3yLJTape0+TEVcsf0B0OObgbt9vcnYk4+/9yZxr9jGfmCP0SFJSoj8jbSGz/8vzBf
	0CbMlZZnSAwqHGDm0Z2kh7oNQf2qQTa0wApU8HP/84u0cnydlfL/NCYaw34iLxR/WxyEhrJwmLkKn
	/+k9PY78RjWLxL0vD7Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGoC-0000000Fim6-3AYh;
	Sun, 24 May 2026 21:56:32 +0000
Received: from smtpcmd15176.aruba.it ([62.149.156.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGo8-0000000FiiM-0LMg
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:56:31 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGo5wsRmcwf0DRGo5wFEW0; Sun, 24 May 2026 23:56:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779659785; bh=ihqAdUA3dK4d4sZJzVA0sG91EQtAx2kZHvucSHzv7Lw=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=ae+CkOT3aUfVZKLGXxoA9yOJ9a+vRzFx+lffWE+nAVcM6OBU5rpRtK6ptVQkTggjO
	 f4leT2k/K3d+q04DNlbKI9NAbKUTGkmum/gDVXYJw4cRgvoPplUnxpBZeChhlwGgHs
	 jb/0l1FS1QlcVgeNvVfoCGDrqM1cl8OwnSetlu/ks3GtgGfyGszdFJ2qhWA/usTa6G
	 tORfvdSQHOILlD4OwdT/ueWwSSf9L2i2+MMpaAQJLhMCPhInfT+Kb4nqIx7xXR9qcu
	 hC7T4dM2e4+ote1lGiJunAU8/kBzVbLYLBLNdf/dHO4kMWOWbGNaCAUrbw9zL/ppAr
	 l36wG41PpFEfA==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Sun, 24 May 2026 23:56:18 +0200
Subject: [PATCH v3 1/7] b43: add firmware mappings and remove comments
 wondering about rev22 initvals
MIME-Version: 1.0
Message-Id: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-1-cdad2c8526c6@gmail.com>
References: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
In-Reply-To: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alessio Ferri <alessio.ferri@mythread.it>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfK6e4tZhO5nbXI139+tskn3ZldskwfZS0yAkmZzdcOiRqB5wDe+cpYChzUy/iHFxUhoVp6ah5tm/xaN8TPVJUQrwkYksZlAIe9yIAVsmHrTjgL+TX1og
 HjWJnTDeXqY/mLXoEZFeQito8onhlhJuL9iHTYF4Y6kr0garwS6/ceTopffj2vVF27c9FcGjybi74l96GO1XPhhFjz0aw5NclsV5DLN9cDKQNey8hPuI9Mr4
 xsWV1tci4PZrxsE+vgaHc1n3T2mR59exei4b+jy6mXj8/5tJHWS0S4i0M3oMLhO9ROIqQB6eu5UVlcItQfFfdjQNE/BiBtfF/aKPe3zEtco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_145628_322895_F7B5423C 
X-CRM114-Status: UNSURE (   8.29  )
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

Assisted-by: Claude:claude-4.7-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/main.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index b0e6aeb0b..37c5d9928 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -2344,6 +2344,10 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 		if (phy->type == B43_PHYTYPE_N)
 			filename = "ucode16_mimo";
 		break;
+	case 22:
+		if (phy->type == B43_PHYTYPE_N)
+			filename = "ucode22_mimo";
+		break;
 	case 16 ... 19:
 		if (phy->type == B43_PHYTYPE_N)
 			filename = "ucode16_mimo";
@@ -2405,7 +2409,9 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 		else if (rev == 24)
 			filename = "n0initvals24";
 		else if (rev == 23)
-			filename = "n0initvals16"; /* What about n0initvals22? */
+			filename = "n0initvals16";
+		else if (rev == 22)
+			filename = "n0initvals22";
 		else if (rev >= 16 && rev <= 18)
 			filename = "n0initvals16";
 		else if (rev >= 11 && rev <= 12)
@@ -2465,7 +2471,9 @@ static int b43_try_request_fw(struct b43_request_fw_context *ctx)
 		else if (rev == 24)
 			filename = "n0bsinitvals24";
 		else if (rev == 23)
-			filename = "n0bsinitvals16"; /* What about n0bsinitvals22? */
+			filename = "n0bsinitvals16";
+		else if (rev == 22)
+			filename = "n0bsinitvals22";
 		else if (rev >= 16 && rev <= 18)
 			filename = "n0bsinitvals16";
 		else if (rev >= 11 && rev <= 12)

-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
