Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A9ECD4F3C
	for <b43-dev@archiver.kernel.org>; Mon, 18 May 2026 01:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnrd4SshhG6nWnG1EUcAAG9HJyuZKZDpBzVi81L/dDg=; b=JmWDp62hhYJOzc
	Mad4wmVIvv1rtlpkoiSRd3nVpgaPSkt8ZMobs7+r0/NKvSCRcDDrCgsZO/ezfBrG/uMROlZJOlGQZ
	/VPIF9sc41IA4r1XoQ0NZo3J+v5SXdwLfJ56K9+dDKPyWoKEH9dd/WtKHkulZ4hz3Yt0tX4pm/v5U
	/SDv+/Jw+1iizFIeD22nN8/s0XdBQw6kavy75xSa9qkFUnUV83O+4PsYaD+TvVSHBf+jrMiJqcZqy
	/NSXfElBT0twsHIpyC/vboXWKmZt78rE7ipPLQg/eoxDNlEmXGvWf1lXwP4Kk5bpJuChfwo3EAZBb
	/vGV2txJ6dwuqOo9envw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOn8b-0000000DrmK-2Z6W;
	Mon, 18 May 2026 01:51:21 +0000
Received: from smtpdh20-1.aruba.it ([62.149.155.164])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOn8Z-0000000DrYS-3Bet
	for b43-dev@lists.infradead.org;
	Mon, 18 May 2026 01:51:21 +0000
Received: from [192.168.1.83] ([79.20.159.46])
	by Aruba SMTP with ESMTPSA
	id On8ZwqsNYEZ9tOn8Zwfqmp; Mon, 18 May 2026 03:51:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779069079; bh=Mdt8NKJaOHbPoFDFNwE0LYxPnB/LN/w2c+7vx0TXwuU=;
	h=Date:MIME-Version:Subject:From:To:Content-Type;
	b=TcRybzlL4unEkmn3HQ+l0zrFsVip8JNk1J4o4XFq0reCuxQ/6WZQeGw41OQ2cO7Zu
	 h6BraMxsTB99XL0mN1nDVHEEJ+iJA4+WuLe/w/mm21IsEyw7/8VmBOWAvlSXF4UtGO
	 DO75X0xpPZ/KyNZIKOP9FjAyxfqSQE+nWi8evAhSCUyFyNT65poIcoTch9z77JC7Qu
	 ZVdYRhAsd/KW39yLFAVgHnXqQWdieJrtvNl0SWkze0pnPI+2a0aEmFk565iTRdYZJp
	 CmMXYZXzMNBbvoipX9ZD1SD03w3jtiQXDMSS4kP286ek7/KLf5pXlOBRa2gxfXNWEb
	 gy4MqV1OWbPBQ==
Message-ID: <3c2cba9c-8dc4-47a1-adb7-a7fd38d295e7@mythread.it>
Date: Mon, 18 May 2026 03:51:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH 2/6] b43: route d11 corerev 22 to 24-bit indirect radio access
Content-Language: it
From: Alessio Ferri <alessio.ferri@mythread.it>
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org, kvalo@kernel.org,
 linux-kernel@vger.kernel.org
References: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
In-Reply-To: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
X-CMAE-Envelope: MS4xfP+XANS/QP1ra5UIaxa6kPPRnUIq9DQSmK0PVDFsnIp8aJv/n3TC3QQFtM3ejpds/GSXSX6U1rbgd+lM8Q8bTEtOCsJjskiiDA1vBixmmTGOZLGvSOH3
 9FVFmJog/ceo8GT0NIHZgHSdrQYYfMuNc7SFHstO4GiZuG+jYdujdCwHixagKeQhkd98TwNyxNvBx719AnI6D5jYwd8DZrIcPpSIbRPMt3UMYHyUwz7mnJuS
 ESTWRod6bDGHKbZ6zl19IAT/I0cyMQaWSaAsEJM95tUa4U3KD/eJbjTXbxBRSR3q11cge/6iQsHUSERicnAO8w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_185119_959091_4D0D8D32 
X-CRM114-Status: GOOD (  24.55  )
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

D11 core revision 22 is an outlier in the corerev-to-radio-access
mapping. b43_phy_versioning() reads radio identifiers via two
different paths:

  - core_rev >= 24: 24-bit indirect access (B43_MMIO_RADIO24_CONTROL
    + B43_MMIO_RADIO24_DATA);
  - otherwise: legacy 4-wire access (B43_MMIO_RADIO_CONTROL +
    B43_MMIO_RADIO_DATA_LOW/HIGH).

Corerev 22 backports the older 802.11 core but pairs it with a radio
in the 2057 family, which requires the 24-bit indirect path. With
the current dispatch, corerev 22 falls into the legacy 4-wire branch,
reads garbage for radio_id, and bails out with -EOPNOTSUPP at the
"FOUND UNSUPPORTED RADIO" branch below.

brcmsmac handles the same silicon family with the equivalent
dispatch in drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/
phy_cmn.c read_radio_reg() and write_radio_reg():

    if ((D11REV_GE(pi->sh->corerev, 24)) ||
        (D11REV_IS(pi->sh->corerev, 22)
         && (pi->pubpi.phy_type != PHY_TYPE_SSN))) {
            /* radioregaddr / radioregdata (indirect) */
    } else {
            /* phy4waddr / phy4wdatalo (legacy)      */
    }

The "phy_type != PHY_TYPE_SSN" carve-out in brcmsmac is for the SSN
PHY variant of corerev 22, which uses the legacy path. b43 does not
support SSN/SSLPN PHYs - they are rejected earlier in
b43_phy_versioning() at the "unsupported PHY type" switch - so by
the time control reaches the radio versioning dispatch there is no
SSN device to mis-route. A positive (core_rev == 22) clause is
therefore sufficient and equivalent.

Encountered on the Broadcom BCM6362 single-die integrated 2.4 GHz
wireless block (radio 2057 rev 8, paired with d11 corerev 22 on
this silicon).

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
 drivers/net/wireless/broadcom/b43/main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
index 673a56c30..7f96df5eb 100644
--- a/drivers/net/wireless/broadcom/b43/main.c
+++ b/drivers/net/wireless/broadcom/b43/main.c
@@ -4555,7 +4555,11 @@ static int b43_phy_versioning(struct b43_wldev *dev)
 		radio_id = b43_read16(dev, B43_MMIO_RADIO24_DATA);
 
 		radio_ver = 0; /* Is there version somewhere? */
-	} else if (core_rev >= 24) {
+	} else if (core_rev >= 24 || core_rev == 22) {
+		/*
+		 * D11 corerev 22 pairs an older 802.11 core with a 2057
+		 * radio that requires the 24-bit indirect access path.
+		 */
 		u16 radio24[3];
 
 		for (tmp = 0; tmp < 3; tmp++) {
-- 
2.43.0



Il 18/05/2026 03:49, Alessio Ferri ha scritto:
> This series completes b43 support for the Broadcom N-PHY revision 8
> paired with radio 2057 revision 8. b43 already supports the surrounding
> PHY family - N-PHY rev 8 with radio 2057 rev 5 and rev 7 are handled,
> and rev 16 with radio 2057 rev 9 is handled - but the rev 8 + rev 8
> combination falls through four dispatcher gaps:
> 
>   - radio_2057.c, r2057_upload_inittabs(), case 8 lists radio_rev 5
>     and 7 only;
>   - radio_2057.c, r2057_get_chantabent_rev7(), case 8 lists radio_rev
>     5 only;
>   - tables_nphy.c, b43_nphy_get_ipa_gain_table(), case 8 lists
>     radio_rev 5 only;
>   - radio_2057.c carries r2057_rev8_init[] as a 54-entry stub commented
>     out with "TODO: Which devices should use it?".
> 
> Two further pieces of plumbing are needed to reach those dispatchers
> in the first place: d11 core revision 0x16 is missing from the b43
> bcma id table, and the corerev 22 / radio 2057 combination needs the
> 24-bit indirect radio access path that brcmsmac uses for the same
> silicon generation (see brcmsmac/phy/phy_cmn.c read_radio_reg() /
> write_radio_reg()).
> 
> The series:
> 
>   1/6  b43: add d11 core revision 0x16 to id table
>   2/6  b43: route d11 corerev 22 to 24-bit indirect radio access
>   3/6  b43: support radio 2057 rev 8
>   4/6  b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
>   5/6  b43: add channel info table for N-PHY r8 + radio 2057 r8
>   6/6  b43: add RF power offset for N-PHY r8 + radio 2057 r8
> 
> Patches are ordered so that each one fixes the next visible failure
> in bring-up: 1/6 makes b43 bind to the core, 2/6 lets phy versioning
> read coherent radio identifiers, 3/6 unblocks the boot-time radio
> calibration that otherwise stalls the PSM at microcode startup, and
> 4/6-6/6 fill the remaining 2.4 GHz dispatcher entries so
> b43_nphy_set_channel completes to the default channel and core_init
> proceeds past PHY init.
> 
> Tested on a D-Link DSL-3580L (Broadcom BCM6362 SoC, single-die 2.4 GHz
> N-PHY rev 8 + radio 2057 rev 8 in 2.4 GHz IPA mode). The chip is in
> service worldwide in xDSL CPE devices.
> 
> b43 is currently Orphan in MAINTAINERS. These patches do not add a
> new chip family or PHY infrastructure; they fill four explicit
> dispatcher gaps for a combination of an already-supported PHY and
> an already-supported radio.
> 
> Alessio Ferri (6):
>   b43: add d11 core revision 0x16 to id table
>   b43: route d11 corerev 22 to 24-bit indirect radio access
>   b43: support radio 2057 rev 8
>   b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
>   b43: add channel info table for N-PHY r8 + radio 2057 r8
>   b43: add RF power offset for N-PHY r8 + radio 2057 r8
> 
>  drivers/net/wireless/broadcom/b43/main.c      |  10 +-
>  .../net/wireless/broadcom/b43/radio_2057.c    | 230 ++++++++++++++++--
>  .../net/wireless/broadcom/b43/tables_nphy.c   |  58 +++++
>  3 files changed, 280 insertions(+), 18 deletions(-)
> 


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
