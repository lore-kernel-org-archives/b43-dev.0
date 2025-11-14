Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08BB2CD98D1
	for <b43-dev@archiver.kernel.org>; Fri, 14 Nov 2025 01:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Mime-Version:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/wm7UToSx+LSoKt1KmhJQaWd5cClmjoX/Z6Xsl7MngA=; b=dbAtpLQpeMKqXB
	cErUi3hAJu4n0FOXVD6MbDaeadCL5JH+3vwr4CtpmV90RKcX3u3JMsz7inR9Ay8JSWgwYh3dQVF4n
	MYJK3lVl6gxOaHQoHuQDdrPJ3Up7wadTBMYRTF+bqyM4cWyqMxG20RYJOm4DtJiWe6QiISUnECWNX
	xUUiD+i/oQNA9YIphptmARRWq1QIXlEKi5qQB4zsPXT4PQwDjPk/xyftAK0+GaAM67YT+9khO+Q5v
	uBCpsrDOLCuGSu5HBGnbReXLUcfib3E4vrYtP4gg7YuB4DG+ffQsLTN4le3cibUvuoyJsP52WFKoX
	Jw5RJcEXel+BSTtppj5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJiR3-0000000BNLL-2lBe;
	Fri, 14 Nov 2025 01:17:10 +0000
Received: from r9133.ps.combzmail.jp ([49.212.13.37])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJiQv-0000000BNKx-3XtH
	for b43-dev@lists.infradead.org;
	Fri, 14 Nov 2025 01:17:04 +0000
Received: by r9133.ps.combzmail.jp (Postfix, from userid 99)
	id EF626879C4; Fri, 14 Nov 2025 10:15:09 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9133.ps.combzmail.jp EF626879C4
To: b43-dev@lists.infradead.org
From: =?ISO-2022-JP?B?GyRCQFBFZxsoQg==?= =?ISO-2022-JP?B?GyRCPFM0dRsoQg==?= <info@fc-seminar-online.jp>
X-Ip: 1099525520840812
X-Ip-source: k85gj74648dnsaq7u0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCPi87UjI9JE9ESSQkSXchIzwhQCRCZSROGyhC?=
 =?ISO-2022-JP?B?GyRCNjUwaSVTJTglTSU5GyhC?=
Mime-Version: 1.0
X-MagazineId: 46q7
X-uId: 6763325238485967665081611047
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20251114011652.EF626879C4@r9133.ps.combzmail.jp>
Date: Fri, 14 Nov 2025 10:15:09 +0900 (JST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_171702_694215_60D87251 
X-CRM114-Status: UNSURE (   0.42  )
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

　
　新規事業をお考えの経営者様へ
　いつもお世話になります。
　
　『少子化の時代に、教育事業！？』と、
　思うかもしれませんが
　
　実は、塾代補助金や教育無償化、贈与非課税といった
　国策もあり、子ども1人にかける教育費は増加し、
　市場は堅調に成長しています。
　
　そんな中、　『少子化だから教育はダメ』
　
　という誤った認識の方が多いので、
　学習塾市場にはまだ、『手堅く利益がでるホワイトスペース』が残っています。
　
　いったい、教育市場にどのようなビジネスチャンスがあるのか？　
　をオンラインセミナーでお伝えしますので、ぜひご視聴ください。

　11月18日（火）16：00〜17：00　オンライン開催
----------------------------------------------------------

　　　　　◆フランチャイズ事業　WEB説明会◆

　　　　　“プログラミング教育×個別指導”

　　　　　 不況に強く、少子化でも成長する
　　　　　　　 ハイブリッド型の教育事業

　　　　　　　　　▼  視聴予約 ▼
　　　　　　 https://wam-edu-fc.jp/wam2/

　  　　　　　　　◆　ご案内事業　◆
　　　　　　　　　　 個別指導 WAM

　　　　　　　　　◇　　 提供 　　◇
　　　　　　　  エイチ・エム・グループ

----------------------------------------------------------

　少子化が進む中で、多くの人は 「教育市場は縮小する」 と考えています。
　
　しかし実際は、子ども一人にかける教育費の増加に伴い、
　市場は成長し続けています。

　また、教育費は不況時でも削減されにくいため
　コロナ下でも大きく落ち込むことなく底堅さを見せました。
　幼児教育無償化などの国策もあり、今後も教育投資の増加が予想されます。

　そこでご紹介するのが、「プログラミング×個別指導」の
　ハイブリッド教育事業です。

　プログラミングは小学校で必修化されたため、保護者の関心も高まっています。

　本事業のスタートは「業界未経験」「社員１名」で可能です。
　新たな事業収益づくりをお考えの方は、是非ご参加ください。


　11月18日（火）16：00〜17：00　オンライン開催
　▼  視聴予約はこちら
　https://wam-edu-fc.jp/wam2/

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
　教育事業FCセミナー事務局
　電話：0120-891-893
　住所：東京都中央区銀座7-13-6
―――――――――――――――――――――――――――――――
　本メールのご不要な方には大変ご迷惑をおかけいたしました。
　今後ご案内が不要な方は下記URLよりお手続きをお願いいたします。
　┗　https://wam-edu-fc.jp/mail/

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
