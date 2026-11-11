Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9327606A8A0
	for <b43-dev@archiver.kernel.org>; Wed, 11 Nov 2026 23:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZlUF4WMq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:Mime-Version:Subject:
	List-Unsubscribe-Post:From:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Owner;
	bh=NlcIh84C9b58LREja9G9qnIkc7lIFGtOwFZr9JbgncY=; b=ZlUF4WMq2u3qGWf9uu6z6V50ST
	5qzz8uRN94c8mwQLsz3d1XiKhoXAlZup5dDwUb7IGe/koJXlz0SzfvDqZGLJ5qUXbLUYF5uUJ03EQ
	d353wgnALx4k/JG5wcjLKbAemSpetQ38teucT0XoM+3S/RFOgpzM+fxCOPvFca5MDaFoZo1EQmkib
	e9+pZSkPbAi1cRifLqhONH7OFXIBV+SNBzonKR+lsiCztswG78vIX9FAsaEOYVzmCVOjkVmTvXOLv
	tqt4G20rqxTXYFxa09myLvFeRl1ZQWk5soxNZcbyJtuYgLlhtPaL/RroytFiJZaa4dSne7z+t/AuI
	7PbcN2xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRI33-00000008AcG-1dIp;
	Wed, 11 Nov 2026 23:48:13 +0000
Received: from r9133.ps.combzmail.jp ([49.212.13.37])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRI2w-00000008AbQ-2aCB
	for b43-dev@lists.infradead.org;
	Wed, 11 Nov 2026 23:48:09 +0000
Received: by r9133.ps.combzmail.jp (Postfix, from userid 99)
	id 0FF69875B7; Thu, 12 Nov 2026 08:47:30 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9133.ps.combzmail.jp 0FF69875B7
To: b43-dev@lists.infradead.org
From: =?ISO-2022-JP?B?GyRCP0BFRCFDMGxITDxSQ0RLIT9NJUolbCVDJTglaiVzJS8bKEI=?= <info@knowledgelink-corp.jp>
X-Ip: 5390431594580205
X-Ip-source: k85gj72848dnsad1u0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCPFJEOSROMnE8UiROIVYlKCE8JTkhVyEiGyhC?=
 =?ISO-2022-JP?B?GyRCJCQkRDwtJGEkXiQ5JCshKSFaN1AxRDxUOEJEaiU7GyhC?=
 =?ISO-2022-JP?B?GyRCJV8lSiE8IVsbKEI=?=
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
X-MagazineId: 28d1
X-uId: 6764325037486067644983461010
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20261111234801.0FF69875B7@r9133.ps.combzmail.jp>
Date: Thu, 12 Nov 2026 08:47:30 +0900 (JST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_154806_773124_E73D4E53 
X-CRM114-Status: UNSURE (   0.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.9 (/)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=0.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNWANTED_LANGUAGE_BODY,X_IP
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

　
　ルールを決めたら、社員は辞めるどころか
　「迷わなく」なった。
　
　これまでに4,800社以上への支援から分かった
　
　“凡人”を常勝集団に変える
　ルールのつくり方を
　
　次の朝礼から実践できる形で
　分かりやすく丁寧にお伝えします。

┏… Overview …………………………………………┓
　
　「あいつが辞めたら、うちは回るのか？」
　
　　エースに頼らず“凡人”を
　　常勝集団に変えるルールのつくり方

　　　　　　　　―――
　　日　時　11月24日（火）13:00-15:00
　
　　会　場　Zoom無料開催／定員100名
　　事務局　ナレッジリンクセミナー窓口
　
　　詳細はこちら
　　https://knowledge-co.jp/rule/

┗……………………………………………………………┛
　
　
　多くの社長とお話しする中で
　このようなお悩みをよく伺います。
　
　　・エースが辞めたら、売上が大きく落ちる
　　・朝礼に遅れてくる社員がいても、誰も何も言わない
　　・同じミスに、毎回説教。その後、自己嫌悪になる

　研修も、クレドも、評価制度も試した。
　それでも改善は続かず「結局は人次第なのか」と感じている。
　
　
　そんなお悩みを解決し、成果を生み出す会社に一変させる
　本質をついた、ルールづくりをお伝えします。

　
― セミナーで得られること ―

　・ルールを増やすと社員は辞めるのか？への答え
　・「姿勢のルール」の決め方
　・「完全結果」の指示に書き換える方法
　・エラー時に上司がかける「一言」
　
　
　いずれも、翌日の朝礼から試していただける内容です。
　
　自社の組織に希望を持つための気づきを得られる
　内容となっておりますので、ぜひご視聴ください。　
　
　
_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

　一般社団法人ナレッジリンク
　東京都千代田区神田小川町1-8-3
　セミナー窓口：03-5256-7638

……………………………………………………………………
　メール案内が不要な方にはご迷惑をお掛けしまして
　大変申し訳ございません。
　お手数ですが下記URLより手続きをお願い致します。
　
　配信の解除依頼はこちら
　https://fc-knowledgelink-corp.jp/mail/

_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
