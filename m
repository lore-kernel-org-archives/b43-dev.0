Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4A75CD4F3C
	for <b43-dev@archiver.kernel.org>; Mon, 18 May 2026 01:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lsFGEO9jd8v+g3Ris/Z3bHZ4Ts7vq74FBgD3hASOVYM=; b=PaTuWWAhwD9MGK
	Q/zabvBtghzP22sW+TjATFW6M4LiZJj9cuFMv249spk0enQ4k0eszwLgOGDfrAmYqdXo3Hf/8Sdpt
	5apWVI+dI5BaKYFuu1Qi/l5djrjOyn/aMBw+QcPWHl5hX8TdwigRDraFpQ+Lp81zilQcKCM44174Q
	0m3rvFzTEpiSap8hz5VkadMzuwDogY8ckLOMRwLp5QV5TJ0k2snn/2W+VBi0++2/PL7e1x3fI2qeb
	kvVcqBxlx+ScmXT9AouUZdtk9jJWN5FItDUYxSoWJswWz+N4UPuvufMynpxCBBqwA46RW7f03kujF
	BZBn+XDnI/FM1o/6H/WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOn77-0000000DrQG-1VbU;
	Mon, 18 May 2026 01:49:49 +0000
Received: from smtpdh20-2.aruba.it ([62.149.155.165])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOn6z-0000000DrOz-2mOy
	for b43-dev@lists.infradead.org;
	Mon, 18 May 2026 01:49:44 +0000
Received: from [192.168.1.83] ([79.20.159.46])
	by Aruba SMTP with ESMTPSA
	id On6swqrhpEZ9tOn6swfqTW; Mon, 18 May 2026 03:49:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779068974; bh=SHO4+MK+hS8uojnJO+haPscX134HfONcXTn+yvuHD+w=;
	h=Date:MIME-Version:To:From:Subject:Content-Type;
	b=TSIaEwYV7o446kaC1GM5fiSEwRyYp9M5POAPatYaE+CGIWhtIcFejlpfTTuCwcFSN
	 8BpQ5OErtQXPUcwhPw5nTaE7duoFxP6bg3mtKe8CT0syJOFFUpK9cdHUytZGWI5bY0
	 01h9SaBeL2soafbQ1spopVRszRpLs/o99xzP2mV58cLZH3qBBj69E8dkg+qKdJsDw7
	 pVkRVEtdhe5TdzpnRHD25ZtNw50Ovz/N6ChCg1v53uyTyAUVvjfH7NrG22urk+q1X5
	 BAfbnGuBuxyIhtg/qt1F+MhuK4Em8/XdiTL8UEkByA9wKcANwFkAtZbLVGQDbehGT/
	 UuVfHTpHCPuDw==
Message-ID: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
Date: Mon, 18 May 2026 03:49:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: it
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org, kvalo@kernel.org,
 linux-kernel@vger.kernel.org
From: Alessio Ferri <alessio.ferri@mythread.it>
Subject: [PATCH 0/6] b43: complete N-PHY rev 8 + radio 2057 rev 8 support
X-CMAE-Envelope: MS4xfDqvqqxGvya9CMsdk3xvdzgpoz8C1zpFiotCxr9vpXzvhYs0wwH1k9beIjgICJpv5HYMu4k2oUsPH+7fieVYrHCzcTE53YYAcbaYVK3LQ7tjbIk1k2Kl
 WMEa0oInbzCpQb/SSNPqaYvPIcpui3hE5bU2woVNvmnswgY7VlhviJoEdEi88MKxxgI/S/L2IuRZKsv+jf2yei/WYXwzKXDzfqlB0fnjCJYB3bhl1H+NjrBB
 RClS8xfp0u3EKbLVkTinJaZzeBitoMgmx9AVHwmiNMAEUWobz2u6UG71QHC6yL4ZhIJLrf2+iTHmbSgTYtLNbQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_184942_170508_CAB8D87A 
X-CRM114-Status: UNSURE (   7.62  )
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
bcma id table, and the corerev 22 / radio 2057 combination needs the
24-bit indirect radio access path that brcmsmac uses for the same
silicon generation (see brcmsmac/phy/phy_cmn.c read_radio_reg() /
write_radio_reg()).

The series:

  1/6  b43: add d11 core revision 0x16 to id table
  2/6  b43: route d11 corerev 22 to 24-bit indirect radio access
  3/6  b43: support radio 2057 rev 8
  4/6  b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
  5/6  b43: add channel info table for N-PHY r8 + radio 2057 r8
  6/6  b43: add RF power offset for N-PHY r8 + radio 2057 r8

Patches are ordered so that each one fixes the next visible failure
in bring-up: 1/6 makes b43 bind to the core, 2/6 lets phy versioning
read coherent radio identifiers, 3/6 unblocks the boot-time radio
calibration that otherwise stalls the PSM at microcode startup, and
4/6-6/6 fill the remaining 2.4 GHz dispatcher entries so
b43_nphy_set_channel completes to the default channel and core_init
proceeds past PHY init.

Tested on a D-Link DSL-3580L (Broadcom BCM6362 SoC, single-die 2.4 GHz
N-PHY rev 8 + radio 2057 rev 8 in 2.4 GHz IPA mode). The chip is in
service worldwide in xDSL CPE devices.

b43 is currently Orphan in MAINTAINERS. These patches do not add a
new chip family or PHY infrastructure; they fill four explicit
dispatcher gaps for a combination of an already-supported PHY and
an already-supported radio.

Alessio Ferri (6):
  b43: add d11 core revision 0x16 to id table
  b43: route d11 corerev 22 to 24-bit indirect radio access
  b43: support radio 2057 rev 8
  b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
  b43: add channel info table for N-PHY r8 + radio 2057 r8
  b43: add RF power offset for N-PHY r8 + radio 2057 r8

 drivers/net/wireless/broadcom/b43/main.c      |  10 +-
 .../net/wireless/broadcom/b43/radio_2057.c    | 230 ++++++++++++++++--
 .../net/wireless/broadcom/b43/tables_nphy.c   |  58 +++++
 3 files changed, 280 insertions(+), 18 deletions(-)

-- 
2.43.0


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
