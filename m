Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB323CCD183
	for <b43-dev@archiver.kernel.org>; Tue, 14 Oct 2025 02:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Mime-Version:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SdGMNgdiLB8elh/HzwWazZJlnbq4JjnAaLGM0zI/RKg=; b=43ZtTX+Gs4JnsW
	pBlUtVVxVCuHQqH939IlkFIkiQ1nGMyouyHoMHrtCaGTQz2bNHX9u1qMIBPmjOcBOToe7P0mOSaa1
	uC4llrkeMRq0iji0Cdq9BLOYyXf74CM2zClJhRiV5PNvEzC3AvoeNhBV9RBcy3Xz+/iUKVqDAnL3L
	IP1+5DYwR4fVPnQkLslFNSu4qqSjfnAsQVZdRwKEz3l1pSk+I/4T9LBZSYafyHJjcZ5JJrU/+Ow2D
	rIfKVB+5KjrxOMpdVVdzDQFuJwXssuqRNSC4M5Ctk1V0YMTbtSZ79WNd5X6YP7DxG5Ei/Yi5IC3L4
	6itDdELYxSR2jouqQvWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8VCV-0000000F0S5-1QEg;
	Tue, 14 Oct 2025 02:55:47 +0000
Received: from r9133.ps.combzmail.jp ([49.212.13.37])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8VCR-0000000F0Rc-31Z4
	for b43-dev@lists.infradead.org;
	Tue, 14 Oct 2025 02:55:45 +0000
Received: by r9133.ps.combzmail.jp (Postfix, from userid 99)
	id BFF8085FEA; Tue, 14 Oct 2025 11:55:36 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9133.ps.combzmail.jp BFF8085FEA
To: b43-dev@lists.infradead.org
From: =?ISO-2022-JP?B?GyRCSiE7YyVVJWklcyVBJWMlJCU6S1xJdBsoQg==?= <info@fc-tocotoco.jp>
X-Ip: 597439122931405
X-Ip-source: k85gj73348dnsaq6u0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCR1E2SE4oGyhCMC4wNTUbJEIhcyROSiEbKEI=?=
 =?ISO-2022-JP?B?GyRCO2MlVSVpJXMlQSVjJSQlOhsoQg==?=
Mime-Version: 1.0
X-MagazineId: 33q6
X-uId: 6763315239485966634980451056
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20251014025538.BFF8085FEA@r9133.ps.combzmail.jp>
Date: Tue, 14 Oct 2025 11:55:36 +0900 (JST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_195543_906860_02A2FA86 
X-CRM114-Status: UNSURE (   1.24  )
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

　
　新規事業をお探しの経営者様へ
　
　
　困っている人を助けたい。地域に貢献したい。
　
　社会課題を解決しながら事業として成り立つ、
　新しい事業をお探しでしたら、障害福祉ビジネスを。

―――――――――――

　廃業率0.055％　業態を選べる
　 　障がい福祉フランチャイズ

　　 <ご視聴予約はこちら>
　https://fc-tocotoco.work/25/

〇オンラインで開催中
　10月16日（木）13:00〜14:00
　10月22日（水）15:00〜16:00

ご都合の良い日程をお選びいただけます。
―――――――――――


　・障がい者数1,160万人
　・障がい者数増加数　毎月4万人
　・市場規模4兆円超え
　・廃業率0.055％
　
　この４つのデータが示すとおり、
　大きな市場と安定的な需要増加があり、

　行政による総量規制によって事業が守られていく。

　そんな、障がい福祉の市場で展開できる
　5つのビジネスをご紹介します。


　１、精神科に特化の訪問看護「tocotoco nurse」
　２、障がい者デイサービス「tocotoco day」
　３、障がい者グループホーム「tocotoco home」
　４、障がい者グループホーム「tocotoco residence」
　５、就労継続支援AB多機能型「tocotoco work」
　
　
　既に1,000拠点を運営する私たちのスケールメリットを活かして、
　　グループ企業のクリニック・薬局との連携
　　国への請求や運営管理を行う基幹システムを無料で利用
　　備品・物品等を本部一括購入して、加盟店様に安く提供
　　
　が、できることによって、投資利回り50％以上、
　6〜15ヵ月で回収できる
　フランチャイズモデルを作り上げました。
　
　さらに、投資したいが運営までは荷が重い・・という方向けに
　運営は本部が代行する、tocotocoだけのプランもご用意しています。
　
　新規事業をお探しでしたら
　ぜひ、ご視聴ください。

　▼ 詳細はこちら
　https://fc-tocotoco.work/25/
　
　
―――
  tocotoco株式会社　セミナー事務局
　東京都千代田区九段南2丁目3−25
‥‥‥‥
　本メールのご不要な方には大変ご迷惑をおかけいたしました。
　メール停止ご希望の方は、お手数ですが下記URLにて、
　お手続きをお願いいたします。
　https://fc-tocotoco.work/mail/
―――

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
