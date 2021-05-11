Return-Path: <SRS0=m+ae=KG=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 000C0C433B4
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 10:02:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 505006192C
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 10:02:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 505006192C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YNu743NQUsV4BGZbpW8AvZ97SUhVFVZ4WOW/31fncvs=; b=G1lTNTfX68fKejaF3uYmkgNuB
	MeAUyvUbohLSiKowhvPBY1n+RJcaHEU7I6bjJ4rIaJF2fWk25iyggJe4fWZTOOhl6MNgAJc4x3+2N
	XdFnSUYRQ7UqdwXpLIcrEy/5ia4lIIY+eDYljApuDcNHqnmonpjZm7zUZRWoGDTtobkTsna4iT+1c
	7j6pbT71gJSGQvtTBiK5utGVN4XRttFRT1S8cxGJifV/D4sgxuHn7TBXEFvzczJWlZd38flIho9DX
	vvUF51yKFVEysCdM5VYUwlBekspvLLoOCH93mlXCH8zv84W4r89vn8MTwYMuRoVp+WGIhISy5I2io
	7rDp26iQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgPDM-00God6-W3; Tue, 11 May 2021 10:02:09 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgGw5-00G1B4-Ca
 for b43-dev@desiato.infradead.org; Tue, 11 May 2021 01:11:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=rSmUADGIbzDucKeEPNe7j5qCyoS9/CwxHM1iP5YzRLc=; b=JRrtgDRkT+eqyoae+ltbF41HRw
 JGy2x3gxNRx4KISdKX41579jeawzyypacssOTGp1Nckdv6Cy4//DyjCE6KUYoFBYpxZahmMa1oHbQ
 QpwGjVer+4n4PTEwO/w7JxwJDIwHQVPGcRXZJdBXn/UdQJeqOm8TwFpkj8Oxr04QAHGUCYj+/XbNj
 D04z9wE1dDtvVF3pBtc5ZSMi5BYybcpRsUo02HCVhi1rqSXm1N7i+OuKk4wMIVK602w2RhjApwNnW
 xlndLwbcjV9vXXaqePUH8WFSJVv6CQ5yYCsjYDAx7S9ejRFn83TJDbWNJo3xsSTKCMQvq4z9y//fJ
 UFpVH1lQ==;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgGvu-009Ea4-TS
 for b43-dev@lists.infradead.org; Tue, 11 May 2021 01:11:36 +0000
Received: from dggeml715-chm.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4FfKX32sySzWhV5;
 Tue, 11 May 2021 09:07:15 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggeml715-chm.china.huawei.com (10.3.17.126) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Tue, 11 May 2021 09:11:28 +0800
Received: from [127.0.0.1] (10.174.177.72) by dggpemm500006.china.huawei.com
 (7.185.36.236) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Tue, 11 May
 2021 09:11:28 +0800
Subject: Re: [PATCH 1/1] b43: phy_n: Delete some useless empty code
To: Andrew Lunn <andrew@lunn.ch>
CC: Kalle Valo <kvalo@codeaurora.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, linux-wireless
 <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>
References: <20210510145117.4066-1-thunder.leizhen@huawei.com>
 <YJmRUQwPPDE+hWiN@lunn.ch>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <1890aa92-ddf2-78f7-51e7-bdc3a58a04c6@huawei.com>
Date: Tue, 11 May 2021 09:11:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <YJmRUQwPPDE+hWiN@lunn.ch>
Content-Language: en-US
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_181135_151484_25C73E9C 
X-CRM114-Status: GOOD (  10.95  )
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_181135_151484_25C73E9C 
X-CRM114-Status: UNSURE (   7.80  )
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



On 2021/5/11 4:02, Andrew Lunn wrote:
> On Mon, May 10, 2021 at 10:51:17PM +0800, Zhen Lei wrote:
>> These TODO empty code are added by
>> commit 9442e5b58edb ("b43: N-PHY: partly implement SPUR workaround"). It's
>> been more than a decade now. I don't think anyone who wants to perfect
>> this workaround can follow this TODO tip exactly. Instead, it limits them
>> to new thinking. Remove it will be better.
>>
>> No functional change.
> 
> No function change, apart from the new warning?
> 
> Does your bot to compile the change and look for new warnings/errors?

Sorry, I have compiled it. I guess it's probably separated by macros, which I didn't notice. I will check it.

> 
>      Andrew
> 
> .
> 


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
