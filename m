Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69E13C624D3
	for <b43-dev@archiver.kernel.org>; Fri,  4 Sep 2026 13:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGmEr3EF7fp9bFsFfZMi3p7EAbqeug7VbwyOIJ8owLc=; b=Hfpl/JDbDtbWKF
	fUK5uQyG93SqnTnaxQRXTv/44dokjSIvdIMBPLNqMT5O5qKxS8iNjLtjrdRecbhG+ax9RJkpc+VMi
	qLUdVSMtVozfRjr8qycrfvKFJn4VHeVu26782bO73ZE2L459VPyPykJ4c0Jdo6shI5AO4qV/3HCpK
	+S9roEbjKHR/0FfqoKyo/JMdcrC6nW9oaOs4pJW8arB6K7um4iYkio0t4BoCXl3+qJR2VTsK0s4HP
	kv93sBKtFIHbMiJtzTixLPo2pEeyhdGGBuwpLZlHDmeDJ5CDG2vU1Kd3NOBUHRr4lngWDBHoUKcKD
	saXNlcJzKyrrwQTW8DWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tu0-000000029bG-2QaI;
	Fri, 04 Sep 2026 13:24:20 +0000
Received: from mail-vs1-xe64.google.com ([2607:f8b0:4864:20::e64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Ttv-000000029Zq-07yK
	for b43-dev@lists.infradead.org;
	Fri, 04 Sep 2026 13:24:19 +0000
Received: by mail-vs1-xe64.google.com with SMTP id ada2fe7eead31-777c2d69446so708617137.2
        for <b43-dev@lists.infradead.org>; Fri, 04 Sep 2026 06:24:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788528253; x=1789133053;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=gKnbVJWEFk/CLsBUPWolgt07xLoRfVm3ryFkAF5KIOk=;
        b=GY4hki+kht8HYgXh7JUKBLe3U90QdQX4/JP1r9Xu6EU2do1B6PY8wXFkNSGksbCorh
         QjB5Ciqp6yGspOYziglxhUmzh4jN6Ut9CiKN8of44ksWNb8um+bMeHLGj0f1FQfkrA9n
         9Du9cud3wFZtHfu7neignezPGd/XP1SXqdc6oR+gzDrrHsn8pRzIKR8sljzb+/O0gxGz
         +gEfz9fOZjcFk69FSqj0wYzkHNevJziHRHtMhx1pA5KEw19LJ1Tsx23lSyzQjwb1K0o/
         6/jUdynZSfY1WrFHNPXCqnAxLtKgilK1R3Rq9880S/VO7CUnM47AbOlPIR0qEtw2ONqV
         wErA==
X-Forwarded-Encrypted: i=1; AKwUvBye9RILDnyHjlV90rSEYGW8abOnX5Il8nuoElhdsI6cIuO4BOds/31QlX9VxOfy+K8lmyzMlRb7@lists.infradead.org
X-Gm-Message-State: AFuF++miptEr+zjcv4Ts/nl4WlWe1+wAS2N4ivP4a5FoYjZ2AptlG/1m
	/iOCc2bnpWf6hg3gaEqjX+oy5iP4Ve7nBE19D22KsumEEYEs/Vl3wpb/h/r8E2PgSCwslaExWso
	Dk6alL6bQmQ6l1BBzmeFmCMv8XzeW+tKK8KPR/fy2eCa1RmUCmaYBrGL0MTTkEMFroAoncHUbPq
	UgrgdE8S7Y2vgR9AgY5eQ2lQjhnZa1e/DbHnT3lcUavradKuLCkAWrw+6g2OSeMMyp14Zu/fV0J
	uH6YRzO6yI5ZLBv2wulHpYH
X-Gm-Gg: AYBFou09I53bM2nNgGH6ePeN5Pc6Vflm2vnMnSgA9DQ+jB6+BUl3MCTqrVQ0RHCT2d0
	BcWFGcn2uvCc9n3AbgISFuRYTgQNe4RjPsxzsqQnu9NZO2dSLwM2q8yzJjlRVmfYVH1lUCnwsk/
	R0ee3F2UgtJ93vfX2oetodyWYbbF9DaLU2boV9YUskC+PiGbvUiMNa5yRioE1e5PTyDckh4gndy
	R3grjSecKrzQ0JXdbwK/03oNxvLA8RcGZf7lkYrAKIbUDRL8iSL/uKcJm7k8pB7lIDkWfc3DET7
	QVdQx9Wo3bORKvpm+6xAT2984eKpBvYng0/Jrk8ciDS4ORfA7SgV5nP4D7ER43L6V2ysw+h4cgC
	oI6JHBOxwWFoXZULgJgg++Us8e84tJwIlk3zpAJfLXWEVpE6tFKCcd0hmjDLMV35b4nEcDPj17P
	U3IsM3MH0gIiHuvdP5x6ToCrdwpupwLcYWNuWsXh0=
X-Received: by 2002:a05:6102:3a06:b0:77c:6bdc:824f with SMTP id ada2fe7eead31-78a4a90fc19mr1980278137.1.1788528252839;
        Fri, 04 Sep 2026 06:24:12 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-25.dlp.protect.broadcom.com. [144.49.247.25])
        by smtp-relay.gmail.com with ESMTPS id a1e0cc1a2514c-98099ee5672sm234362241.1.2026.09.04.06.24.12
        for <b43-dev@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2026 06:24:12 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92ec3146553so248067685a.1
        for <b43-dev@lists.infradead.org>; Fri, 04 Sep 2026 06:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1788528252; x=1789133052; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gKnbVJWEFk/CLsBUPWolgt07xLoRfVm3ryFkAF5KIOk=;
        b=Ytl383KO1Bj8llUcbvTAAhbqb8MtDqtxuoqvEChgtWkkc5x0VyDau5dIi6usEvg0n1
         fuGHwIqZ1BxQbnJg+/CtRfPenj4dVQOZqGKQIU5B7bYS7IeQxM2pt+C5Le1ngj2QdbXE
         bqisN0ho8CELyWFSW5SIz98Tsc7XF/yLtYYBo=
X-Forwarded-Encrypted: i=1; AKwUvBxZDFjTsdmm98dOZgvyAJG+XpEiO9pZbLtM9OO5lQ2YsqjyLPsUw8gdZAcodUBT8i0atizSfYYy@lists.infradead.org
X-Received: by 2002:a05:620a:d95:b0:936:bc40:cae2 with SMTP id af79cd13be357-9398072a8c0mr585325485a.39.1788528252140;
        Fri, 04 Sep 2026 06:24:12 -0700 (PDT)
X-Received: by 2002:a05:620a:d95:b0:936:bc40:cae2 with SMTP id af79cd13be357-9398072a8c0mr585318485a.39.1788528251581;
        Fri, 04 Sep 2026 06:24:11 -0700 (PDT)
Received: from [192.168.178.26] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9397fb33619sm210778485a.22.2026.09.04.06.24.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2026 06:24:11 -0700 (PDT)
Message-ID: <6e946b7c-50f1-47e4-9073-1dcee4f141a7@broadcom.com>
Date: Fri, 4 Sep 2026 15:24:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] wifi: fix typos in comments
To: Hemanth Selam <hemanth.selam@gmail.com>,
 Jeff Johnson <jjohnson@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 Nick Kossifidis <mickflemm@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>,
 Christian Lamparter <chunkeey@googlemail.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Michael Buesch <m@bues.ch>
Cc: linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
 b43-dev@lists.infradead.org, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, libertas-dev@lists.infradead.org
References: <20260904124353.6183-1-hemanth.selam@gmail.com>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
In-Reply-To: <20260904124353.6183-1-hemanth.selam@gmail.com>
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_062415_075656_F24FE6D1 
X-CRM114-Status: UNSURE (   8.47  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On 04/09/2026 14:43, Hemanth Selam wrote:
> Fix typos in comments, reported by scripts/checkpatch.pl using the
> misspelling list in scripts/spelling.txt.  Only touches comments, no code
> changes.

For the spelling corrections in brcmfmac...

Acked-by: Arend van Spriel <arend.vanspriel@broadcom.com>

> Assisted-by: Cursor:claude-opus-5
> Signed-off-by: Hemanth Selam <hemanth.selam@gmail.com>
> ---
>   drivers/net/wireless/ath/ar5523/ar5523_hw.h               | 2 +-
>   drivers/net/wireless/ath/ath.h                            | 2 +-
>   drivers/net/wireless/ath/ath5k/dma.c                      | 2 +-
>   drivers/net/wireless/ath/ath5k/pcu.c                      | 2 +-
>   drivers/net/wireless/ath/carl9170/fwcmd.h                 | 2 +-
>   drivers/net/wireless/ath/carl9170/main.c                  | 8 ++++----
>   drivers/net/wireless/broadcom/b43/b43.h                   | 8 ++++----
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c   | 2 +-
>   .../net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.h   | 2 +-
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c   | 2 +-
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c    | 4 ++--
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c   | 4 ++--

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
