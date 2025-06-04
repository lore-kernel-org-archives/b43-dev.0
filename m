Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4C7FC5B552
	for <b43-dev@archiver.kernel.org>; Wed,  4 Jun 2025 05:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F+Qc/+UoyVJPP+loQ7vfKMC6Pafp5KYW4jyK4Z6k5Cs=; b=MBR
	yUHnLIzutHnaA05gLwGMahEHxya/N+QFlA9lvwnTW/F9D5nJKtwyhPpQTqed4tO92ZmOnB8dzML2x
	IrsCBbYtHPA5lJY2EaFCmmC22P3ftAoVgjnOqBqoPWyN1Aqm7GCsNSL+QjMvhSlY6+xpKoaxXLNTY
	is6dPQUNKAG1MZo8oJKccGKuWfYNBZIFfQiM1Jyw++CDtmPlBFSOhXtOEGwtxGvY/p/ypW88+S4Hc
	AZ3IWDLm+x+xkIAcOafUWKTjB4qoEvav+m/6hspRBoT9Y3ZdprHyMqDsnmt/HQmQqyjPinvxl+JFq
	eLeLWYy4kS7IG/CShpMJXlto0gWdPMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMh3y-0000000Ce2P-32up;
	Wed, 04 Jun 2025 05:53:22 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMh3w-0000000Ce1g-1ofV
	for b43-dev@lists.infradead.org;
	Wed, 04 Jun 2025 05:53:21 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-70e3980757bso5100227b3.1
        for <b43-dev@lists.infradead.org>; Tue, 03 Jun 2025 22:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749016399; x=1749621199; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w8aLDE8AwaWG32WWEizUl0wNNOIjJ7cMOHnX3qxsVbI=;
        b=nYPylA8+bnQgFON4+UuCwZ2VbLiCtoMjGZiuYFgsdxSpremqPNgeL2x8eQF6u2NRVW
         h6K6D4K3lddDM98Q0kFB06GO1t2vsQfb/N1moCuwsGb9GCjz/bCOCuzUaVvnskKD/CVo
         Am8Lq7z6v0oePl/qCPDFVA8HI/CVBu1i4Mk8sO8VZI3Dr+6Dh/DxVo1Y5hKU1wfWXQp4
         eXFCs6vxw75M57dvwuKEno3bkalA7ZlosiTGU5lKlxLovG78vvfbJ/3i8hck1HhOGIYH
         q2E/vHaEz7D+ncsLIdwi2NkrikNMjytX9ymdYjBWM4QbtsE4xJFIkooAX34X5hHMkbGz
         K4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749016399; x=1749621199;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w8aLDE8AwaWG32WWEizUl0wNNOIjJ7cMOHnX3qxsVbI=;
        b=QUqgqnrzRQlqb2uh2+9RxMXYAcMafJiw6YWbPW/Z8RiWPgR6PI9MRQ2+IKTK6iRWpd
         4/Id5T/K+G32Idgl73qbjF36E1RPdAUHT2n0p6QRu9qXGtt9mZJuQLigkwOMPiBx3F8k
         CSsQvRti7PUOeB1NQlDvEovD4SFaPNSMrvDlrrZeXJxDiSybIftihF+1RszO+BDbGbn4
         mEXLPsPBOLsCcmtzdnubuMatwOJXDE/N3ZeDNs9pEqm3vJq0yrUGtVxLsomoZxlENZXX
         Qfh+wyuDaUN0e/Msq9VOZGnm9oo9UKnyHcNzi34M03TBIKYPtvgBuhNWhELgNhEQIMp+
         MNww==
X-Gm-Message-State: AOJu0YwpCgPaQ57MELEuh+EzVI8Zn3ABDFf62T6sjimUUh8W44imUFJz
	nG+ksdyQUbn22puYFe+8cTj4slRiLblh5zdRvwkQnGn5qIYuN/TpSb8HOlOnlhggLn8qb9QAWIt
	Db1NdlyviGeMobYG5ZpzHGIst7mWh9YDi8oBZ
X-Gm-Gg: ASbGncv5Vl7k8PZBOBsJIA51/PYQ6H+LAPFxtnbCBaO/R50Ew/zb2FvbLkQ9x8wloDQ
	MtiOLb7f5RIHtqg9ccMArxaKVD74nTKcABQ0Z83k3MYMNor2hofRGJd5A/d1A9k7WSDFJ3dYKjM
	cCkfNXDv/jEp6LfU+cuyGaFZIXqS6i+LEv
X-Google-Smtp-Source: AGHT+IElHmZNFoPUA37dON5pqQLtLPK8iLk6uCbMXccA+VNUPZ15aFOb64g3iXD+ak/vDHLKF+bhQiqc1VnmPO4UHx4=
X-Received: by 2002:a05:690c:6204:b0:70d:fd6f:b151 with SMTP id
 00721157ae682-710d8d49089mr22504767b3.11.1749016399068; Tue, 03 Jun 2025
 22:53:19 -0700 (PDT)
MIME-Version: 1.0
From: jason o <stanwebber@gmail.com>
Date: Wed, 4 Jun 2025 00:55:23 -0500
X-Gm-Features: AX0GCFvWCeDO_DqwyZ0vDMAXCcAawkSoYWAjIxxPXn6deG7uuPcEQNYVAEyfg7w
Message-ID: <CAHxxTmT7y3iBcZt82CQMuRNi3AUZa3CZruMug+U-ay-wjAURNA@mail.gmail.com>
Subject: add support for 16bit pcmcia bcm4306 with unrecognized manf_id
To: b43-dev@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_225320_472131_9A07DC9A 
X-CRM114-Status: GOOD (  12.37  )
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

this is the card in question:
https://wikidevi.wi-cat.ru/Inventel_802.11b/g_WLAN_PC_Card

the card i have was only intended for use with a consumer set-top dvd
player so no device drivers exist for the unusual 02d0:0425 vid:pid;
however, i have modified the inf of generic bcm4306 win2k/xp drivers
(bcmwl5.sys) to successfully work with this card in both wpa/wpa2
modes.

i believe the correct linux driver for this device is b43legacy as it
supports the near identical broadcom card (14e4:0425), albeit in a
32bit cardbus form factor. i have been unable to test this assertion
as 16bit pcmcia bus support in the linux kernel doesn't exactly follow
the same typical conventions as the pci/usb bus where unrecognized
devices are handled by writing a new vid:pid value to
sys/bus/pci/drivers/{driver}new_id.

i just don't understand the equivalent workflow for pcmcia. i tried
writing "0x3 02d0 0425 0 0 0 0 0 0 0" to
/sys/bus/pcmcia/drivers/ssb-pcmcia/new_id, but this failed. i also
tried my hand at recompiling the linux kernel by modifying the #define
SSB_BOARDVENDOR_BCM from 0x14E4 to 0x02d0 in /include/linux/ssb/ssb.h,
but this similarly failed.

how can i test this card with b43legacy? what is the correct procedure
to load the driver for unrecognized device ids? how do i make it
permanent in the kernel source if it works? thanks.

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
