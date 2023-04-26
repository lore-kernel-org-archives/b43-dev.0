Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41C45C7618E
	for <b43-dev@archiver.kernel.org>; Wed, 26 Apr 2023 22:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggRNdS8ShuYRm/mL+BT14VQfn8k3+3u4DOQ+OhOHnVE=; b=3FJ9OhQ1oLdESN
	YQ+Pfc+hoCIlhkKvcND7nHyzO4/mCoay9MzZB8U7KdYcGSQps1G/QUgR0+72DwrtUswegDyzEa4hg
	YPpBH8AIUalA66QDOy7PANe4/PRcEfdk6Dxopd3SojCohjhaoBqju8PnGhk1848EshTKLl6wMpn2r
	L1zHcAUdJ1/ItFVcgmYFzmKeb5fxyVG+rv0mlgyWrf/9T2KU/IXMFw0UCm9F+ZQ8MzgHXn7Gk0Wf4
	zwX7wwWf2N2YqEZnXxeKBRsbG60LDoglsxCOoSDmf6KpMiG+0ZcxSQrFDnXK/F1TkZgKVggQMtAZh
	NgJZPH7NF+q3WoiSwIJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prnC7-004vr5-2L;
	Wed, 26 Apr 2023 22:00:59 +0000
Received: from mail.rslp.org ([46.23.92.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prnC4-004vqG-2d
	for b43-dev@lists.infradead.org;
	Wed, 26 Apr 2023 22:00:58 +0000
Received: from [IPv6:::1] (<unknown> [2607:fb90:2edc:1272:9016:7b2b:2ce:7c74])
	by mao.rslp.org (OpenSMTPD) with ESMTPSA id 682b0528 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 27 Apr 2023 00:00:42 +0200 (CEST)
Date: Wed, 26 Apr 2023 22:00:36 +0000
From: Pogprogrammer <spikey@rslp.org>
To: Larry Finger <Larry.Finger@lwfinger.net>, b43-dev@lists.infradead.org
CC: linux-wireless <linux-wireless@vger.kernel.org>
Subject: Re: Macbook pro 7,1
In-Reply-To: <32f92249-2866-75b9-42f4-8bdcbeeca750@lwfinger.net>
References: <63806E6D-2230-44FA-9DAE-0790F35C9F6C@rslp.org> <54db8ecb-b817-eda9-09ff-adbd54806c95@lwfinger.net> <726093C0-6877-4427-B7FF-9DACE88B9982@rslp.org> <716d9146-605e-b370-b3e2-ded0849cddeb@lwfinger.net> <D675B28A-707B-4D9E-80E9-986EC1A266B6@rslp.org> <32f92249-2866-75b9-42f4-8bdcbeeca750@lwfinger.net>
Message-ID: <4CD0BB13-95FA-42E4-A0E7-3BD12DF7DFDE@rslp.org>
MIME-Version: 1.0
Autocrypt: addr=spikey@rslp.org; prefer-encrypt=mutual; keydata=
 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
 4Qc089s6dQvvEUqpg0m4qGc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_150057_158184_ADECCC6A 
X-CRM114-Status: GOOD (  12.71  )
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

Oh I'm sorry, I tried both modules. They both had a similar output and so I forgot to switch back to the open source driver. I'll follow back up in a bit but the outputs were very similar.

On April 26, 2023 8:59:42 PM UTC, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>On 4/25/23 19:47, Pogprogrammer wrote:
>> [   17.153826] wl: loading out-of-tree module taints kernel.
>> [   17.153837] wl: module license 'MIXED/Proprietary' taints kernel.
>> [   17.153838] Disabling lock debugging due to kernel taint
>> [   17.164164] wl: module verification failed: signature and/or required key missing - tainting kernel
>> [   17.215776] wlan0: Broadcom BCM432b 802.11 Hybrid Wireless Controller 6.30.223.271 (r587334)
>> 
>
>I was hoping that the log stuff would not do to all the members on the Linux wireless mailing list, but at least the log was not too large.
>
>In the section quoted above, it tells us that you are using wl - the proprietary driver from Broadcom. As that is distributed as pre-compiled binary without source code, there is nothing that we can do to help you. As you wrote on the b43 ML, I expected that you were using b43.
>
>Sorry, but you are on your own. I do not expect that Broadcom would provide help for this legacy product. If you had any other brand, I would suggest that you change the wifi chip. On a Mac, that is not an option. You might try getting a USB dongle, but that can be tricky to get one with a Linux driver.
>
>Larry
>

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
