Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D5C0C71135
	for <b43-dev@archiver.kernel.org>; Mon, 16 Jun 2025 03:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tc8dhigX7TTv31g1zCQwWGHQJ1wxmqVrnEJO59ZUmBs=; b=gWqtLzkLJZ/eXs
	ttMGl2pTESjjiG/VALHxODCpryUwaGirj05Rxn+E9j1/oHGzEGCNfm+0zvUf+k053GICD/Mj5erzR
	qGzPj5CxCAAOS17tdhtTivF2owzu8GV1cvJl4sykVuqPsbY0JP9Ta2/IF1QhRQdq7oNnXY1wTgYiz
	hQJq/Hh8tshofws6bcMiEzn6bQxQhjdnHzkoIQaujWZqGVhsF3SLnZOiQKSEKxfQObWVZWsJC0CpG
	+e/lyHT42MxqRQdAjvWw4GTOMWCABD6gCqvqsA86izW58FC0NxpOmfi1as9eP0rg/oNgDXbw2ML84
	87k8RO6C8Uv14Wb4G5ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR0a0-00000003GUY-2eA1;
	Mon, 16 Jun 2025 03:32:16 +0000
Received: from b20003.am.arara.com ([182.236.75.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR0Su-00000003FIR-1QSk
	for b43-dev@lists.infradead.org;
	Mon, 16 Jun 2025 03:24:58 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b200.am.arara.com with SMTP; Mon, 16 Jun 2025 12:24:42 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fc-seminar-online.jp;
	s=re202409; t=1750044282;
	bh=LScccEnxDPhXdCOgaSXKnPhx125spzElalKYZ2EMW6U=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=ekrjyQumki06mQVrlafFVAA+tblQITWYnCnbAQX/QIRV7sR9ei7zNm5ISo7jBcspI
	 rhn8dsRe4Q/j8dw421JUsoFsM/l1Zv1xoCWjxi4v3FgS3KaGy+AA9wECs1HsgFcYL8
	 VPyN4XPJqrZPPt9FqroG3phPpFmwXwVcwE8Xwhgc=
From: =?UTF-8?B?RkPkuovmpa3oqqzmmI7kvJo=?= <info@fc-seminar-online.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?6LK35Y+W5LqL5qWt44CA5YSy44GR44Gu44Kr44Op44Kv44Oq?=
Message-Id: <00z440-01c5y@bam001.am.arara.com>
Date: Mon, 16 Jun 2025 12:24:42 +0900
MIME-Version: 1.0
X-SE-GID: 00z440@bam001.am.arara.com
X-SE-HID: b200.am.arara.com.1750044282404393
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250615_202456_943671_AD7A7C09 
X-CRM114-Status: UNSURE (   0.96  )
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

44CACuOAgOaWsOimj+S6i+alreOCkuOBiuaOouOBl+OBrue1jOWWtuiAheanmOODu+S6i+alreOC
quODvOODiuODvOanmOOBuArjgIAKCuOAgOOBhOOBpOOCguOBiuS4luipseOBq+OBquOCiuOBvuOB
meOAggrjgIAK44CACuOAgOazleS6uuOBruaWsOimj+S6i+alreOBqOOBl+OBpuOAgeODquOCueOC
r+OCkuaKkeOBiOOBpuOCueOCv+ODvOODiOOBp+OBjeOCi+OAgQrjgIDjg5Xjg6njg7Pjg4Hjg6Pj
gqTjgrrkuovmpa3jga7jgqbjgqfjg5Pjg4rjg7woMzDliIYp44KS44GU5qGI5YaF44GE44Gf44GX
44G+44GZ44CCCuOAgArjgIAK44CA5qWt55WM5pyq57WM6aiT77yP56S+5ZOhMeWQjeOBp+OCueOC
v+ODvOODiOOBp+OBjeOCi+OBruOBpwrjgIDjgZToiIjlkbPjgYzjgYLjgozjgbDmmK/pnZ7jgYrn
lLPovrzjgb/jgY/jgaDjgZXjgYTjgIIKCgrjgIDjgIDigLvjgIBab29t44Gu44Km44Kn44OT44OK
44O85qmf6IO944Gr44KI44KL55m65L+h5b2i5byP44Gu44Gf44KBCuOAgOOAgOOAgOOAgOimluiB
tOiAheOBruOBiumhlOOChOOBiuWjsOOBjOihqOOBq+WHuuOCi+OBk+OBqOOBr+OBlOOBluOBhOOB
vuOBm+OCk+OAggoKCuOAgOOAgOKWoOOAgOOCu+ODn+ODiuODvOimluiBtOW+jOOBruOCouODs+OC
seODvOODiOOBp+WAi+WIpeiqrOaYjuOBuArjgIDjgIDjgIDjgIDjgYrnlLPovrzjgb/jgZXjgozj
gZ/mlrnjgavjga/mm7jnsY3jgpLjg5fjg6zjgrzjg7Pjg4jjgIIK44CA44CA44CA44CA44CA44CA
44CA44CA44CAIOKWvOOAgOabuOexjee0ueS7i+OAgOKWvArjgIDjgIDjgIDjgIBodHRwczovL3d3
dy5hbWF6b24uY28uanAvZHAvNDQ3ODExNDcwNgrjgIDjgIDjgIDjgIDigJXjgIAyMDIy5bm0M+ac
iOOAgOODgOOCpOODpOODouODs+ODieekvuWHuueJiOOAgOKAlQrjgIDjgIDjgIDjgIDjgIDjgIDm
oKrlvI/kvJrnpL7jgqjjg7Pjg5Hjg6/jg7zvvIjosrflj5blpKflkIkg6YGL5Za25pys6YOo77yJ
CuOAgOOAgOOAgOOAgOOAgOOAgOS7o+ihqCDlopfkupXkv4rku4sg6JGXCuOAgOOAgOOAgOOAgOOA
gOOAgOOAjOWtpuattOOBquOBl+OAgeS6uuiEiOOBquOBl+OBquOCieOAgeekvumVt+OBq+OBquOC
jCHjgI0KCgrjgIA25pyIMjXml6Uo5rC0KeODleODqeODs+ODgeODo+OCpOOCuuS6i+alreOAgOOC
quODs+ODqeOCpOODs+iqrOaYjuS8mgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgrjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDlhajl
m70xMTAw5bqX6IiXCuOAgOOAgOOAgOOAgCDjgIAgMTDlubTplpPjga7lupfoiJfntpnntprnjoc5
Ny40JQrjgIDjgIDjgIAg44CA44CA44CA44CA44CA44CA6LK35Y+W5bCC6ZaA5bqXCuOAgOOAgOOA
gOOAgOOAgOOAgOOAgOOAgOKAleOAgOiyt+WPluWkp+WQieOAgOKAlQoK44CA44CA44CA44CA6LK3
44GE5Y+W44KK44CM5bCC6ZaA44CN44Gg44GL44KJ5a6f54++44Gn44GN44KLCuOAgOOAgOOAgOOA
gOS9juODquOCueOCr++8j+mrmOWPjuebiuOBruODk+OCuOODjeOCueODouODh+ODqwoKCuOAgOOA
gOOAgOOAgOOAgOOAgOOAgOKXhiAg6Kmz57Sw44O755Sz6L68ICDil4YK44CAIOOAgGh0dHBzOi8v
ZmMtZGFpa2ljaGkta2FpdG9yaS5iaXovZGFpMy8KCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOKXhuOA
gCDjgIDmj5DkvpvjgIDjgIDil4YK44CA44CA44CA44CA44CA44CA44CA5qCq5byP5Lya56S+44Ko
44Oz44OR44Ov44O8CuOAgOOAgOOAgOOAgOOAgOOAgOOAgO+8iOiyt+WPluWkp+WQiUZD5pys6YOo
77yJCgrjgIDjgIDml6XjgIDnqIvjgIDvvJrjgIA25pyIMjXml6XvvIjmsLTvvIkxNDowMO+9njE0
OjMwCgoK44CA44CA5a++44CA6LGh44CA77ya44CA5paw6KaP5LqL5qWt44KS44GK6ICD44GI44Gu
5rOV5Lq6b3LlgIvkurrkuovmpa3kuLsKCuOAgOOAgArjgIDjgIDjgIDjgIDjgIDjgIDjgIDil4fj
gIDjgrPjg7Pjg4bjg7Pjg4TjgIDil4cK44CA44CA4oCV44CA6LK344GE5Y+W44Gj44Gf44GC44Go
44Gu5YSy44GR44Gu44Kr44Op44Kv44Oq44Gv77yfCuOAgOOAgOKAleOAgOODquOCteOCpOOCr+OD
q+OCt+ODp+ODg+ODl+OBqOOBrumBleOBhOOBr++8nwrjgIDjgIDigJXjgIDmnKrntYzpqJPjgafm
n7vlrprjga/jganjgYbjgZnjgovjga7jgYvvvJ8K44CA44CA4oCV44CA44Oh44Or44Kr44Oq44CB
44Ok44OV44Kq44Kv44Gr6LKg44GR44Gm44GE44KL44Gu44Gn44Gv77yfCuOAgOOAgOKAleOAgOaW
sOimj+S6i+alreOBqOOBl+OBpuOBruWPjuebiuaAp+ODu+ODquOCueOCr+ODu+e2mee2muaAp+OB
r++8n+OAgGV0Yy4uLgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQoKCuOBlOe0ueS7i+OBmeOCi+OBruOBr+OAjOOAgOiyt+WPluWwgumW
gOW6l+OAgOOAjeOBruODleODqeODs+ODgeODo+OCpOOCuuOBp+OBmeOAggoKCuS4gOiIrOeahOOB
q+ODquODpuODvOOCueS6i+alreOBr+iyt+OBhOWPluOBo+OBpuOBi+OCieiyqeWjsuOBmeOCi+OB
vuOBp+WcqOW6q+OCkuaKseOBiOOCi+OBn+OCgQrjgIzlnKjluqvjg6rjgrnjgq/jgI3jgIzkvqHm
oLzlpInli5Xjg6rjgrnjgq/jgI3jgIzos4fph5HkuI3otrPjg6rjgrnjgq/jgI3jgajjgYTjgaPj
gZ8z44Gk44Gu44Oq44K544Kv44GM5Ly044GE44G+44GZ44CCCgoK44Gd44KM44KJ44Gu44Oq44K5
44Kv44KS5Y+W44KK6Zmk44GN44CB6auY5Y+O55uK44KS55Sf44G/5Ye644GZ44Gu44GM4oCc6LK3
5Y+W5bCC6ZaA4oCd44Go44GE44GG44OT44K444ON44K544Oi44OH44Or44Gn44GZ44CCCgoK6LK3
44GE5Y+W44Gj44Gf556s6ZaT44Gr5Yip55uK44GM56K65a6a44GZ44KL44K344K544OG44Og44Go
44CB5bCR5Lq65pWw77yP5bCP44K544Oa44O844K544Gu6YGL5Za25L2T5Yi244Gr44KI44KKCuiy
t+WPluWkp+WQieOBruW6l+iIl+OBr+alreeVjOWxiOaMh+OBrjExMDDlupfoiJfjgb7jgafmi6Hl
pKfjgZfjgIFGQ+alreeVjOOBruS4reOBp+OCguazqOebruOCkua1tOOBs+OBpuOBhOOBvuOBmeOA
ggoKCuOBl+OBi+OBl+OAgeOBvuOBoOOBvuOBoOS8uOmVt+OBmeOCi+ODquODpuODvOOCueW4guWg
tOOBq+WvvuOBl+OBpuW6l+iIl+OBjOi2s+OCiuOBpuOBhOOBquOBhOOBn+OCgQrkuIDnt5Ljgavl
j5bjgorntYTjgpPjgafjgYTjgZ/jgaDjgZHjgovliqDnm5/lupfjgpLli5/pm4bjgZfjgabjgYTj
gb7jgZnjgIIKCgrmnKzoqqzmmI7kvJrjgavjgablhLLjgZHjga7jgqvjg6njgq/jg6rjgoTlj47n
m4rmgKfjg7vjg6rjgrnjgq/jg7vntpnntprmgKfjgarjganjgpLjgYrkvJ3jgYjjgZfjgb7jgZnj
ga7jgacK5paw6KaP5LqL5qWt44Gu56uL44Gh5LiK44GS44KS44GK6ICD44GI44Gu5pa544Gv5piv
6Z2e44Go44KC44GU5Y+C5Yqg44GP44Gg44GV44GE44CCCgoK44CA44CA5pel56iL44CA77ya44CA
NuaciDI15pel77yI5rC077yJMTQ6MDDvvZ4xNDozMAoKCuOAgOOAgD4+44GK55Sz6L6844Gv5LiL
6KiYVVJM44KI44KK44GK6aGY44GE44GX44G+44GZPDwKCuOAgOOAgCBodHRwczovL2ZjLWRhaWtp
Y2hpLWthaXRvcmkuYml6L2RhaTMvCgoK4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSBCuOAgOODleODqeODs+ODgeODo+OCpOOCuuOCu+ODn+ODiuODvOOAgOmBi+WWtuS6i+WLmeWx
gArjgIDpm7voqbHvvJowMTIwLTg5MS04OTMK44CA5L2P5omA77ya5p2x5Lqs6YO95Lit5aSu5Yy6
6YqA5bqnNy0xMy02CuKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKA
leKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAlQrjgIDmnKzj
g6Hjg7zjg6vjga7jgZTkuI3opoHjgarmlrnjgavjga/lpKflpInjgZTov7fmg5HjgpLjgYrjgYvj
gZHjgYTjgZ/jgZfjgb7jgZfjgZ/jgIIK44CA5LuK5b6M44GU5qGI5YaF44GM5LiN6KaB44Gq5pa5
44Gv5LiL6KiYVVJM44Gr44Gm44GK5omL57aa44GN44KS44GK6aGY44GE44GE44Gf44GX44G+44GZ
44CCCuOAgOKUl+OAgGh0dHBzOi8vZmMtZGFpa2ljaGkta2FpdG9yaS5iaXovbWFpbC8K44CACuKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2I0My1kZXYK
