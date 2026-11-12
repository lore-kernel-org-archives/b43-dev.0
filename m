Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957E7606A8AE
	for <b43-dev@archiver.kernel.org>; Thu, 12 Nov 2026 17:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZBF4hxXd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ID7STUGo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2h4SGCJQ50Hri/U7+8p1o+m28nuSPzR+UZSL/C4MUyI=; b=ZBF4hxXdfYq+ZOF2k0RkZREl33
	Zjd44nlwUxg9a+78XWLR2hkDFKpscAI2LgLX9HnmB7EvB7EIqBX+o94YB+A9qNIqMR39l1L8d4Q8N
	oaBnctORmLDn1MbTQhK3jm3SWXNrickRkc7vTi7G7BkKkbHmQwvU7I89J45Sx8hl2PpyIoFbjnjpi
	GGRmltBV8rjAEFRLRJ/JxNaF5r9F+o4F4MaicV+QdHuR108i6wiTAiMPiIa4ZjOu9Ugpqj57chnHv
	tzH/uiIytyMI3KZmjM+Ubx5XPMFYFGdOgDNxNt2ywwD7doLs0gB8m3GpqA8jMe0ODqSHfnPIQsWa1
	0JeTUMbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2a-0000000AoZi-4C31;
	Thu, 12 Nov 2026 17:56:53 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZ2V-0000000AoT4-2G2j
	for b43-dev@lists.infradead.org;
	Thu, 12 Nov 2026 17:56:50 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-4918c2d727fso22858f8f.3
        for <b43-dev@lists.infradead.org>; Thu, 12 Nov 2026 09:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794506205; x=1795111005; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nNm8Cx2ZfHbw8ESTnrWh1uOe82GeZsKFiVEtoCEnJGE=;
        b=ID7STUGoYndDws0qC9SaC3e0/bL/4E9Gc/1hcFHvk+8eS2fanN/PYhjHSnv4/OsRH0
         ppjNd98EyJxERgugJdy4vSPfjEwvoAZz6GtQFZowgkfA2yRGmp5IzkBlsTbKlGUf7Oj+
         LJqeCPpV+bAucK/HxZebiBLBNDisccYs9dmxAlf6lAulKylfmn1ejwLrww8+NjgyCVMm
         4FZlOiMHEpB8P36DAgwcKqxld0u5oYgpu4zwHCjjvokLuH7Yn/mU6i006r/cKdxbWUGx
         toF6LwQdgSnNy4+1vMjLUwa/toitchy6juON0Cad52osNlr4CWJ+BNHMfnJXvy5SabBJ
         f9Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794506205; x=1795111005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=nNm8Cx2ZfHbw8ESTnrWh1uOe82GeZsKFiVEtoCEnJGE=;
        b=FFu1CHzd4+yjf+0nLPPe5XkekvFq3ZYUAIf88KuTgtT5Nq9Rjzxeeh8dOTWKfHe+Bv
         Yi9C1KCxCL9Y3i+5wKcluBQXcEwij9VuRej67buQQnmKfEVFniZptVxItTqFzV2VNaOU
         sJKv1N/iqN1/NmHwepcKrxmERi8PSJ+eRUIFwgyX+c4iwAJXHwVCHYdbuX+zztVjJGkT
         wJlnn3L9rGDpelgA3Xg4pqDvd9q2RQ8erl5K1UyfcsnPxdAy3irLMUE0n8wumwb71WEU
         2ZyXdpxzaPjFZiGKxXEeVjMghY0sroysXdaOSWBxk5FAbtyzcxdkpdeuboda8QWxr+vD
         hRZA==
X-Forwarded-Encrypted: i=1; AL+hErHe57MIPR7lZq/ubbVWxpl1y3dEMcjQWWJZ5T983/SQsG8Ffx43scW1b+uO3rcfhFX117kViS3M@lists.infradead.org
X-Gm-Message-State: APuU4Z8QX58Y/qg04AaFRdn1zPnHulc2hxZ1Zb6AeALZkAIDzgpYiheZ
	2QJQegEG6s3D/uJ/fp2xRnBFY39tW0WKsVmmoKyWmOGAzttWOKixU9kw
X-Gm-Gg: AYBFou34nKf7VFUFNABlSeFdajGGd3gdW1zp1lVoBjSYhPjP5YVDbdFM804odNRs7mG
	Y0TfhhJfmWmcu+QXSeKfCxfroeCr3Z54mSvD09lYmADnxv/KYucWy/baNTKp/HGHrWB+Nn9avWT
	cU1+ymSMOUnn4UiOXUwrBI2NfedEggzg5k/FEAb5tAMELI7BVEd/IC3WsTnNQU11llLjbzDcBNU
	hW8iD3elOac6Cg8LSTq8UyQA4jPumPjXUIisHA4MiaSY7RuwVlOAo6bkzmZPS1SAy9GGuoPOsDn
	PweSdQoY4c6Vv4VVYnyxJ5gGiLFDtfxv+fGxg3LwuMaBXthi5StTD1Dmy/ZCrMSObYqHKIz5Q9S
	/mkhfXBz17pRt43dDCyiEc6Fq3Uf7VPPi1lfAKVcybw7I1uFD5JymVhdVK6+bi8UpDTgD4CJi6l
	XbmecSs2zxp04ZW2EB753+0MhYBtgZpBO0ORTDE6hgbueh/l9PK/zIhwXBdUpLXRkGlajQZAIJ9
	W9IVWZm4sxbB3X4F0FHiPI/QbAUU2Gi/iI/ePwgUD+e0W46iKOqy8/s+1XxWlQRrzF89PPP+xK6
	hLpG1xLe38pYE87qVdNC16ptAojA6slBVwaRtypNSjeMMOZsSzxn2yNHpLmKHh6P/6KmYTLY/D/
	OdY63pbooWXc8H8JsSIG8GqXPiWf0fQJt+gqRkGWR+QbdaW38xMyxoZVA3VLEqyqkRRd5Qi9ZF9
	4EIJxy+HcR6bb6n3QaJ6EA5qTf1hyMsX9RA9ib0DpaJCaW+SIPNIyLj5fej+p8eXM=
X-Received: by 2002:a05:6000:2288:b0:49c:6a45:ca33 with SMTP id ffacd0b85a97d-49c70ed923amr259032f8f.9.1794506205465;
        Thu, 12 Nov 2026 09:56:45 -0800 (PST)
Received: from zitrone.tail45b538.ts.net ([2a02:810d:a1:6000:900:be5c:7a9c:c176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c5f1c193fsm547430f8f.13.2026.11.12.09.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 09:56:44 -0800 (PST)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH RFC wireless-next 3/4] wifi: b43: RX header handling for the AC microcode
Date: Thu, 12 Nov 2026 18:56:39 +0100
Message-ID: <20261112175640.40603-4-gonsolo@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261112175640.40603-1-gonsolo@gmail.com>
References: <20261112175640.40603-1-gonsolo@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_095648_443151_10E69C85 
X-CRM114-Status: GOOD (  19.97  )
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

The RX header of the AC microcode keeps the MAC status at 0x10, the TSF at
0x14, an 11ac chanspec at 0x16 and the power of the two antennas at 0x09
and 0x0a. Decode the channel (including the 80 MHz block with the position
of the primary channel), the signal, and the HT-SIG and VHT-SIG-A bytes
that precede the frame for the rate, bandwidth, guard interval, coding
and stream count.

The microcode sets the decryption error bit on frames it never decrypted,
because no hardware key is programmed (the 4-way handshake message 3 and
DHCP replies carry it). Pass such frames up; mac80211's own decryption
still rejects anything corrupt.

Only microcode revision 832 has been tested.
Signed-off-by: Andreas Wendleder <gonsolo@gmail.com>
---
 drivers/net/wireless/broadcom/b43/xmit.c | 91 ++++++++++++++++++++++--
 1 file changed, 85 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/xmit.c b/drivers/net/wireless/broadcom/b43/xmit.c
index cf9e7a5..dee6cc6 100644
--- a/drivers/net/wireless/broadcom/b43/xmit.c
+++ b/drivers/net/wireless/broadcom/b43/xmit.c
@@ -855,6 +855,7 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 	u32 macstat;
 	u16 chanid;
 	int padding, rate_idx;
+	s8 ac_signal = 0;
 
 	memset(&status, 0, sizeof(status));
 
@@ -874,6 +875,31 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 		chanstat = le16_to_cpu(rxhdr->format_351.channel);
 		break;
 	}
+	if (b43_ucode_is_ac(dev)) {
+		/* AC ucode (rev 40+) header: RxStatus1 @0x10, TSF @0x14,
+		 * 11ac-style chanspec @0x16, per-antenna power @0x09/0x0a.
+		 */
+		const u8 *h = _rxhdr;
+		u16 cs = get_unaligned_le16(h + 0x16);
+		s8 p0 = h[0x09], p1 = h[0x0a];
+
+		macstat = get_unaligned_le16(h + 0x10);
+		mactime = get_unaligned_le16(h + 0x14);
+		/* 80 MHz chanspec: centre channel and the primary's position */
+		if ((cs & 0x3800) == 0x2000)
+			cs = (cs & 0xff00) |
+			     ((cs & 0xff) - 6 + 4 * ((cs >> 8) & 0x7));
+		chanstat = ((cs & 0xff) << B43_RX_CHAN_ID_SHIFT) |
+			   B43_PHYTYPE_N;
+		if ((cs & 0xc000) == 0xc000)
+			chanstat |= B43_RX_CHAN_5GHZ;
+		if (p0 == -128)
+			ac_signal = p1;
+		else if (p1 == -128)
+			ac_signal = p0;
+		else
+			ac_signal = max(p0, p1);
+	}
 
 	if (unlikely(macstat & B43_RX_MAC_FCSERR)) {
 		dev->wl->ieee_stats.dot11FCSErrorCount++;
@@ -884,10 +910,19 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 	if (phystat0 & B43_RX_PHYST0_SHORTPRMBL)
 		status.enc_flags |= RX_ENC_FLAG_SHORTPRE;
 	if (macstat & B43_RX_MAC_DECERR) {
-		/* Decryption with the given key failed.
-		 * Drop the packet. We also won't be able to decrypt it with
-		 * the key in software. */
-		goto drop;
+		/* The AC ucode sets this bit on frames it never decrypted: this
+		 * port programs no hardware keys on AC, and it shows up even on
+		 * unprotected EAPOL frames. Dropping here killed
+		 * 4-way handshake message 3 and DHCP replies; mac80211's own
+		 * software decryption still rejects anything really corrupt.
+		 */
+		if (b43_ucode_is_ac(dev)) {
+			b43dbg(dev->wl,
+			       "RX: DECERR passed up (len %u, macstat %04x)\n",
+			       skb->len, macstat);
+		} else {
+			goto drop;
+		}
 	}
 
 	/* Skip PLCP and padding */
@@ -931,7 +966,11 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 	}
 
 	/* Link quality statistics */
-	switch (chanstat & B43_RX_CHAN_PHYTYPE) {
+	switch (b43_ucode_is_ac(dev) ? B43_PHYTYPE_AC :
+		(chanstat & B43_RX_CHAN_PHYTYPE)) {
+	case B43_PHYTYPE_AC:
+		status.signal = ac_signal;
+		break;
 	case B43_PHYTYPE_HT:
 		/* TODO: is max the right choice? */
 		status.signal = max_t(__s8,
@@ -955,7 +994,47 @@ void b43_rx(struct b43_wldev *dev, struct sk_buff *skb, const void *_rxhdr)
 		break;
 	}
 
-	if (phystat0 & B43_RX_PHYST0_OFDM)
+	if (b43_ucode_is_ac(dev) &&
+	    (phystat0 & B43_RX_PHYST0_FTYPE) == B43_RX_PHYST0_PRE_N) {
+		/* HT frame: the six bytes before the frame are HT-SIG: MCS and
+		 * 40 MHz bit in byte 0, coding/STBC/short GI in byte 3.
+		 */
+		const u8 *sig = plcp->raw;
+
+		status.encoding = RX_ENC_HT;
+		if (sig[0] & 0x80)
+			status.bw = RATE_INFO_BW_40;
+		if (sig[3] & 0x80)
+			status.enc_flags |= RX_ENC_FLAG_SHORT_GI;
+		if (sig[3] & 0x40)
+			status.enc_flags |= RX_ENC_FLAG_LDPC;
+		status.enc_flags |= ((sig[3] >> 4) & 0x3)
+				    << RX_ENC_FLAG_STBC_SHIFT;
+		rate_idx = (sig[0] & 0x7f) <= 15 ? sig[0] & 0x7f : -1;
+	} else if (b43_ucode_is_ac(dev) &&
+		   (phystat0 & B43_RX_PHYST0_FTYPE) == B43_RX_PHYST0_STD_N) {
+		/* VHT: the six bytes are VHT-SIG-A1/A2 */
+		const u8 *p = plcp->raw;
+		u32 a1 = p[0] | (p[1] << 8) | (p[2] << 16);
+		u32 a2 = p[3] | (p[4] << 8) | (p[5] << 16);
+		u8 nsts = ((a1 >> 10) & 0x7) + 1;
+
+		status.encoding = RX_ENC_VHT;
+		if ((a1 & 0x3) == 1)
+			status.bw = RATE_INFO_BW_40;
+		else if ((a1 & 0x3) == 2)
+			status.bw = RATE_INFO_BW_80;
+		if (a1 & 0x8) {
+			status.enc_flags |= 1 << RX_ENC_FLAG_STBC_SHIFT;
+			nsts /= 2;
+		}
+		status.nss = max_t(u8, nsts, 1);
+		if (a2 & 0x1)
+			status.enc_flags |= RX_ENC_FLAG_SHORT_GI;
+		if (a2 & 0x4)
+			status.enc_flags |= RX_ENC_FLAG_LDPC;
+		rate_idx = ((a2 >> 4) & 0xf) <= 9 ? (a2 >> 4) & 0xf : -1;
+	} else if (phystat0 & B43_RX_PHYST0_OFDM)
 		rate_idx = b43_plcp_get_bitrate_idx_ofdm(plcp,
 					!!(chanstat & B43_RX_CHAN_5GHZ));
 	else

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
