Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07FD1C7618E
	for <b43-dev@archiver.kernel.org>; Sat, 22 Apr 2023 02:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+i2+RGUrFNTB/LsaCC+nDXcOuV+Id+xmgm5Ps6SKaTY=; b=4+tOtpjfTJ75k5
	lhhOE+1YE7gD2KSqdrfQ5JWILUnEdBSzFWkena8Ozbqa6CE+EZ+FDk8JT9v9qpRteMq97iKw5g5Ei
	t0R56Q8lMun8MACXTmHq4MvPnK8Yu8l6L1IPGvJUtqQReD6GURH/TfWQjIacFugg1xOI/tg5k2AJf
	lLYQqhVQdlIgQ+AyyW3qLWt6xunOExuDW8GJF//wAXS6EQSKSHq0sbh7uuCVIYzrmkeD8iUFcReBL
	cnZ0SZ7Lwmvs22MWL+QKRkdMKst0irKaFCqBoHqtlkhPFLIGAvudL8uqijeWgfkr86hGhdao7dDo4
	8Zinteju/bCbaAYLXFOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pq2Xg-00CEa4-0U;
	Sat, 22 Apr 2023 02:00:00 +0000
Received: from mail.rslp.org ([46.23.92.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pq2Xb-00CEZW-1R
	for b43-dev@lists.infradead.org;
	Sat, 22 Apr 2023 01:59:57 +0000
Received: from [IPv6:::1] (<unknown> [2607:fb90:37a:3c0a:40f6:775a:9fcf:f54c])
	by mao.rslp.org (OpenSMTPD) with ESMTPSA id 532b3c7b (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Sat, 22 Apr 2023 03:59:48 +0200 (CEST)
Date: Fri, 21 Apr 2023 21:59:45 -0400
From: Pogprogrammer <spikey@rslp.org>
To: Larry Finger <Larry.Finger@lwfinger.net>
CC: b43-dev <b43-dev@lists.infradead.org>,
 linux-wireless <linux-wireless@vger.kernel.org>
Subject: Re: NetworkManager cant connect on Macbook Pro7,1
User-Agent: K-9 Mail for Android
In-Reply-To: <19d8ea51-d37a-5446-fd7c-716e7e8b1aef@lwfinger.net>
References: <50BB827E-7437-4E25-9F5F-636115EF2D20@rslp.org> <19d8ea51-d37a-5446-fd7c-716e7e8b1aef@lwfinger.net>
Message-ID: <A174C362-2FAB-4191-A967-84D3B43F40AF@rslp.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_185955_805605_3FE56B5C 
X-CRM114-Status: GOOD (  13.77  )
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

Hello Larry,
Thank you for responding. Yes, the Macbok pro 7,1 does have an Intel Core 2 Duo. 
As for my dmesg, I have it on anonfiles for at least the next few hours.
https://anonfiles.com/66ceMcm8zc/dmesg_txt

Again, thank you.

On April 21, 2023 8:05:13 PM EDT, Larry Finger <Larry.Finger@lwfinger.net> wrote:
>On 4/21/23 18:11, Pogprogrammer wrote:
>> Hello, I installed b43 and I get the error that DMA is not supported and it will be switched to PIO. This was a bug on kernel 2.6, but I am using 6.1+. My mac is partially supported according to http://linuxwireless.sipsolutions.net/en/users/Drivers/b43/ and that may be part of the problem, but:
>> I am on void linux and networkmanager can identify all the networks but if I connect I get errors like "not found network" or maybe "bad password".
>> This is a fresh install and sometimes certain daemons just arent running, so here is my list:
>> Dbus, dhcpcd, NetworkManager, udevd, wpa_supplicant as well as the agetty-tty[1-6].
>> 
>> _______________________________________________
>> b43-dev mailing list
>> b43-dev@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/b43-dev
>
>Your description of the problem is not terribly coherent, thus I will be requesting some more information.
>
>DMA should be supported. It certainly works on my PowerBook G4 with a ppc32 processor. I expect that a MacBook 7.1 has an Intel processor. If not, please enlighted me.
>
>I would like you to run the command 'dmesg > dmesg.txt' and post dmesg.txt on some site where I can read it.
>
>The b43 devices are certainly slow as compared to modern devices, but the one on my PowerBook certainly works.
>
>Larry
>

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
