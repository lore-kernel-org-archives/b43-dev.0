Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D588AC3ABCB
	for <b43-dev@archiver.kernel.org>; Tue, 13 May 2025 00:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Mime-Version:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KH/WmB23JlpRRjxVM54kDclg7VklEKc8GgwUznALhRY=; b=ZuckGhNHR4Viih
	akdZ3hc/btxWEWYNhmgasuqmCTQ/xyekSxTdJTDdItNfhy/piNPsugfVf5/Zqvp14ZmLybIUmtOu+
	vqgw/IhVxKGENBhRoL1G1PzAYuuOLpJ7dkZ+3aWi2KXCjHEdd2LomsceiLVDfVHf4DVKvhddjOvoQ
	hOftDtFk8CIzdg5rgM96+q1qlH1YNLTcBGpAnvpXDHxW0U6GYEN+4JvKD8LJiigvEySCjyg8Mmzuc
	3z0DkounO8DRc8fVw87oq27Lm6oDhqfnH8r+KSnBaVrx9VzQDH7PpGtyf3CWiV8NP+LExiwuv367X
	qVhLbg7yzCAEow84ChIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEdYa-0000000AzqG-1vqI;
	Tue, 13 May 2025 00:31:40 +0000
Received: from r9148.ps.combzmail.jp ([49.212.15.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEdYV-0000000Azpu-2OdI
	for b43-dev@lists.infradead.org;
	Tue, 13 May 2025 00:31:37 +0000
Received: by r9148.ps.combzmail.jp (Postfix, from userid 99)
	id 470828C771; Tue, 13 May 2025 09:04:24 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9148.ps.combzmail.jp 470828C771
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pupneo.jp;
	s=s48261973; t=1747095091;
	bh=GHcWaRsC7dQeTB6vpVxANTLyCLVlUtsWWHzuWYIdGzE=;
	h=To:From:List-Unsubscribe:Subject:Date:From;
	b=SMskZOHwP14+03AUOh3amI0qNSVIDGq2HEV+x/PQ18YP3ZAa1NiSiu+iTfqXUp1qK
	 kEcinUIGVbVZCEthooLHbJ827gSMlKD+xrbONL9oDxi+3ztZnwICnCBzBHkX5p6Uvn
	 TuxBItVklHGdxNvj73P2k5F310fr8Yo9BwCGloUA6GhXr/8bMWLhzjgN7qh7oBDNbv
	 +ko0WAknXQzIvhtN2EOuvtoiEpk8nqsdRcTQWTkQply1Kg7LpzDop+aE9bkdYcBZkn
	 zAZ4wP3+7Ka0fBwzvSYGwud6DyRq8O0a/JFp+qonArp4bCg2i3eOBjfkZeZjsioI/m
	 lg9PkYwhNOmdQ==
To: b43-dev@lists.infradead.org
From: =?ISO-2022-JP?B?GyRCOzNLXBsoQg==?= =?ISO-2022-JP?B?GyRCQllNNRsoQg==?= <info@pupneo.jp>
X-Ip: 6860532534554258
X-Ip-source: k85gj7y548dnsaq7u0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCPFJEOSQsNFYwYyQmGyhCIA==?=
 =?ISO-2022-JP?B?GyRCST4yQUApRVkkTk1uJDc3ahsoQg==?=
Mime-Version: 1.0
X-MagazineId: y5q7
X-uId: 6763265137485961655135711018
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20250513001131.470828C771@r9148.ps.combzmail.jp>
Date: Tue, 13 May 2025 09:04:24 +0900 (JST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_173136_144898_22479A38 
X-CRM114-Status: UNSURE (   0.88  )
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

　
　ある日突然
　　「社長、ちょっとご相談が・・」と、ならないために。
　
　
　査定が引き金でキーパーソンが離職し、業績が落ちる
　
　そんな失敗を防ぐ、4,300人の経営者が共感した
　「労使共に納得する評価制度」を知る、ウェビナーのご案内です。
　
　
　>> 詳細はこちら（所要1分）  
　　  https://shikigaku-pupneo.jp/2505h/
　
　
--------------------------- P-UP×識学 ----　

　テーマ： 優秀な社員のモチベーション低下
　　　　　 突然の離職を防止して
　　　　　 成果につながる、評価制度8つのポイント

　日程　： 5/15(木)・5/22(木) 各13:00スタート
　　　　　 ※両日内容は同じです

　会場　： Zoom開催
　定員　： 先着200人
　登壇者： 大熊 憲二 / 村松 洋平  
　　　　　 YouTube「識学マネジメントTV」登録18,000人

　特典　： セミナー資料を進呈
--------------------------------------------
※貴重なノウハウの為、経営層の方限定です
　
　
　本セミナーは4,300人以上の経営層が受講した
　マネジメント理論「識学」の「評価制度」を
　
　ビジネスの実務家として実体験をベースに
　経営者目線でお伝えいたします。
　
 
　多くの部分で共感いただけるセミナーと
　なっておりますのでぜひご参加ください。
　
　［ 内 容 ］
　　1．なぜ評価制度が必要なのか
　　2．絶対に押さえるべきポイント
　　3．間違った評価制度
　　4．導入企業の事例
　　5．質疑応答
　
　
　こんなお悩みありませんか？
　
　　優秀な社員のモチベーション低下
　　理由を曖昧にされた、突然の退職
　
　これらは、「評価制度」の問題かもしれません。
　
　制度が十分に機能していないと評価の時期に
　モチベーション低下が続き、突然の離職へ
　結果、全社パフォーマンスに悪影響を与えます。
　
　
　しかし、
　労使共に納得できる、自社に適切な評価制度を
　ゼロから考えるのはとても難易度が高いです。
　
　そんな経営者や役員の方へ、
　ビジネスからスポーツ組織でも使える汎用性の高い
　　「間違いない」評価制度をお伝えします。
　
　
　従来型の評価制度の問題点や改善方法について
　丁寧に解説し、組織の評価制度を変革できる
　経営者や役員の皆様にとって、有益な情報を提供いたします。
　
　このセミナーが、評価制度の改善を考える
　機会になればうれしいです。
　
　>> 詳細はこちら（所要1分）  
　　  https://shikigaku-pupneo.jp/2505h/
　
　
　ご興味をお持ちいただけましたら、
　ご参加のお申込みを頂けますと幸いです。

------------------------
　P-UP×識学 セミナー事務局
　東京都台東区池之端1丁目2-18
　電話：03-5829-8444

　メールが不必要な方は大変残念ではございますが、
　以下URLからの登録でワンクリック解除できます。  
　https://shikigaku-pupneo.jp/mail/
　

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
