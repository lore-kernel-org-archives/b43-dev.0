Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2530CCF9E3
	for <b43-dev@archiver.kernel.org>; Sun,  2 Nov 2025 13:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DjxWaDNGSRSAOhBaKROnOOq/Z+Pgi9Z8d8a0YBg1anM=; b=e4mX6gjxoTzCJD
	G0cXT07DUa1Vvc7hNigFHfonJGrWdIOMeAbefbClsoG15UB+k+3Ns0jELEpbzDeTgQtlcrOlsbWki
	HoNRUXsBSVhyamfUIeGJ+uywtsYsiXwL5TRlUJQkrGd70CegbRAQP538xbTFtdhrQKU/8a8xLwoZ0
	NYRiOJOF6Fs7S4/JD36UrxZvKKZGN962nL1fvY+u0BKbGKdPuozpSkk3C2xKLMU34zvUkvHe0JNre
	4WYfjBcmJ14OOxOdxSiHgYIhQIjh6GsC69HKapJwdUKKDSbWUFYQ1APnDWT72DQ4dfNQ7uhwThFXq
	J4RcJXQ1dDr4Md6G6k5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFY7H-00000008Yr1-0HwV;
	Sun, 02 Nov 2025 13:27:31 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFY7B-00000008Yqd-3rfG
	for b43-dev@lists.infradead.org;
	Sun, 02 Nov 2025 13:27:27 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-b550eff972eso2536045a12.3
        for <b43-dev@lists.infradead.org>; Sun, 02 Nov 2025 05:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762090045; x=1762694845; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R6SA1ev4vId5ptZ+vYLkDAhDbJK/+ZkuwUIWh6j/WKk=;
        b=Ul8lk0YJ2lngY6YNPssbw0iTCsH6j2fwYlte4JEeN3Gz441B3DyL93WBUXLPJYjqA7
         414hhrUJTBA6VLPBDZb9DUO+rGp3OfF6riLfxkbTnB0VZLlicBUB3rbRELgEpEnWOhZ1
         2AnKS39F/9wHvLP//Gi5qhd0vpNIhpDwcIKR+OShVv8ILuSLPdhuG6cJMaFw+HuTAa2O
         YOr5qChy13Nlvn3Qg70by1jvwdhY5wcT+of0890n4KZiryZz5sm6lCl0ipc/W6dQc4pQ
         5jSqXptMKsNyMJ2VLuDBMctF8gpbDi2K84pZrw680e6a9uJdyRGEOY9vCdZDRFWR526a
         3dZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762090045; x=1762694845;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R6SA1ev4vId5ptZ+vYLkDAhDbJK/+ZkuwUIWh6j/WKk=;
        b=osmkLEVYtr8RDzSZSfkU+tGcMrBFwynMblOvyZ4dHFJZAueb7lCW618DzZm2fYQcut
         nEJpKND84FSQMQ4qSkTfQnWu8cKOiFAnpQ1DTYrFPr/zFwE4YK6O8WF+JFI0xkZzg71f
         6T8VLgTaplalmXwDpCSxK7HI/WqvCf4HYItVC6Ck78QDCpC+1kiIBIwySV2BFkgHqlOU
         QryYYG3qC1oIqNIO/iLp+vCdt7y/bJgVpvdVvSTDA2l5RHqMA/ZV6Zuw5jQ0Z9IrIBYU
         f14tzcghVNbYsrq823uTXwbmOqomeUV2oKxEKOz+Mq5QaFcEk3f+IA7P24agoKfP6Sme
         Yh/A==
X-Gm-Message-State: AOJu0Yz7oqR8pzEvvx6CIt3NagHhy7fbCV8+uHw4kaaRJ4C+xtBV3TgZ
	s7ANSqmTHUq9yMT/KyUp200LdY/Yqcf5Rdg5U3TOpbW+EB4NzntXa9gmK1zx1PLqL3UmneF/dUN
	Rtk1dAv9iYPc0bs6h1Tm7Pn/DIh0ugZs=
X-Gm-Gg: ASbGncszSwkvlDKbH/tmRIvG6YzDdnzFRKj4Rdo7sicfvLwDRy5Y4hGkrzwO5T89rYx
	KiccYFRy1c5C8p5HIGGEgfuCFMNY7P5WUqo+uM/Yu2vJEvkb2t4mhjqAiigHHR6fm1ZRFSAzG9/
	iScIqx5XOsNIx9j4UZGWHNNfY3xGYNlol31A5pAnXpt9aKrYh6RS2rKxaWxKr16uQmKEwHSuI8+
	TjjxdqagC2Y6OeLwi/7KiVxjEfuNJdl9LseTaDKJCtaxsysgsCNVUGarmPi9ONh/N8E
X-Google-Smtp-Source: AGHT+IFXMNQ6bqxdCUMAZNM5lKRmt9hh7BQRNqn64KpipxL/6mIadWN9lRa31KZfIcU6b/9SCfuLY45Z4lEBUJdNLk4=
X-Received: by 2002:a17:902:be13:b0:294:66ad:113e with SMTP id
 d9443c01a7336-2951a5c1fe1mr93261775ad.47.1762090044707; Sun, 02 Nov 2025
 05:27:24 -0800 (PST)
MIME-Version: 1.0
From: "Zedequias Marin (DECO)" <dudecco@gmail.com>
Date: Sun, 2 Nov 2025 10:27:10 -0300
X-Gm-Features: AWmQ_bkl4GMIpjJMZYaT8OxjgnDEUfa-gArWTwHZcR95LlRTrqRtPKZnNI7wh00
Message-ID: <CALaz+jkqX=JX5ODuSJTm0k_qokgYidQ5+Zu1vBuu-zmFZ6JWqQ@mail.gmail.com>
Subject: BCM4312 EEPROM corruption recovery help - HP Mini 110 U98Z049.00
To: linux-wireless@vger.kernel.org
Cc: b43-dev@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_052725_964909_3A32C4A1 
X-CRM114-Status: UNSURE (   5.31  )
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

Dear Linux Wireless Developers,

I found your 2011 thread about BCM4312 issues and need help recovering
from EEPROM corruption.

My Device: HP Mini 110
WiFi Card: Broadcom BCM4312 802.11b/g LP-PHY (14e4:4315)
Subsystem: Hewlett-Packard Company U98Z049.00

Problem: I corrupted the EEPROM while trying to configure as WiFi
repeater. The card is detected but no wireless interface is created.
EEPROM shows repetitive FF/3F patterns.

Request: Could anyone provide a known good EEPROM dump for BCM4312
(14e4:4315) specifically for HP Mini 110/U98Z049.00, or guidance on
EEPROM recovery?

I have EEPROM backups and can provide diagnostic info.

Thank you for your help!

Best regards,
Zedequias Marin
From Sao Paulo, Brazil

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
