Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AADBAC433EF
	for <b43-dev@archiver.kernel.org>; Sun, 24 Apr 2022 01:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:To:From:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8LND2C3ResHyN/M9LqL3usgKZQ3JShvcqw0nNnHvcV0=; b=K5lr/iCj5fs9IE
	Jla1yFUQY2yJoY5SIpZbdGGLwqnaVgxHo5YcJz3MfhOi2VWvDBrZef873489ix6uhj2jKOn+zdihk
	4mlg+uIhHrU8hOiPsSnlPik1nfTV8lMSTtb3wwxTRfALcyq5guYYQBym9TejtHr4AfX5LpuYs09wc
	3C6B+tIkWApusPWuBQpeHBB2DABNL3P0OuS+p0iUQorTKKwx7neruJJa2LYpXVTiDcdM48DoXN4uS
	t344mr55pd72+bL7+cKgEtj8Q5cGpKcsLLyy0oaR4ztGjt+LRzcynHek/zy1M0UhMIjapGeYgaShd
	Des4WtwXGM8MfywOtEaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niRKX-005VbU-P9; Sun, 24 Apr 2022 01:46:29 +0000
Received: from qproxy1-pub.mail.unifiedlayer.com ([173.254.64.10])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niRKR-005Va9-Lf
 for b43-dev@lists.infradead.org; Sun, 24 Apr 2022 01:46:25 +0000
Received: from cmgw12.mail.unifiedlayer.com (unknown [10.0.90.127])
 by qproxy1.mail.unifiedlayer.com (Postfix) with ESMTP id 53A498032B67
 for <b43-dev@lists.infradead.org>; Sun, 24 Apr 2022 01:45:16 +0000 (UTC)
Received: from just2004.justhost.com ([173.254.30.90]) by cmsmtp with ESMTP
 id iRJLnqfaDb2WGiRJLn9lPe; Sun, 24 Apr 2022 01:45:16 +0000
X-Authority-Reason: nr=8
X-Authority-Reason: s=1
X-Authority-Analysis: v=2.4 cv=PvVW0yA3 c=1 sm=1 tr=0 ts=6264abac
 a=SMeaTI6pftY6HwRpvTn3Vw==:117 a=PXqvgoAwfQQ2JtYNQaTJKg==:17
 a=HpEJnUlJZJkA:10:nop_no_mid_header a=kj9zAlcOel0A:10:nop_charset_1
 a=z0gMJWrwH1QA:10:nop_rcvd_month_year
 a=EDCGsHpMrD4A:10:endurance_base64_authed_username_1 a=t90poEvc5tvJeDue_I4A:9
 a=CjuIK1q_8ugA:10:nop_charset_2
Received: from [20.108.180.71] (port=61599 helo=Bimbo)
 by just2004.justhost.com with esmtpa (Exim 4.94.2)
 (envelope-from <smtpfox-jyb52@kpsolution.co.th>) id 1niRJK-000ocp-SU
 for b43-dev@lists.infradead.org; Sat, 23 Apr 2022 19:45:15 -0600
MIME-Version: 1.0
From: "Qi Z" <smtpfox-jyb52@kpsolution.co.th>
To: b43-dev@lists.infradead.org
Date: 24 Apr 2022 01:45:14 +0000
Subject: Eigenschaften
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - just2004.justhost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kpsolution.co.th
X-BWhitelist: no
X-Source-IP: 20.108.180.71
X-Source-L: No
X-Exim-ID: 1niRJK-000ocp-SU
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (Bimbo) [20.108.180.71]:61599
X-Source-Auth: coco@waterdesalinationplants.com
X-Email-Count: 119
X-Source-Cap: d2F0ZXJkZTE7d2F0ZXJkZTE7anVzdDIwMDQuanVzdGhvc3QuY29t
X-Local-Domain: no
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_184623_768160_8193FBC5 
X-CRM114-Status: UNSURE (  -1.16  )
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
Message-ID: <E1niRKX-005VbU-P9@bombadil.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Beanspruchen Sie Ihre Eigenschaften


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
