Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B9660A2600
	for <b43-dev@archiver.kernel.org>; Sat, 31 Oct 2026 09:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VTELCB8r;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=JfWrNDPi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=te1X/dBerZODDHsw0jO65iSngUl5o/tIo66uAXMNL3g=; b=VTELCB8rWZAVCCoaEBc7LHWLLI
	BjerqlY7EO1phk018a0X/Wpx+IYach56NKLkPruoegoX8gbsxXi3fA4RoMpveS2qRMbo2QRyhXurC
	jaShUD3jgDuiL+5qz9R7oHsdTUxYd43i13FBhJ8fInScuKwAidG1i8ROhCGRCfRoQD+yS2ddfbr1U
	0JQ8x0q5eFVr/i7XMOGT9QynKVtScCUnnnl1BjnfIY2WjsxramzCd8AgB0FhxoyvECOvUDwTFTSld
	nMzUC9/AzvlY5ycZdAkKB09MV66+/eLdOQ+CKM6K/Ff6hKv/gp6F2TwVWrpdWNRgOW5TVTQ0N+7D6
	HLMzRe/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5Bh-0000000D7YG-0wW4;
	Sat, 31 Oct 2026 09:15:45 +0000
Received: from smtpcmd0986.aruba.it ([62.149.156.86])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5BY-0000000D7Pn-2zJn
	for b43-dev@lists.infradead.org;
	Sat, 31 Oct 2026 09:15:39 +0000
Received: from [127.0.0.1] ([79.43.52.162])
	by Aruba SMTP with ESMTPSA
	id N5BMx1hYL6q8sN5BSxVoVi; Sat, 31 Oct 2026 10:15:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793438130; bh=YvD/5o0kIL8eg+UeJCLpfHxjhPtXaJEyfsbOW6bzSO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=JfWrNDPiS2/l4AtTV4VjPHKPKgRZdhYr6vumFTyIcQgPXjXClul1nVK3Rx/GcO4Ny
	 ylFzOyYSHPoonWhsiqJqXdXfewnLX4A8/AilndYpM9tvjbsTJPp00O5Ta8CKBV7km8
	 p6FAysZSogVd60kE4S5DvlZHIE1EKdSsVTvQmF+a7OT0VUHgoHln4WaxBoD/O2hump
	 zMjjc/ppIm3O12Jc9xRDWM1aMkYW8fEpsAhXR06Cjs5FdmqffEOTeJyI3Q5UyK92fj
	 T983h7ydK24mJH7Xhqt6o+MLbOcC5mahaa0ZN3Cyujnl3vlU5eOg418hPSzLyp63Ep
	 juW+F4sG31wpw==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Sat, 31 Oct 2026 10:15:32 +0100
Subject: [PATCH wireless-next v3 10/10] wifi: b43: add the 2.4 GHz
 BCM4352/BCM4360 to the supported bands
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261031-bcma-ac-rev1-v3-10-1fbe38e8179b@mythread.it>
References: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
In-Reply-To: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>, vit9696 <vit9696@protonmail.com>
X-Mailer: b4 0.15.2
X-CMAE-Envelope: MS4xfPBZNLEo71l/QFE82efaGzWt4iqwpfNEwXROuM2bg59CONH1IJq3AxNNmSxPglw/dZLw03jjAo6BQVJ67qxc0knWYrpo2bXZF0BwhGj3xuE6bWolradr
 0XyUXfvGxcNf9qgaIO8aj8Xg940oIeY3xqpjwGQlsUcvBdLIdHFyHxcjs1TAMVxki4ZcivUnFVOeAbf8VcUVzOaJBDQs+hAaDGgo/13vrPztWASl83/LgZlB
 eFI5HyLFmvlBuApDenByz9pDtmJYuljaqII2+BC0Z8BabjD4+9qQOBLjHZKg/gStorIyM/x8YP+EyAHfunDwz/qEDdOH/obgMxinALeFv5iG92zUow1k/vMG
 IrfAojJ9yZLxDH88G7pWbt52BiTLMm04bpTud3K6AZL9Nqo3U8g61yIQl2ip6dkHMywCVNkG/JoUh6PPbbag01HeyyXcRw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_021536_975678_82E79C9E 
X-CRM114-Status: UNSURE (   6.84  )
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
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	T_SPF_TEMPERROR,USER_AGENT_GIT autolearn=ham autolearn_force=no
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
index 817448e58..2620210bf 100644
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
