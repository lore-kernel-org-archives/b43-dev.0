Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36B00C05027
	for <b43-dev@archiver.kernel.org>; Thu, 26 Jan 2023 08:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GL6jaBMLx1P2d/9NFJx4Z5lyIfkOEoronZWM0hUuQGA=; b=vpWkyAxUHUQPWx
	osjV969kTgBb0OSUh1I2ewJ7eZH6545qFWyOmU/r7JxrcuogYPey1gVMsJICHHL8Jz6LP6CRCsyjm
	Wjg3XPUen7nYtbrcBbvLjhoeZP5viG51kaysXvQRYOcVG6M1PyxaA2ViEqjy6dZgLM4IkJLFZwQq9
	dD2KUy+I2BMo2dX1qckpNRA1pRKi0X2klqSzZcQ5eIXHJrviSa6vIESmDKY4gW1kX8Uqvw8jNBxZk
	mC6zAjr/cbe95hLB0ibSdRvLRtslxNhS4xkySICADq1yLJ/qktkZxD9aJrIBANDzowD/tWP/RQMVp
	Vfy+Tg7BexrP7AZXGk5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxxs-00A6sS-0V; Thu, 26 Jan 2023 08:50:36 +0000
Received: from mail.celldrum.pl ([192.71.213.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxwB-00A65k-BG
	for b43-dev@lists.infradead.org; Thu, 26 Jan 2023 08:48:52 +0000
Received: by mail.celldrum.pl (Postfix, from userid 1001)
	id 2FEE9434CC; Thu, 26 Jan 2023 09:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=celldrum.pl; s=mail;
	t=1674722928; bh=L9MaVcgJQNU45xvlWi+RdqvfUk7sPEb4wFjeNQOGJzM=;
	h=Date:From:To:Subject:From;
	b=u8J4Bv+OkTC9uN26h/ZEJEg6L5CjfMj6hIn1AzTRFlIdQyaHH84qMyVDY4IG++6ut
	 RaIElyiNnp7ST1jYAFHsdgtuuqRzFrnQPzgnHcWq85rgWuf3QgWnuq1xxIpFsPK+iR
	 B3djKBWP/pZwZfiEO8S56BHq8cA9vG7wVs8eluLHvFECfGvdPgJQ1PXN74bwIj09ww
	 FNTJi8h46Pu0OEGKFxEet2XT4DHD5W/OIgprmE6lwHr34p/BquonigJdUPMAep1pv3
	 uSLVPJYHDGIZfK3XuJXdghybrka6leTEHb/b9eEjg0u5TncLoPJnTA53r/Ox4h7w/x
	 6gk6w8tDRZQjA==
Received: by mail.celldrum.pl for <b43-dev@lists.infradead.org>; Thu, 26 Jan 2023 08:44:54 GMT
Message-ID: <20230126083002-0.1.5u.bav4.0.cnczae86dn@celldrum.pl>
Date: Thu, 26 Jan 2023 08:44:54 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Kamieniecki"?= <pawel.kamieniecki@celldrum.pl>
To: <b43-dev@lists.infradead.org>
Subject: Prezentacja
X-Mailer: mail.celldrum.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_004851_697770_268F83FF 
X-CRM114-Status: UNSURE (   2.35  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5IQoKQ3p5IG3Ds2fFgmJ5bSBwcnplZHN0YXdpxIcgcm96d2nEhXphbmllLCBr
dMOzcmUgdW1vxbxsaXdpYSBtb25pdG9yaW5nIGthxbxkZWdvIGF1dGEgdyBjemFzaWUgcnplY3p5
d2lzdHltIHcgdHltIGplZ28gcG96eWNqxJksIHp1xbx5Y2llIHBhbGl3YSBpIHByemViaWVnPwoK
RG9kYXRrb3dvIG5hc3plIG5hcnrEmWR6aWUgbWluaW1hbGl6dWplIGtvc3p0eSB1dHJ6eW1hbmlh
IHNhbW9jaG9kw7N3LCBza3JhY2EgY3phcyBwcnplamF6ZMOzdywgYSB0YWvFvGUgdHdvcnplbmll
IHBsYW51IHRyYXMgY3p5IGRvc3Rhdy4KClogbmFzemVqIHdpZWR6eSBpIGRvxZt3aWFkY3plbmlh
IGtvcnp5c3RhIGp1xbwgcG9uYWQgNDkgdHlzLiBLbGllbnTDs3cuIE1vbml0b3J1amVteSA4MDkg
MDAwIHBvamF6ZMOzdyBuYSBjYcWCeW0gxZt3aWVjaWUsIGNvIGplc3QgbmFzesSFIG5hamxlcHN6
xIUgd2l6eXTDs3drxIUuCgpCYXJkem8gcHJvc3rEmSBvIGUtbWFpbGEgendyb3RuZWdvLCBqZcWb
bGkgbW9nbGliecWbbXkgd3Nww7NsbmllIG9tw7N3acSHIHBvdGVuY2phxYIgd3lrb3J6eXN0YW5p
YSB0YWtpZWdvIHJvendpxIV6YW5pYSB3IFBhxYRzdHdhIGZpcm1pZS4KCgpQb3pkcmF3aWFtClBh
d2XFgiBLYW1pZW5pZWNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
