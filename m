Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186B3606A330
	for <b43-dev@archiver.kernel.org>; Fri,  6 Nov 2026 21:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=e5vXWAWS;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=Ps8CjvUV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uyyTYwiy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fvl9aq25tXnhk6zLENVBnF9wcvnnrVadE5HgKZt/k3k=; b=e5vXWAWS4DUs6H5G2eJV5JTsdP
	VhWPjJmSB7SGHMmRPICnc+oDJZhdnVFtxQHqpEtagsrtR4ZsodXl29Gj3KzGzyrAidbOrFQV/30ER
	51dlKzDaDTCyhUNjDMMgg2Gnsgks7Qw8voBcD3EDzDHzfKQ69IRvCL1oOoILHUQ/+W6Ei4vauwI8K
	Zg9PDW7B16mrjlKnDh3HNKrIEG8ZXwxOec1eo2CjPPKUnVGK53/ajSndHeiLe7dy7cYSS3+MUXgcu
	3pkKCbIa/+5saz7kGRJLzTtljG3Wryg/6ZFzuoovWHP2z5QSUO6lJR6gYnr6oU3EIXcxiea+2+mWF
	ofPLUTuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHj-0000000Dfaj-3LpB;
	Fri, 06 Nov 2026 21:15:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHh-0000000DfXx-2zMi
	for b43-dev@bombadil.infradead.org;
	Fri, 06 Nov 2026 21:15:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5LdkwID3WreVQx3B/bipks5YOf8mwojL59qXQchJ17I=; b=Ps8CjvUVYqjp+Qy63akE/Bkae1
	Qdj6/Vz/pNf19olMIkP+Y1hR88I6d60t1Rt3YQweLCeIg4MD2NmXGoU04wZc/L+xCTXjeDPUMWY7h
	Tl0UB3MOQA68YVLlqcx2Kfz7yAlRrcglqHikEY4tGPSIn2oAcw6BPYVdhI2Jz4Luuje1to7E+kRMX
	2JQ/7hUvtJ+qGgIbcSYjt5KVhrZ3IgMjEdYCqHcIiPiokJblCjkBoiCodBcyJrShwEsAIhWXe4qpD
	wQxCFciu9VwxUVCQ1lxLxBxn9SWcfpASVMdS6v63DvzUmjMsBwVWZ6r1agB2iPNOwL1pUtBU6QpcZ
	gTp4uv/A==;
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRHe-00000004hui-3tdE
	for b43-dev@lists.infradead.org;
	Fri, 06 Nov 2026 21:15:40 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4a59100fa83so9454555e9.0
        for <b43-dev@lists.infradead.org>; Fri, 06 Nov 2026 13:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793999736; x=1794604536; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5LdkwID3WreVQx3B/bipks5YOf8mwojL59qXQchJ17I=;
        b=uyyTYwiyuPgXH3nGkg07NzYJFaN5FnCl4eppeg6vIX6X+SXzRgLj1YjeVFJCWm9kFE
         Avj6qEePiUCHVBAVq0WBNzSySpaa7Z1ozS2HKytBa0h/uUznZwbRvwNVC6Rqb/Fw8vnZ
         78HOH3VaJ/3/A1MuuxbzjMlLbdCBTKIc8YT4YRIjkKXi0KIoDkKRSM2ObFjoKLNYVDko
         wg0z0xvpZkO1QfukO66pWclyewJTZ/9F0Mfp7FPqgajfhxwg68YqrnZcAvWuednQgSVP
         tOsBXqSeCZSILQ0NbSN6xCP0AybDjaOgnt7LkPDH+9v8rQrDYQU3rJYAKCjx+UiWOeyF
         G/OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793999736; x=1794604536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=5LdkwID3WreVQx3B/bipks5YOf8mwojL59qXQchJ17I=;
        b=j9feX0o8XGO2NU5MRf5inXY4Ht+vDqKRwYWfSzBD7/sC4wtNWIoxeK3c0p2bZT/VpZ
         O5Q77F/HdFqjQk+OWVdMrdz8OIJGotstivFLuEnWxH5f0x3o8f6FfVMTM8mR6/+GKV/w
         XKhKxEVzYWpw08dI2vMylPRclrm+b3FCwAcVX9TdHaOJPF5wuIBsR2VBarSjxkWKYthj
         XIN5wrw7zsR+YchA+giLH7S07RQU4xqHThLAdIgo7E4gu7i1WenkWRP52Ax/gZtNdGxI
         k7KvgtetWv4z6vbAa69EAcGHYFlmDGJTUeIqqnQsBsPlGG71BWxuSptffk1q8KDmJkzF
         BxFg==
X-Forwarded-Encrypted: i=1; AKwUvBwgoIBZcB+gI5q7obwzwsp4QUeF9VkdHkkDPw3tc2yHPLhx5AkbNxnI3VkBYTRyTLLyUYVdAOEy@lists.infradead.org
X-Gm-Message-State: APuU4Z/pXlOMAbVMssQoC6LvFjqlX1Ne2/loMjNNW54zeR/BBdZ8X32/
	4PyomZlWUazwInb4BC9LIoYr4g5s+emB8URyR43bXxdPZ+Sb++d3R4Cv
X-Gm-Gg: AYBFou3jMgbEnpruslvwj2+0K0QLJzYCnVnuKRZFHTBVtPhr1JHLVZyXcAtENJF+Fnd
	YKfsoYw9fHwz2taYe+DseR3mMzNaaJDw32WKV/GFGnzSjnyoFxVCF1kEEUAzsiCINXFr22iGuGh
	k4N6K3SzmreEbGLyYZqiTPTctoscaVXIupvzLseLf8v9l7Vc8VbzQ/9Eqo64PYULEJL1bKKEC/m
	fi5BKvTTAQd0u7t0vfueDTXHVIYlsQvmY779crqjn7KtJzJG90aaw3YdD0y2oO/a1VOA7muKn07
	5BoO/KFaaDglql6jDZnkAGN/jW8/PBFXb+FftG5oZ+k2n4QlGF+10RdYaOkUyFb2p+CK2tuU5cM
	78DqJkZdadNGNnn5OjjuLz8c+0OtbIyop2dvUfuujuCETxen+70oo1YbWJPU4wiw8bmdjikrWC5
	O0xsnv7pdxVrpXX6lpnQKZOtSpQBzMkgnmDEL9NYg/pZLBs89LvQWTRGKwL+QPMdodo/CddTru+
	9Wi+suFp0QKxMLcY3zN8K0uXkJCzc6tESL5syKv3DD+nXZQGd3pEKNCJBK0gmmvJaac/TFnvbO8
	gK9++Y95XU+zVwoZs5hG7kvwY6OlP8O+1UBdTmD3EruxN7tC0yc=
X-Received: by 2002:a05:600c:310f:b0:4a4:7a8d:c736 with SMTP id 5b1f17b1804b1-4b6de78917cmr60814345e9.9.1793999736520;
        Fri, 06 Nov 2026 13:15:36 -0800 (PST)
Received: from luca-HP-ProBook-650-G1.lan ([2001:b07:6454:c33e:970a:d82:3e9:48ec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b7e32ad610sm18070765e9.3.2026.11.06.13.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 13:15:36 -0800 (PST)
From: Luca Casati <luk00casati@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless-next v2 3/5] b43: N-PHY: fix rev3+ RSSI calibration
Date: Fri,  6 Nov 2026 22:15:14 +0100
Message-ID: <20261106211516.273791-4-luk00casati@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261106211516.273791-1-luk00casati@gmail.com>
References: <20261106211516.273791-1-luk00casati@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_211538_821354_16F63E03 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Cc: johannes@sipsolutions.net, Luca Casati <luk00casati@gmail.com>, arend.vanspriel@broadcom.com, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Three bugs in b43_nphy_rev3_rssi_cal():

- On rev7+ the selected VCM was written using the loop counter (8 after
  the search loop) instead of vcm_final; the 3-bit field turned that
  into VCM 0 on every rev7+ PHY.
- The distance used I*I + Q*I instead of I*I + Q*Q (brcmsmac
  wlc_phy_rssi_cal_nphy_rev3()).
- Negative W1/W2 offsets were rounded as -(abs(x + 4) / 8) instead of
  -((abs(x) + 4) / 8).

mmiotraces: https://github.com/Luca00casati/b43patch/blob/755c2d8/traces/excerpts/patch3-rssi-vcm.txt

Found and fixed with the help of an AI coding assistant (Claude Opus 5.5),
by comparing mmiotraces of b43 and wl on the same card.

Signed-off-by: Luca Casati <luk00casati@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_n.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
index 6b0140f05..36c07d891 100644
--- a/drivers/net/wireless/broadcom/b43/phy_n.c
+++ b/drivers/net/wireless/broadcom/b43/phy_n.c
@@ -2167,7 +2167,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 				continue;
 			for (vcm = 0; vcm < 8; vcm++) {
 				currd = results[vcm][i] * results[vcm][i] +
-					results[vcm][i + 1] * results[vcm][i];
+					results[vcm][i + 1] * results[vcm][i + 1];
 				if (currd < mind) {
 					mind = currd;
 					minvcm = vcm;
@@ -2184,7 +2184,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 			b43_radio_maskset(dev,
 					  core ? R2057_NB_MASTER_CORE1 :
 						 R2057_NB_MASTER_CORE0,
-					  ~R2057_VCM_MASK, vcm);
+					  ~R2057_VCM_MASK, vcm_final);
 		else
 			b43_radio_maskset(dev, r | B2056_RX_RSSI_MISC,
 					  0xE3, vcm_final << 2);
@@ -2219,7 +2219,7 @@ static void b43_nphy_rev3_rssi_cal(struct b43_wldev *dev)
 				if (j / 2 == core) {
 					offset[j] = 232 - poll_results[j];
 					if (offset[j] < 0)
-						offset[j] = -(abs(offset[j] + 4) / 8);
+						offset[j] = -((abs(offset[j]) + 4) / 8);
 					else
 						offset[j] = (offset[j] + 4) / 8;
 					b43_nphy_scale_offset_rssi(dev, 0,
-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
