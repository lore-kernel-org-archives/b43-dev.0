Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF144C4725D
	for <b43-dev@archiver.kernel.org>; Fri, 19 Jan 2024 09:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4C9E7m1GnFISVyur70v/DaECoIWm7JridJbkpyb3kvc=; b=ajJ5cX/c5cZAtN
	Ug24G2tGiVGSVtoVxSYeXqB/MHul+bRdaAgkG5Bk8bYOTfGlpO7kA9wyioo3d+Lrk3XLg4SOpHNox
	T9eg4Zss2vwA03os98aqU4dUq0ktaKVPZvWpnxkN+EX7JzNwTyOHe/ZZw1BgnUpMrsYxh5kHbpGt+
	l0Z3AbFYEuK+BYcpefobLKB9Vq66fGYk4rVN1WM6mE8vhITJafwVELKRQ0SNCRX18a2yXnXf1km/e
	/nc/UF6rUa1DaHX7PSsm3ylxxgXiPb5QnYiZtPsGBcE//ClNKfA5wztvhp/5gVg4z0QBkWZCX71Gf
	X64iDKEBdd7VnNrgvCbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQkoq-004vGl-1M;
	Fri, 19 Jan 2024 09:05:44 +0000
Received: from mail.kasaioranje.com ([135.125.203.239])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQkok-004vDs-0a
	for b43-dev@lists.infradead.org;
	Fri, 19 Jan 2024 09:05:40 +0000
Received: by mail.kasaioranje.com (Postfix, from userid 1002)
	id 61EB8A332D; Fri, 19 Jan 2024 09:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kasaioranje.com;
	s=mail; t=1705655132;
	bh=hK32N63EXg5L0mDBhcLqO7LT0yXl3sNSlyZA5k03kP0=;
	h=Date:From:To:Subject:From;
	b=NsbywSq7jKjhRmOcSLWufqqMLkTrwktD4f5CzlVXh3LUPhk1pZrCTH6tw/hv/afqp
	 O2ZE4ODVmlaAOsRtpeN+bfKhOQVLdM1eo0DjWHo9lViODAdi0zjhMmzNG5MvLi+IZa
	 o7MBanDVuE3nVbAYEJ6T4yf5vUqsAaT7zoZduIUqs5mS8ar4RPnIAERaK1yngn0t8O
	 GXs5x2MO5sDfi7jIq4FfweE9fB0MA4Tr6jYnOd3PhPi0p26a5b6zK8loN7ipLdecFt
	 Id/830mLKSYgl/5cojbZuY6SQ1Cj9ifcaIpJ5CefF1ew4CAtot/14JnX0vAYDf17Lp
	 ojHeFag11IeuA==
Received: by mail.kasaioranje.com for <b43-dev@lists.infradead.org>; Fri, 19 Jan 2024 09:05:24 GMT
Message-ID: <20240119074500-0.1.bf.148tz.0.f9yjlfg173@kasaioranje.com>
Date: Fri, 19 Jan 2024 09:05:24 GMT
From: =?UTF-8?Q?"Stanislav_Kov=C3=A1=C4=8D"?= <stanislav.kovac@kasaioranje.com>
To: <b43-dev@lists.infradead.org>
Subject: =?UTF-8?Q?D=C3=ADly_pro_sportovn=C3=AD_vozy?=
X-Mailer: mail.kasaioranje.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_010538_956256_14639980 
X-CRM114-Status: UNSURE (   1.75  )
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

QWhvaiEKCkpzbWUgdMO9bSBuYWTFoWVuY8WvIG1vdG9yc3BvcnR1IGEgdHVuaW5ndSwga3RlxZnD
rSBzZSBha3Rpdm7EmyBwb2TDrWxlasOtIG5hIHByb3N0xZllZMOtIGRyaWZ0b3bDoW7DrS4KCk5h
xaFlIHJvenPDoWhsw6kgdGVjaG5pY2vDqSB6ZHJvamUgYSB6a3XFoWVub3N0aSBuw6FtIHVtb8W+
xYh1asOtIG5hdnJob3ZhdCBhIHZ5csOhYsSbdCBuZWprdmFsaXRuxJtqxaHDrSBrb3ZvdsOpIGTD
rWx5IHBybyBzcG9ydG92bsOtIHZvenksIHplam3DqW5hIEJNVy4KCk9icmFjw61tIHNlIG5hIFbD
oXMsIHByb3Rvxb5lIHNlIHphbcSbxZl1amVtZSBuYSBvYnNsdWh1IHZlbGtvb2JjaG9kbsOtY2gg
esOha2F6bsOta8WvLCBjb8W+IG7DoW0gdW1vxb7FiHVqZSBuYWLDrXpldCBrb25rdXJlbmNlc2No
b3Buw6kgY2VueS4KCkRvc3TDoXbDoW1lIGRvdGF6eSBvaGxlZG7EmyBuw6FrdXB1IG5hxaFpY2gg
cHJvZHVrdMWvIHogY2Vsw6lobyBzdsSbdGEuIE5hxaFlIHBvZG3DrW5reSB1bW/FvsWIdWrDrSBw
YXJ0bmVyxa9tIGRvc2Fob3ZhdCB2eXNva8O9Y2ggbWFyxb7DrSBuYSBtZXppbsOhcm9kbsOtY2gg
dHJ6w61jaC4KCk3Fr8W+ZW1lIHDFmWVkc3Rhdml0IG5hxaFlIHBvcnRmb2xpbz8KCgpTIHDFmcOh
dGVsc2vDvW0gcG96ZHJhdmVtClN0YW5pc2xhdiBLb3bDocSNCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iNDMtZGV2Cg==
