Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D63BECD5BCC
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHEirm1XWSjRJ5fUNhW7f0qhtjJrbMhKEunInsU/JIE=; b=Jv5Irg0ZCPqBSM
	MIVPgY8laeUZL+W2g+NYAhYRdbE0LLPagsUn3HYorEuG8bygENhL7+e60ylGkPwqFFpuJYHBkgXhH
	TiQv2kbA73AbrxVcH7qGh1nU57gvB7MJeWVZX8Ba/aQbIJUpOvFmrD0tMdN/u+vsw3RjGUISCqLTy
	J/DWK34/AUYg6ib+l9jcEi4Je+EcJBLtRBVQk/d/zGrofReDOozWs5nn8K0eDohoLNbm+8rBFizZU
	plcgjkYf7k01tmLvXmJclVCztNXt0qydo77yWvlCwTyjeIaW6Mx6Hb39+FtyAl5z9QuPKRKhsSQXS
	3syCq4kQiKPUWTaL6pAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGoC-0000000Filz-2iYv;
	Sun, 24 May 2026 21:56:32 +0000
Received: from smtpcmd15176.aruba.it ([62.149.156.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGo8-0000000FiiS-0MAU
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:56:31 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGo5wsRmcwf0DRGo6wFEWx; Sun, 24 May 2026 23:56:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779659786; bh=zuFz+m6zZSoI9BcR9nzfQcGG2R0KeXY9466berBa7jw=;
	h=From:Date:Subject:MIME-Version:Content-Type:To;
	b=YYGEqd2+4h7vvDvNA7O9/1to+0Um9u1P8OT3+BwFWXFWL+3FaejwbOnDbyRJt2FKS
	 3pA31gzoPMOqjav4YainG2wj6Gy3uSRjGgsULsgZR49aKNczPuQ6Pm3JqJra4WrdV0
	 lBdlM7zLUetZx6Lq7kgPyNWp+8hjK1jaBZVuIuZrxTwgHr3MZ16D1j/PAqKiTuvq8g
	 BXwkw4oBxe5wkSLU0MIKbGkHW51a47HMQjOvNnrINwkM1+LLpgrbsizJSrUFwjsnwi
	 YW2+bSse/mrad+QeeyD5ymFAKocI6ujgKFwyB9KE3/3i6UoaAkCYTYbVWcqBzlkHqr
	 Sivk7tDUnFTgg==
From: Alessio Ferri <alessio.ferri@mythread.it>
Date: Sun, 24 May 2026 23:56:24 +0200
Subject: [PATCH v3 7/7] b43: add RF power offset for N-PHY r8 + radio 2057
 r8
MIME-Version: 1.0
Message-Id: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-7-cdad2c8526c6@gmail.com>
References: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
In-Reply-To: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alessio Ferri <alessio.ferri@mythread.it>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfA68BqaCkARgcDeF0kZ2UFl6SNlLG18wR+LQBV8qIB0LCxYN2/+rkKbov4N3NO6Mo6TWpaUKQz03uo0SF2PaeQYV16MzNF3ra8jTW86kg0CPBytWRzkp
 d8c2s4TVdBqBsWRw5aLGzkJ3ZMRxJn3QM6dOF/m1Z5un74VmOQoq5Fy0PtdOwp2ANnPjutzDk0UQCpQ9R73Z457QW7EuxL0C9LiMnROBOBTI0NLDNzutxWX7
 ejqX4QxUgegJG5GxuGyf2tfV2PUtuuNnd/IKPSECMhigZ/KnIfgFE/CruilI8wRTeJ4JjtNNb0IrIpHMupqlknExVmWS8fMZ9EPIYzusd3E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_145628_335538_544911DA 
X-CRM114-Status: GOOD (  11.37  )
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

Add the 2.4 GHz RF power offset table for N-PHY rev 8 paired with
radio 2057 rev 8 and wire it to the existing dispatcher.

b43_ntab_get_rf_pwr_offset_table() currently dispatches on phy->rev
== 17 (radio_rev 14) and phy->rev == 16 (radio_rev 9) for 2.4 GHz.
phy->rev == 8 falls through and the function logs:

    b43-phyX ERROR: No 2GHz RF power table available for this device

Add a phy->rev == 8 / radio_rev == 8 case returning the new table.

The values are sourced from the proprietary Broadcom wl driver's
nphy_papd_padgain_dlt_2g_2057rev5 array. Reusing the rev 5 values
is structurally appropriate: the IPA TX gain table added by the
preceding patch in this series shares the low 24 bits of every
entry with rev 5 - same gain step amplitudes, only the PAD-gain
selector byte differs. b43's pad_gain extraction in
b43_nphy_tx_pwr_ctl_init() reads bits 19..23 of the gain entry,
which sit in the shared low-24-bit range; the same gain index
therefore maps to the same physical PAD gain code on both
revisions and warrants the same per-index dB offset.

Note that b43_nphy_tx_gain_table_upload() currently has a "TODO:
Enable this once we have gains configured" early-return for
phy->rev >= 7. With that early-return in place, this table is
fetched (silencing the b43err that would otherwise abort PHY
init) but its values are not yet written to MMIO. Resolving the
TODO is a future, separate task.

Assisted-by: Claude:claude-4.7-opus
Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/tables_nphy.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/wireless/broadcom/b43/tables_nphy.c b/drivers/net/wireless/broadcom/b43/tables_nphy.c
index 84e8d718d..ecd660b9c 100644
--- a/drivers/net/wireless/broadcom/b43/tables_nphy.c
+++ b/drivers/net/wireless/broadcom/b43/tables_nphy.c
@@ -2923,6 +2923,21 @@ static const s16 b43_ntab_rf_pwr_offset_2057_rev9_5g[] = {
 	0,
 };
 
+/* Sourced from the rev 5 sibling: the rev 8 IPA TX gain table
+ * shares the low 24 bits of every entry with rev 5 (only the
+ * PAD-gain selector byte differs), so the same gain index maps to
+ * the same physical PAD gain code on both revisions.
+ */
+static const s16 b43_ntab_rf_pwr_offset_2057_rev8_2g[] = {
+	-109, -109, -82, -68, -58,
+	-50,  -44, -39, -35, -31,
+	-28,  -26, -23, -21, -19,
+	-17,  -16, -14, -13, -11,
+	-10,   -9,  -8,  -7,  -5,
+	 -5,   -4,  -3,  -2,  -1,
+	 -1,    0,
+};
+
 /* Extracted from MMIO dump of 6.30.223.248
  * Entries: 0, 26, 28, 29, 30, 31 were guessed
  */
@@ -3782,6 +3797,10 @@ const s16 *b43_ntab_get_rf_pwr_offset_table(struct b43_wldev *dev)
 			if (phy->radio_rev == 9)
 				return b43_ntab_rf_pwr_offset_2057_rev9_2g;
 			break;
+		case 8:
+			if (phy->radio_rev == 8)
+				return b43_ntab_rf_pwr_offset_2057_rev8_2g;
+			break;
 		}
 
 		b43err(dev->wl,

-- 
2.54.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
