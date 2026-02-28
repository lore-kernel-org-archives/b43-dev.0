Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CD021048924
	for <b43-dev@archiver.kernel.org>; Sat, 28 Feb 2026 01:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Mime-Version:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3/KWQwjTZYyzzJCTMJqMPv1sObvaNTQ8fWbDYW9UUrQ=; b=MXawU3MZcgTvVY
	diswsASH2x6YIacGF0hLOBqoWoNMsl2crAMzmur3GXaxJFna3oVIlrwPGLAeOfAEaPNbWUFC6vmfh
	ICuH3TMybZ7ZxT6+UZXqdDGe2heBZoIx24TOy0EXgA/kQ+6S0j1G/WPOTKKOtzARQQWX9yoUIjcJb
	NkdgVLYciRaFhV2aYEN6rcwmeFO05zLjMDwwKOGIHihYGMo556KACV003SzeSV0Q2CDSP/+F4S3oA
	a7MUlbAKWI51nvmFh1OU08Wn6Es98XE0KF/U+KVRUAp71iBDJVJj5QM+Mt2dvghzL4dPkfvFI25nT
	IAanMsFN8eFFaV0HeFoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8u7-00000009NTI-1I0F;
	Sat, 28 Feb 2026 01:13:59 +0000
Received: from r9133.ps.combzmail.jp ([49.212.13.37])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8u0-00000009NSj-1V6O
	for b43-dev@lists.infradead.org;
	Sat, 28 Feb 2026 01:13:54 +0000
Received: by r9133.ps.combzmail.jp (Postfix, from userid 99)
	id 3F30886B98; Sat, 28 Feb 2026 10:12:14 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9133.ps.combzmail.jp 3F30886B98
To: b43-dev@lists.infradead.org
From: =?ISO-2022-JP?B?GyRCP0BFRCE/JUolbCVDJTglaiVzJS8bKEI=?= <info@knowledge-seminar.jp>
X-Ip: 261095556777626
X-Ip-source: k85gj72848dnsad1u0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCPFJEOSROGyhCTkcbJEI5VEYwGyhC?=
Mime-Version: 1.0
X-MagazineId: 28d1
X-uId: 6764236638486058814133571045
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20260228011344.3F30886B98@r9133.ps.combzmail.jp>
Date: Sat, 28 Feb 2026 10:12:14 +0900 (JST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_171352_874072_78466B5C 
X-CRM114-Status: UNSURE (   0.25  )
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

　お世話になります。ナレッジリンクセミナー事務局です。
　
　
　「社員のモチベーションを上げようと声をかける」
　「部下の相談に乗り、一緒に悩んであげる」
　「現場のトラブルに、自ら先頭に立って対応する」
　
　もし社長がこれらを率先しているようであれば、
　残念ながら、その組織の成長はそこで止まります。
　
　社長のその“優しさ”が、社員の甘えを生み、責任感を奪い、
　「指示待ち人間」を量産する装置になっているからです。
　
　
　4,800社の経営者が衝撃を受けた、
　良かれと思ってやってしまう「社長のNG行動」の正体。
　
　組織を劇的に変えるための、
　オンラインセミナーを開催いたします。
　
　1つでも心当たりがあれば、一度ご視聴ください。　
　
　>>視聴予約はこちら
　https://knowledge-corp.jp/shikigaku5/
　
----------------------------------------------
　
　テーマ ：　それ、危険です 『社長のNG行動』
　　　　　 〜 その行動が、組織崩壊を招く 〜
　

　日 程　： 3月11日（水）13:00〜15:00
　　　　　  3月19日（木）13:00〜15:00
　　　　　※どちらの日程も内容は同じ
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
　
　現場から「冷たくなった」と思われることを恐れず、
　機能的な階層構造（仕組み）を作ることで

　結果として社員全員を守り、
　利益を最大化させる道筋を明示します。

　「優しさ」で人を動かすのではなく、
　「正しさ」で組織を動かす。

　音声やお顔が表に出ることはございませんので
　お気軽にご視聴ください。
　
　>>視聴予約はこちら
　https://knowledge-corp.jp/shikigaku5/
　
　
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
