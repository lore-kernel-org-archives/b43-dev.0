Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 911B4CCF2C9
	for <b43-dev@archiver.kernel.org>; Sun, 18 Oct 2026 20:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fC3AKEndcAmwZHXRGDpYPG+pEDqfORgfo1mHCIN6Nuo=; b=kU2C+QJ7JYAvsA
	QXLFW7EbOMDP3veOj9GCAv/8AR2k+QNr6uCSWPr/osjI3aGrmFgZJDXjwAF/s0F0xveDBMfxgn+9f
	GQjGE+9qT/FjFVACP+u/fW+AL8NyPoUIFptithVrHPFL4hVJgj5Ck+5kJ0jFj9JUcTE/UPLgcKZ5v
	RKuD3lw8k7SUZwg9Pt5+a9PEXLF9aqwNtVbqtrugVTzvhNcPu/5Gh40ciPNEjF5WqXhbzGmrFzXIv
	INfLkAbdvoV7eJjF8tBy7pgFxfYWwsCFi4F8ZLmwtVNP0g7XX8+pYvbW6O38TX2J0TotCu4l2Debe
	glvbkUTmt/knTFtx8RvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIXDH-00000006CF7-0UdA;
	Sun, 18 Oct 2026 20:10:35 +0000
Received: from mail-dy1-x132f.google.com ([2607:f8b0:4864:20::132f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIXDE-00000006CEk-3sjS
	for b43-dev@lists.infradead.org;
	Sun, 18 Oct 2026 20:10:34 +0000
Received: by mail-dy1-x132f.google.com with SMTP id 5a478bee46e88-3645f0f3fcdso351300eec.0
        for <b43-dev@lists.infradead.org>; Sun, 18 Oct 2026 13:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792354232; x=1792959032; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pPc2vAbvehS3Oz5/ZhIFzrQ08Sy8cgXQhioY2HvI4kc=;
        b=PBiErR+AGnwEcFmNUcZ+/sOO1mqCqkg0Fteczk6mhlobcJrCGS/T7TSbjjobTzzswt
         p6E3//CmkvZY89nB4WrEFaRHhCJSp4Opq8BxGJlUDp0VZWGvzlU3Gb5BQM7twJpvQgOh
         gJL3WpGj5095UuSp4B/a+qsEdEb5o+lyTKwiUFneN8YolCxf+XVaSyp1GquEcB3cA9t0
         Prhrb4ywiBYGp7pvR198tyQq06OeRKFqAkNbFszgklPz4A3gkNkbCyPNgL2hKj0/wiFK
         CENY6UnH1gMxfHfpvLWNhMmuJ/vFpk9ZJlZCa0STNtp/YSGxb08GRhcQwLx+Y/DgFBDD
         pxBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792354232; x=1792959032;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pPc2vAbvehS3Oz5/ZhIFzrQ08Sy8cgXQhioY2HvI4kc=;
        b=LmenWbRmaO/uHPMpa+dd8pkhjP2QdBUbb4phPjHu4IfUOQ+0KYzYAcJw71/TIC60Oh
         iyFMGcaY/B8DZDSpBHhKrMjNyBArV8ZTS2z6oDMPhiECO9j4Y8+hhY6rlEZNV79i44Zi
         jf0fluHWAxfEmz/GJ/EVHwHn2R0d8z+yUS8zgkT9vyu2YGibtAT3A7Rlm8+ODt22xF87
         S+a3J0Si/3FBLXO/XFd4wCVtThQJabTaJlJYXvQDQQh/U3GOU74u8gNvomRTz+keks+Q
         2QaGfkoznAA5KaKv0ABnzeMwYVrlTMoMDEP3qqpaoD6ZmDSOKwH8aLnrqOpWVmjDKOb0
         iUmw==
X-Forwarded-Encrypted: i=1; AKwUvBxnKvE8VoIgJFK3/LmhFolzVwgIJQdoJ1HLzjiMegT6LgIBEthD39LBcKy0SiYhdxa8ZRHr6G+o@lists.infradead.org
X-Gm-Message-State: AFq9FYK2NeqC+mzD+tDpZmnFABZvVkxFS+43Asd0nbhuGIuTMsEinUPE
	bUS+sHpL0CJe1mbMcbJz6iW13FxoOWzK03oHY1KFJmOxdVive+ztgesc
X-Gm-Gg: AYBFou03V/yN6ZFPz8xlnu9qfTSlMSiTJShL2fzKBuMjRoIR3wkjIVAeoq8a0qtDeTj
	jvQL/U5zxStTPEl7BphNG8Du1gjGI4iy5bwhQs0TRuc+BaRFm6hRcSkC4G2oQQzRV99jok7pwIZ
	bdkVNMiAbzYKOKn0hawbLxo1ATjxdUA17SgjoNcPcjbWXfnHHBXP1PSdxcIPJVC5/PkTHMXXtGX
	3qvvk4DPrn7Vt9XScfFPb7JlCNtg4B2iOUHbPojKurEbmpbrTHOeSatfrMA9XiqsPMDWkAYExoM
	njb51ZAHzXjADIfhbgbRXc+6JFJBYsDqkVaAF44Z1S7Z9aEABwol5E8otYn3vLfSk74Frp2GmuF
	cS3MU5m7rXm8vj0h8tK08sx478DqSrC+dhNjUt4+Ge3DFeW5cJgyFrln8ItcatfqZ00Pj1hYBZY
	xeTkMYhX7pab12984nWwmE7tmdvCpIrwiax+wmeg9ZK6qnsU7DaqxbmBAcDDcTVksLYzCvxr3qb
	SQsSXA0Ee/JEivLV4Jq+3vLdhgTtkVoDP/EBVCg97HQwdX5gBaURFe0JxoKioLwfNzXbQupQ96Y
	3YPxulD9d0Jw46ncNYkN4jPIO7XbGYTvXAaYsA1m1ML1Q82J
X-Received: by 2002:a05:693c:66c1:20b0:35c:85fa:5a61 with SMTP id 5a478bee46e88-361a264acaemr8556476eec.38.1792354231532;
        Sun, 18 Oct 2026 13:10:31 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e34])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3608308a87csm43715457eec.28.2026.10.18.13.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 13:10:30 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH wireless] wifi: b43: write the HT-PHY TX power estimates as 16-bit entries
Date: Sun, 18 Oct 2026 13:10:29 -0700
Message-ID: <20261018201029.50082-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261018_131032_969547_097A8ECE 
X-CRM114-Status: GOOD (  13.05  )
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
Cc: open list <linux-kernel@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, "open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

b43_phy_ht_tx_power_ctl_setup() computes the 64 power estimates per
core in a u32 array and writes them with b43_httab_write_bulk() as
16-bit entries, which reads the array as u16. Each table then holds
the low half of an estimate in every even entry and its high half, 0,
in every odd one, and only the first 32 estimates are written. The
hardware TX power control maps half of the TSSI readings to a power
of 0 and raises the TX gain towards its maximum.

The wl driver writes the same 64 entries of tables 26-28 as 16-bit
values, which match the ones b43 computes. Use a u16 array.

Fixes: 5949e0406041 ("b43: HT-PHY: setup TX power control")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/net/wireless/broadcom/b43/phy_ht.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/phy_ht.c b/drivers/net/wireless/broadcom/b43/phy_ht.c
index fab8399c64f7..b63e7734db6f 100644
--- a/drivers/net/wireless/broadcom/b43/phy_ht.c
+++ b/drivers/net/wireless/broadcom/b43/phy_ht.c
@@ -714,7 +714,7 @@ static void b43_phy_ht_tx_power_ctl_setup(struct b43_wldev *dev)
 
 	for (c = 0; c < 3; c++) {
 		s32 num, den, pwr;
-		u32 regval[64];
+		u16 regval[64];
 
 		for (i = 0; i < 64; i++) {
 			num = 8 * (16 * b0[c] + b1[c] * i);
-- 
2.56.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
