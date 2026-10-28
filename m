Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E034B606A96A
	for <b43-dev@archiver.kernel.org>; Wed, 28 Oct 2026 18:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EueEyWo+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jwoj/WJG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=t46vgzZSvC0/NgdbVfaYpynUhQjH5tuL43aOp3aBibE=; b=EueEyWo+jSwHeenJf+Cs6TVIDi
	8gxrryf2FcR/AMqcmzPXsocKE26Zy0aSFaUsfY3iadksppVqtFXgyT6cdl5oOZyUSUQpVCZF8ZvWn
	ZmxAJE/3q4CjtwjYuvj1MiN4J3iGuCG41gpHc0/W73M0nmtLixQxQ2oydoZ0D/z5OcmSaxBEm4JZz
	pYmaUZ/082AF5D0mDS/idMA8hAB4dvVwx3EllJ3l+Xry9Zdj7XjCeBeN27UrJnQKDqwPvGwK8QNTd
	DdUSO10+Yp2n8m7DURfYRAxzfi+NKtRCaWRCDu75gzDLndqMtWRnfr7+j+Sq6uMqI1IkY72JtbeKV
	yhZlgM6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM88E-00000007ja1-0AOH;
	Wed, 28 Oct 2026 18:12:14 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM88B-00000007jZX-3fjv
	for b43-dev@lists.infradead.org;
	Wed, 28 Oct 2026 18:12:13 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2e96502e447so11497085ad.1
        for <b43-dev@lists.infradead.org>; Wed, 28 Oct 2026 11:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793211130; x=1793815930; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-type:content-transfer-encoding:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=zVJqOS1cNxeL6RKZm/wJV+026QQ3gHNzQvPgsK80tiQ=;
        b=jwoj/WJGxaYsMCsmqbyJ2lLb+pZGKgEfcs8o2QcJcvaj3J+pSaxVBY0kLJni0UMF7W
         MzJpyzuwKqrpi+8jJmUMOTz/3oN61P3pyjtMg9O4iDOVPESs38WyevpAUJWSkBbgH/Iu
         M4L4qK/mZFfwLnsj4AsiWQgXQAwBDUd5NeeGXQ20wz8k6cbI/8KbU6zcWNzvt3VtI4C5
         UXzPfFKALWXp9uVSveT7qKZhgzLUTPwATznrXX+Pd0dSG9w1Pp9facoaLux/tQ93KeDK
         PVvcFyUGC6mSTkyeDaYsQTn6yEKloj6vYfvrUkMDLZTHARKMmZo4zVwi2mp7kKEyHDyN
         pyQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793211130; x=1793815930;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-type:content-transfer-encoding:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zVJqOS1cNxeL6RKZm/wJV+026QQ3gHNzQvPgsK80tiQ=;
        b=eZx3IL83yPJDiFEJ3E1Y5Vczzphp4urxH21mMOjGdncXbr8SvtBXydEuvnzAo2E3iM
         V2gAnHk6xJlmd+YvAgaRirP3ofquCBZzywq1w7hKF4n3D57qwRUsJKb22lDasKb9yAkF
         SfzuJPJzC0Va3wZ5DnDb4Ypw5bAs9pQJDYMzcWJFZH08zsgiLRg7X27cnSd7qKH3bJws
         hhuRUndtC1/WESlZPRGeiQEE7i1JVs5v8QgNwN3jjQV/IbOrv2Q3ZNWshgrui3ofvWEf
         hVgWe8Dj9E8MrENEoETOnf7a+8xDUAI7DoE1Tp1ehF7foC8rwNPthMQmxx3d8+hdA5CZ
         J3dQ==
X-Forwarded-Encrypted: i=1; AKwUvBxt8l7iPxL70/qUmcJP7pBOMXHU3LZmvmLIRiZAU/MHBPYr+GeW3Pw3tpMcHNtxNEo0gcgKRbpm@lists.infradead.org
X-Gm-Message-State: AFq9FYIgKC28B7eJUQ96WHb8OU7950wwI5C2stwKSwxnVShCiX23Eaka
	yU6Zr+TFnZk/FQWmogkQE3edrBHukObmNXQiaZBQFo6UN/2Mw/IkaXl/pEztwA==
X-Gm-Gg: AYBFou3MZthTtjQ4JiPE4gJRWk8FnFKy2dSdnTF4jFOBjrsqNzngV+rsW9SmBasdU9R
	3jSTId4/Ba+HvjWkvZCMb7U7mK4m92mWNlXYZa1o5KR2Yoz9TTMOAFgE98nVRsKeQ+fMTzLTOc9
	ifKZYx3hxuK2ge+ClSWHRBoczGMPAGpnEdWeAk+GeDFnUkFNf4GHCi4yon2kzB86EFCJ9LHLtlK
	UbefkX6OMREHg9llYz9QuIg8uWkw6u/+z+d7DhTdtPIuIExTG2uzrDkZ5RmzQf4SeOyaz32eKb+
	yERu4r4oZ0VmTIhG025eSolCOAP+aJ0Skb7ePC2hhBVwZjEue1uwAcz/0oTYwSvqxQf1cCWX7JT
	lZGk+k0GSL1XqNV0YsPte8XQ05A7vysAynj6E9nXzqydJIfATD7GOHaUt8iM+BLCuSReUBI2ALO
	kFvGHEoR3xAv/kpkcOuJM69vI3hp2x6t0kEINy87kfzOCKpuVw8Ea5oD9dmT5enMsxtBAN+qN3q
	Ix0qscP3ukrXENi/8W05SecoTuh8HHbkSeEQvA+sAC1OZMPDnAFjvbY7hY5j5uZkADhHbEKOGjD
	sdDQgKOJeNbZA+3sWNekfEFU6i0cIFu4noYwMkABaaURVl3G3160J8GcquBpp1xHJXQQifhqDD0
	0+Q0cLUWsVPd7tA8DmsxWN9nr3lT1Yh5x8t3ssIYsAX0G6EGbVvaBxHmAUpq63aqxjxlGrOjTBX
	u11w==
X-Received: by 2002:a17:90b:2541:b0:3ac:80de:44e8 with SMTP id 98e67ed59e1d1-3ae582c2b65mr2312390a91.43.1793211129947;
        Wed, 28 Oct 2026 11:12:09 -0700 (PDT)
Received: from localhost ([2601:644:8000:37f::e34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae6e7ac878sm536684a91.4.2026.10.28.11.12.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 11:12:09 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Wed, 28 Oct 2026 11:12:08 -0700
Message-Id: <DMGOAJTSLTRX.3NHOMSGMQXH1X@gmail.com>
Cc: <johannes@sipsolutions.net>, <arend.vanspriel@broadcom.com>,
 <b43-dev@lists.infradead.org>
Subject: Re: [PATCH wireless-next 0/5] b43: N-PHY: fix calibrations on rev7+
 (BCM43228)
From: "Rosen Penev" <rosenp@gmail.com>
To: "Luca Casati" <luk00casati@gmail.com>, <linux-wireless@vger.kernel.org>
X-Mailer: aerc 0.22.0-0-gc2f86b7abde3
References: <20261026181543.77763-1-luk00casati@gmail.com>
In-Reply-To: <20261026181543.77763-1-luk00casati@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_111211_919585_31152A3F 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon Oct 26, 2026 at 11:15 AM PDT, Luca Casati wrote:
> On a BCM43228 (14e4:4359, N-PHY rev 16, radio 2057 rev 9) b43
> associates but transmits poorly: high retry counts and low rates.
> Comparing mmiotraces of b43 and the proprietary wl driver
> (6.30.223.271) on the same card, together with brcmsmac, turned up
> several bugs in the N-PHY calibration code:
>
>  1. The TX tone sample table was loaded as all zeros, so every
>     tone-based calibration ran without a signal.
>  2. TX IQ/LO calibration: inverted busy poll, reversed final copy,
>     and missing rev7+ cleanup that left TX dead after a cal.
>  3. RSSI calibration: wrong VCM written on rev7+, wrong distance
>     formula, wrong rounding of negative offsets.
>  4. 2057 RC calibration: the first run was polled before it started,
>     leaving SCAP at 0 and the TX low-pass filter detuned.
>  5. A missing field in the rev7 TX_PU RF override.
>
> After these, the register writes for the cals match wl's on this card.
>
> Patches 4 and 5 and the cleanup parts of patch 2 only affect rev7+.
> Patch 1, the poll and final-copy fixes in patch 2, and the
> distance/rounding fixes in patch 3 also change code that runs on older
> N-PHYs (rev3+); I could only test rev 16, so testing on other N-PHY
> cards would be welcome.
>
> Tested on the BCM43228 only (2.4 GHz, 11g/HT20), on v7.0; the series
> also applies to wireless-next. Throughput to the internet went from
> about 5.7/4.1 to 11.1/5.2 Mbit/s down/up, with fewer TX retries. That
> number is limited by the line and noisy, so take it as a rough
> indication; wl reaches 21-32 Mbit/s down on the same setup, so there
> is more to do (PAPD and TX power control on rev7+).
>
> Comments and changelogs refer to wl where the fix was checked against
> its register writes. If citing the proprietary driver is not
> acceptable here, I am happy to reword them.
>
> The bugs were found and the fixes drafted with the help of an AI
> coding assistant (Claude Opus 5.5), working from the mmiotrace diffs
> between b43 and wl and from brcmsmac. I reviewed and tested every
> patch on the hardware above.
I'll just comment here instead of the individual patches.

For all of these, Fixes: tags are appropriate. They help linux-stable
pick them up. Meaning that wireless, instead of wireless-next is the
more appropriate place for them.

The whole Assisted-by thing is deprecated. It is no longer desired to
advertize such a thing in individual commits. It's fine for a cover
letter.
>
> Luca Casati (5):
>   b43: N-PHY: fix the TX tone sample table
>   b43: N-PHY: fix TX IQ/LO calibration
>   b43: N-PHY: fix rev3+ RSSI calibration
>   b43: N-PHY: wait for the first 2057 RC calibration run
>   b43: N-PHY: add the missing override to the rev7 TX_PU command
>
>  drivers/net/wireless/broadcom/b43/phy_n.c | 120 +++++++++++++++++++---
>  1 file changed, 106 insertions(+), 14 deletions(-)
>
>
> base-commit: 028ef9c96e96197026887c0f092424679298aae8



_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
