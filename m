Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F7E9C5B572
	for <b43-dev@archiver.kernel.org>; Mon, 17 Aug 2026 00:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Mime-Version:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v4nx0N2rNzyEpVfO0WiS+w3No6YNsxNNLGlnmFuqckE=; b=ssxo/YRPwCIqTs
	Qs+dOf+RyMwVkn2q1kxHmN6z+TaX7wpQZ28F1waak4/nhQxtswdED1zJjGwcOFL9R1MMZU/JDg/9T
	37f02JuXx4REkjnNpHRPMiGnqv1DdEs/FGqKCgafZG856sVy4twrFjzsJ8qyamOjIA54jtu1dOLiy
	RTEnajPyh+zdf1yGDmVrCpUmJ/WDJ82/E4ZQjDsz3s8f2kP+ivIYuTNWY8fzQBUJc2IFrXBZOphM+
	aat86ElHEJ3yE6e3vmmkmm29aC1wrQzY4wcSY7oj4N8YVRFWEdPyhBzk4zNyLsTXdehBMc+VFLq/O
	mZUzdoQQzeWnv5Kj9JRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvlVD-00000005EPo-44jB;
	Mon, 17 Aug 2026 00:46:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvlV9-00000005EPi-1h50
	for b43-dev@bombadil.infradead.org;
	Mon, 17 Aug 2026 00:46:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Message-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:List-Unsubscribe:
	From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:
	References; bh=BDA0TBtmAUr072YSuzI1ALz/YpyiscQ61fM2iD76zUE=; b=huF2BeGIXqeAgI
	CublMXXgNM2mYYLO8E+3di+S2y2n8vqY3X9zV842HbKYEk73fAUHIx3sMh0JTGAM+nYafojNZFYGt
	pHyP5JD5d63XEHQoX1nQDZcpYNSxXCUTNyTNq7EOlkPS6MYyuCudp1YA4Dpw0A8lBuYkrrMP7G2kx
	HXPmwv9zFBGDqKYqozbnWCMA0UNq7nIHAp6RdcSzjxZWzkblh+dY8CM/08da08sXU1WfsfyWvahyf
	4yMFoS8u8kqueYBDGn0rDBHIUUDhI5Bv9KPMo/B3QmzDBImx3hUso4RW18yi8cL4eLGC5lD68D+2p
	BTlxAo3DFwur3pNrpDPw==;
Received: from r9206.ps.combzmail.jp ([160.16.62.99])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wvlV0-00000000PTk-0Ue2
	for b43-dev@lists.infradead.org;
	Mon, 17 Aug 2026 00:46:54 +0000
Received: by r9206.ps.combzmail.jp (Postfix, from userid 99)
	id 54982103736; Mon, 17 Aug 2026 09:46:05 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9206.ps.combzmail.jp 54982103736
To: b43-dev@lists.infradead.org
From: =?ISO-2022-JP?B?GyRCTmtMWhsoQg==?= =?ISO-2022-JP?B?GyRCOkwbKEI=?= _
 =?ISO-2022-JP?B?GyRCJSQhPCUiJTclOSVIGyhC?= <info@eassist-corp.jp>
X-Ip: 6303201735758671
X-Ip-source: k85gj76248dnsa7uu0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?QUkbJEIkS0MlJG8kbCRKJCQhKj04NVIkJCRpJDobKEI=?=
 =?ISO-2022-JP?B?GyRCJE4/NyVTJTglTSU5GyhC?=
Mime-Version: 1.0
X-MagazineId: 627u
X-uId: 6764295538486064675044391009
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20260817004624.54982103736@r9206.ps.combzmail.jp>
Date: Mon, 17 Aug 2026 09:46:05 +0900 (JST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_014649_907382_AB4A2B2A 
X-CRM114-Status: UNSURE (   0.66  )
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

　
　4,300以上の福祉施設から、依頼が集まり続け
　既存の全国100拠点だけではとても供給が追いつかない・・・。
　
　この需給ギャップを埋めるため、
　現在「訪問型理美容サービス事業」のフランチャイズ加盟店・オーナー様を
　新たに募集しております。

　<説明会の日程>
　8月17日（月）13:00〜14:00
　8月19日（水）13:00〜14:00
　※いずれも内容は同じです

　<オンライン視聴はこちら>
　https://eassist-corp.work/beauty3/
　
　
◆…─…─…─…─…─…─…─…─…─…─…─…─…─…─…─…─…─◇
　
　いわゆる“2025年問題”を背景に、
　訪問理美容へのニーズは年々高まり、メディアからも注目が集まっています。
　
　堀江貴文さんのYouTubeチャンネル（ホリエモンチャンネル）でも
　本事業が取り上げられ、大きな反響を呼んでいます。
　
　（動画リンク）
　https://www.youtube.com/watch?v=FpCmymNWXcw

◆…─…─…─…─…─…─…─…─…─…─…─…─…─…─…─…─…─◇
　
　
　いつもお世話になっております。
　イーアシスト セミナー事務局です。
　
　この度、全国で急拡大を続ける「訪問型理美容サービス」の
　フランチャイズ説明会をご案内いたします。

　
　訪問型理美容サービスとは？

　高齢・疾病・ケガ・障がいなどにより、外出が難しい方の
　ご自宅や介護施設を訪問し、
　カットを中心とした理美容サービスを提供する事業です。
　
　すでに 4,300以上の福祉施設と提携しており、
　安定した需要に支えられた成長マーケットです。
　
　現在は、全国100拠点超で対応していますが、

　施設側からの依頼増加に対して供給が追いつかず、
　新店の開設が急務となっています。


　この事業を開業するにあたって、
　オーナー様に理美容等の専門資格は不要です。
　
　本部が理美容師の採用を全面サポートいたしますので、
　オーナー様は マネジメントと事業運営に専念いただけます。


　さらに、開業後の軌道化を後押しする仕組みとして、
　　「既存の提携施設の案件をご紹介」
　　「本部が新規で提携施設の営業を実施」

　新規開拓の支援を本部側で行います。
　
　
　■セミナー内
──────────────────────────────
　・初期投資の内訳
　・モデル収支と回収期間
　・施設紹介制度を含むサポート体制
　・事業の将来性と市場データ
　・成功オーナーの取組み事例　など
　

　事業としての安定性・社会貢献性・スケール性を
　総合的に判断いただける内容となっております。

　　＞＞ オンライン視聴はこちら ＜＜
　　https://eassist-corp.work/beauty3/


***********************************************************************
メールでのご連絡、大変失礼しました。
こちらのメールが不要な方は、お手数ですが下記よりお手続きをお願いします。
https://eassist-corp.work/mail/

***********************************************************************
イーアシスト　セミナー運営事務局
大阪市中央区日本橋1-17-17-604
TEL：06-6253-0875
***********************************************************************

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
