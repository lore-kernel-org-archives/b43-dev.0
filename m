Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DE18C25B76
	for <b43-dev@archiver.kernel.org>; Tue, 11 Jun 2024 06:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Mime-Version:Subject:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q2PLOmAsQS/8KqS2MYJIeNpB3lvi9PkOTXtn/VZ5Lj8=; b=rnCfsrS/ABJIR+
	8Zocmd5Jn66FfmWSxsBj5vIWT02EnSAO3hamE1Fov85C/B8b7VPGlWNgHrNGqWG6ZKIVpf5uH88y2
	bsjXsL/mRp6+xeTK+NhCYjI8iFGDS/kdL2K88/WFsav0i5fvw9GbqH17h52491br2WJX1rBa3HuUA
	KKetJGApp60/Ha3eLr8xpqaYnNSR7r0+gQmbYwxfbWjJZw8ruEd2nx6+YW06Fdzqa7k23Hso3lA6m
	S9rZWxlvWRDnVM4ib0kGJ+HEeuRBnqQAqiJBbHfpC6FpgUmvKOjXaw02fFut2vEowqA+qoctxbQDv
	KeGq9mMJX97qr0EUQXFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGv7P-00000007iz1-2sE8;
	Tue, 11 Jun 2024 06:36:31 +0000
Received: from r9221.ps.combzmail.jp ([160.16.65.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGv7K-00000007ixu-3xBm
	for b43-dev@lists.infradead.org;
	Tue, 11 Jun 2024 06:36:29 +0000
Received: by r9221.ps.combzmail.jp (Postfix, from userid 99)
	id A722BE40A1; Tue, 11 Jun 2024 15:35:39 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9221.ps.combzmail.jp A722BE40A1
To: b43-dev@lists.infradead.org
From: =?ISO-2022-JP?B?GyRCNjUwaTt2NkgbKEI=?= =?ISO-2022-JP?B?GyRCQGIbKEI=?=
 =?ISO-2022-JP?B?GyRCTEAycRsoQg==?= <info@fc-seminar.jp>
X-Ip: 665127676585774
X-Ip-source: k85gj7ra48dnsa5pu0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCJDMkSSRiJE4lVyVtJTAlaSVfJXMlMCEiGyhC?=
 =?ISO-2022-JP?B?GyRCNjUwaTt2NkghIRsoQkZDGyRCQGJMQDJxGyhC?=
Mime-Version: 1.0
X-MagazineId: ra5p
X-uId: 6762274944485862644368461034
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20240611063620.A722BE40A1@r9221.ps.combzmail.jp>
Date: Tue, 11 Jun 2024 15:35:39 +0900 (JST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_233627_155685_4AD75216 
X-CRM114-Status: UNSURE (   0.90  )
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


日本の将来を担う、こどもの教育にたずさわるフランチャイズ事業の
加盟パートナーを募集するオンライン説明会をご案内申し上げます。


業界未経験・社員1名でスタートができ、実際にオーナー様の
9割以上は異業種から新規参入されています。


新規事業をお考えの方はこの機会に是非ご参加くださいませ。


　6月26日（水）　14:00〜15:00　オンライン開催
----------------------------------------------------------


　　　　　　　　不況に強い「教育事業」
　　　　　　 新規参入 オンラインセミナー

　　　　　 〜少子化でこそ、成長する理由〜

　　　　　　　　　▼  詳細・申込  ▼
　　　　　　 https://wam-edu-fc.jp/wam2/

　  　　　　　　　◆　ご案内事業　◆
　　　プログラミング教育＆個別指導学習塾 WAM（ワム）

　　　　　　　　　◇　　 提供 　　◇
　　　　　　　  エイチ・エム・グループ


----------------------------------------------------------

『少子化なのに、教育事業？』と思うかもしれませんが、
実は子ども一人にかける教育費の増加に伴い、市場は成長し続けています。


また、教育費は不況時でも削減されにくいため
コロナ下でも大きく落ち込むことなく底堅さを見せました。


幼児教育無償化などの国策もあり、今後も教育投資の増加が予想されます。


そこでご紹介するのが、「プログラミング×個別指導」のハイブリッド教育事業です。


プログラミングは小学校で必修化されたため、保護者の関心も高まっています。


本事業のスタートは業界未経験・社員１名で可能です。


新たな事業収益づくりをお考えの方は、是非ご参加ください。


　6月26日（水）　14:00〜15:00　オンライン開催
　▼  詳細・申込  ▼
　https://wam-edu-fc.jp/wam2/


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
　教育事業FCセミナー事務局
　電話：0120-891-893
  住所：東京都中央区銀座7-13-6
―――――――――――――――――――――――――――――――
　本メールのご不要な方には大変ご迷惑をおかけいたしました。
　今後ご案内が不要な方は、お手数ですが「配信不要」とご返信いただくか、
　下記URLより、お手続きをお願いいたします。
　┗　https://wam-edu-fc.jp/mail/
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
