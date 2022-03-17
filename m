Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BD8AC433F5
	for <b43-dev@archiver.kernel.org>; Thu, 17 Mar 2022 14:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWVcOO8i4+P6yrH3By24KjYiZ0ZfS7x7l18leBT8uqQ=; b=oosdjETDkoGoRh
	C3CfWySnBLZxEKaBmyP4AqkNadZoBE7jUbUUZP6WvBMN3pEI/8mnZzWNi7OKEr4g11iOy0uKxGF5X
	96a2hTDHG8B1zqydXpx/t2VXsERiTNSStyJs4PO/t+voYRbX+nf8wqXVBDfYpxnW/c3e1S5mHHdEf
	3Y04Sv2Z57Ub/mHdcnqjaNFnBLrUyVaTqycGX76d87NOGvWdYxaapMOpf0pzE3OJAh2Ooq34C9cp5
	is/DBMmRt+/s6ZQWGE6ZH7c3RednabG2bIIClpyES9RazQgJLYp/uXxU/ivA17s8E4pxOo5435VHf
	DfO6pwjtT7Z6lr0/uusw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUrYa-00GXuS-Rm; Thu, 17 Mar 2022 14:56:52 +0000
Received: from m13123.mail.163.com ([220.181.13.123])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUrYQ-00GXl7-Rc
 for b43-dev@lists.infradead.org; Thu, 17 Mar 2022 14:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=QxCn7
 ECP54w0mWrRi5tt5MspDDhLM2rRPZbqNTyI5uY=; b=X3Vjeb/Y/dbIksF1jV3yC
 0kQrStFso0oO3C0a9uot6G4mWM+LT8xIa+lzzbRZC7bZ1EZyC1XZ3ZZsrke+YfqL
 G4p8h7lbeVFLEMXGawmI0z6pP2R3gcvgtvMxZyY1HhcOcvnKenRZS9xJbsiOvzyG
 fZnRFyHWK1zLSdHPhYJV8Y=
Received: from yxj790222$163.com ( [124.126.178.98] ) by
 ajax-webmail-wmsvr123 (Coremail) ; Thu, 17 Mar 2022 22:55:53 +0800 (CST)
X-Originating-IP: [124.126.178.98]
Date: Thu, 17 Mar 2022 22:55:53 +0800 (CST)
From: =?GBK?B?08jP/r3c?= <yxj790222@163.com>
To: b43-dev@lists.infradead.org
Subject: Re:about 16bit pcmcia cf wifi card summit sdc-cf10g sdc-cf10ag
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210622(1d4788a8)
 Copyright (c) 2002-2022 www.mailtech.cn 163com
In-Reply-To: <a4d0a25.eea.17e5c1ad0d2.Coremail.yxj790222@163.com>
References: <a4d0a25.eea.17e5c1ad0d2.Coremail.yxj790222@163.com>
MIME-Version: 1.0
Message-ID: <6deab57.6a0e.17f9860c6b1.Coremail.yxj790222@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: e8GowADX34_5SzNiB0AJAA--.43869W
X-CM-SenderInfo: 510mlmaqssjqqrwthudrp/1tbiMgvGvFWBx76GegABsT
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220317_075643_304949_1EEAE35A 
X-CRM114-Status: UNSURE (   3.22  )
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


PCMCIA\SummitDC-802.11g_SC_CF-60B2
PCMCIA\SummitDC-802.11g_SC_CF-02D0-0448
PCMCIA\SummitDC-02D0-0448


this the hard ware id in windows.
when I enter card into pcard-pci adaper( ricoh r5c475ii)
it shows could not switch to core 0:(


[  912.003721] pcmcia_socket pcmcia_socket0: pccard: PCMCIA card inserted into slot 0
[  912.003740] pcmcia_socket pcmcia_socket0: cs: memory probe 0xf8000000-0xfb7fffff:
[  912.009378]  excluding 0xf8e00000-0xf917ffff 0xf9f80000-0xfa2fffff 0xfad80000-0xfb0fffff
[  912.022985] pcmcia 0.0: pcmcia: registering new device pcmcia0.0 (IRQ: 21)
[  912.107796] ssb: Failed to switch to core 0
[  912.107836] ssb-pcmcia 0.0: Initialization failed (0, -16)
[  912.107844] ssb-pcmcia: probe of 0.0 failed with error -16
root@debian:/home/allan# pccardctl info
PRODID_1="SummitDC
"
PRODID_2="802.11g SC CF
"
PRODID_3="4.0
"
PRODID_4=""
MANFID=02d0,0448
FUNCID=6

Linux debian 5.16.0-5-686-pae #1 SMP PREEMPT Debian 5.16.14-1 (2022-03-15) i686 GNU/Linux
_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
