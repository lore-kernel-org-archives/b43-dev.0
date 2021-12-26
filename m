Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A1BEC433FE
	for <b43-dev@archiver.kernel.org>; Sun, 26 Dec 2021 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tIgKtPlu4HeZCgmeJwWNFqio28PHC2pxCCYBqhgDXZk=; b=XFR+gb5Re8KdHH
	KE33L6EgyrVZF3A7eO8+LdOKson31Y676LfPcNd+YMTAHoXjlaaAdyyzGN7CN08PN+uuOdl8GTRsT
	zFrF2cmA6CqV6J7W71IHcma5T32Emw8nuXBAGkPO8MNykr6he9aFCuBRFPh2wQwpB2Y6aKrldyNxU
	5h3qaHZkY0uFjebUlsuGvYOgxuIdI196jmUdCb5Gaevu5cKH0klhi8XD7scsFQP4dcewREuHw/o8c
	Zy6n4wPQ9qeG0jY2eZJXyiJPtX+nLekTWA4sG1hACYugsDLbU3aM0dqzdcrRBfaHwVuHKREWtyast
	MZzhoZOBqAPTp8CGjVyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1Pr5-00FPew-Gt; Sun, 26 Dec 2021 09:30:15 +0000
Received: from slot0.jllresort.com ([62.197.136.5])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1Pqj-00FPXR-Fq
 for b43-dev@lists.infradead.org; Sun, 26 Dec 2021 09:29:55 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=jllresort.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ele.mon@jllresort.com; bh=3xPubS7CfdbSDVdqJMGqqS3ahFs=;
 b=xoP7jVT1VDvmHudUPQR7NvXPJsl//Pbl1otnoLTfwfrB6EV2afrof0hVthgyGbuJWAI70OfUS0vy
 0gC8uBLzOYfmjxA/GxX3dFeW3Te4uo8IYxXods4GK2izvfkAUAvJAuDUwMhoRSYwJjoUu7HGTQkc
 RRSGpVeF6kPESZHlKWWvKImxsw/IS5Vqqk9mYJTCYBb/eqw2qvSTfs+h7ErzmIjOGJGXtGPPZZ3m
 pnmCkCfCHqiT9ObCE65XUQ/tVLB8+jsa3eydQKodMsKHj9j3SvoiMIBLx+cRNYCAQLn3cQY8Mt7y
 YrVuxFOfx7QqxQaiZUldBPbyaUQsdOgJZZK0Pg==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=jllresort.com;
 b=0Ki+rfP+ypVqgxneWTChqvMm9zWDhRecHtaKhatlIqzn6rKrXMV5p1sdR6xuUSg5yrJy65dYtE+q
 v4GYrJNGdMCGJ1V+QiiH4PeOKF5e/OgZJixqngEPNbiSXQDCbYzv3FENxVpgzwcLpeA1R6PYfnti
 mVofP4No4zT8brBBg/QKqMb16o8dPX/vT/LtoHtAb/1rqQLX1pH2BeeN959AHasGy9iNehBP9HFV
 BeQFYJ4M0c7DFs3WmQTjVL+zBiGGKaZY7RaJK2zC/cdROyyl8u+Dbli3hF8ZphejH3xQ0MhVNTd/
 WZpfvfDl/ucg8aemOkzctKCXwzIi93TrMSgXlA==;
From: ele.mon@jllresort.com
To: b43-dev@lists.infradead.org
Subject: Happy Weekend:
Date: 26 Dec 2021 10:29:27 +0100
Message-ID: <20211226102855.DCCA04F06A3081D2@jllresort.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211226_012953_927020_28F4A26A 
X-CRM114-Status: UNSURE (  -0.40  )
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
Reply-To: mustafa.ayvaz@ayvazburosu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Greetings to you b43-dev,

I was wondering if you got my previous email? I have been trying 
to reach you by email b43-dev@lists.infradead.org, kindly get 
back to me swiftly, it is very important and urgent.

Thanks
Mustafa Ayvaz
Email: mustafa.ayvaz@ayvazburosu.com

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
