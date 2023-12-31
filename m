Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F43CC3DA6E
	for <b43-dev@archiver.kernel.org>; Sun, 31 Dec 2023 05:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+8UpZZmHnnI93bRfSpgXpa+4iYvdcyb3ZNY/Ws19N/o=; b=pNnbpZ6q09c3Vs
	g+N4mr7lLHIhjegqH5qckVQD3AwC8saoc9b5qUQeCtZ7vhhdZjcq9DUJYpKqAMy+h1irqFpm/fTBq
	BicL4sShDOQggKdpHHxKAqM4dtTYBrtuJ58MH1uWHgFkxf1UCQSJp4Q9miB8mfsARYNffTcT/l7aG
	awF/Gr6f5j3PRAGqHQBP9q3IZE7Sg8e2kMyzhH23SVAk+CiKAXXQArtzfOPdPqK+UszoWUrTu2y7w
	mrL1qL5wXy+D5TXLXzpPdEFwdv2pHx7JFsEJq/Peby/3sPY9lcEsiesQuFEmHUYwtQnyxiGFHH39/
	qeZOVJcgv7C14I/vmnPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnzQ-003yHA-20;
	Sun, 31 Dec 2023 05:03:56 +0000
Received: from mail-4316.protonmail.ch ([185.70.43.16])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJnzK-003yGW-0q
	for b43-dev@lists.infradead.org;
	Sun, 31 Dec 2023 05:03:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703999023; x=1704258223;
	bh=QrNUfX8Rb1OX00fG4mbQo/eO3Y707VvS2aAOdZZ/lzQ=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=yMOHqcuLGdg9TI29jGJ3y5pPcVC0kbKrn6FmEnZBmpzCoRVtwNbxkRP0iVn/U/l+U
	 tyIVwr8r+yW1Csy2VOEfQktIfwNFDRs9rHxFCjpS37wEPSMiP6QJk/szkRPAvhCoUf
	 Mv8D1LNUgVnrSZqO36lRNQgGcuY7kVPOggl5SIuBrYivULR7aa1MunmfWueJq/3jBe
	 EVZ+sGA76TxJS24XjFOh7RgUbdm03OypkalkxGDqNWW5YCkBJuR36qX69dnhlDHh/9
	 l2vlxIKTyO45Ku+5lY9HfxT1dMTyu6u3eU7PGBKsrDs2+LltlIBk00RSHC5fc7gDcG
	 pPZ5snfCb6jRQ==
Date: Sun, 31 Dec 2023 05:03:27 +0000
To: Kalle Valo <kvalo@kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>, =?utf-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, Julian Calaby <julian.calaby@gmail.com>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Rahul Rameshbabu <sergeantsagara@protonmail.com>
Subject: [PATCH wireless v2 0/4] wifi: b43: Various QoS-related fixes
Message-ID: <20231231050300.122806-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_210350_475742_176E3D0A 
X-CRM114-Status: UNSURE (   8.91  )
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

Recently acquired a MacBookPro8,3 (early 2011), which has a bcm4331 card.
Noticed some issues with the wireless driver, specifically related to QoS, when
using this device.

Out of the box, applications like ssh appear to not work with the device when
QoS is enabled. This series attempts to improve the out-of-box experience while
cleaning up some fundamental issues in the driver when QoS is disabled, either
by the related kernel parameter or the newly introduced QoS disablement
function.

Running FW 784.2 during testing.

Log:
    [   11.661972] b43-phy0: Loading firmware version 784.2 (2012-08-15 21:35:19)
    [   11.919942] b43-phy0: Loading firmware version 784.2 (2012-08-15 21:35:19)
    [   13.717460] [drm] amdgpu kernel modesetting enabled.
    [   13.717705] amdgpu: Virtual CRAT table created for CPU
    [   13.717719] amdgpu: Topology: Add CPU node
    [   13.776896] NET: Registered PF_PACKET protocol family
    [   15.234058] b43-phy0: Loading firmware version 784.2 (2012-08-15 21:35:19)
    [   15.319388] wlp3s0b1: authenticate with 1c:87:2c:6f:f4:e0
    [   15.333239] wlp3s0b1: send auth to 1c:87:2c:6f:f4:e0 (try 1/3)
    [   15.341672] wlp3s0b1: authenticated
    [   15.341921] wlp3s0b1: associate with 1c:87:2c:6f:f4:e0 (try 1/3)
    [   15.346912] wlp3s0b1: RX AssocResp from 1c:87:2c:6f:f4:e0 (capab=0x411 status=0 aid=3)
    [   15.347255] wlp3s0b1: associated

Link: https://lore.kernel.org/linux-wireless/20231230045105.91351-1-sergeantsagara@protonmail.com/

Rahul Rameshbabu (4):
  wifi: b43: Stop/wake correct queue in DMA Tx path when QoS is disabled
  wifi: b43: Stop/wake correct queue in PIO Tx path when QoS is disabled
  wifi: b43: Stop correct queue in DMA worker when QoS is disabled
  wifi: b43: Disable QoS for bcm4331

 drivers/net/wireless/broadcom/b43/b43.h  | 16 ++++++++++++++++
 drivers/net/wireless/broadcom/b43/dma.c  |  4 ++--
 drivers/net/wireless/broadcom/b43/main.c | 16 +++++++++-------
 drivers/net/wireless/broadcom/b43/pio.c  |  6 +++---
 4 files changed, 30 insertions(+), 12 deletions(-)

-- 
2.42.0



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
