Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 024B7EB64D9
	for <b43-dev@archiver.kernel.org>; Wed, 14 Jun 2023 08:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ElQgKMr2+bpTFgay6XrPydBy9Nn0Cjw1UTCPmBGHzh0=; b=NYhTShKEK8yIGN
	CJaMfC71M1wySjIajFqTfo2rsY+7djqg3oGkNE+BigwU+xPI2j8LzBnS2O7cjeIEZpXN8JVsGQSaM
	4xhEA75ssbeZ+st70Oj5UbmvixWdtpManCfCmCDharXi2SUUjID1xQuqa1+EnhZmg0MzDgQztq5Bn
	pnp8EfCmFQ8G63HOEC42o/Z/ot5c0d+CHVINd1FkQNAptzYTmDz1VQVVSzE0/dlHB8XxfsbGLqb/n
	ZbnCxQyvALACqMNmdcHmjS09ZarxMoXZ0zMCnxPzIW/ycrL+AYgQNX0lFrmQoSbCHD5XyrKDss1XG
	p9J0l3S7tK6m2IGBIhRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9LSQ-00Anph-2B;
	Wed, 14 Jun 2023 08:02:22 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9LSN-00AnoE-1z
	for b43-dev@lists.infradead.org;
	Wed, 14 Jun 2023 08:02:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=dVSXEn0iiAGSkxkpTSrJSP4GcGEkjq1CULMPAClVb+k=;
	t=1686729737; x=1687939337; b=Qng4QXNOqg8hr3yDk2RkN59HWijPKLwCor4L3pzNSPg6rLw
	THO/Lt3NzQyGfr+4cYa+q5FTi1iNOlCy6x2GJtumcpK9+BbF1nU8kKILJuu2iqs3qW1PzQnOC1jrn
	hfi7hXn7WU6Hdz4fFBopSBVTGRBkMApEmc5nreVkDYQ3KqidUgMVG/QK3WiLAyLpUhUDmOUAk28XK
	AjL/44VC6RXLVIMAI+DECpj0bmQ4a8E0uMmO0TOxBEzfy11BijblwFJkg+alXu53zKCMM/iZeevan
	+Qq578V3oQu+tUIzkiZhxs+RCYUAshN/3X3s1xigm8EhPycAaGI/rvy4G4leI0bA==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.96)
	(envelope-from <johannes@sipsolutions.net>)
	id 1q9LSE-005zlN-31;
	Wed, 14 Jun 2023 10:02:11 +0200
Message-ID: <12c1079d6e73f8f62c33b8a53dff7ff4de0728dc.camel@sipsolutions.net>
Subject: Re: [PATCH] b43legacy: Remove unneeded variable
From: Johannes Berg <johannes@sipsolutions.net>
To: wuyonggang001@208suo.com, Larry.Finger@lwfinger.net, kvalo@kernel.org
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Wed, 14 Jun 2023 10:02:10 +0200
In-Reply-To: <194e8e87fda5f02664fcfac3717458f2@208suo.com>
References: <20230614075250.29097-1-zhanglibing@cdjrlc.com>
	 <194e8e87fda5f02664fcfac3717458f2@208suo.com>
User-Agent: Evolution 3.48.3 (3.48.3-1.fc38) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_010219_660464_4AA0DB60 
X-CRM114-Status: UNSURE (   6.19  )
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

On Wed, 2023-06-14 at 15:55 +0800, wuyonggang001@208suo.com wrote:
> Fix the following coccicheck warning:
> 
> drivers/net/wireless/broadcom/b43legacy/debugfs.c:68:9-14: Unneeded 
> variable: "count".

Hey, no. Please stop it already. This won't even _compile_. Just don't.
There's really not much value in cleaning up those coccicheck warnings
in the first place. You're just wasting everyone's time (including your
own).

johannes

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
