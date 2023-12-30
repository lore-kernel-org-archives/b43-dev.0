Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E9D4C47077
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 04:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KoFhkV/aSHBlZqhAtmoaTYpGaUSd1e/Xc/fTX19dL6A=; b=LAl4JrYXeM1QTI
	hFBZg6jFSYKukV9bOybuEwJ3H9Hv2oU5WgZhmTVZXrq/o0m8Qcmd/lxxcNxlDeoP+pEoGPj06ioHq
	bJqxDVIhLaRMdmgySH5OsrLUIpbN5K1FmGV5Rv0/QwoZRpstiB4KyYVtp98EKpB0fs/9zNICdXq2F
	jzD9h7giR1tKN4M5toHB+6ZbDcAeUfCXuPAZ5LhTgoTJxrxIRP/BcsIAeQyzSIGLVEpoMb9uzlpHX
	3BZqRh6rml1FPZNX3cefLbv5OfTk7fHhm15E/A7f6qvzlujLS70VBvgUo2KeTSJPGlrN+stZvSSIO
	8WeWAOMvAF2lPfrtwzXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJRKD-002A7B-0C;
	Sat, 30 Dec 2023 04:51:53 +0000
Received: from mail-40134.protonmail.ch ([185.70.40.134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJRK6-002A6S-2h
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 04:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703911895; x=1704171095;
	bh=Bb2hc/iRnBAHpF2TK4kdPjCrMxFKX5qQZIMIQTkGeCc=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=E8QScfN83edDrT6Vr12+bVBQzHTeJz5l9FdscK4pWbEk7slPLj12cXtVuuVtgnrlm
	 tcrLdx/Svz7f/zqzStOCuEAEuvE0J75DVnaT42rEgjQN1Ip/iFWyM0ExSmeEF5nDwy
	 fHgrBRQtnFa5UssysBN3jB32rL4iy9Hd4HFHd22AoPUtaLdsjoJGieEmGe/Gbz/f28
	 DOzlrnGSOTS1Lkyxc3lm/zDXKnwzk4WtyAwL/G5xmUO+Rbe3ACxAe9xIzoQ5iWF6Z+
	 z4+M87rWxOKt3tgOlzGpsXG0DKhrI0DYf8YjJ6rWxioDmPcmkEv52zPzSTZvwBkN9j
	 rMAwc/AUA71JA==
Date: Sat, 30 Dec 2023 04:51:23 +0000
To: Kalle Valo <kvalo@kernel.org>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org, Rahul Rameshbabu <sergeantsagara@protonmail.com>
Subject: [PATCH wireless 0/5] wifi: b43: Various QoS-related fixes
Message-ID: <20231230045105.91351-1-sergeantsagara@protonmail.com>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_205147_064332_F256042B 
X-CRM114-Status: UNSURE (   6.74  )
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

Recently acquired a MacBookPro8,3, which has a bcm4331 card. Noticed some issues
with the wireless driver, specifically related to QoS, when using this device.

Out of the box, applications like ssh appear to not work with the device when
QoS is enabled. This series attempts to improve the out-of-box experience while
cleaning up some fundamental issues in the driver when QoS is disabled, either
by the related kernel parameter or the newly introduced QoS disablement
function.

Running FW 666.2 during testing.

Log:
    [  +0.169771] b43-phy7: Loading firmware version 666.2 (2011-02-23 01:15:07)
    [  +0.249032] b43-phy7: Loading firmware version 666.2 (2011-02-23 01:15:07)
    [  +1.394130] b43-phy7: Loading firmware version 666.2 (2011-02-23 01:15:07)

Rahul Rameshbabu (5):
  wifi: b43: Correct OpenFW QoS capability warning conditional
  wifi: b43: Stop/wake correct queue in DMA Tx path when QoS is disabled
  wifi: b43: Stop/wake correct queue in PIO Tx path when QoS is disabled
  wifi: b43: Stop correct queue in DMA worker when QoS is disabled
  wifi: b43: Support advertising lack of QoS capability

 drivers/net/wireless/broadcom/b43/dma.c  | 10 ++++++--
 drivers/net/wireless/broadcom/b43/main.c | 32 +++++++++++++++++++-----
 drivers/net/wireless/broadcom/b43/pio.c  | 17 ++++++++++---
 3 files changed, 48 insertions(+), 11 deletions(-)

-- 
2.42.0



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
