Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F889CD3431
	for <b43-dev@archiver.kernel.org>; Wed,  4 Sep 2024 07:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V+kpJq/BouZ2aTdFeJeDh8xhWCT9h5P8r34IWDQFZoo=; b=1gR7U4xQzG4P04
	QeVzHAalusMnWPShxC/ACP4N1uQdH+xTiaL2Pcf/vSCt84INebJ45CQVbKiPzR2bQeFH/zwVf/luL
	55+pzhaUA21S2E3MO2kEbYWSHbjp8o2W8VvBLRqvPdn7KSeuohMS+LEXTpO5fUUIF51jgyhOvgLeI
	ZbTUA9FvxZFs5zDhjpzz+uHmP+Snhi2Ad+NEm3wgUl883mCH+Z0RZLe6sDDP5gleyHxWfIRnN8x1q
	npeLf/Tchy6gTOyBI6MkVIZh1uL0rruQSDhrVAAgIbbZZyKN29xN/fw8aZdeIE28LbvouOmdLLGlz
	u0SHDDHOmvWZpAISTskg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slkZD-00000003DMf-1Rxd;
	Wed, 04 Sep 2024 07:36:39 +0000
Received: from mail.enterprisma.pl ([141.94.250.73])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slkZ5-00000003DLz-3Dld
	for b43-dev@lists.infradead.org;
	Wed, 04 Sep 2024 07:36:34 +0000
Received: by mail.enterprisma.pl (Postfix, from userid 1002)
	id D9FFEA303D; Wed,  4 Sep 2024 09:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=enterprisma.pl;
	s=mail; t=1725435385;
	bh=0Hy4qnxxB8F5j2bW9mazqgYR6Rj6BM+brCgZs3yBeQ8=;
	h=Date:From:To:Subject:From;
	b=VkhMIvnhDdgTCpBSh5q0vOeblFyiKUWctyV+lS2PIliWEZUsNgyWsRMMi2c5bEEYH
	 2rtn6j/SmEdVFO/xVOvRo1knKZMqzHM71a+WnyqjUb9nx5oebRzX7/8Jhps9P//xmb
	 oivIIAYC3K8lHhZ8XAqtSJsjY9ISuIfNKueEnnf+HA2JgHI6TU2pXb0QSooYbEtApk
	 I70Vtl/zwTHBtpvUUZznncoTW94+lP1MairLaUYLL2Q6m0709vxEk2rf2qxe3eF9tK
	 L3RnQQAchpzZSMC6x2dhUms9N8kbT8Qdb+LUk2JjKFVhkUfaciMmbubSzfg19Mrw9T
	 yx9GWVKAnlc0g==
Received: by mail.enterprisma.pl for <b43-dev@lists.infradead.org>; Wed,  4 Sep 2024 07:36:10 GMT
Message-ID: <20240904084500-0.1.i6.1awns.0.c6182d6xyq@enterprisma.pl>
Date: Wed,  4 Sep 2024 07:36:10 GMT
From: "Jakub Daroch" <jakub.daroch@enterprisma.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Fotowoltaika_i_pompa_ciep=C5=82a?=
X-Mailer: mail.enterprisma.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_003632_519985_DAD395D5 
X-CRM114-Status: UNSURE (   1.95  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKbmFzemEgZmlybWEgemFqbXVqZSBzacSZIHJlYWxpemFjasSFIGluc3Rh
bGFjamkgZm90b3dvbHRhaWN6bnljaCAgb3JheiBwb21wIGNpZXDFgmEgZGxhIGZpcm0geiB3b2pl
d8OzZHp0d2EgcG9ka2FycGFja2llZ28gaSBtYcWCb3BvbHNraWVnby4gCgpQb3NpYWRhbXkgd2ll
bG9sZXRuaWUgZG/Fm3dpYWRjemVuaWUgaSBzcHJhd25pZSB6YXByb3BvbnVqZW15IG5hamtvcnp5
c3RuaWVqc3plIHJvendpxIV6YW5pZSBkbGEgUGHFhHN0d2EgZmlybXkuIFpham1pZW15IHNpxJkg
d3N6ZWxraW1pIGZvcm1hbG5vxZtjaWFtaSwgamFrIGkgc3p5YmtpbSBtb250YcW8ZW0uCgpQcm9z
aW15IG8gcG96b3N0YXdpZW5pZSBrb250YWt0dSwgYWJ5IG5hc3ogc3BlY2phbGlzdGEgbcOzZ8WC
IHByemVkc3Rhd2nEhyBvZmVydMSZIHpnb2RuxIUgeiBQYcWEc3R3YSBwb3RyemViYW1pLgoKS2ll
ZHkgbW9nbGliecWbbXkgeiBQYcWEc3R3ZW0gdW3Ds3dpxIcgc2nEmSBuYSBrcsOzdGvEhSByb3pt
b3fEmSB3IGNlbHUgemJhZGFuaWEgcG90cnplYj8KCgpQb3pkcmF3aWFtCkpha3ViIERhcm9jaAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBt
YWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
