Return-Path: <SRS0=m+ae=KG=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0686C433B4
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 11:16:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F146F61363
	for <b43-dev@archiver.kernel.org>; Tue, 11 May 2021 11:16:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F146F61363
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	CC:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cl6OmtdrZ3HARO+6kZfjgIcHcpR7xd0ulBhc+Z6Cj+Y=; b=KJrQHLTFkozR3H5yPY9dUhkNC
	vX/6s78Mc4J8Yg6DRhO6XP0QZZk487gRZTwysmhcejbA1UADynOOakGR40S8gnA0AZ3KkFfHo68Jj
	MQMXcRvOweEiGzLe7vD7RgVXYIHX3FZPc7FlymVEHezAVAauIYViwMeGalvURLfWmKAXKEFdQ4wGa
	mc+UFn+jwFUZ9vwvGUGyYCopMPVRQT1VN0kOn6Jr5w1XBN3MoY9DqD9XvOIv3Zuy2WucMdo9I2wKN
	DmJCP7apn5Hk+0D/WLnxoGUIr8haqAQallZWuIAmFww4cc44uOa8P6RZsuM0OuvIHnuOPiKZNos0N
	r5UE7TRhw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgQNP-00H61Z-Dj; Tue, 11 May 2021 11:16:35 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgIdA-00G9LK-Vh
 for b43-dev@desiato.infradead.org; Tue, 11 May 2021 03:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:CC:To:From:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=0WrMO99tGZH/ExjVpzV6fq59FktD6Kzvm5NMPNGFsw4=; b=28JN2APwM9/G4OzO3sm1CWLwUu
 gN30yxYI+StJwARX0VCNcZYUOoduOj+S8jECpBdS8YzPF/4OgeNCypB/FIcb4uK0Vwi6paJfBEvqI
 fj7PLZg/bZXK6vGLmuHYHsmCovJpDGTXbUdjKbPohIekUOj7hFHCg+4aE+eoFXWZkv3MQ1ifsH6/U
 OmdOMDWL4cDUsj0EHXa9XU+cUo01QjNg0RZeFourw/cbvLJpiD49SA0mbVkkPFULu+xr8uE9raSDX
 lDvcBp6bRBFtTZ7lTL/ZO8PvlvrtVb+DT2Qzg0TcLLMzLd6DTe4fFXbn4qgDhqhl6Ysr81Yh/cBlZ
 F1SYrNIA==;
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgId6-009Gka-JZ
 for b43-dev@lists.infradead.org; Tue, 11 May 2021 03:00:18 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FfMzH6bcFz1BLCD;
 Tue, 11 May 2021 10:57:31 +0800 (CST)
Received: from [127.0.0.1] (10.174.177.72) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.498.0; Tue, 11 May 2021
 11:00:07 +0800
Subject: Re: [PATCH 1/1] b43: phy_n: Delete some useless empty code
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: Kalle Valo <kvalo@codeaurora.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, linux-wireless
 <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>
References: <20210510145117.4066-1-thunder.leizhen@huawei.com>
 <YJmRUQwPPDE+hWiN@lunn.ch> <1890aa92-ddf2-78f7-51e7-bdc3a58a04c6@huawei.com>
Message-ID: <c7c7c332-acc3-4907-1c7d-ccf2413ef837@huawei.com>
Date: Tue, 11 May 2021 11:00:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1890aa92-ddf2-78f7-51e7-bdc3a58a04c6@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.174.177.72]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_200016_839169_5F838DF0 
X-CRM114-Status: GOOD (  10.76  )
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_200016_839169_5F838DF0 
X-CRM114-Status: UNSURE (   7.20  )
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



On 2021/5/11 9:11, Leizhen (ThunderTown) wrote:
> 
> 
> On 2021/5/11 4:02, Andrew Lunn wrote:
>> On Mon, May 10, 2021 at 10:51:17PM +0800, Zhen Lei wrote:
>>> These TODO empty code are added by
>>> commit 9442e5b58edb ("b43: N-PHY: partly implement SPUR workaround"). It's
>>> been more than a decade now. I don't think anyone who wants to perfect
>>> this workaround can follow this TODO tip exactly. Instead, it limits them
>>> to new thinking. Remove it will be better.
>>>
>>> No functional change.
>>
>> No function change, apart from the new warning?
>>
>> Does your bot to compile the change and look for new warnings/errors?
> 
> Sorry, I have compiled it. I guess it's probably separated by macros, which I didn't notice. I will check it.

I got it. It reported by W=1.

> 
>>
>>      Andrew
>>
>> .
>>


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
