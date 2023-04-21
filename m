Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDFA4C77B78
	for <b43-dev@archiver.kernel.org>; Fri, 21 Apr 2023 23:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YaCaZRpbEl+IR029rVhJoUMMVILpmfyU5Ah2IgfADJM=; b=HQXHWWHTozmOU/
	/q7O+/tY4CIyjrWNL7AXW564tStgoVkTOVuEkw5OgodF+PULHAzYD/Lm9TPMDyIhyyagL7WkLmBl4
	ww/V9/Ke78lLgGOsu0eNIAqI7ArX8Nm361fiMWd6xWJMQErlzqWEN5H7QR2kYp9tdL1QeN6le1km/
	ycmMp+YncdVdDf0fAX64n9+N6zR+I5Ae93ESuq59YOPZJFgtCoBfWoqwOZx+RqOdv4VeNumb9UGL9
	OT0XPDXvubUXFJ80SUgNd8WnGCIdlWrF3EmegJk6q80VjvKQp1324njir9cnKcVFdxbbGbJ5wKIp+
	edK5CEEXPOsW97j4I2Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppzuZ-00C2aK-1Q;
	Fri, 21 Apr 2023 23:11:27 +0000
Received: from mail.rslp.org ([46.23.92.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppzuV-00C2ZR-1k
	for b43-dev@lists.infradead.org;
	Fri, 21 Apr 2023 23:11:25 +0000
Received: from [127.0.0.1] (pool-173-71-124-101.cmdnnj.fios.verizon.net [173.71.124.101])
	by mao.rslp.org (OpenSMTPD) with ESMTPSA id 8b47b63e (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <b43-dev@lists.infradead.org>;
	Sat, 22 Apr 2023 01:11:19 +0200 (CEST)
Date: Fri, 21 Apr 2023 19:11:17 -0400
From: Pogprogrammer <spikey@rslp.org>
To: b43-dev@lists.infradead.org
Subject: NetworkManager cant connect on Macbook Pro7,1
User-Agent: K-9 Mail for Android
Message-ID: <50BB827E-7437-4E25-9F5F-636115EF2D20@rslp.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_161123_857842_FED98C1D 
X-CRM114-Status: UNSURE (   6.22  )
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

Hello, I installed b43 and I get the error that DMA is not supported and it will be switched to PIO. This was a bug on kernel 2.6, but I am using 6.1+. My mac is partially supported according to http://linuxwireless.sipsolutions.net/en/users/Drivers/b43/ and that may be part of the problem, but:
I am on void linux and networkmanager can identify all the networks but if I connect I get errors like "not found network" or maybe "bad password".
This is a fresh install and sometimes certain daemons just arent running, so here is my list:
Dbus, dhcpcd, NetworkManager, udevd, wpa_supplicant as well as the agetty-tty[1-6]. 

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
