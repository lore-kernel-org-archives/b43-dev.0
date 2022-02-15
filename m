Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4D0EC433F5
	for <b43-dev@archiver.kernel.org>; Tue, 15 Feb 2022 17:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JRtQyZORTXl/v5f66CjHWp1hZ22rfxwcKOTxxkRjngY=; b=NBLBVIS4GZ/+PC
	bwd4egzwPSqQLfKjNPGsXdKyB4VECgy93hix/JyD7mWI6Hj3O0ThvzEauE8bKue7biYi+ZJfF/8kc
	Hk1sNcqhcVpYYozGZbvakR1oa8ey352EsuEGfuCqf+jvSTVafPVi58Jt7m9Jg7SlqwYbHUGPTjhlM
	V7Bdzh6IJhAiOD4IkcFOdzDm0DxZTIKXK4ZJXWQeec0n78eb6ni7jy2vlhY+uXBYd5cdt58u4xZ0P
	gReSGkdFpFY9Dm+2yb+2cBxF0H7OUNchjLmQ8q5VmW/ZQitJ0AbdfAVoO2WA9o4KSggFupbPdh9SN
	72MQZ2QlDvLhE3XGuE7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK1yR-003yqM-Sk; Tue, 15 Feb 2022 17:50:47 +0000
Received: from ewsoutbound.kpnmail.nl ([195.121.94.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK1yL-003ypf-GQ
 for b43-dev@lists.infradead.org; Tue, 15 Feb 2022 17:50:43 +0000
X-KPN-MessageId: a36de0f6-8e87-11ec-8338-005056999439
Received: from smtp.kpnmail.nl (unknown [10.31.155.5])
 by ewsoutbound.so.kpn.org (Halon) with ESMTPS
 id a36de0f6-8e87-11ec-8338-005056999439;
 Tue, 15 Feb 2022 18:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hetnet.nl; s=hetnet01;
 h=content-type:mime-version:subject:to:from:date:message-id;
 bh=TQSbl4MlrEmLB+DqEpkdDmdX2BVN9cKnCBxa3VnNPT8=;
 b=C+Ft2o2VyjjdZA2lNK/rML7HeYnzNUoOTJcWXP8qK49kan8exxnSej2cnOHGToSDWoHEM/EqTusza
 FTacxbbOaNW0tpXllEkTTattRp0NjxJQIKkvZ5Xoh+vwscZA9W8JxWz5/WGsdRXXPzti9DwV5o2Q8O
 4vxBnIsue29XidLc=
Message-ID: <c8191671-8e87-11ec-a62e-00505699b758@smtp.kpnmail.nl>
X-Originating-IP: 81.206.153.170
Received: from hh-F5R (81-206-153-170.fixed.kpn.net [81.206.153.170])
 by smtp.kpnmail.nl (Halon) with SMTP
 id c80c7d23-8e87-11ec-a62e-00505699b758;
 Tue, 15 Feb 2022 18:50:37 +0100 (CET)
Date: Tue, 15 Feb 2022 18:50:36 +0100
From: HH Wielage <wielage@hetnet.nl>
To: b43-dev@lists.infradead.org
Subject: b43
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_095041_875402_22F38C42 
X-CRM114-Status: UNSURE (   4.50  )
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

linux b43

-- 
HH Wielage <wielage@hetnet.nl>

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
