Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F21C3F43691
	for <b43-dev@archiver.kernel.org>; Fri, 17 Apr 2026 11:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xka+BBu9Jk9etyQHtY4GwJg60aQ8dYcfqcYrPmlQusE=; b=iHtVDI2LfeUCFL
	AqbwD41Mm/aHgpkcp5lIhBZ3GC1VngP0fYBbawZugGBB2BlINOgruUNcf0q5yYcDt+86g8+uPy4Gm
	rgb7y662DI7Pxn6Vf9M5nVtEYFt2dhXD7n3w2RPkyyKPRhGBEkyDEms80mWoREaKB54ixOAFKGOu/
	3sOGa4zQiYdoXuP5jKDFDNNYnCQHQYT69bumWb0TrhsSKuG5/DT6vrFVOsc+kkxI7DxrPyluu3wBM
	Gdvynin1fUxk1lRBTqbXXjmfcsoX8erNYdZWf9n2YMdHnpF7HDKxcrJebd9DpEHUkD/t4OkN89URY
	Pk6GL5wrdJI2ow6RLoMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDh70-00000003xYz-2dsD;
	Fri, 17 Apr 2026 11:11:50 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDh6y-00000003xY5-2JQP
	for b43-dev@lists.infradead.org;
	Fri, 17 Apr 2026 11:11:49 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-48897fd88ebso5972845e9.2
        for <b43-dev@lists.infradead.org>; Fri, 17 Apr 2026 04:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776424307; x=1777029107; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lILZ9xCRIhsyc5RGRj7FW3WYBtZ8SuhhYrZ8gfxfmyY=;
        b=JxLGDCbX/Ec9EvxFCj5+ESjGz2icT5MHq5GjEuqtAZ3Hcsa2N3ccKxmYcbWuwtyx2G
         3NTjKofyLQ06Bwu/mpKK14T/AMM5/w3i0DkhFOqnCOh7ZubsXkFpSiYQh3osRAjNdveX
         sIM0UPFfTp8iD5AXQLVrp0ZsoN8olQkyzaoooHr+oIUG8GhzffYrvEcH4dTPKbbEBcY8
         Gvc+6wqqSg3d+Epc6r1C8nrFdQB8HmSve2IamdBPdHhIwMaGSvC78sbBpYQiK9I8MsBA
         1VYSd4rPHKRH225atXiKSjfXLS5TLZ22QNsbvg/1OmYCqeo9yWVk+sFIxtaqN4HjO3za
         rtCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776424307; x=1777029107;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lILZ9xCRIhsyc5RGRj7FW3WYBtZ8SuhhYrZ8gfxfmyY=;
        b=BIFsy/EBa769RxiZfW2+oZj9mvshw6F6Pqdn4Tw+jTbUiIoYP0Ii3CWVmC7tQ5tLr/
         OiTWGEVyNHsUM9NwE3HWZNPCXviUZpIFdibCf6+REziE8YvsmXUHHQHglNgEk2PJxini
         KxgYouwm027T1L/tDpx3UCaPJCba4BRY5sEJD24a6zAmfW6X6aHmHzJjl1jvLWGK2ULe
         AgvmovsNNm3UOo+Afc2sIKQO7vR/QXcvsqoa8HKhAbFY9iduSAqwg2Q4VevxtbvayVMX
         Y6hPBhLf4ZeWOgIonaZhxRJLhF8nMgT8+D8GrQPbqjJ4RaaBqJxRV098Yhf8dFHTWHBX
         KEBQ==
X-Forwarded-Encrypted: i=1; AFNElJ+QyeGi8RtcquCyiq+dEK7NS0hYYYL9a0pApe63Pi9xtintc/5LEmD4qX4ACIsIMWs6cJIsGpqD@lists.infradead.org
X-Gm-Message-State: AOJu0YzUvdClabroIGCGeqeJvehyVv3GXLUaUcUZOGdzEYKoMTs6CDpQ
	GmAU0LF029PBwbjdIExMNOTFLeEJMI5rzlImMiFAEwXL4Tnsa5P1tgoh6HS5lBI=
X-Gm-Gg: AeBDievCGmL88rhPMYhDsA3kx44D+1+/NJJlUIVqmf/Y+ipTsL0gQce1xlv1OrFocmi
	C9GFAr1AoNSoGpmr5RizzuV+OVZwa6MtbNy7PLttneATNL0TakR1afaDKT5yaNXlDzbXCSjvhAr
	1ZhhT++xxwpuf//39YISrw+0xhEwBH8ZKVlrcqO71y/zViIgIHF5Usss63Wq93Czo/+D6h4k9+I
	cGSZAJjjKUNfCC++dqiYj5gdCLqg/wFkFBURykQRo5EHLrzlp1DHE7tv3H/rutsy+84VMrA8iRe
	5rFVIZjt28Wp4tBzRORm9ugj0rAbO82V1aCh5GBzP6ZWoH+TRI51GzMHJMvFqkNhLUNjiFvXi6f
	WuSXT3RZ/CIK/tSq17WqPOOHB9h/oUyGtIBljsx6rq5qrbwVJtj86AtS413jzMWpgfKmbxow0ET
	8PexI=
X-Received: by 2002:a05:600c:3e05:b0:487:575:5e1 with SMTP id 5b1f17b1804b1-488fb78280bmr36497025e9.24.1776424306538;
        Fri, 17 Apr 2026 04:11:46 -0700 (PDT)
Received: from debian.. ([2001:41d0:303:db6b::])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc0f82bbsm62121235e9.3.2026.04.17.04.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 04:11:45 -0700 (PDT)
From: Tristan Madani <tristmd@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH v3 1/2] wifi: b43: enforce bounds check on firmware key index in b43_rx()
Date: Fri, 17 Apr 2026 11:11:44 +0000
Message-ID: <20260417111145.2694196-1-tristmd@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_041148_593559_99E9F0AC 
X-CRM114-Status: GOOD (  11.03  )
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
Cc: stable@vger.kernel.org, johannes@sipsolutions.net, b43-dev@lists.infradead.org, m@bues.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

RnJvbTogVHJpc3RhbiBNYWRhbmkgPHRyaXN0YW5AdGFsZW5jZXNlY3VyaXR5LmNvbT4KClRoZSBm
aXJtd2FyZS1jb250cm9sbGVkIGtleSBpbmRleCBpbiBiNDNfcngoKSBjYW4gZXhjZWVkIHRoZSBk
ZXYtPmtleVtdCmFycmF5IHNpemUgKDU4IGVudHJpZXMpLiBUaGUgZXhpc3RpbmcgQjQzX1dBUk5f
T04gaXMgbm9uLWVuZm9yY2luZyBpbgpwcm9kdWN0aW9uIGJ1aWxkcywgYWxsb3dpbmcgYW4gb3V0
LW9mLWJvdW5kcyByZWFkLgoKTWFrZSB0aGUgQjQzX1dBUk5fT04gY2hlY2sgZW5mb3JjaW5nIGJ5
IGRyb3BwaW5nIHRoZSBmcmFtZSB3aGVuIHRoZQpmaXJtd2FyZSByZXR1cm5zIGFuIGludmFsaWQg
a2V5IGluZGV4LgoKU3VnZ2VzdGVkLWJ5OiBKb25hcyBHb3Jza2kgPGpvbmFzLmdvcnNraUBnbWFp
bC5jb20+CkFja2VkLWJ5OiBNaWNoYWVsIELDvHNjaCA8bUBidWVzLmNoPgpGaXhlczogZTRkNmI3
OTUxODEyICgiW0I0M106IGFkZCBtYWM4MDIxMS1iYXNlZCBkcml2ZXIgZm9yIG1vZGVybiBCQ000
M3h4IGRldmljZXMiKQpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBU
cmlzdGFuIE1hZGFuaSA8dHJpc3RhbkB0YWxlbmNlc2VjdXJpdHkuY29tPgotLS0KIGRyaXZlcnMv
bmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My94bWl0LmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2Jyb2FkY29tL2I0My94bWl0LmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9h
ZGNvbS9iNDMveG1pdC5jCmluZGV4IDc2NTFiMWJkYi4uZjBiMDgyNTk2IDEwMDY0NAotLS0gYS9k
cml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDMveG1pdC5jCisrKyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2Jyb2FkY29tL2I0My94bWl0LmMKQEAgLTcwMiw3ICs3MDIsOCBAQCB2b2lkIGI0
M19yeChzdHJ1Y3QgYjQzX3dsZGV2ICpkZXYsIHN0cnVjdCBza19idWZmICpza2IsIGNvbnN0IHZv
aWQgKl9yeGhkcikKIAkJICoga2V5IGluZGV4LCBidXQgdGhlIHVjb2RlIHBhc3NlZCBpdCBzbGln
aHRseSBkaWZmZXJlbnQuCiAJCSAqLwogCQlrZXlpZHggPSBiNDNfa2lkeF90b19yYXcoZGV2LCBr
ZXlpZHgpOwotCQlCNDNfV0FSTl9PTihrZXlpZHggPj0gQVJSQVlfU0laRShkZXYtPmtleSkpOwor
CQlpZiAoQjQzX1dBUk5fT04oa2V5aWR4ID49IEFSUkFZX1NJWkUoZGV2LT5rZXkpKSkKKwkJCWdv
dG8gZHJvcDsKIAogCQlpZiAoZGV2LT5rZXlba2V5aWR4XS5hbGdvcml0aG0gIT0gQjQzX1NFQ19B
TEdPX05PTkUpIHsKIAkJCXdsaGRyX2xlbiA9IGllZWU4MDIxMV9oZHJsZW4oZmN0bCk7Ci0tIAoy
LjQ3LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
NDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
