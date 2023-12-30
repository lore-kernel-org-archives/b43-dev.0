Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC637C46CD2
	for <b43-dev@archiver.kernel.org>; Sat, 30 Dec 2023 19:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTTdnEDiA72+8tRM2wsyGjQGNRDTjGSpZxYmX2VloHY=; b=JjtwpPd5t8iwHk
	EzK5cFhMFWFVGsdPhShvXCaz/WgiUuB4WSqe1vJHj8VXXOraM/SmsXWo0N+yplpGNjIej6I0kSEhf
	SjL9BlSIUjGVPHdMZZOGN3tk1jGLOMww6WwJ+tYAU8LY39AQ+2V7ZWnkcfu7FjCoNPMacIdhn3HEg
	6Vu5FDi3M+gJnQ2ODYdm5DdJ5IcGTOU7yzCIqWGpxnGPYMSTLHTpnfdy1oHHtR44SHPwsZo3yTIPN
	GtNI2y+wWO48vw43VkWPLdwactyUa/kajSLjIB4GP38KyC9ctSzYtCURQcBoZweDwNMYr2Hex3kgf
	oc5oQPKiwEcd0lTY+vAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJfFr-003Lye-0D;
	Sat, 30 Dec 2023 19:44:19 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJfFn-003Lxw-2s
	for b43-dev@lists.infradead.org;
	Sat, 30 Dec 2023 19:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703965448; x=1704224648;
	bh=OxoL4VxT9E+VrhbDUVt3Q/iTv0P+LTHXnaE7vR1Zcp8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=UpIzOKKa3eUpZlB7iWpRGGRr8FX5M1RYLpR/IErm8OvBcDO6sXQ3qsS3ULqE2fpVm
	 CH15YZKyfHTWm4/NwimAJs/H+w3FouEzn6SZt8h3ND5xk/8V7ihzYplEm1XACZtLzR
	 b1DXEz3rqBkrzohFLAK+5LPu/478KtSat8Gmk++JL57xNr77Sjglwkmtw5458LJr48
	 rJRJQVfgvkeaMJ5sfgDwka7V69wm6WXuOaiazXdCiDj17KL1rtipJY9DXOSk/VJjsS
	 cx39UIlPrgq2NQYBqm/C2hKzOp5W3/K8bJjL99Rah45OpBDvM2Nsu+LMEvY0WbRrpi
	 ozzMhgb9IbLVA==
Date: Sat, 30 Dec 2023 19:43:45 +0000
To: Larry Finger <Larry.Finger@lwfinger.net>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 3/5] wifi: b43: Stop/wake correct queue in PIO Tx path when QoS is disabled
Message-ID: <877ckvwk5v.fsf@protonmail.com>
In-Reply-To: <cb9dcb49-ad94-40df-9f01-a28df3daf6c3@lwfinger.net>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com> <20231230045105.91351-4-sergeantsagara@protonmail.com> <cb9dcb49-ad94-40df-9f01-a28df3daf6c3@lwfinger.net>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_114416_081648_14C36B02 
X-CRM114-Status: GOOD (  12.16  )
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

On Sat, 30 Dec, 2023 12:04:02 -0600 "Larry Finger" <Larry.Finger@lwfinger.net> wrote:
> On 12/29/23 22:51, Rahul Rameshbabu wrote:
>> +		if (dev->qos_enabled)
>> +			ieee80211_stop_queue(dev->wl->hw,
>> +					     skb_get_queue_mapping(skb));
>> +		else
>> +			ieee80211_stop_queue(dev->wl->hw, 0);
>
> This code sequence occurs in several places. Would it be better to put this in a
> routine specific to b43, thus it would only be used once?

Right, I am waiting to converge on the discussion in the second patch in
this series before making this refactor, but I agree that this pattern
is prevelant and should be refactored if this is the approach taken.

>
> We certainly could try extracting firmware from a newer binary. Any suggestions?

Unfortunately, new firmware would not prevent the need to fix up the
code with regards to QoS being disabled via the kernel parameter or
using OpenFW. That said, new firmware could help us drop the fifth patch
in this series. I am thinking about using b43-fwcutter to extract
proprietary fw from a newer release of broadcom-wl to see if that makes
a difference. That said, I am a bit puzzled since the device I am
testing on released in early 2011, and I used firmware released in late
2012.

--
Thanks,

Rahul Rameshbabu


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
