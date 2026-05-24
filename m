Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6331CD5BC9
	for <b43-dev@archiver.kernel.org>; Sun, 24 May 2026 21:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Message-Id:Date:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9IdWcPzZpaUnisuL+fEng979OABUhokG1gnYV34NUdA=; b=4FRpEKXUI68smC
	Je3w9QvdAL7lHPayTSUDAZRhJcEH6ZUz7q2SaA5Aa2m2h+7SuzOFC6k1UmwqZcz+enQn3D9tE6HeR
	vU6oe2UFvFF5o/RVN0LH/bjn7a4XU0JznjJfgkvMKDWZoZbt1ZkBs6yqxNHpQRGgaESpcJga80iQO
	IdSlOxT5kzZh1qrSKvxx3zYOylam3Auvn08fc4+kPlBxQt00qa0fQ789h2q5gi/8uuaWO5/ULaT6V
	N6eqP+aO0W70ErhK/gtSX2PbIUkJAU405FFHEvV9Monmji3kf68b1jDlUcv7V3px++Qsercbv+N31
	vw931K8YL85zq1pUKKNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGoC-0000000FilQ-0grF;
	Sun, 24 May 2026 21:56:32 +0000
Received: from smtpcmd15176.aruba.it ([62.149.156.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRGo8-0000000FiiL-0KIO
	for b43-dev@lists.infradead.org;
	Sun, 24 May 2026 21:56:29 +0000
Received: from [192.168.1.237] ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id RGo5wsRmcwf0DRGo5wFEVq; Sun, 24 May 2026 23:56:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779659785; bh=Mp8um2km/ncOD5Sy/AXymgDhuu+gQzVP3iJ7E/I3Z5I=;
	h=From:Subject:Date:MIME-Version:Content-Type:To;
	b=gQbmNb1QyvDA0i//OBQN7tS0LXKaxSYWLs/YN/JgZ4FUJMYvResjUMfax2hWGg0Ce
	 akYCy5RJLbGRovPWRmVx90a0umwhXlThD8/80lOjDxeQ5Fwf3qXv2ozcxLDUoZqh1+
	 Sz769RGzxZKU3RBMMItLgAz02GlKeAQwOrASojrDkBqXzxA0I4iO6K6yyigMbfko11
	 QfKC3tLVPyyOLRTiEnf5tU0hV0wKi7FMPWqmPJR0Sul/rm9OcI0rKpeXHz7LgiFrPu
	 KLxGhyHBnXXvp930Qfx2F+QCLqXzIZKsDRowd0a44BPCB+wzj7/gjfK/31OvWxr6vJ
	 /UqueWtbx5tUg==
From: Alessio Ferri <alessio.ferri@mythread.it>
Subject: [PATCH v3 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
Date: Sun, 24 May 2026 23:56:17 +0200
Message-Id: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y2NUQrCMBAFr1L220CyMVW8ipQlbbd2QZOQ1GIpv
 btB/JwH82aHwlm4wK3ZIfMqRWKoYE4NDLMPD1YyVgbU2GqHRvVnS0N8pScvTIHSvFH16ErZjxI
 Jtbv8h/JOKeZFeWvQTbplNAz1N2We5PNr3mG10B3HF5ip4ruHAAAA
X-Change-ID: 20260521-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-a3125f06e21e
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alessio Ferri <alessio.ferri@mythread.it>
X-Mailer: b4 0.14.3
X-CMAE-Envelope: MS4xfK6e4tZhO5nbXI139+tskn3ZldskwfZS0yAkmZzdcOiRqB5wDe+cpYChzUy/iHFxUhoVp6ah5tm/xaN8TPVJUQrwkYksZlAIe9yIAVsmHrTjgL+TX1og
 HjWJnTDeXqY/mLXoEZFeQito8onhlhJuL9iHTYF4Y6kr0garwS6/ceTopffj2vVF27c9FcGjybi74l96GO1XPhhFjz0aw5NclsV5DLN9cDKQNey8hPuI9Mr4
 xsWV1tci4PZrxsE+vgaHc1n3T2mR59exei4b+jy6mXj8/5tJHWS0S4i0M3oMLhO9ROIqQB6eu5UVlcItQfFfdjQNE/BiBtfF/aKPe3zEtco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_145628_300009_81BD2CA7 
X-CRM114-Status: UNSURE (   8.20  )
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

This series completes b43 support for the Broadcom N-PHY revision 8
paired with radio 2057 revision 8. b43 already supports the surrounding
PHY family - N-PHY rev 8 with radio 2057 rev 5 and rev 7 are handled,
and rev 16 with radio 2057 rev 9 is handled - but the rev 8 + rev 8
combination falls through four dispatcher gaps:

  - radio_2057.c, r2057_upload_inittabs(), case 8 lists radio_rev 5
    and 7 only;
  - radio_2057.c, r2057_get_chantabent_rev7(), case 8 lists radio_rev
    5 only;
  - tables_nphy.c, b43_nphy_get_ipa_gain_table(), case 8 lists
    radio_rev 5 only;
  - radio_2057.c carries r2057_rev8_init[] as a 54-entry stub commented
    out with "TODO: Which devices should use it?".

Two further pieces of plumbing are needed to reach those dispatchers
in the first place: d11 core revision 0x16 is missing from the b43
bcma id table, firmware name, and the corerev 22 / radio 2057 combination
needs the 24-bit indirect radio access path that brcmsmac uses for
the same silicon generation (see brcmsmac/phy/phy_cmn.c
read_radio_reg() / write_radio_reg()).

The series:

  1/7  b43: add firmware and initvals names for rev22
  2/7  b43: add d11 core revision 0x16 to id table
  3/7  b43: route d11 corerev 22 to 24-bit indirect radio access
  4/7  b43: support radio 2057 rev 8
  5/7  b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
  6/7  b43: add channel info table for N-PHY r8 + radio 2057 r8
  7/7  b43: add RF power offset for N-PHY r8 + radio 2057 r8

Patches almost reveal the bringup, the first two are swapped, as
applying 2/7 without 1/7 generate an immediate kernel panic caused
by a null deref.
From the third, each one fixes the next visible failure
in bring-up: 3/7 lets phy versioning read coherent radio identifiers,
4/7 unblocks the boot-time radio calibration that otherwise stalls,
and 5/7-7/7 fill the remaining 2.4 GHz dispatcher entries so
b43_nphy_set_channel completes to the default channel and core_init
proceeds past PHY init.

Tested on a D-Link DSL-3580L (Broadcom BCM6362 SoC, single-die 2.4 GHz
N-PHY rev 8 + radio 2057 rev 8 in 2.4 GHz IPA mode).

b43 is currently Orphan in MAINTAINERS. These patches do not add a
new chip family or PHY infrastructure; they fill four explicit
dispatcher gaps for a combination of an already-supported PHY and
an already-supported radio.

CHANGELOG:
v3: no changes, fighting with b4
v2:
  - Recovered the first patch of the series, so numbering is now /7
  - Added Assisted-By header
v1: https://lore.kernel.org/linux-wireless/8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it/

Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
---
Alessio Ferri (7):
      b43: add firmware mappings and remove comments wondering about rev22 initvals
      b43: add d11 core revision 0x16 to id table
      b43: route d11 corerev 22 to 24-bit indirect radio access
      b43: support radio 2057 rev 8
      b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
      b43: add channel info table for N-PHY r8 + radio 2057 r8
      b43: add RF power offset for N-PHY r8 + radio 2057 r8

 drivers/net/wireless/broadcom/b43/main.c        |  22 ++-
 drivers/net/wireless/broadcom/b43/radio_2057.c  | 230 ++++++++++++++++++++++--
 drivers/net/wireless/broadcom/b43/tables_nphy.c |  58 ++++++
 3 files changed, 290 insertions(+), 20 deletions(-)
---
base-commit: 8bc67e4db64aa72732c474b44ea8622062c903f0
change-id: 20260521-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-a3125f06e21e

Best regards,
-- 
Alessio <alessio.ferri.3012@gmail.com>


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
