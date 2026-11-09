Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6E7606D826
	for <b43-dev@archiver.kernel.org>; Mon,  9 Nov 2026 01:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rw09RW6n;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=FzHCYLdI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=F1k7lJEhUUy1IeXA6yEHs13YfJ6e3HjT7oia9rzCBU4=; b=rw09RW6nCHQT0LUrr19ke34aX8
	vKvXUANBDxYLQxuKarrYQQj5ld1ILVxUhBsmaAnCCrpu1dCIHiG0MT7LhtwlriV/5aSZ6UetxKRRn
	jSki1zhDcMPfJRatOBbAgoB4nUyB6ShnqyZVLI72Z92W2qf28rS1NsWUW/7uFYrgenzmJZUX/uj9D
	YocLJ6GRO8r1CbJccvkrA0shFBZy6qvTA1tgPrQSw0+LpU63Fvtr8ieHCQdX7oWdfwooeq3QUVC83
	j+9vhEVH4A9g9SIcRhHKtoLwrHgsiIHUYVa/qXU97nIw/VpUNecbIOHMSoGhW+pCsan+q6YnQyKjS
	u4QufcRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE9U-0000000H2nn-25RA;
	Mon, 09 Nov 2026 01:26:28 +0000
Received: from smtpdh16-2.aruba.it ([62.149.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQE9R-0000000H2Y0-1u55
	for b43-dev@lists.infradead.org;
	Mon, 09 Nov 2026 01:26:26 +0000
Received: from localhost ([87.16.49.252])
	by Aruba SMTP with ESMTPSA
	id QE9Qx8UGc6KjvQE9QxqDWB; Mon, 09 Nov 2026 02:26:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1794187584; bh=k7ESnYvV5jT/b19ZiMmV+GLezCbMfSD87jfTKfgvwS0=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=FzHCYLdI0UHRMhNR1GqDSSs6GTFA6kP/SkCNDD3Tied5ci6m0OswZmNZ34qybdLhp
	 kGDAJdDG3q1VCjU0aVC3cndQQyq0Xv49sQ3MJ8Fshs0KQ8g7ul9hyGsl2y2us4Oevx
	 GR1Unfa+MtRkLs7zPbQxnJG0VOY52O8gSS+VlrkWqecuO0k5koT6H6o6AStYjrMdvJ
	 Fek3eEFgXkhha5u8uMFvYxXau3Vp+dkzC+yHmrrd/NdiEmVWYp0QNwIjkkXkvMTilq
	 //BNbvwrp1tQUUrqySg7GdI4Fa9/LMZrbeMKQzBzQf2ADI7WDun3tjOF/BEpDSKCgI
	 p1NEScrfw4dNw==
Date: Mon, 9 Nov 2026 02:26:22 +0100
From: Alessio Ferri <alessio.ferri@mythread.it>
To: =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Michael Buesch
 <m@bues.ch>
Cc: vit9696 <vit9696@protonmail.com>, ville+git@takio.fi, egc112@msn.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, b43-dev@lists.infradead.org
Subject: [PATCH wireless-next v4 10/10] wifi: b43: add the 2.4 GHz
 BCM4352/BCM4360 to the supported bands
Message-ID: <20261109022622.000056e3@mythread.it>
In-Reply-To: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
References: <20261109-bcma-ac-rev1-v4-0-de1262c18b54@mythread.it>
X-Mailer: Claws Mail 3.21.0 (GTK+ 2.24.33; x86_64-w64-mingw32)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfNaJ3TblAzN29JopYLP1XVvl2jdRXeGIaOQzUSdsNeAYy7osSVP4gFYhnoQR1WGWSgWEdTj7UZfatfO0oofzzkHysfODp+66TYppvsFMqyFO/AxSo5tm
 2KMU1YxhYmi2OfvojrAoOnkxoAfiXzuP77mg/kscjg7JrN+2C/ilF5AXND3OgiV0Gkylp/hk771ZXX0BUJlxE2XyscQSVn9f9inbNQ7Xh1ZX812ASnLhtsPK
 A5i+GODttOAaei8rYYmZkiGgfOIpE6CMYO4dmx8TvkZEljpuiXzVlqey8TYHqpYNFezqBoOUbrHAxfBbCUYFTskSY7md7Csgs9pxFCq8LAp2ffiFIDJlzMMG
 vs5wDlMSE1LKAv2kQj72DCfdFoWrShGaoN5UAwmzz4Lgy/9Sqa13UTeO8jwQ60/gOpQZJwolV6odvTCO3IVEec+EUxgxHx8C5p3TzYXDaZuyipkYHuA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_172625_658158_A2213EE7 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


Report the 2.4 GHz BCM4360 (0x43a1) and BCM4352 (0x43b2) as 2.4 GHz
only devices, as their 5 GHz variants are reported as 5 GHz only.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 3825b6ad9..350b47b4b 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -5366,6 +5366,12 @@ static void b43_supported_bands(struct b43_wldev *dev, bool *have_2ghz_phy,
 		*have_2ghz_phy = false;
 		*have_5ghz_phy = true;
 		return;
+	case 0x43a1: /* BCM4360 */
+	case 0x43b2: /* BCM4352 */
+		/* 2.4 GHz only devices */
+		*have_2ghz_phy = true;
+		*have_5ghz_phy = false;
+		return;
 	}
 
 	/* As a fallback, try to guess using PHY type */
-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
