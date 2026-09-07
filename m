Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1ED3C79F9E
	for <b43-dev@archiver.kernel.org>; Mon,  7 Sep 2026 13:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:Cc:Message-Id
	:Date:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LKSrSEh7SdfXCPxvhPjuID0Rr31nWkTGxNpKsAuK4+Q=; b=fIYlNLcRisqG0aJofuQh4uEbOD
	PkX44nwpjOEPAU8Li94rMa7o6+EhHKfWnWKrjeFw+lPT7Y/cstbuFK90YBq9SDkMGcO/ga/Y1/W1v
	NB5G6beFtepKcTcO2/2P0Y6aCcSwBtJt8monqjYXseyX6cOj805EfLy2h4unyRuNKltMATdEabult
	1O3jrc4kAVTbRJMXqF8IFqSbi6PsgXGXa4kmxzg3G4Py9CDpZTcUEqM3+dzTxBHRqKbHuGyQ0tzsK
	8BAMhVlfr3alkdXtceVQuErpuJOo6eMPKLp2b6q8eUmiQZVB/eLZGngS7VgpRj9ZM7Yf2yUaRhzd6
	yaaHd7QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YyB-00000006siU-0IW3;
	Mon, 07 Sep 2026 13:01:07 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Yy2-00000006sgL-475n
	for b43-dev@lists.infradead.org;
	Mon, 07 Sep 2026 13:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=In-Reply-To: References: To: From: Subject: Cc: Message-Id: Date:
 Content-Type: Content-Transfer-Encoding: Mime-Version; q=dns/txt;
 s=fe-953a8a3ca9; t=1788786055;
 bh=0Mb9UwR4nTQJB2bRA3Lqm6lyxR/KAuxHEv2Zzy1Jh38=;
 b=TMwWLqoc7D5GJT3dgMzmNwQBwyYRaWTb5Xdo3cW//IojHpzLfK7Tv10jajh/JKmyRaAyA2Qx8
 AqXMGDNw12NaDb26NN6ZQLCkpJECL2YJLL6UDXotOwQXr2oex5jbQwpajlwRuLYNQU1CGXZdndA
 sgLfzrKHnK/OxvtxO++PvVn0bNr4QdioP7JL1FEXWDHPVUHb/wjbkFFlUypXM7hBRFYSZ17eplS
 2G1dJ649c9cTgZxWZ9VwLQfIZCTyExJGVmSdikQ/7i/OQbxNxof94M9iV5lm89yix6Q7YnzCU53
 vUUKYezhGcIymeYO8a+GOZNeJnYzHKpodtBBRa6ZWOww==
X-Forward-Email-ID: 6a9eb58316171017b32b9267
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.14.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Mon, 07 Sep 2026 09:00:49 -0400
Message-Id: <DL93QEI0KQC8.30Z9WDM35DAK2@ubuntu.com>
Cc: <linux-kernel@vger.kernel.org>, <linux-wireless@vger.kernel.org>,
 <b43-dev@lists.infradead.org>, <brcm80211@lists.linux.dev>,
 <brcm80211-dev-list.pdl@broadcom.com>, <libertas-dev@lists.infradead.org>
Subject: Re: [PATCH] wifi: fix typos in comments
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: "Christian Lamparter" <chunkeey@gmail.com>, "Hemanth Selam"
 <hemanth.selam@gmail.com>, "Jeff Johnson" <jjohnson@kernel.org>, "Jiri
 Slaby" <jirislaby@kernel.org>, "Nick Kossifidis" <mickflemm@gmail.com>,
 "Luis Chamberlain" <mcgrof@kernel.org>, "Arend van Spriel"
 <arend.vanspriel@broadcom.com>, "Stanislav Yakovlev"
 <stas.yakovlev@gmail.com>, "Stanislaw Gruszka" <stf_xl@wp.pl>, "Michael
 Buesch" <m@bues.ch>
X-Mailer: aerc 0.21.0
References: <20260904124353.6183-1-hemanth.selam@gmail.com>
 <d739eb56-b37d-4056-abf2-c3a4c9ba8662@gmail.com>
In-Reply-To: <d739eb56-b37d-4056-abf2-c3a4c9ba8662@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_060059_261708_2E2ADB41 
X-CRM114-Status: UNSURE (   8.52  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="Flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On Sun Sep 6, 2026 at 6:44 AM EDT, Christian Lamparter wrote:
> On 9/4/26 2:43 PM, Hemanth Selam wrote:
>> Fix typos in comments, reported by scripts/checkpatch.pl using the
>> misspelling list in scripts/spelling.txt.  Only touches comments, no code
>> changes.
>> 
>> Assisted-by: Cursor:claude-opus-5
>> Signed-off-by: Hemanth Selam <hemanth.selam@gmail.com>
> Sure, for the p54 and carl9170 parts:
>
> Acked-by: Christian Lamparter <chunkeey@gmail.com>
>
> Does anyone know what ever happened to the trivial-patches?
> https://www.kernel.org/pub/linux/kernel/people//rusty/trivial/template-index.html
> Is this still going?

As a kernel newbie, I've never heard of this. I've heard of kernel-
janitors but even that seems not as active..

-Josh

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
