Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51FF5CD5BAB
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f01C+5obUXqbDEFOH4KOXGC/yEJx16mOElTVgpgNH0E=; b=uab7ITSshL89nD
	Ru35pTcRPYuObrwhwuwJQptl+J9UXEYGffYKVMGDokkIBhQC53aU+5Tf4rsi0JWSOT76jTCClmBfs
	/x9kzo+5uX8Tzh2s43pIdkKCmN+CcJ1MHDu9RnNELGqtPqhBkulgbMeqgLDQt+20cpbknBIJTq2J0
	Akp7vfq3BuHycgaEtGDqQoA+oSURZjBz8WNXLXm6Q4QmXT1ED0hGkqwPFa8/2nHBR1he+3nXTAA2L
	3XyZUAne/nbNcZaz9pGNGqIbpPNOp5F0r+tSciMcKcAVuDwK/IPKyzC4DOrbs2twW3voUuKiSTTpt
	i/1jAShC1w9j2L1B+3Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGRl-0000000FgIt-3sP5;
	Sun, 24 May 2026 21:33:21 +0000
Received: from smtpcmd0641.aruba.it ([62.149.156.41])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGRj-0000000Fg75-2R58
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:33:20 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGRiwYwaMdarQRGRiwhW2N; Sun, 24 May 2026 23:33:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779658399; bh=ulyB/um8I4Zuj24Mii0xKRyjllYmblKDe6Wn9LoY1+s=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=kTexPuxbPpJrIO0gQ3WNQcsfjCtYzcMHZjKkhfcz59eyackm9+PZBvtWddjE6WgHl
	 nYglnzrDrE+cJn1vzumUo75Rj+7ugtgU7OG/HmhWI3G0wbagIQ60eCONcMcLeHJh2l
	 nDyO1fsTHNN+5TJ+YXbeVIdOJhVpI1++O+GUftJabysb+irrO39N4xGFQThvS4S08r
	 NujU3ZZFtVQ6YOMIybEV2av2Dv8lYFDS0mtBrqXzZuUEM/PpVg9q9CcYEQOH0J7vE9
	 vU3OUj8dDHuPANX/Tmz8nD7zY2bUDeOLDVIkMFzIrheb3YeIUtCtKJ7o/QJys6RLcF
	 Z1Z11LFHGmx2Q==
Date: Sun, 24 May 2026 23:33:18 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
Message-ID: <20260524233318.7cb14643@fedora>
In-Reply-To: <20260524233228.06b38dba@fedora>
References: <20260524233228.06b38dba@fedora>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfFD8Ux+30GB8HizqaImeWNT7J1PIet+7FLEN2O5IOHMqx8hYA+jF5a+eWBUdrIZLnQ5ybihOmMh5dVr6wiIp0gSNnsnrttfigrqNsk4u/ba9fBVZfcFp
 eCcKDawthC5Xf3rRcPRzlhgJbps4z09x9js4Qu5wK+4hi+v1DbqaFMIiAh5ylv1XYb84t5KWZk5iBlEAFWWzcQkjXX06nhjZiFMYViQjVt2SnUJOYbQgveqh
 06S10gCTS9+WU4XXI+R5NMWZ1xTe+ImYQEUL75gdyrY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_143319_790392_B5D9C65E 
X-CRM114-Status: UNSURE (   9.22  )
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

diff --git a/drivers/net/wireless/broadcom/b43/main.c
b/drivers/net/wireless/broadcom/b43/main.c index b0e6aeb0b..37c5d9928
100644 --- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -2344,6 +2344,10 @@ static int b43_try_request_fw(struct
b43_request_fw_context *ctx) if (phy->type == B43_PHYTYPE_N)
 			filename = "ucode16_mimo";
 		break;
+	case 22:
+		if (phy->type == B43_PHYTYPE_N)
+			filename = "ucode22_mimo";
+		break;
 	case 16 ... 19:
 		if (phy->type == B43_PHYTYPE_N)
 			filename = "ucode16_mimo";
@@ -2405,7 +2409,9 @@ static int b43_try_request_fw(struct
b43_request_fw_context *ctx) else if (rev == 24)
 			filename = "n0initvals24";
 		else if (rev == 23)
-			filename = "n0initvals16"; /* What about
n0initvals22? */
+			filename = "n0initvals16";
+		else if (rev == 22)
+			filename = "n0initvals22";
 		else if (rev >= 16 && rev <= 18)
 			filename = "n0initvals16";
 		else if (rev >= 11 && rev <= 12)
@@ -2465,7 +2471,9 @@ static int b43_try_request_fw(struct
b43_request_fw_context *ctx) else if (rev == 24)
 			filename = "n0bsinitvals24";
 		else if (rev == 23)
-			filename = "n0bsinitvals16"; /* What about
n0bsinitvals22? */
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
