Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84CF1C48260
	for <b43-dev@archiver.kernel.org>; Fri, 16 Feb 2024 19:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ss6d6AuliJBwsgjjE4uF/FR3t06/An1/9mbacbQf8Lw=; b=r+fPIkrMI/fiRz
	V0xaP1RkaYm+NmIjIaq0Q+FmxLBJ7PhXAp69yNBk+8aSR0fNaQvgoUau9uIooCGIjrMsDzROpQFXr
	aYZ4OWj3iQ5frZ+Yrl9zuyD1ue9IbcOnTov6YSIKu5XdrHmtPAnOnOVkducigUocGtXgmY8N/EzmW
	iVThud69CjfzqSvKPi0Iys7wcMuId2dONlwnsNp2AkwIuTOSdGDryyZ4iMCXOsBP7RJGLbecFUJvG
	NOX41WmGKkTWh3qmO2wHc4lycTCWVAk81Ttq6vk161geXQ1Z5kuke1MF3OLoQcBxSHToYYfv1G3FM
	SHWIjPDQyuegBZaIUZcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb3SN-00000003RDY-0SUg;
	Fri, 16 Feb 2024 19:01:07 +0000
Received: from srv1.deutnet.info ([2a01:4f8:c2c:6846::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb3SH-00000003RBR-2U01
	for b43-dev@lists.infradead.org;
	Fri, 16 Feb 2024 19:01:05 +0000
Received: from agriveaux by srv1.deutnet.info with local (Exim 4.96)
	(envelope-from <agriveaux@deutnet.info>)
	id 1rb3SA-00GxjV-0Z
	for b43-dev@lists.infradead.org;
	Fri, 16 Feb 2024 20:00:54 +0100
Date: Fri, 16 Feb 2024 20:00:54 +0100
From: agriveaux@deutnet.info
To: b43-dev@lists.infradead.org
Subject: Developers interested in BCM4322 802.11a/b/g/n card ?
Message-ID: <Zc-w5ikjOGhcUpR2@deutnet.info>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_110101_647326_2B486CC8 
X-CRM114-Status: UNSURE (   3.33  )
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

Hello,

I have recovered 4 full frame cards from Meru ap1020i wich are BCM4322
802.11a/b/g/n with he PCI(e) ID 14e4:432b, according to [0] the support
is partial, interested ?

Thanks.

[0] https://wireless.wiki.kernel.org/en/users/drivers/b43

Ps: I'm not suscribed to the list, please send me a copy.

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
