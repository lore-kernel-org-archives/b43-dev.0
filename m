Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7296CF9C6F
	for <b43-dev@archiver.kernel.org>; Mon, 23 Sep 2024 07:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T9FjK/GW0wAb29vGBzw0RUQaruzrdNmNK4hCeMsdHdY=; b=BwxGeQw+20kPTN
	TLoqybXTrppikJkfJNH2OpOHA98w4gKOHjgudHLaTrUTcNQZGAec42A00Fa999FM6h/WsLVMtdCOV
	BNXDG3gS541W8tuZz4bjtKSRH9jmuFMFdnBIzUqSQGXHjWmGJixqpn0UUYDO+7+OcmXxxwb5PW/EO
	AuXhQ8xAJGVhUvSofrsEw3xYDrw60w45As3qLrMFnBcw2kH+/0wB61icEpCF6LaZwC+VXHQhbh/TJ
	2moVs/17rQxQCOfi4OENejMl0NcXBidCUkKFrqxLTUGnrUd6lNaLSDnKFmnt4XZZjf/yYwM74bZME
	DQTYt1OulDwuccVnN7Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssdZ7-0000000GXGM-0wtS;
	Mon, 23 Sep 2024 07:33:01 +0000
Received: from mail.originatepro.pl ([162.19.155.125])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssdZ1-0000000GXFt-0sQS
	for b43-dev@lists.infradead.org;
	Mon, 23 Sep 2024 07:32:57 +0000
Received: by mail.OriginatePro.pl (Postfix, from userid 1002)
	id 23044224C6; Mon, 23 Sep 2024 09:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=OriginatePro.pl;
	s=mail; t=1727076772;
	bh=HDodNtmiQ0oQNph7sp+h4NRbkxw8d1NmRLmJ4HyiCoQ=;
	h=Date:From:To:Subject:From;
	b=0Y432HUMSG5VFu+bdlG2Ih/uc90SpyCIAtlcoVnreaq9H7yILknfFZfZ/bXsQRZH/
	 nZO1m5iVk48q0UNnfhwq4aY/9Vp75Qv5GnHRPsjU9L1TXRQFs64WpP4t85eDHvFxPZ
	 fl5v67fDlszDsswl0x5tYdVpTuEHEX1iLLBDQKhNU6E9BJ2mEEuEfGhpqyYOw6KKPj
	 OVZbcmNXiJWOB0nk18NHQA5UB8Vwhryp2KcJmVSx4TD3NZF+11UW1EZ9/6cUOPDpsf
	 D29IbUmnu6+IT5e3/U2YVqWL6i4/hc/t3JxHiKtnqwqxgfd5eZfnfAKMjiMkO9h1BW
	 LF8ktAczmDh4g==
Received: by mail.OriginatePro.pl for <b43-dev@lists.infradead.org>; Mon, 23 Sep 2024 07:30:59 GMT
Message-ID: <20240923084501-0.1.e6.26x44.0.iqeem14pts@OriginatePro.pl>
Date: Mon, 23 Sep 2024 07:30:59 GMT
From: "Marcin Wojciechowski" <marcin.wojciechowski@originatepro.pl>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?Zam=C3=B3wienie_?=
X-Mailer: mail.OriginatePro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_003255_960257_32E529D8 
X-CRM114-Status: UNSURE (   1.69  )
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

V2l0YW0sCgpDenkgcG90cnplYnVqxIUgUGHFhHN0d28gYWt0dWFsbmllIG5vd3ljaCBrbGllbnTD
s3cgQjJCPwoKT2QgMTAgbGF0IHBvbWFnYW15IHBvenlza2l3YcSHIG5vd3ljaCBwYXJ0bmVyw7N3
IGJpem5lc293eWNoIHcgUG9sc2NlIG9yYXogemEgZ3JhbmljxIUuCgpQb25hZCAzMDAwIHpyZWFs
aXpvd2FueWNoIHByb2pla3TDs3cgemFyw7N3bm8gZGxhIG5handpxJlrc3p5Y2ggZ2xvYmFsbnlj
aCBrb3Jwb3JhY2ppLCBwb2xza2ljaCBzcMOzxYJlayBnaWXFgmRvd3ljaCBjenkgdGXFvCBuaWV3
aWVsa2ljaCBkemlhxYJhbG5vxZtjaSBnb3Nwb2RhcmN6eWNoIHNwcmF3aWEsIMW8ZSBqZXN0ZcWb
bXkgamVkbnltIHogbGlkZXLDs3cgYnJhbsW8eS4KClogd2llbG9tYSBmaXJtYW1pIHdzcMOzxYJw
cmFjdWplbXkgbmllcHJ6ZXJ3YW5pZSBvZCB3aWVsdSBsYXQsIGdlbmVydWrEhWMgc3RvcHkgendy
b3TDs3cgc2nEmWdhasSFY2UgdHlzacSZY3kgcHVua3TDs3cgcHJvY2VudG93eWNoLCBwb21hZ2Fq
xIVjIGplZG5vY3plxZtuaWUgdyBzcG9zw7NiIHBvd3RhcnphbG55IG9yYXogcG9saWN6YWxueSBw
b3N6ZXJ6YcSHIHBvcnRmZWxlIGtsaWVudMOzdyBiaXpuZXNvd3ljaC4KCkplxZtsaSBtYWrEhSBQ
YcWEc3R3byBwcnplc3RyemXFhCBuYSBvYnPFgnVnxJkgbm93eWNoIGtsaWVudMOzdywgemFwcmFz
emFtIGRvIGtvbnRha3R1IHp3cm90bmVnby4gIAoKClBvemRyYXdpYW0KTWFyY2luIFdvamNpZWNo
b3dza2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0
My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
