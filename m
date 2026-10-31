Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE47606A32E
	for <b43-dev@archiver.kernel.org>; Sat, 31 Oct 2026 09:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sFxlT33C;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=mythread.it header.i=@mythread.it header.a=rsa-sha256 header.s=a1 header.b=VmEeVKJq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8OtehVsOgZjBGwLOoJZiMd1G3ZR6LNmaHVqfSsJsZnA=; b=sFxlT33CSX5y4PMPKwZCIYiEhC
	lqDKuxBH2Qgcvq6lXnmZfR2pjY85/GjiyVhsehnWpyd0rh2k08tEcMemyjFXIt8aG3+XiMLDI1ib0
	cwrswXiQsQtDAW3f/CPyTSxajaM47696Xth9U2DrsHAyw0GzpgIXIzEl9b6++Cv/bdUB1qsenw2E0
	9M+qwsDtvo48iMkuJHedZzzoEoDrusLpHsFruphW7mitLG8yKmnD6OmbVzuRZjsPxdM2dtOXjBXdW
	m3jSOmG9vL35zX763bItMTpalLs2sXo/gAM/uXkAr0n05WN1A4DoiD7MiqUk2Ecs7/G43NmN6x7RY
	xi5pj5Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5Be-0000000D7To-0QkQ;
	Sat, 31 Oct 2026 09:15:42 +0000
Received: from smtpcmd0986.aruba.it ([62.149.156.86])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN5BV-0000000D7Pj-3Rpj
	for b43-dev@lists.infradead.org;
	Sat, 31 Oct 2026 09:15:37 +0000
Received: from [127.0.0.1] ([79.43.52.162])
	by Aruba SMTP with ESMTPSA
	id N5BMx1hYL6q8sN5BRxVoV4; Sat, 31 Oct 2026 10:15:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1793438129; bh=sPLveYh2c5dZKVXqFU1dIE01tkyk2MNNwMVes4PnLCM=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=VmEeVKJqjxrRZdtUa4Sxp5IEDYBJPir/hBtS2w9dTJez/KM6ZmVZGglQD4yM8fzp7
	 A2Fu7C5X25TQx3YgTLPbvM6oMrREuFzzpil6GYN3ZpnKLnH4Z5IOqFei9BnQwJxsWT
	 R3a8hfxc+jzqfF6nZkNhNvw0ee2VfFTrTE7F4EuOhx8PLRvP6OwqFvqamA22++WSkp
	 me88Oli24rPqaFdivsyGApT5m+6287MgAZ09PmYZFjzxABdsBZ/u5qldWpvL/vsYP/
	 fbSUfORqgjkUFl6jMbYvXQEiMztp6t73goiqmP+/I+sasroXkYn67FRVnGCVFtaRyN
	 dz/EwrpMau4pA==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Sat, 31 Oct 2026 10:15:30 +0100
Subject: [PATCH wireless-next v3 08/10] firmware: bcm47xx_sprom: read
 boardflags3 from NVRAM over the SPROM
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261031-bcma-ac-rev1-v3-8-1fbe38e8179b@mythread.it>
References: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
In-Reply-To: <20261031-bcma-ac-rev1-v3-0-1fbe38e8179b@mythread.it>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, 
 Michael Buesch <m@bues.ch>, vit9696 <vit9696@protonmail.com>
X-Mailer: b4 0.15.2
X-CMAE-Envelope: MS4xfBquXWVKbtw0SEhOKbdbXouZGKYZ2kXTor0QTiJO8zQvI85TLhqBw8PYg59AlNu1D76ywnY2MifXuPuhC8YHJRxx9Gadh1YXjDH/n70ilvRUd/nX5cgp
 LYOORtmUFcp1/HKwJDjHpM4WIggOKfwQ5MKsUM5uxr+9xszmNkdAjcu0zp/5Mw8LwyPyQVn2YO+689yVat7rW3goCXT0VbKBfdJ7c5Q2z7YyTrLJ9Fl6A0Og
 C0wY2Cx87zgQOYQn4QmwkZkBC+dm+tiRm5ZSDGTJa5miqfLDJQGQ1TiJUY1TApotFzYS22MXgKnD7kdhfXR1bi5PyW6E51WFFrRo7GOkNVA/IEWllvTfPWn5
 +dhg94o/yhFLdqpi1Gb3ZQxqMKuBeO33GWQtQnLuV4O4IFqY2lXyJ3zmcQzUSE8MpdG5z+l3KXxZQd0OWS+TflwWSLEEOw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_021534_416475_B9F86666 
X-CRM114-Status: UNSURE (   6.71  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Read boardflags3 along with ledbh4..ledbh15, so that a value in NVRAM
replaces the word of a SPROM read from the device.

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/firmware/broadcom/bcm47xx_sprom.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/broadcom/bcm47xx_sprom.c b/drivers/firmware/broadcom/bcm47xx_sprom.c
index 46a817d71..39d7ac8c7 100644
--- a/drivers/firmware/broadcom/bcm47xx_sprom.c
+++ b/drivers/firmware/broadcom/bcm47xx_sprom.c
@@ -217,6 +217,9 @@ static void bcm47xx_sprom_fill_nvram_only(struct ssb_sprom *sprom,
 		nvram_read_u8(prefix, NULL, name, &sprom->gpio_ext[i], 0xff,
 			      fallback);
 	}
+
+	nvram_read_u32(prefix, NULL, "boardflags3", &sprom->boardflags3, 0,
+		       fallback);
 }
 
 /* This is one-function-only macro, it uses local "sprom" variable! */

-- 
2.34.1


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
