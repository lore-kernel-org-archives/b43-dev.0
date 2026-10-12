Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DBC4CA9ED0
	for <b43-dev@archiver.kernel.org>; Mon, 12 Oct 2026 23:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Mime-Version:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ix/KSG/Du7/liQK7uPfk6v+fl/e4/HK3hbzUuZbqN7E=; b=haCNjvTVpdghhi
	DBQRzeUGZX67RgQTCT+zvIDx8JsXCpy1oUkkW2+f4a/Re+lCmnoeG8/eCwcc7r1ssCFbZMCdKCaut
	FU7UjTSaZQc3U5BvjoKoW6dYRXSGSAmkbgvEUSwvhlBWRY6aDVF41ur62NnlEOpHnwcNhX43pT/rD
	aHVIYVxATErJ1a6LEnQDJRTmTtaUT7tdH3HbrCaTUvthVr6spgaNDDKXzZsw0sMlu6rhZMIRwefAa
	nc1ZZpi7MZ6ggDuLW3xOPdksBkrTPRvUwdJH6i5nM+VxPTU0o1TybG9w7kZey34axRY9/HZ7riU1g
	Te6mboa0tqKBwa1p0ymg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGPVs-0000000BfPn-002p;
	Mon, 12 Oct 2026 23:33:00 +0000
Received: from r9114.ps.combzmail.jp ([49.212.47.36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGPVl-0000000BfOa-0iZc
	for b43-dev@lists.infradead.org;
	Mon, 12 Oct 2026 23:32:55 +0000
Received: by r9114.ps.combzmail.jp (Postfix, from userid 99)
	id 6FEDD3062AE; Tue, 13 Oct 2026 08:32:40 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9114.ps.combzmail.jp 6FEDD3062AE
To: b43-dev@lists.infradead.org
From: =?ISO-2022-JP?B?GyRCJUolbCVDJTglaiVzJS8bKEI=?= <info@knowledgelink-corp.jp>
X-Ip: 103037882105968
X-Ip-source: k85gj73p48dnsa9wu0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCIVY7WDwoQlQkQT9NNFYhVyRPJDMkJkF9GyhC?=
 =?ISO-2022-JP?B?GyRCJCgkaxsoQg==?=
Mime-Version: 1.0
X-MagazineId: 3p9w
X-uId: 6764315137486066634481481000
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20261012233245.6FEDD3062AE@r9114.ps.combzmail.jp>
Date: Tue, 13 Oct 2026 08:32:40 +0900 (JST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_163253_331403_D5CC1C61 
X-CRM114-Status: UNSURE (   0.75  )
X-CRM114-Notice: Please train this message.
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

　
　いつもお世話になります。
　
　〇 社員のモチベーションを上げようと声をかける
　〇 現場のトラブルに、自ら先頭に立って対応する
　
　もし、社長がこれらを率先しているようであれば
　残念ながら、その組織の成長はそこで止まります。
　
　社長の“優しさ”が、社員の甘えを生み、責任感を奪い
　「指示待ち人間」を量産する装置になっているからです。
　
　「優しさ」で人を動かすのではなく、「正しさ」で組織を動かす。
　
　4,800社の経営者が衝撃を受けた、
　良かれと思ってやってしまう「社長のNG行動」の正体。
　
　組織を正しい方向に変えるためのウェビナーです。　
　もし心当たりがあれば、一度ご視聴ください。　
　
　>>視聴予約はこちら
　https://knowledge-co.jp/shikigaku5/
　
----------------------------------------------
　
　テーマ ：　それ、危険です 『社長のNG行動』
　　　　　 〜 その行動が、組織崩壊を招く 〜
　
　日 程　：10月14日（水）13:00スタート
　　　　　 10月22日（木）13:00スタート
　　　　　 ※内容は同じです。
　会 場　：Zoom開催
　定 員　：先着100名（費用は不要）
----------------------------------------------
　※経営層の方限定です
　
　
　なぜ、社員は「言われたこと」しかやらないのか。
　なぜ、次世代のリーダー候補が育たないのか。
　
　それは、能力の問題ではなく、
　
　良かれと思って続けている「社長の配慮」こそが、
　組織成長を止める、最大のボトルネックかもしれません。
　
　本セミナーでは、4,800社以上が導入した
　独自の組織論「識学」に基づき、社長の「NG行動」と
　真の経営者へ脱皮するためのマインドセットを伝授します。
　
　
　【セミナー内容(一部抜粋)】
　 ○ NG行動3選
　 ○ なぜ優秀なNo.2や部長が育たないのか
　 ○ マネジメントスタイルの変革について
　 ○ 導入企業の事例
　
　「管理職が育ったら任せる」ではなく「任せるから育つ」
　という思考の逆転を提言。
　
　現場から「冷たくなった」と思われることを恐れず
　機能的な階層構造を作ることで

　結果として社員全員を守り
　利益を最大化させる道筋を明示します。

　「優しさ」で人を動かすのではなく
　「正しさ」で組織を動かす。

　音声やお顔が表に出ることはございませんので
　お気軽にご視聴ください。
　
　>>視聴予約はこちら
　https://knowledge-co.jp/shikigaku5/
　
　
-----------------------
　一般社団法人 ナレッジリンク
　東京都千代田区神田小川町1-8-3
　電話：03-5256-7638

　セミナーのご案内が不要な方は大変残念ではございますが、
　下記URLより手続き下さいませ。
　
　メール配信のワンクリック解除はこちら
　https://fc-knowledgelink-corp.jp/mail/
　

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
