Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27347CA0EEB
	for <b43-dev@archiver.kernel.org>; Fri, 22 Aug 2025 14:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5BQRVft2+xvEWJVPCQ2lIlIwIPdysoe8quIBMCg5evg=; b=azEGDPdyY3YPWz
	HmYUWkFzHjYn5DK64fZGoEr3I1c3iNHXZ/Zw3eXJYJ591HKHb2+P41wTcFdM6CAm90eWWTp6FcXAo
	y49hYU5itfzb+xWNdJ1m44YQx+gHtfiuWdZ+rJkTF1cVQaGOrEowwUBUD6ZsJhDwagEWk2f2NoQsZ
	62CKtSM9VrXZop4t4AQHZXUJ1pe9V/VhgZDdH1jITtdCFKuqpIm8SCVkMWGIt0H/kdrPc2kCBgQuY
	uE1syJobw0Evxl3VtcDsE6Cy5UgWzEyX1zECGNkTRIjHxvPeu3mIuhyP85FuGzQBF2x6eTjz5IA3g
	iic/x+AZ4sHSfsM0GKLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upSce-00000002mfg-1ww9;
	Fri, 22 Aug 2025 14:20:04 +0000
Received: from mail.bizalt.pl ([57.129.137.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upMoi-00000001tYt-15rP
	for b43-dev@lists.infradead.org;
	Fri, 22 Aug 2025 08:08:09 +0000
Received: by mail.bizalt.pl (Postfix, from userid 1002)
	id DE08A268F0; Fri, 22 Aug 2025 08:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bizalt.pl; s=mail;
	t=1755849700; bh=pAETpct4FaTyaNCJp3323c3rfcqVRioDTAY5MT2sYR0=;
	h=Date:From:To:Subject:From;
	b=skxCuYlvk1Cv4lff2raH5Q7HsvocKFO/7CEh2K6TnKOhXayn3pJ86xuOD9QwPIh4C
	 ciVmJr3bty7T0occx11j9q5NzCryey+kgZhOVC+cALNVPDtxbjmjgholY5zvXiEwag
	 2Z4CFTSrXkO8aChOnVm2NUHPMdKGZmIgBJPF94/ntoDWjC9v1q5kM0/lLIEtCNxCQ2
	 fCvxPRQDMYHSEjgSkucxRVUGcNGaCO63uHF3HcznOrTBO+QAJgCbv1lqwPUMNCOaVi
	 obxC6QncPh7njLhqgsNJXTpzfvVmEyG2L/co65TV+UXFD+RgeYFaPEPYVZu39tHtx1
	 oyWZOc1WpdnAg==
Received: by mail.bizalt.pl for <b43-dev@lists.infradead.org>; Fri, 22 Aug 2025 08:01:18 GMT
Message-ID: <20250822064500-0.1.3k.90ho.0.7eku49ej98@bizalt.pl>
Date: Fri, 22 Aug 2025 08:01:18 GMT
From: "Katarzyna Trela" <katarzyna.jarosz@bizalt.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Digitalizacja_plik=C3=B3w?=
X-Mailer: mail.bizalt.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_010808_437817_0326CE83 
X-CRM114-Status: UNSURE (   2.19  )
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

RHppZcWEIGRvYnJ5LAoKY3p5IG15xZtsxIUgUGHFhHN0d28gbyBjZW50cmFsaXphY2ppIGZpcm1v
d2VqIGRva3VtZW50YWNqaSBpIGtvbXVuaWthY2ppIHcgamVkbmVqLCB6aW50ZWdyb3dhbmVqIHBs
YXRmb3JtaWU/IAoKVGFraWUgcm96d2nEhXphbmllIGltcGxlbWVudHVqZW15IGJleiB6bmFjesSF
Y3ljaCBuYWvFgmFkw7N3IGZpbmFuc293eWNoIGN6eSBjemFzb2NoxYJvbm55Y2ggcHJvY2Vzw7N3
IHdkcm/FvGVuaW93eWNoLgoKU3lzdGVtIGZ1bmtjam9udWplIHcgxZtyb2Rvd2lza3UgV2luZG93
cyBvcmF6IGpha28gcm96c3plcnplbmllIE1pY3Jvc29mdCBPdXRsb29rLCBhIHphYXdhbnNvd2Fu
ZSBtb8W8bGl3b8WbY2kgd3lzenVraXdhbmlhIHBvendhbGFqxIUgbmF0eWNobWlhc3Qgemxva2Fs
aXpvd2HEhyBwb3RyemVibmUgaW5mb3JtYWNqZSB3IHpha3Jlc2llIHVtw7N3LCBwcm9qZWt0w7N3
LCBmYWt0dXIgY3p5IGtvcmVzcG9uZGVuY2ppLgoKQ2hjxIUgUGHFhHN0d28gcG96bmHEhyB3acSZ
Y2VqIG1vxbxsaXdvxZtjaSB0ZWdvIHJvendpxIV6YW5pYT8KCgpQb3pkcmF3aWFtCkthdGFyenlu
YSBUcmVsYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
