Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94127D262B1
	for <b43-dev@archiver.kernel.org>; Wed, 21 Jan 2026 00:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aR5d8lEuZtVhunm8akpiaWrD9uHFdYwIxbx/qyQiGsA=; b=XYzbnONE5C61mS
	Pq2ABgok6nvEu2pyakxqRYz46bmcVlrNfLovaLHSpmE99gj7ircvB6gRCSkcm93wdGPpcwG1V4TLc
	roAD8t0SxrUI/Bm/6TXFMu2Dg4J88q090+R8xu8FzLYiZ4HL7OgAUyUY5N6RdScTneZcKr/lfdEdY
	rEwIehl6J/SlN2H1QDYX7BQ7wC7eGaEyFzv3KKzztmr7QMz2Q1p1kgFSL9fMeyBXoc0jVq3LG5h1n
	oUCLv6MDal8EJ9ulV2Z3C2J5PV+WPrmGchkEbu+EGb8a+mODm7Cr6eirqVN2EkhaW5sfDystKuP+f
	TjxsI3h23SfZwDZlDW7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viM8D-00000004fRZ-2Nxg;
	Wed, 21 Jan 2026 00:31:33 +0000
Received: from b20001.am.arara.com ([182.236.75.70])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viM85-00000004fRE-0RVr
	for b43-dev@lists.infradead.org;
	Wed, 21 Jan 2026 00:31:26 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b200.am.arara.com with SMTP; Wed, 21 Jan 2026 09:23:04 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fc-seminar-online.jp;
	s=re202409; t=1768954984;
	bh=wEvcqYUI+ijDVWVQFvlHzYvag/Gru1fxw0VRGvmqGOw=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=u3AzS2T+2o8iVtOl8BbFcTBcqBtGRncDQLoIEr1ACmacpuCq1hMAcmJhGrtfC12iF
	 Jl5v+o0nugM7LNnk/ydoQvjsUbEyhtO0AEqigHtqy6YG5ZevAozr5FZQtySY7zd4js
	 eeWWgUwAn3ekl+dBaIdaHB0cpGr8oidjrbQzri3M=
From: =?UTF-8?B?44OV44Op44Oz44OB44Oj44Kk44K65LqL5qWt6Kqs5piO5Lya?= <info@fc-seminar-online.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?5LuV5YWl44KM44Gf44CB4oCc556s6ZaT5Yip55uK4oCd44CA5paw44OT44K444ON44K544Oi44OH44Or?=
Message-Id: <01e2rz-02sdk@bam001.am.arara.com>
Date: Wed, 21 Jan 2026 09:23:04 +0900
MIME-Version: 1.0
X-SE-GID: 01e2rz@bam001.am.arara.com
X-SE-HID: b200.am.arara.com.1768954984960878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_163125_588570_BA7D9F35 
X-CRM114-Status: UNSURE (   1.75  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

44CA5paw6KaP5LqL5qWt44KS44GK5o6i44GX44Gu57WM5Za26ICF5qeY44O75LqL5qWt44Kq44O8
44OK44O85qeY44G4CgoK44CA772e4oCc5LuV5YWl44KM44Gf556s6ZaT44Gr5Yip55uK44GM56K6
5a6a44GZ44KL4oCdCuOAgOOAgOODpuODi+ODvOOCr+OBquODk+OCuOODjeOCueODouODh+ODq+OC
kuOBlOWtmOOBmOOBp+OBl+OCh+OBhuOBi++9ngoK44CA6LK35Y+W5aSn5ZCJ44Gg44GR44Gu6LK3
5Y+W44K344K544OG44Og44KS44GU57S55LuL44GZ44KLCuOAgDMw5YiG44K744Of44OK44O844Gu
44GU5qGI5YaF44Gn44GZ44CCCuOAgArjgIAK44CA44GT44Gu5LqL5qWt44Gv44CB5LuK44GE44KL
56S+5ZOhMeS6uuOBp+OAgTHml6U15Lq644Gu5p2l5bqX44Gq44Gu44GrCuOAgOWjsuS4ijHlhITo
toXjgpLni5njgYjjgb7jgZnjgIIKCuOAgOWcqOW6q+ODquOCueOCr+OCkuOBu+OBvOOCvOODreOB
q+aKkeOBiOOBpgrjgIDjgrnjgr/jg7zjg4jjgafjgY3jgovjgZ/jgoHjgIEK44CA5qWt55WM5pyq
57WM6aiT44Gn44KC5oiQ5Yqf44Gu5YaN54++5oCn44GM6auY44GE44Oi44OH44Or44Gn44GZ44CC
CgrjgIDjgZzjgbLjgZPjga7mqZ/kvJrjgavosrflj5bjg5Pjgrjjg43jgrnjga4K44CA5YSy44GR
44Gu44Kr44Op44Kv44Oq44KS44GU56K66KqN44GP44Gg44GV44GE44CCCgotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tIEZD44Kq44Oz44Op44Kk44Oz6Kqs5piO5LyaIC0tLS0tLQoK44CA
5YWo5Zu9MSw1MDDlupfoiJfnqoHnoLTvvIExMOW5tOmWk+OBruW6l+iIl+e2mee2mueOhzk2LjTv
vIUKCuOAgOOAgOOAgOOAgCDigJzosrflj5blsILploDigJ3jgaDjgYvjgonjgZPjgZ3lj6/og73j
gavjgarjgosK44CA44CA44CA44CA5L2O44Oq44K544KvIMOXIOmrmOWPjuebiuOBruODk+OCuOOD
jeOCueODouODh+ODqwoK44CA44CA44CA44CA44CA44CA77yc6KaW6IG05LqI57SE44Gv44GT44Gh
44KJ77yeCuOAgOOAgOOAgGh0dHBzOi8vZmMtZGFpa2ljaGkta2FpdG9yaS5iaXovMjYvCgoK44CA
5o+QIOS+m++8muagquW8j+S8muekvuOCqOODs+ODkeODr+ODvO+8iOiyt+WPluWkp+WQiUZD5pys
6YOo77yJCuOAgOaXpSDnqIvvvJox5pyIMjPml6XvvIjph5HvvIkxNDowMO+9njE0OjMw44CA5q6L
NeaeoArjgIDjgIDjgIDjgIAgMeaciDI35pel77yI54Gr77yJMTQ6MDDvvZ4xNDozMArjgIDjgIDj
gIDjgIAg4oC75YaF5a6544Gv5ZCM44GY44Gn44GZ44CCCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoK44CA4peHIOiqrOaYjuS8muOCs+OD
s+ODhuODs+ODhArjgIDjg7vku5XlhaXjgozjgZ/nnqzplpPjgavliKnnm4rnorrlrprjga7ku5Xn
tYTjgb8K44CA44O744Oq44K144Kk44Kv44Or5bqX44Go44Gu4oCc5pys6LOq55qE44Gq6YGV44GE
4oCdCuOAgOODu+acque1jOmok+OBp+OCguafu+WumuOBp+OBjeOCi+S7lee1hOOBvwrjgIDjg7vj
g6Hjg6vjgqvjg6rjgIHjg6Tjg5Xjgqrjgq/jgajjga7nq7bkuonlhKrkvY3mgKcK44CA44O75paw
6KaP5LqL5qWt44Go44GX44Gm44Gu5Y+O55uK5oCn77yP44Oq44K544Kv77yP57aZ57aa5oCnCgoK
44CA4peHIOWcqOW6q+ODu+S+oeagvOWkieWLleODu+izh+mHkeS4jei2s+OBruKAnOS4ieWkp+OD
quOCueOCr+KAneOCkuaOkumZpArjgIDkuIDoiKznmoTjgarjg6rjg6bjg7zjgrnkuovmpa3jga/j
gIHku5XlhaXjgozlvozjgIHosqnlo7Ljgb7jgaflnKjluqvjgpLmirHjgYjjgovjgZ/jgoHjgIEK
44CA44CA44O75Zyo5bqr44Oq44K544KvCuOAgOOAgOODu+S+oeagvOWkieWLleODquOCueOCrwrj
gIDjgIDjg7vos4fph5HkuI3otrPjg6rjgrnjgq8K44CA44GT44GuM+OBpOOBjOmBv+OBkeOCieOC
jOOBvuOBm+OCk+OAggrjgIAK44CA44GX44GL44GX44CB6LK35Y+W5aSn5ZCJ44Gu4oCc6LK35Y+W
5bCC6ZaA4oCd44Oi44OH44Or44Gv44GT44GT44KS5a6M5YWo44Gr5pat44Gh5YiH44KL44GT44Go
44GnCuOAgOOAjOiyt+OBhOWPluOCiu+8neWIqeebiueiuuWumuOAjeOBjOaIkOeri+OBl+OBvuOB
meOAggoK44CA5bCR5Lq65pWw44O75bCP44K544Oa44O844K544Gn5oiQ56uL44GZ44KL44Gf44KB
44CBCuOAgOWFqOWbvTEsNTAw5bqX6IiX44G+44Gn5ouh5aSn44GZ44KL44CB6auY44GE5Y+O55uK
5oCn44Go57aZ57aa5oCn44KS5a6f6Ki844GX44Gm44GE44G+44GZ44CCCgoK44CA4peHIOW4guWg
tOOBr+S8uOOBs+e2muOBkeOAgeOBl+OBi+OBl+W6l+iIl+OBr+S4jei2s+OBl+OBpuOBhOOBvuOB
mQrjgIDjg6rjg6bjg7zjgrnluILloLTjga/mi6HlpKfjgpLntprjgZHjgabjgYTjgb7jgZnjgYzj
gIEK44CA44Gd44Gu6ZyA6KaB44Gr5a++44GX44Gm5bqX6IiX5pWw44GM6L+944GE44Gk44GE44Gm
44GE44Gq44GE44Gu44GM54++54q244Gn44GZ44CCCgoK44CA5LuK5Zue44Gu6Kqs5piO5Lya44Gn
44Gv44CB5YSy44GR44Gu44Kr44Op44Kv44Oq44O75Y+O55uK5oCn44O744Oq44K544Kv5qeL6YCg
44O757aZ57aa5oCn44Gr44Gk44GE44GmCuOAgOOCquODvOODiuODvOimlueCueOBp+Wun+S+i+OB
q+WfuuOBpeOBhOOBpuino+iqrOOBhOOBn+OBl+OBvuOBmeOAggrjgIAK44CA5paw6KaP5LqL5qWt
44Gu56uL44Gh5LiK44GS44KS44GU5qSc6KiO5Lit44Gu5pa544Gv44CBCuOAgOOBnOOBsuOBlOim
luiBtOOBj+OBoOOBleOBhOOAggoK44CA4pa8IOips+e0sOOBr+OBk+OBoeOCiQrjgIBodHRwczov
L2ZjLWRhaWtpY2hpLWthaXRvcmkuYml6LzI2LwoK4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSBCuODleODqeODs+ODgeODo+OC
pOOCuuOCu+ODn+ODiuODvOmBi+WWtuS6i+WLmeWxgArpm7voqbHvvJowMTIwLTg5MS04OTMK5L2P
5omA77ya5p2x5Lqs6YO95Lit5aSu5Yy66YqA5bqnNy0xMy02CuKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgQrku4rlvozjgZTm
oYjlhoXjgYzkuI3opoHjgarmlrnjga/kuIvoqJjjgavjgabjgYrmiYvntprjgY3jgpLjgYrpoZjj
gYTjgYTjgZ/jgZfjgb7jgZnjgIIKaHR0cHM6Ly9mYy1kYWlraWNoaS1rYWl0b3JpLmJpei9tYWls
LwrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
