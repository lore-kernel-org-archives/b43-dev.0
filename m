Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A95C7D3ABEF
	for <b43-dev@archiver.kernel.org>; Mon,  8 Dec 2025 04:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Mime-Version:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cAD379wyUP+uJFaOpT2TZr5BUSIKSMmLgI77D5YtgKg=; b=W+LGqCc9iXUrT1
	40U5CRXo9Hlag7SykAjof91XxQWW1MrRkt3hxiVKvNmT6RF6vkqhnXvnbiRfBST6gHXDNrccmK+iN
	4HV2bR4us7XBYQSgY3GuK/OjbbYKE+Ry+nFsChjosLnuzzswKgsg2fvAhvMVWmCpFy6NMxVl2WFDI
	2W5AQgLwbNmNhdesSNvyHAvOnQgcmZnBEMq+Nxkc7IFQHTBkhgtWpkXjrFGDd0ggGwa8VB6P/ffgo
	jaMuZWY07dtIW4TE0yVNQrWqmh62eNtVoVRqtHEuZc1IFZX6oku/QHUz45YT3RDM+baxmv8LA0Kc1
	KKgEws6CwJjRm5DWpAQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSSv9-0000000CZdW-2C5d;
	Mon, 08 Dec 2025 04:32:23 +0000
Received: from r9206.ps.combzmail.jp ([160.16.62.99])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSSv4-0000000CZd3-0NxZ
	for b43-dev@lists.infradead.org;
	Mon, 08 Dec 2025 04:32:20 +0000
Received: by r9206.ps.combzmail.jp (Postfix, from userid 99)
	id F1347103739; Mon,  8 Dec 2025 13:32:03 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9206.ps.combzmail.jp F1347103739
To: b43-dev@lists.infradead.org
From: =?ISO-2022-JP?B?GyRCQFBFaBsoQg==?= =?ISO-2022-JP?B?GyRCPFM1KBsoQg==?= <info@fc-session.jp>
X-Ip: 265856168464352
X-Ip-source: k85gj7ra48dnsa5pu0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCN1AxRDxUJE4bKEI4GyRCM2QkLDhtGyhC?=
 =?ISO-2022-JP?B?GyRCMnIkOSRrIVY2NTBpO1Q+bCFXGyhC?=
Mime-Version: 1.0
X-MagazineId: ra5p
X-uId: 6763334641485968614358751040
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20251208043206.F1347103739@r9206.ps.combzmail.jp>
Date: Mon,  8 Dec 2025 13:32:03 +0900 (JST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_203218_306011_B7CC872A 
X-CRM114-Status: UNSURE (   0.19  )
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

　12月18日（木）14：00〜15：00　オンライン開催
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


　12月18日（木）14：00〜15：00　オンライン開催
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
