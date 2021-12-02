Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9028C433F5
	for <b43-dev@archiver.kernel.org>; Thu,  2 Dec 2021 09:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hN+RhEmZ4ct3tC14nKLe8q6Y86nTynh8cAHeZ41+Pl4=; b=cs3UtYMJPnUN7n
	uTPyhl4r88P+3WXfWgneq+sThWLQpF8Qq2noqoV25t3xGDtZ8pSLGl+eAFY1WJE7cbUzA6t7ICZ+v
	fcxsAmayhrQBfbA+ku1i+pPw7ThnWqh4LLz5SzFOZTCtRBKX5qWu1Ucil8pYKPdFgu1Bfo+2IDmSu
	AAytkA7iDmD4OUXww+WkWylA4uoAw9iw4xURBCxnkgE7QliOwPDkABigpKkKvi8pL3lgXEfECisAn
	u8+/DiLPv94JldG0rH13nXsNTstRgMG3aoVSL5oryLzZ3DWwI3gUS2v4dkeVXO/YHHAtlJb1ahx4b
	2KH7rxLwPp1xzvdTkfsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mshxr-00BV25-SF; Thu, 02 Dec 2021 09:01:15 +0000
Received: from mail.webdeluxgroup.com ([51.195.117.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mshxm-00BV1K-BR
 for b43-dev@lists.infradead.org; Thu, 02 Dec 2021 09:01:11 +0000
Received: by mail.webdeluxgroup.com (Postfix, from userid 1002)
 id 34078A205B; Thu,  2 Dec 2021 09:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=webdeluxgroup.com;
 s=mail; t=1638435668;
 bh=Ikssx+VmDQhoHuLzKgesrzZ3VGIyKr0VUFS/Kpp5X4A=;
 h=Date:From:To:Subject:From;
 b=Ikd/CgesasaTbkR9vyLIB6841YhuSGnoFYaIicZRbj73qI2zV65SguuuqBmDeXYM2
 WRDhnHIlKfUSNxQLQn9hLjYcNDBzaw4V3HxoZTKncAv2gPZftA2PR42rZuPa8dw3/h
 k4p3G4V13Aq5b3AsGbcUwpfAMeDzFqUlH2iAjhD3tZci8J32demcufioaGjJUEtDa7
 1o7X4EJn5gyNufh7tyGJZf+IF6eyUfwzDYf61negOW4yY8K4RV6rMg2MHJqpcJo29M
 YVCo+5/0WWCkLG2M1vWAuC/sOvqDMEFLgHOBgrYiPCM2dRzok0HLo6t49IPeHJ40yW
 2zEsVLFuOhRWA==
Received: by mail.webdeluxgroup.com for <b43-dev@lists.infradead.org>;
 Thu,  2 Dec 2021 09:00:54 GMT
Message-ID: <20211202074500-0.1.3j.a41a.0.v1yaiw7126@webdeluxgroup.com>
Date: Thu,  2 Dec 2021 09:00:54 GMT
From: =?UTF-8?Q?"Ji=C5=99=C3=AD_Novotn=C3=BD"?=
 <jiri.novotny@webdeluxgroup.com>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?=C3=9Asp=C4=9Bch_kampan=C4=9B?=
X-Mailer: mail.webdeluxgroup.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_010110_627134_BD453256 
X-CRM114-Status: UNSURE (   1.78  )
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

RG9icsO9IGRlbiwKClByb2TDoXbDoXRlIHN2w6kgdsO9cm9ia3kgcMWZw61tbyBzcG90xZllYml0
ZWzFr20gcHJvc3TFmWVkbmljdHbDrW0ga2Fuw6FsdSBFLUNvbW1lcmNlPyAKClBva3VkIGFubywg
csOhZCBieWNoIHbDoW0gcMWZZWRzdGF2aWwgbW/Fvm5vc3RpIGEgcMWZw61rbGFkeSwgamFrIHp2
w73FoWl0IHbDvW5vc3kgeiB0b2hvdG8ga2Fuw6FsdS4gCgpQxZllZCDEjWFzZW0gc2UgbsOhbSBv
enZhbGEgc3BvbGXEjW5vc3QsIGt0ZXLDoSBjaHTEm2xhIHbDvXJhem7EmyB6bGVwxaFpdCB2w71z
bGVka3kgdmUgdsWhZWNoIGthbsOhbGVjaCwgamVqaWNoxb4gcHJvc3TFmWVkbmljdHbDrW0gb3Ns
b3Z1amUgesOha2F6bsOta3kuCgpDw61sZW0gYnlsbyBkb3PDoWhub3V0IHN0YWJpbG7DrWNoLCBt
xJvFmWl0ZWxuw71jaCB2w71ub3PFryBhIHRha8OpIHJvesWhw63FmWl0IHDFr3NvYm5vc3QgbmEg
bWV6aW7DoXJvZG7DrSB0cmh5LiAKClpqZWRub2R1xaFpbGkganNtZSBzdHJ1a3R1cnUga2FtcGFu
w60sIHpsZXDFoWlsaSByb3ptYW5pdG9zdCByZWtsYW0gYSBrb211bmlrYWNlIGEgdGFrw6kganNt
ZSB2eXR2b8WZaWxpIG5lc3RhbmRhcmRuw60ga2F0YWxvZyB2w71yb2Jrxa8uIEltcGxlbWVudG92
YWxpIGpzbWUgxZllxaFlbsOtLCBrdGVyw6EgdmVkbGEgayBsZXDFocOtbXUgdsO9c2xlZGt1IENQ
QywgenbDvcWhZW7DrSBDVFIgYSB6bGVwxaFlbsOtIGtvbnZlcnplIHBvdGVuY2nDoWxuw61jaCB6
w6FrYXpuw61rxa8gbmEgbmFrdXB1asOtY8OtIHrDoWthem7DrWt5LiAKCkTDrWt5IG5hxaFpbSBr
b21wbGV4bsOtbSBha3Rpdml0w6FtIHNlIHbDvXJhem7EmyB6dsO9xaFpbCBST0kgaW5kZXggYSB2
w71ub3N5IGHFviBvIDk1ICUuIFN0b2rDrSB6YSB0byBwcm9icmF0LCBqYWsgdG8gdmUgVmHFocOt
IHNwb2xlxI1ub3N0aSB2eXBhZMOhIGEgY28gdsOhbSBtxa/FvmVtZSBuYWLDrWRub3V0LiBQb2t1
ZCBtw6F0ZSB6w6FqZW0gbyBrcsOhdGvDvSByb3pob3ZvciwgZGVqdGUgbWkgdsSbZMSbdC4gTsOh
xaEgYW5nbGlja3kgbWx1dsOtY8OtIHrDoXN0dXBjZSBWw6FzIGJ1ZGUgb2thbcW+aXTEmyBrb250
YWt0b3ZhdC4KCgpTIHDFmcOhdGVsc2vDvW0gcG96ZHJhdmVtCkppxZnDrSBOb3ZvdG7DvQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWls
aW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
