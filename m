Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94F1AC433EF
	for <b43-dev@archiver.kernel.org>; Wed,  8 Dec 2021 20:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	Subject:From:To:Date:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GLBljbSwznWys5JEJSa5tIGbGkLjMoNQ4tLYnGs9UiA=; b=aNX
	RlLcsiTPbTZsjjDYGi5E6fWX4LUpETMPqE3aSekFRc/LtWD0Yhn3LH51/y12Tazi6AL4x/IFjMN+g
	E8xcZ99+7r0eu6H7B7FhTk3NlZCSIkYDAeQiPRBpey+hF8un6GdL8g5kz+fWnOLRYPurvCDmk/qnr
	nj2aXq+AY437BOcK6YwT55X0t4CZgN6E1J/+PcVqMNV+5mYtHHvnifaGQViChY3vptLlVgRLrqHca
	X8kd/wRmdCAzUJuWfBbbJMhFOvim0bAVyAZ+XMukYpVrynnEgeSLbK2oKOUcteN9TxNB/HM5RO625
	AZ6bHOgSi5NWbKsneu8OrJecpbrbaBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv3RS-00ECa7-6Y; Wed, 08 Dec 2021 20:21:30 +0000
Received: from mxr015.valueserver.jp ([203.189.104.105])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv3RN-00ECZn-1z
 for b43-dev@lists.infradead.org; Wed, 08 Dec 2021 20:21:26 +0000
Received: (qmail 16190 invoked by uid 89); 9 Dec 2021 05:14:42 +0900
Received: from c4.hpms1.jp (183.90.183.24)
 by mxr015.valueserver.jp with AES128-GCM-SHA256 encrypted SMTP;
 9 Dec 2021 05:14:42 +0900
Received: (qmail 203682 invoked by uid 89); 9 Dec 2021 05:14:42 +0900
Received: from unknown (HELO www.nakamoritosou.com)
 (info@nakamoritosou.com@183.90.183.24)
 by c4.hpms1.jp with SMTP; 9 Dec 2021 05:14:42 +0900
Date: Wed, 8 Dec 2021 20:14:42 +0000
To: b43-dev@lists.infradead.org
From: =?UTF-8?B?5Lit5qOu5aGX6KOF5bqX?= <info@nakamoritosou.com>
Subject: =?UTF-8?B?44GK5ZWP44GE5ZCI44KP44Gb44GC44KK44GM44Go44GG44GU44GW44GE44G+?=
 =?UTF-8?B?44GX44Gf?=
Message-ID: <9a3c802bec67eea7a6ec82342abd169e@www.nakamoritosou.com>
X-Mailer: WPMailSMTP/Mailer/smtp 1.3.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_122125_352185_0F00B6BE 
X-CRM114-Status: UNSURE (   1.25  )
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
Reply-To: info@nakamoritosou.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

44GK5ZWP44GE5ZCI44KP44Gb44GC44KK44GM44Go44GG44GU44GW44GE44G+44GX44GfCgrjg6Hj
g4Pjgrvjg7zjgrjmnKzmlocK4oC744GT44Gh44KJ44Gu44Oh44O844Or44Gv6Ieq5YuV55qE44Gr
44GK6YCB44KK44GX44Gm44GE44G+44GZ44CCCuacrOODoeODvOODq+OBq+WvvuOBl+OBpui/lOS/
oeOBquOBleOCieOBquOBhOOCiOOBhuOBq+OBiumhmOOBhOiHtOOBl+OBvuOBmeOAggoK4p2k77iP
IFlvdSBoYXZlIHVucmVhZCBtZXNzYWdlcyBmcm9tIEFubmllICgyKSEgQ2xpY2sgSGVyZTogaHR0
cDovL2JpdC5kby9mU1BVRz9oNzNxYSDinaTvuI/mp5gKCuOBk+OBruW6puOBr+OBiuWVj+OBhOWQ
iOOCj+OBm+OBhOOBn+OBoOOBjeOBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOAggrku6Xk
uIvjga7lhoXlrrnjgavjgablj5fjgZHku5jjgZHjgb7jgZfjgZ/jgIIKCuOAkOOBiuWuouanmOaD
heWgseOAkQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoK44GK5ZCN5YmNCuKdpO+4jyBZb3UgaGF2ZSB1bnJl
YWQgbWVzc2FnZXMgZnJvbSBBbm5pZSAoMikhIENsaWNrIEhlcmU6IGh0dHA6Ly9iaXQuZG8vZlNQ
VUc/aDczcWEg4p2k77iPCgrjg6Hjg7zjg6vjgqLjg4njg6zjgrkKYjQzLWRldkBsaXN0cy5pbmZy
YWRlYWQub3JnCgrpm7voqbHnlarlj7cKMTY5NzUxNTUxMDQ3CgrjgYrllY/jgYTlkIjjgo/jgZvl
hoXlrrkKNW1qZ3U2NXUKCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQrkuIroqJjlhoXlrrnjgpLnorroqo3l
vozjgIHov73jgaPjgabjg6Hjg7zjg6vjgavjgabjgZTpgKPntaHjgZXjgZvjgabjgYTjgZ/jgaDj
gY3jgb7jgZnjgIIgIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
