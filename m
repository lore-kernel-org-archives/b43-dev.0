Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52DAFC282EC
	for <b43-dev@archiver.kernel.org>; Wed, 12 Mar 2025 01:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Hiuf2vO7l8fonFxlTYl35vDGbiogZtbP0dWYoPr3ac=; b=gVFBvO08eZz3dG
	TG05Jigf+Dpq0R9Cg8GK27s8MqAssRjO/6+x8pIY7psdHM6B+fRD2O0g/3uD6QcxGjbYLeEbMqUGI
	3bulZHZiOTZlivA/LpiklCfg7C66fJTAyVaVxTGkZVR3Hbor20r6C++DaNXwC0M7pp6rdFlHt2851
	ZwP7rAMZJRESjpS8ciQ0DR5wzeb8CpSOaoo3g/NCATY9XfAPWmPhGHcEVDtjCyUbOqSZTaa6eF2b2
	XDzK9/3mrTJ7qiNnOacysgXT7Lmmec+g/t6vuxSVDCupkQmSWxXG3GyWaJZ4KR3SHu7cesbMbY0qm
	rKsphxpqsIVQuJBkVYcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsAjH-00000007IO1-3BdQ;
	Wed, 12 Mar 2025 01:17:51 +0000
Received: from b19902.am.arara.com ([182.236.83.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsAjB-00000007INT-3fF4
	for b43-dev@lists.infradead.org;
	Wed, 12 Mar 2025 01:17:47 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b199.am.arara.com with SMTP; Wed, 12 Mar 2025 10:06:40 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fc-seminar-online.jp;
	s=re202409; t=1741741600;
	bh=LDGl86lYrgCDbwSFjM/FH7TXzprnDTWxP1yoF3fYjYs=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=Jv1lh94DQPl9TTj7aVxj0oQHUAuU99D7iFQZB5D15rQslxYGE09u3Srj8BEPNbfjE
	 5cP/VFiq1jOFz/+m1Cfeayvgqesi/hVPNx2ysiEDgbU5nk9PmhxwwnnW+Lkc7BhZV5
	 ECYjvqpekoEXpSFNZvfRJFiVNcyb2bA35Q6oJT+c=
From: info@fc-seminar-online.jp
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?6LK35Y+W5bCC6ZaA5bqXIOWEsuOBkeOBruOCq+ODqeOCr+ODqg==?=
Message-Id: <00mi6l-01eti@bam001.am.arara.com>
Date: Wed, 12 Mar 2025 10:06:40 +0900
MIME-Version: 1.0
X-SE-GID: 00mi6l@bam001.am.arara.com
X-SE-HID: b199.am.arara.com.1741741600637393
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_181746_355801_D0BE58A4 
X-CRM114-Status: UNSURE (   0.79  )
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

5paw6KaP5LqL5qWt44KS44GK5o6i44GX44Gu57WM5Za26ICF5qeY44O75LqL5qWt44Kq44O844OK
44O85qeY44G4CgoK44GE44Gk44KC44GK5LiW6Kmx44Gr44Gq44KK44G+44GZ44CCCgoK5rOV5Lq6
44Gu5paw6KaP5LqL5qWt44Go44GX44Gm44CB44Oq44K544Kv44KS5oqR44GI44Gm44K544K/44O8
44OI44Gn44GN44KL44CBCuODleODqeODs+ODgeODo+OCpOOCuuS6i+alreOBruOCquODs+ODqeOC
pOODs+iqrOaYjuS8muOCkuOBlOahiOWGheOBhOOBn+OBl+OBvuOBmeOAggoKCualreeVjOacque1
jOmok++8j+ekvuWToTHlkI3jgafjgrnjgr/jg7zjg4jjgafjgY3jgovjga7jgacK44GU6IiI5ZGz
44GM44GC44KM44Gw5piv6Z2e44GK55Sz6L6844G/44GP44Gg44GV44GE44CCCgoK44CA44CA4oC7
44CAWm9vbeOBruOCpuOCp+ODk+ODiuODvOapn+iDveOBq+OCiOOCi+eZuuS/oeW9ouW8j+OBruOB
n+OCgQrjgIDjgIDjgIDjgIDoppbogbTogIXjga7jgYrpoZTjgoTjgYrlo7DjgYzooajjgavlh7rj
govjgZPjgajjga/jgZTjgZbjgYTjgb7jgZvjgpPjgIIKCgrjgIDjgIDilqDjgIDjgrvjg5/jg4rj
g7zoppbogbTlvozjga7jgqLjg7PjgrHjg7zjg4jjgaflgIvliKXoqqzmmI7jgbgK44CA44CA44CA
44CA44GK55Sz6L6844G/44GV44KM44Gf5pa544Gr44Gv5pu457GN44KS44OX44Os44K844Oz44OI
44CCCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOOAgOOAgCDilrzjgIDmm7jnsY3ntLnku4vjgIDilrwK
44CA44CA44CA44CAaHR0cHM6Ly93d3cuYW1hem9uLmNvLmpwL2RwLzQ0NzgxMTQ3MDYK44CA44CA
44CA44CA4oCV44CAMjAyMuW5tDPmnIjjgIDjg4DjgqTjg6Tjg6Ljg7Pjg4nnpL7lh7rniYjjgIDi
gJUK44CA44CA44CA44CA44CA44CA5qCq5byP5Lya56S+44Ko44Oz44OR44Ov44O877yI6LK35Y+W
5aSn5ZCJIOmBi+WWtuacrOmDqO+8iQrjgIDjgIDjgIDjgIDjgIDjgIDku6Pooagg5aKX5LqV5L+K
5LuLIOiRlwrjgIDjgIDjgIDjgIDjgIDjgIDjgIzlrabmrbTjgarjgZfjgIHkurrohIjjgarjgZfj
garjgonjgIHnpL7plbfjgavjgarjgowh44CNCgoK44CAM+aciDE05pelKOmHkSnvvI8z5pyIMjjm
l6Uo6YeRKeODleODqeODs+ODgeODo+OCpOOCuuS6i+alreOAgOOCquODs+ODqeOCpOODs+iqrOaY
juS8mgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCgrjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDlhajlm70xMTAw5bqX6IiXCuOAgOOA
gOOAgOOAgCDjgIAgMTDlubTplpPjga7lupfoiJfntpnntprnjoc5Ny40JQrjgIDjgIDjgIAg44CA
44CA44CA44CA44CA44CA6LK35Y+W5bCC6ZaA5bqXCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOOAgOKA
leOAgOiyt+WPluWkp+WQieOAgOKAlQoK44CA44CA44CA44CA6LK344GE5Y+W44KK44CM5bCC6ZaA
44CN44Gg44GL44KJ5a6f54++44Gn44GN44KLCuOAgOOAgOOAgOOAgOS9juODquOCueOCr++8j+mr
mOWPjuebiuOBruODk+OCuOODjeOCueODouODh+ODqwoKCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOKW
vCAg6Kmz57Sw44O755Sz6L68ICDilrwK44CAIOOAgGh0dHBzOi8vZmMtZGFpa2ljaGkta2FpdG9y
aS5iaXovZGFpMy8KCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOKXhuOAgCDjgIDmj5DkvpvjgIDjgIAg
4peGCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOagquW8j+S8muekvuOCqOODs+ODkeODr+ODvArjgIDj
gIDjgIDjgIDjgIDjgIDjgIDvvIjosrflj5blpKflkIlGQ+acrOmDqO+8iQoK44CA44CA5pel44CA
56iL44CA77ya44CAM+aciDE05pelKOmHkSnvvI8z5pyIMjjml6Uo6YeRKTE0OjAw772eMTQ6MzAK
44CA44CA5a++44CA6LGh44CA77ya44CA5paw6KaP5LqL5qWt44KS44GK6ICD44GI44Gu5rOV5Lq6
b3LlgIvkurrkuovmpa3kuLsK44CA44CA4oC744CA5Lih5pel56iL44Go44KC5YaF5a6544Gv5ZCM
44GY44Gn44GZCuOAgOOAgArjgIDjgIDjgIDjgIDjgIDjgIDjgIDil4fjgIDjgrPjg7Pjg4bjg7Pj
g4TjgIDil4cK44CA44CA4oCV44CA6LK344GE5Y+W44Gj44Gf44GC44Go44Gu5YSy44GR44Gu44Kr
44Op44Kv44Oq44Gv77yfCuOAgOOAgOKAleOAgOODquOCteOCpOOCr+ODq+OCt+ODp+ODg+ODl+OB
qOOBrumBleOBhOOBr++8nwrjgIDjgIDigJXjgIDmnKrntYzpqJPjgafmn7vlrprjga/jganjgYbj
gZnjgovjga7jgYvvvJ8K44CA44CA4oCV44CA44Oh44Or44Kr44Oq44CB44Ok44OV44Kq44Kv44Gr
6LKg44GR44Gm44GE44KL44Gu44Gn44Gv77yfCuOAgOOAgOKAleOAgOaWsOimj+S6i+alreOBqOOB
l+OBpuOBruWPjuebiuaAp+ODu+ODquOCueOCr+ODu+e2mee2muaAp+OBr++8n+OAgGV0Yy4uLgoK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQoKCuOBlOe0ueS7i+OBmeOCi+OBruOBr+OAjOOAgOiyt+WPluWwgumWgOW6l+OAgOOAjeOBruOD
leODqeODs+ODgeODo+OCpOOCuuOBp+OBmeOAggoKCuS4gOiIrOeahOOBq+ODquODpuODvOOCueS6
i+alreOBr+iyt+OBhOWPluOBo+OBpuOBi+OCieiyqeWjsuOBmeOCi+OBvuOBp+WcqOW6q+OCkuaK
seOBiOOCi+OBn+OCgQrjgIzlnKjluqvjg6rjgrnjgq/jgI3jgIzkvqHmoLzlpInli5Xjg6rjgrnj
gq/jgI3jgIzos4fph5HkuI3otrPjg6rjgrnjgq/jgI3jgajjgYTjgaPjgZ8z44Gk44Gu44Oq44K5
44Kv44GM5Ly044GE44G+44GZ44CCCgoK44Gd44KM44KJ44Gu44Oq44K544Kv44KS5Y+W44KK6Zmk
44GN44CB6auY5Y+O55uK44KS55Sf44G/5Ye644GZ44Gu44GM4oCc6LK35Y+W5bCC6ZaA4oCd44Go
44GE44GG44OT44K444ON44K544Oi44OH44Or44Gn44GZ44CCCgoK6LK344GE5Y+W44Gj44Gf556s
6ZaT44Gr5Yip55uK44GM56K65a6a44GZ44KL44K344K544OG44Og44Go44CB5bCR5Lq65pWw77yP
5bCP44K544Oa44O844K544Gu6YGL5Za25L2T5Yi244Gr44KI44KKCuiyt+WPluWkp+WQieOBruW6
l+iIl+OBr+alreeVjOWxiOaMh+OBrjExMDDlupfoiJfjgb7jgafmi6HlpKfjgZfjgIFGQ+alreeV
jOOBruS4reOBp+OCguazqOebruOCkua1tOOBs+OBpuOBhOOBvuOBmeOAggoKCuOBl+OBi+OBl+OA
geOBvuOBoOOBvuOBoOS8uOmVt+OBmeOCi+ODquODpuODvOOCueW4guWgtOOBq+WvvuOBl+OBpuW6
l+iIl+OBjOi2s+OCiuOBpuOBhOOBquOBhOOBn+OCgQrkuIDnt5Ljgavlj5bjgorntYTjgpPjgafj
gYTjgZ/jgaDjgZHjgovliqDnm5/lupfjgpLli5/pm4bjgZfjgabjgYTjgb7jgZnjgIIKCgrmnKzo
qqzmmI7kvJrjgavjgablhLLjgZHjga7jgqvjg6njgq/jg6rjgoTlj47nm4rmgKfjg7vjg6rjgrnj
gq/jg7vntpnntprmgKfjgarjganjgpLjgYrkvJ3jgYjjgZfjgb7jgZnjga7jgacK5paw6KaP5LqL
5qWt44Gu56uL44Gh5LiK44GS44KS44GK6ICD44GI44Gu5pa544Gv5piv6Z2e44Go44KC44GU5Y+C
5Yqg44GP44Gg44GV44GE44CCCgoK44CA44CA5pel56iL44CA77ya44CAM+aciDE05pelKOmHkSnv
vI8z5pyIMjjml6Uo6YeRKTE0OjAw772eMTQ6MzAK44CA44CA4oC744CA5Lih5pel56iL44Go44KC
5YaF5a6544Gv5ZCM44GY44Gn44GZCgoK44CA44CA4pa844CA44GK55Sz6L6844Gv5LiL6KiYVVJM
44KI44KK44GK6aGY44GE44GX44G+44GZ44CA4pa8CgrjgIDjgIAgaHR0cHM6Ly9mYy1kYWlraWNo
aS1rYWl0b3JpLmJpei9kYWkzLwoKCuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
gQrjgIDjg5Xjg6njg7Pjg4Hjg6PjgqTjgrrjgrvjg5/jg4rjg7zjgIDpgYvllrbkuovli5nlsYAK
44CA6Zu76Kmx77yaMDEyMC04OTEtODkzCuOAgOS9j+aJgO+8muadseS6rOmDveS4reWkruWMuumK
gOW6pzctMTMtNgrigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJUK44CA5pys44Oh
44O844Or44Gu44GU5LiN6KaB44Gq5pa544Gr44Gv5aSn5aSJ44GU6L+35oOR44KS44GK44GL44GR
44GE44Gf44GX44G+44GX44Gf44CCCuOAgOS7iuW+jOOBlOahiOWGheOBjOS4jeimgeOBquaWueOB
r+S4i+iomFVSTOOBq+OBpuOBiuaJi+e2muOBjeOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOA
ggrjgIDilJfjgIBodHRwczovL2ZjLWRhaWtpY2hpLWthaXRvcmkuYml6L21haWwvCuOAgArilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iNDMtZGV2Cg==
