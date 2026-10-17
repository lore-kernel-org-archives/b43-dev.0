Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 761B4CCF2CC
	for <b43-dev@archiver.kernel.org>; Sat, 17 Oct 2026 21:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ff5rJkL5/jtFTsC+aWp9K+L/aomAJaR1OcG2vB4aF0E=; b=scSU760x4eDx1F
	8J4btOa49GTaQIYN1/i3TqglxH2t/vq2oLEhMPfIVCNtSSvy6vmNfw2i/L5DbFLG/zgVKyrb98gx8
	ol2MoOesDpKSTiY0bHDcI6GF44apZapcCo12IyFWPhAAKWA5Mrhbhmw0CWolmR3qBcj1TDmRJgTy8
	i8+rWFFk/n9QIND/3gy0871vJYTX/uSGFQPT7vAA2/Dx04E9x4FQUSKbq3NHYkarZDFK5WLhsdOof
	2TDVNxHf4DY40tOqSuXarhTVi0PM52hdQ3t4A530gVG+s9eUZf0ZuDJsXykHBeoubZKP5eprSaCqa
	khF1o/TaPr+2f7G734Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIBzU-00000005GNP-2NYF;
	Sat, 17 Oct 2026 21:30:56 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIBzR-00000005GMJ-0xp8
	for b43-dev@lists.infradead.org;
	Sat, 17 Oct 2026 21:30:54 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2e934449bb0so8364605ad.0
        for <b43-dev@lists.infradead.org>; Sat, 17 Oct 2026 14:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792272652; x=1792877452; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=FiD6sMCpVV/13PjivmVbngyELUrVKdk1SGBNZwIKdms=;
        b=hOeH5k/L1hCw9tlbfA2lgjKd8y51r0VCbmoHsFIxuXZvRfDyq8P55u0aSasWDzGiMT
         XTVvTnwImkAVaINTfyDLCv2yGieRSfZ8Bn1IvOUm8eILFJwGj2JtITwUEt2A6yJ2AmQq
         ZOPbRniXG5clYseBZZM/x89lxa9KHMNgmYMIyfb8pLUnwaGvIQPyxzZ9uPcr0cYGLbZs
         TNgm5FvxLV2vAffCVyhSVfQRA/ytlg9JFscPcG2nYDt0cIeKlAn+B+bmNixmjea5deA3
         L9o+omU7PwyiMI/sDTMzWKe1HQ+td2yU+p1ITSwnN3dhmz0blKEiLakzAiEumzzpVwq1
         P0eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792272652; x=1792877452;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FiD6sMCpVV/13PjivmVbngyELUrVKdk1SGBNZwIKdms=;
        b=TvBh0IF0HGMfeYp+pYuF91drCvsXjy0n7MW4wv5dccqkSCkKm3mkr192Jh5REw0HBT
         +jWpgemPV7tUWK7qJ2nG4oCBDyzZSJ1JVIyekMzf8+qXThGr75yG7c8454iEb1IL8TYr
         tGq5Rnv+3HUTNfeJXRLnDMqyYb7+4tJwqu3ru2eLlTQ0NFBeU4JFjpcAqWhsA04F8YBU
         7J0H9A6akkB/dtZj2NEwqsXeXIQr2BhP3WIGMNQFCUOpuMgPgzbmS0il+T7btQF9fZ38
         1alUHPyY++V2ZiCo5dm99h06padCtrXoMYLkQWQ1/F1hhsGVA9pdpUWMMX9ACVmG2+mX
         BNJg==
X-Forwarded-Encrypted: i=1; AKwUvBzD6r4TN6JsaBiz2UdocniuyhvqTxvmkRKu4UYYRbmFy8A/RG0cIfyIcIBEpyIT/DShE6qTiTLQ@lists.infradead.org
X-Gm-Message-State: AFq9FYKCthjaBP4FJte/YXhnehAebqewK7Xwof3x68vJ2OB6A4nG/HZ1
	ZCYyOF1uagsN0o91kQSRuAUbmGSdGI5MVcY0frI5ng9onnNpuYX3J3eS
X-Gm-Gg: AYBFou3yNjPfPslh8Rj1DFKPYuvUbnpBmQcCU3iL+uDfmpl3em5pq/RktiS5Qo3V6ko
	rhyvYj7oUMcPRkdIZWFV1HYUQ7EQy1NdtB0ryfdguYKIV+QLrcifJ0ZzOKLKM57PN8dObKPgzxg
	tmv9Cwc6F+TFnOVx+Kc2kxQPwac0q+odiGOAjFWgT3BLiP0OiM78sgvPz8MnDnnNRJPFELABfNe
	McvsZB4BZ6EeBt6+B0Rq/msK47JGzLzsKw+wuOsIyP9PR7Ml1o+4vEYutY+8JZcqz4s7WBnYn84
	AilK/i2VWQjyT1bQxT222D6xy1rThBEp+SR6Z2U+IqZDVMXPIZO6X8eyX7RqIJBdN7Mtb33hjC9
	6ufareuZUjjjSe6TQAf1NZ0QPsgnxAyzotLiIOUv8KVhjPh9MsL90200la9JQOiC5IvJhsCcrOu
	qBFpu7PQ8tnpK3kPeRAXU3nqyLx3xVUHR6T9rV631nusQAX/Cv6xrlc/Vde70htHjNehZh8xxP1
	HQ9KWeFAdThRuZQ95pSY2xGw3UvtRKpw5/5iG6WUgIolWfPRNDDNmDImMHFXuRlpxvymt1W1zbf
	KuactoHVWZK0/tn1Hx4sbTmkASPoJiCl0bwJm6i4dxc/Ntir
X-Received: by 2002:a17:902:d2ca:b0:2dd:c100:3133 with SMTP id d9443c01a7336-2e9a6c208f0mr34763315ad.47.1792272651972;
        Sat, 17 Oct 2026 14:30:51 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e37])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8758efsm22848825ad.55.2026.10.17.14.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 14:30:50 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Kalle Valo <kvalo@kernel.org>,
	b43-dev@lists.infradead.org (open list:B43 WIRELESS DRIVER),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH wireless] wifi: b43: encrypt robust management frames in software
Date: Sat, 17 Oct 2026 14:30:47 -0700
Message-ID: <20261017213047.1160219-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_143053_286346_B30F3793 
X-CRM114-Status: GOOD (  12.11  )
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

b43 sets MFP_CAPABLE, and uploads CCMP keys to the hardware with only
IEEE80211_KEY_FLAG_GENERATE_IV. mac80211 then leaves the encryption of
robust management frames to the hardware as well. The hardware
encrypts every frame as a data frame, but the CCMP nonce and AAD of a
management frame are built differently, so the peer discards these
frames.

Under MFP, this hits the block ack action frames. On a BCM4331 with HT
enabled, associated to an access point that uses PMF, the access point
never gets the ADDBA response of the BCM4331. It waits about 100 ms
for it, sends its frames without aggregation, and asks again with the
next frames it has queued, so pings take 103 ms every few frames. The
TX block ack sessions of the BCM4331 never start either. A capture on
a second card shows the protected ADDBA exchange before every delayed
reply, and a new dialog each time.

Set IEEE80211_KEY_FLAG_SW_MGMT_TX on CCMP keys, so that mac80211
encrypts robust management frames in software. Data frames are still
encrypted in hardware.

With this, the block ack sessions start in both directions, ping times
go from 146 ms average and 918 ms maximum to 2.6 ms and 3.2 ms, and
iperf3 from 11 to 43 Mbit/s down and from 11 to 41 Mbit/s up on a
BCM94311CD.

Fixes: 75d057bda1fb ("b43: Fix connection problem with WPA3")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 3825b6ad9f4f..6d7c81c98e43 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -4266,6 +4266,12 @@ static int b43_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
 		key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
 		if (algorithm == B43_SEC_ALGO_TKIP)
 			key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;
+		/*
+		 * The hardware encrypts every frame as a data frame, which
+		 * is wrong for robust management frames under MFP.
+		 */
+		if (algorithm == B43_SEC_ALGO_AES)
+			key->flags |= IEEE80211_KEY_FLAG_SW_MGMT_TX;
 		break;
 	case DISABLE_KEY: {
 		err = b43_key_clear(dev, key->hw_key_idx);
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
