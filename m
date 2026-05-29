Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BC12CD6E4A
	for <b43-dev@archiver.kernel.org>; Fri, 29 May 2026 12:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:From:Message-Id
	:Date:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bm7hKbsh9jKngtoYk63tfsq2bQ716oROo+9wdYSqZmE=; b=2+bHMiBcp6duspTdsmOwNjClR9
	ikrnwV8QpiPmJtDTUbK9zwlowZHkF4BHWXZIxHRwmwzDsgPqAiPzPghDXS23/n/hAnVdetZDBeuMG
	480It6PdmHrVFcCrboTgP0Y4elgqgzA3HC+nmGwIBtqHyBb9dKhDDlPRAdhUWT6zHtrQimrx3vNNR
	OdvlROr7qGyTgiqb+TaRXJd/Q8O1sEEkamng3hb09UuMHY3QSMzRnbhwzAj3mwk8rTrY78cyo+zmh
	hQqdZfbqEF3UUjkwDfgA1nImwDNhHtkxw9+GC1cax0JgD1aXBiJyhVuN8XB0MVCxtv9h/9pVhkRhk
	3GDklexw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvuD-00000007KUA-0os7;
	Fri, 29 May 2026 12:01:37 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvu6-00000007KTU-29i9
	for b43-dev@lists.infradead.org;
	Fri, 29 May 2026 12:01:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=In-Reply-To: References: Subject: Cc: To: From: Message-Id: Date:
 Content-Type: Content-Transfer-Encoding: Mime-Version; q=dns/txt;
 s=fe-953a8a3ca9; t=1780056089;
 bh=e2SkCPNZ6JzNXUa5syAvbrprqabqIg5XAoAZSpduDp4=;
 b=MnTFb/UgWO0en/EFXIIs8Os58gnd6bRWGZiLlW5qTwggzjK9NuuuN5l4XchkB4hsUm8SCZNvx
 nC4rxkN0OkRbXt9RMCGzlhkyHK67qb2s6mk/x3I2WbbpLUkO26rjiqSkPnj5u/fm7bW3dWEQbKL
 UM2w7U1Prxe1oBSCxj4/JIlbqQNbQ2HdhaoZKbKIARc1OM2+SoWi97I00a9oekHTsCOkN1UswbU
 k42C8i4oUZD2tIe1kUxEuttnFrBnU83O5I6eZvYfK+fZHVOrCjeAQU7k8d/tBPG+h1G+SDJlgGy
 tNxXzLP074oOSCyZtuXDtAp8kTyXoqL+pXlOO20/aUSQ==
X-Forward-Email-ID: 6a1980155cd4cf91a6546360
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.8.15
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Fri, 29 May 2026 08:01:24 -0400
Message-Id: <DIV57VXLLBHC.1GLCJC1209Z31@ubuntu.com>
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: "Alessio Ferri" <alessio.ferri@mythread.it>,
 <linux-wireless@vger.kernel.org>, <b43-dev@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Cc: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Subject: Re: [PATCH v4 0/7] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
X-Mailer: aerc 0.21.0
References: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-0-464566194d47@gmail.com>
In-Reply-To: <20260528-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v4-0-464566194d47@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_050130_713332_5969499E 
X-CRM114-Status: GOOD (  19.25  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="Flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On Thu May 28, 2026 at 1:31 PM EDT, Alessio Ferri wrote:
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
> bcma id table, firmware name, and the corerev 22 / radio 2057 combination
> needs the 24-bit indirect radio access path that brcmsmac uses for
> the same silicon generation (see brcmsmac/phy/phy_cmn.c
> read_radio_reg() / write_radio_reg()).
>
> The series:
>
>   1/7  b43: add firmware and initvals names for rev22
>   2/7  b43: add d11 core revision 0x16 to id table
>   3/7  b43: route d11 corerev 22 to 24-bit indirect radio access
>   4/7  b43: support radio 2057 rev 8
>   5/7  b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
>   6/7  b43: add channel info table for N-PHY r8 + radio 2057 r8
>   7/7  b43: add RF power offset for N-PHY r8 + radio 2057 r8
>
> Patches almost reveal the bringup, the first two are swapped, as
> applying 2/7 without 1/7 generate an immediate kernel panic caused
> by a null deref.
> From the third, each one fixes the next visible failure
> in bring-up: 3/7 lets phy versioning read coherent radio identifiers,
> 4/7 unblocks the boot-time radio calibration that otherwise stalls,
> and 5/7-7/7 fill the remaining 2.4 GHz dispatcher entries so
> b43_nphy_set_channel completes to the default channel and core_init
> proceeds past PHY init.
>
> Tested on a D-Link DSL-3580L (Broadcom BCM6362 SoC, single-die 2.4 GHz
> N-PHY rev 8 + radio 2057 rev 8 in 2.4 GHz IPA mode).
>
> b43 is currently Orphan in MAINTAINERS. These patches do not add a
> new chip family or PHY infrastructure; they fill four explicit
> dispatcher gaps for a combination of an already-supported PHY and
> an already-supported radio.
>
> CHANGELOG:
> v4: reword patch 1/7 commit
> v3: no changes, fighting with b4
> v2:
>   - Recovered the first patch of the series, so numbering is now /7
>   - Added Assisted-By header
> v1: https://lore.kernel.org/linux-wireless/8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it/
>
> Assisted-by: Claude:claude-4.7-opus
> Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>
> ---
> ---
> Alessio Ferri (7):
>       b43: add firmware mappings for rev22
>       b43: add d11 core revision 0x16 to id table
>       b43: route d11 corerev 22 to 24-bit indirect radio access
>       b43: support radio 2057 rev 8
>       b43: add IPA TX gain table for N-PHY r8 + radio 2057 r8
>       b43: add channel info table for N-PHY r8 + radio 2057 r8
>       b43: add RF power offset for N-PHY r8 + radio 2057 r8
>
>  drivers/net/wireless/broadcom/b43/main.c        |  22 ++-
>  drivers/net/wireless/broadcom/b43/radio_2057.c  | 230 ++++++++++++++++++++++--
>  drivers/net/wireless/broadcom/b43/tables_nphy.c |  58 ++++++
>  3 files changed, 290 insertions(+), 20 deletions(-)
> ---
> base-commit: 8bc67e4db64aa72732c474b44ea8622062c903f0
> change-id: 20260521-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-a3125f06e21e
>
> Best regards,

I'm assuming the extracted tables are correct (it would take me a while
to check) - and as mentioned this only is an addition, not a change, so

Reviewed-by: Joshua Peisach <jpeisach@ubuntu.com>

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
