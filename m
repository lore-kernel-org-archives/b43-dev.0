Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07C4606A31A
	for <b43-dev@archiver.kernel.org>; Sat, 24 Oct 2026 21:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=prCzT4Mo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Brvbnqfd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=X/AchnjLR46Ev0UV1Ze/RwEta22Hvn8dr0IL6y4TSnA=; b=prCzT4MofgnlCGgSauxLDGTYvh
	J4DsaCZwFcC0b+U8cqW7bRfJliclc2zdj6KEEfSWOFG9nPHfihmU8gEZZz4O4ejWV4L8e/j66Mnt4
	7aIhICF+L2YmPb3yQnjruqV2jajR0+Giof5fXxMvQsMlnx+cjgzQ/bU8wAA8cGG9Caj7L89+8wCkr
	kNwMeguxU6l0iyErQejaC8pwa1T1eGRLtMOoSoOAsQvR5ORxZInP14srPf7LvJCd2HeXHi4r8J2pU
	eFYPe7pXv0aT25KnWT2IQ1o/HGLAleNToXrgkrSRRWZCBYuz5LcupLESmG9YSThIsEJ9FdtvimDQ1
	7FcgZzfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKjbR-00000000ZJM-314n;
	Sat, 24 Oct 2026 21:48:37 +0000
Received: from mail-yx1-xb136.google.com ([2607:f8b0:4864:20::b136])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKjbL-00000000ZIt-3tTU
	for b43-dev@lists.infradead.org;
	Sat, 24 Oct 2026 21:48:33 +0000
Received: by mail-yx1-xb136.google.com with SMTP id 956f58d0204a3-67921b515a7so1825514d50.2
        for <b43-dev@lists.infradead.org>; Sat, 24 Oct 2026 14:48:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792878510; cv=none;
        d=google.com; s=arc-20260327;
        b=bgGSebWaqFrCv7TktUpRfRrA+XvsST9BTqrYFr2OQZ1KI+sMMbHQCg2KTNtkgLYlGY
         qjpJT8MpyuyJ9RwX0axLaVOYNlFV335V8m7dJF2JJk5HA6VALQGfytCGWxcL/62K2zbL
         H8JN5bIT/hhQrUmIxB7sLAHFw2CgpQYj69rarxXILA6SV3YR6mOTr3m6uu4CExcuSGsg
         DY5kerystN832Pvy5JjQ9DXKxtDh30yVOrNzaHGEfgnKPC/gicONO2h20tld/IhAL88M
         nlvuVr1Sk9cwgPV7ppSAgw/IlPmAkEQPadjpbP+mpyDjLxuAt34ncIOX0xSzjX0iKFn7
         0whw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=B22PeW0KSxJOptnl4CVauMg+1WFHTB5x2jSa9vro5So=;
        fh=ZslwURZJn6fkMxOTtTczWHBLVnG8t/jfrbqJ7Rn24J0=;
        b=TibQoIP9wV+/551DeLdmW+eHpf74BKfNvpos1JeJ1jl6i3KgEbcWBmRBcMEeZ66vaf
         MuZKsmYPD0BxIYANnOEF8W64HoQKEQzAUM4DQJicyOL5eoMYlvRTOaUYihQK96WYNIMa
         MgPOaHLa+fpvpZ9pty/owQzdQF/ulcG0oYhs3qgu+3iz7buC/f/gWVtQcvvbNjwD+Seh
         XXG1HWw2ZTB5mn8RNy+YEyL0SFv7rcMLTb+Ia+DECeL1/ndIR9579fiaImpxHgOzP7/y
         6zBGvkCCPNTqdxSZPvkDDTKaLR5wIZfe+mXBEzhmWcx1Q8mG7yapOPbYMpq38LP9w/c4
         peQg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792878510; x=1793483310; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=B22PeW0KSxJOptnl4CVauMg+1WFHTB5x2jSa9vro5So=;
        b=Brvbnqfd0FNeAAHk//EfZ5QkLDYL/BdI5r/cecA6I9ciNvBbkHloa0cfGvIzBZYKDp
         5cnjrq3yULjaYmxUKMbMlF4+L3FKg8Ivrq18VWFEYIcQQ/dkwov3ai7rm0INbDZ1XA7v
         BIL6Kou5v7DdPr2ZBnyyr/Y5zzBax+wLVlysAZK8Sl7xpb5daLpI/9hRiMlC7cpgdDMC
         6Wos/gnIawHMiiKQ6i0+t/GTLmzHZ14l7OnGHNswKA5fSMq6M/W5TRzYf1Sse3Ng4S/Z
         7SOeivYJzt7eAiUxu0mfKFF2KlCFyvLIDTKeJ9LGW1GbkbK2cItgr1ajNHZQ9gQLWzuR
         wY8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792878510; x=1793483310;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=B22PeW0KSxJOptnl4CVauMg+1WFHTB5x2jSa9vro5So=;
        b=uVNxHTTkoJsXkMBvupkf7BEQ1VH82HPvxFaqUGIJkQv1odH9AxJsjEIH1H3M/EpHzP
         EwY84feCOUP+ZC+6aRLIoKOJcZgMUy/sfVm2YCoMdfhMpEEkqsgxf8V30WPELosASL+u
         BnvtJ2m8NezzmBFPp4n2GqZW+k+mLI7ofrjfz5go/uy0RAMO5m9T67dyHsWNnXErHFW3
         EjK+06SRiKWUBJa1tcHsB0Vjzlq8W/iQ/fMtg+FoPuvYpIP0ubDPtFp98PQU5Mgd2tvG
         JzaGrehHT6JIkaQd/WDWmFt1TGmppJ9dWuVqOoJsftVHdMyoFtTf6doCu7/p7x2IreyR
         mTJg==
X-Forwarded-Encrypted: i=1; AKwUvBy+Mi2YqTL48a1nbggwmHPIZenRazEaDt7PJnEO1LvngNkL1L9zerlInFnDMecXOgQOrD/mteIm@lists.infradead.org
X-Gm-Message-State: AFq9FYL9YnpciRXMtMCjUSXC3WbiVZ+0BV/XvaIiu5yEJj3FK2TKJE+l
	dXtpKjbGvZoTu11mHxRD3s+6xoIn5rf9/brzuHmqz9j84VBnY29iB///qe4TQ8oU70NtQu2Mkj/
	jodLubPHhE/wwl/o+0K/7ndyJODQalE2y2uz1KXw=
X-Gm-Gg: AYBFou3lCvZ+roWdhug0bH9aLQnsi0+Sj+UMsjufuokxyBxBYaa0Ax+Bv1smJAgI6g3
	cl1J34gI+6AjD6FD1Y/vR/j/lKTqqjeoVl+fOBkr8aILfJnIXl3nL74lfCUUsD4qHgoV5M0578G
	p3qzsmK25i+P/VHxRP1nRHD8D13pcrC7pcJ9GPk8QdYVejLyF5CqfgNa09qNZpqNAk+eitF30Xe
	t+kbzYF9sYq9m5fUetzuU76vS6PD0Vz1WBOsOAdzbfR3B2W9bFKuhk7pChoAlqCYsIEB0w3VQzp
	DX9VgsUH3M9R+izqgblBxQ+RpW4Upn5nA2cSu1kqX6Aa+Wx/1BddjScse2/MCoDKtDkXQ1DQR8L
	2t92nABD7HU8qk13dDhh7LZaDYB8fTt8UTp2i/p5BsYI/b/AtzV0oee3HwUYBLn5YzNfD
X-Received: by 2002:a05:690e:4402:b0:677:ceec:5eb6 with SMTP id
 956f58d0204a3-67a4549f020mr1731583d50.91.1792878510400; Sat, 24 Oct 2026
 14:48:30 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
From: Luca Casati <luk00casati@gmail.com>
Date: Sat, 24 Oct 2026 23:48:19 +0200
X-Gm-Features: AclHuK_JlPRfhqgk-dIAhc7Duvk3jv4nFMsVJPa5857f4E-xR1JaGe3jcyIyi1Y
Message-ID: <CAKM5oscz9UfiqFr_wSmzjcpsZ3QEWvUJuVa0kLhmz1TnF+aBoQ@mail.gmail.com>
Subject: [RFC] b43: N-PHY fixes - OK to cite wl MMIO traces in comments?
To: linux-wireless@vger.kernel.org
Cc: Johannes Berg <johannes@sipsolutions.net>, 
	Arend van Spriel <arend.vanspriel@broadcom.com>, b43-dev@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_144832_001282_76D2FD68 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

I have been getting b43 to work properly on a BCM43228 (14e4:4359,
core rev 30, N-PHY rev 16, radio 2057 rev 9) and have a small series
of N-PHY bug fixes I would like to submit:

  - TX tone sample table loaded as all zeros (operator precedence and
    a double fixed-point conversion before cordic_calc_iq())
  - TX IQ/LO calibration: inverted busy poll, result copied the wrong
    way, missing rev7+ cleanup
  - rev3+ RSSI calibrati is written instead
    of the selected VCM, plus a wrong distance term and rounding
  - 2057 RC calibration:re it starts
  - a missing field in the rev7 TX_PU override (compared to brcmsmac)

Where brcmsmac has the same logic I used it as the reference. Where it
doesn't cover this radior accesses against
an mmiotrace of the proprietary wl driver (6.30.223.271) running on my
own hardware. Only the M did not
disassemble the driver.

Some comments in the patches mention this, for example:

  /* Values from an mmiotrace of wl 6.30.223.271 on radio 2057 rev 9 */

b43 already has similar comments ("Extracted from MMIO dump of
6.30.223.141"), but I ware comments
naming wl and the trace acceptable, or would you prefer the values to
be described differentlyat all)?

Later I would also like ues (PAD tuning,
aux ADC midpoints) taken from the same traces, so the answer affects
those too.

The patches were developg assistant. I
will mark that in the patches according to the kernel's documentation.

Thanks,
Luca Casati

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
