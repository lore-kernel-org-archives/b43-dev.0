Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE3D5C433EF
	for <b43-dev@archiver.kernel.org>; Sun,  5 Dec 2021 07:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	Subject:From:To:Date:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1criwbxBUpKuX+eeeYdNp22P0DR0zDHj1+tdC0XGhSg=; b=XAd
	RXYNgxbJOWMENPllUHheo4QDcKg81ooJqx8l9ucu+HISkYlSLSQj1BoYo7/h8mX1A9M0qCsbsCE4d
	20DGJ+eTnwV8I8kPpomOS8lpG12IVnWzlIkNfyxb000sxPOmy68gId2gst87JLRCpgGlucDVlI3Ws
	yGm5gF+L4VTQjYbOxfoVk3fHF28ms2gIdCOeU40rZaKfNjineO56mDc2EfX8bxjOI6VSL9T80GfhZ
	W9ZY8rs2mS37dU2DLPmbI/Ipbau2XVA//OBtYgKGMhvw0XZbSEYOrfcAn3iJm5pqVrFlvWgd0TnY0
	8DuQHJr3OKBR8I9Gy3bHJKmZp0INeiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtlWD-001Fht-LN; Sun, 05 Dec 2021 07:01:05 +0000
Received: from c20.hpms1.jp ([183.90.183.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtlW8-001Fh6-7y
 for b43-dev@lists.infradead.org; Sun, 05 Dec 2021 07:01:02 +0000
Received: (qmail 731125 invoked by uid 89); 5 Dec 2021 15:34:15 +0900
Received: from unknown (HELO www.ds1212.jp) (info@ds1212.jp@183.90.183.21)
 by c20.hpms1.jp with SMTP; 5 Dec 2021 15:34:15 +0900
Date: Sun, 5 Dec 2021 06:34:15 +0000
To: b43-dev@lists.infradead.org
From: drink stand 1212 <info@ds1212.jp>
Subject: =?UTF-8?B?44GK5ZWP44GE5ZCI44KP44Gb44GC44KK44GM44Go44GG44GU44GW44GE44G+?=
 =?UTF-8?B?44GX44Gf?=
Message-ID: <fa885192640ee35f03d2571b2825c1c8@www.ds1212.jp>
X-Mailer: WPMailSMTP/Mailer/smtp 1.6.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211204_230100_512945_C670B8A4 
X-CRM114-Status: UNSURE (   0.38  )
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
Reply-To: info@ds1212.jp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

44GK5ZWP44GE5ZCI44KP44Gb44GC44KK44GM44Go44GG44GU44GW44GE44G+44GX44GfCgrjg6Hj
g4Pjgrvjg7zjgrjmnKzmlocK4oC744GT44Gh44KJ44Gu44Oh44O844Or44Gv6Ieq5YuV55qE44Gr
44GK6YCB44KK44GX44Gm44GE44G+44GZ44CCCuacrOODoeODvOODq+OBq+WvvuOBl+OBpui/lOS/
oeOBquOBleOCieOBquOBhOOCiOOBhuOBq+OBiumhmOOBhOiHtOOBl+OBvuOBmeOAggoK4p2k77iP
IEJhcmJhcmEgbGlrZWQgeW91ISBDbGljayBIZXJlOiBodHRwOi8vYml0LmRvL2ZTTVZTP2g2a2Yg
4p2k77iP5qeYCgrjgZPjga7luqbjga/jgYrllY/jgYTlkIjjgo/jgZvjgYTjgZ/jgaDjgY3jgYLj
gorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIIK5Lul5LiL44Gu5YaF5a6544Gr44Gm5Y+X44GR
5LuY44GR44G+44GX44Gf44CCCgrjgJDjgYrlrqLmp5jmg4XloLHjgJEKLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KCuOBiuWQjeWJjQrinaTvuI8gQmFyYmFyYSBsaWtlZCB5b3UhIENsaWNrIEhlcmU6IGh0dHA6
Ly9iaXQuZG8vZlNNVlM/aDZrZiDinaTvuI8KCuODoeODvOODq+OCouODieODrOOCuQpiNDMtZGV2
QGxpc3RzLmluZnJhZGVhZC5vcmcKCumbu+ipseeVquWPtwo2ODIyMTg1ODUxMTEKCuOBiuWVj+OB
hOWQiOOCj+OBm+WGheWuuQppcjExbXhjcwoKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCuS4iuiomOWGheWu
ueOCkueiuuiqjeW+jOOAgei/veOBo+OBpuODoeODvOODq+OBq+OBpuOBlOmAo+e1oeOBleOBm+OB
puOBhOOBn+OBoOOBjeOBvuOBmeOAgiAgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQz
LWRldgo=
