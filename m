Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E29ACCFA05
	for <b43-dev@archiver.kernel.org>; Thu,  6 Nov 2025 23:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ovjjfg340H5MfUIKtZGp6HokkzxZwtDIdeDS1cp9JCw=; b=pl6Kusk/XI7I9d
	aEanW77Yx+PpJGXY8skvLgm8dJ/qV4ivNzpg9M4s8NZUo6n4XlPawYp2TSHKr/9LU/hXMZKyM47ro
	kYJj1wPQda+Z95diN435Lzlx9Q6KvCLHivTDl4dui/2r/Oj0B+BmaKuCkWh3yXcEXsq/Nl7ioaGnN
	V3SWUx45aTzIRzkEJSuNFODRB+sTSgQrJiZc48/yBAZsuYbKEwZeITnLHXdiEiYZS3bzzifRjq3/y
	Ky3SyuYFUeesayi+IiP+RCgwf7B/DQTRpf4lnLX82dmu0OtBLzrYrt10ynHx1vCIq9lVpB6NcMKFZ
	2wBCy+62GZtu0DI+D8rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9lS-0000000GPaq-1xFh;
	Thu, 06 Nov 2025 23:51:38 +0000
Received: from b32502.am.arara.com ([118.67.107.47])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9lM-0000000GPaS-3P2J
	for b43-dev@lists.infradead.org;
	Thu, 06 Nov 2025 23:51:34 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b325.am.arara.com with SMTP; Fri, 07 Nov 2025 08:48:10 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fc-seminar-online.jp;
	s=re202409; t=1762472890;
	bh=X7OqCkIcvPFXDLvPSxxpoUwmxNKSfHTFm56kzHwOno0=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=ETvY0A5nkvPtPN2USQuZVFHqAiThIp4Yi9Kz9E96ANCEB6p7LSdULCaFOUf0fIJ+Y
	 eKmyMyfD5HYd6RkDVqDd75dZl1EV2t/0DpTW5UblGgJbOCnVOXyDw9hFzxZV53KKfz
	 GxXSVEgfmqT2Hcq4BxGzdOajNzWFbX1nagvhEaUo=
From: =?UTF-8?B?44OV44Op44Oz44OB44Oj44Kk44K65LqL5qWt6Kqs5piO5Lya?= <info@fc-seminar-online.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?44Oq44K544Kv5pyA5bCP5YyW44Gr5oiQ5Yqf44CB6LK35Y+W5bqX?=
Message-Id: <019epj-01a34@bam001.am.arara.com>
Date: Fri, 07 Nov 2025 08:48:10 +0900
MIME-Version: 1.0
X-SE-GID: 019epj@bam001.am.arara.com
X-SE-HID: b325.am.arara.com.1762472890620553
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_155133_403197_633BEFF8 
X-CRM114-Status: UNSURE (   0.94  )
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
meOAggrjgIAK44CA5rOV5Lq644Gu5paw6KaP5LqL5qWt44Go44GX44Gm44CB44Oq44K544Kv44KS
5oqR44GI44Gm44K544K/44O844OI44Gn44GN44KL44CBCuOAgOODleODqeODs+ODgeODo+OCpOOC
uuS6i+alreOBruOCquODs+ODqeOCpOODs+iqrOaYjuS8muOCkuOBlOahiOWGheOBhOOBn+OBl+OB
vuOBmeOAggrjgIAK44CA5qWt55WM5pyq57WM6aiT77yP56S+5ZOhMeWQjeOBp+OCueOCv+ODvOOD
iOOBp+OBjeOCi+OBruOBpwrjgIDjgZToiIjlkbPjgYzjgYLjgozjgbDjgIHjgZzjgbLjgZToppbo
gbTjgY/jgaDjgZXjgYTjgIIKCuOAgOOAgOKWoOOAgOOCu+ODn+ODiuODvOimluiBtOW+jOOBruOC
ouODs+OCseODvOODiOOBp+WAi+WIpeiqrOaYjuOBuArjgIDjgIDjgIDjgIDjgYrnlLPovrzjgb/j
gZXjgozjgZ/mlrnjgavjga/mm7jnsY3jgpLjg5fjg6zjgrzjg7Pjg4jjgIIK44CA44CA44CA44CA
44CA44CA44CA44CA44CAIOKWvOOAgOabuOexjee0ueS7i+OAgOKWvArjgIDjgIDjgIDjgIBodHRw
czovL3d3dy5hbWF6b24uY28uanAvZHAvNDQ3ODExNDcwNgrjgIDjgIDjgIDjgIDigJXjgIAyMDIy
5bm0M+aciOOAgOODgOOCpOODpOODouODs+ODieekvuWHuueJiOOAgOKAlQrjgIDjgIDjgIDjgIDj
gIDjgIDmoKrlvI/kvJrnpL7jgqjjg7Pjg5Hjg6/jg7zvvIjosrflj5blpKflkIkg6YGL5Za25pys
6YOo77yJCuOAgOOAgOOAgOOAgOOAgOOAgOS7o+ihqCDlopfkupXkv4rku4sg6JGXCuOAgOOAgOOA
gOOAgOOAgOOAgOOAjOWtpuattOOBquOBl+OAgeS6uuiEiOOBquOBl+OBquOCieOAgeekvumVt+OB
q+OBquOCjCHjgI0KCgrjgIAxMeaciDEy5pelKOawtCnjg5Xjg6njg7Pjg4Hjg6PjgqTjgrrkuovm
pa3jgIDjgqrjg7Pjg6njgqTjg7PoqqzmmI7kvJoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQrjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDj
gIDlhajlm70xNTAw5bqX6IiXCuOAgOOAgOOAgOOAgCDjgIAgMTDlubTplpPjga7lupfoiJfntpnn
tprnjoc5Ni40JQrjgIDjgIDjgIAg44CA44CA44CA44CA44CA44CA6LK35Y+W5bCC6ZaA5bqXCuOA
gOOAgOOAgOOAgOOAgOOAgOOAgOOAgOKAleOAgOiyt+WPluWkp+WQieOAgOKAlQoK44CA44CA44CA
44CA6LK344GE5Y+W44KK44CM5bCC6ZaA44CN44Gg44GL44KJ5a6f54++44Gn44GN44KLCuOAgOOA
gOOAgOOAgOS9juODquOCueOCr++8j+mrmOWPjuebiuOBruODk+OCuOODjeOCueODouODh+ODqwoK
CuOAgOOAgOOAgOOAgOOAgOOAgDzjgZToppbogbTkuojntITjga/jgZPjgaHjgok+CuOAgCDjgIDj
gIBodHRwczovL2ZjLWRhaWtpY2hpLWthaXRvcmkuYml6L2RhaS8KCuOAgOOAgOOAgOOAgOOAgOOA
gOOAgOKXhuOAgCDjgIDmj5DkvpvjgIDjgIAg4peGCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOagquW8
j+S8muekvuOCqOODs+ODkeODr+ODvArjgIDjgIDjgIDjgIDjgIDjgIDjgIDvvIjosrflj5blpKfl
kIlGQ+acrOmDqO+8iQoK44CA44CA5pel44CA56iL44CA77ya44CAMTHmnIgxMuaXpSjmsLQpMTQ6
MDDvvZ4xNDozMArjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIAxMeaciDI25pelKOawtCkxNDowMO+9
njE0OjMwCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOKAu+S4oeaXpeOAgeWQjOOBmOWGheWuueOBp+OB
meOAggoK44CA44CA5a++44CA6LGh44CA77ya44CA5paw6KaP5LqL5qWt44KS44GK6ICD44GI44Gu
5rOV5Lq6b3LlgIvkurrkuovmpa3kuLsKCuOAgOOAgArjgIDjgIDjgIDjgIDjgIDjgIDjgIDil4fj
gIDjgrPjg7Pjg4bjg7Pjg4TjgIDil4cK44CA44CA4oCV44CA6LK344GE5Y+W44Gj44Gf44GC44Go
44Gu5YSy44GR44Gu44Kr44Op44Kv44Oq44Gv77yfCuOAgOOAgOKAleOAgOODquOCteOCpOOCr+OD
q+OCt+ODp+ODg+ODl+OBqOOBrumBleOBhOOBr++8nwrjgIDjgIDigJXjgIDmnKrntYzpqJPjgafm
n7vlrprjga/jganjgYbjgZnjgovjga7jgYvvvJ8K44CA44CA4oCV44CA44Oh44Or44Kr44Oq44CB
44Ok44OV44Kq44Kv44Gr6LKg44GR44Gm44GE44KL44Gu44Gn44Gv77yfCuOAgOOAgOKAleOAgOaW
sOimj+S6i+alreOBqOOBl+OBpuOBruWPjuebiuaAp+ODu+ODquOCueOCr+ODu+e2mee2muaAp+OB
r++8n+OAgGV0Yy4uLgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCgrjgIDjgZTntLnku4vjgZnjgovjga7jga/jgIzjgIDosrflj5blsILp
loDlupfjgIDjgI3jga7jg5Xjg6njg7Pjg4Hjg6PjgqTjgrrjgafjgZnjgIIK44CACuOAgOS4gOiI
rOeahOOBq+ODquODpuODvOOCueS6i+alreOBr+iyt+WPluOBi+OCieOAgeiyqeWjsuOBmeOCi+OB
vuOBp+WcqOW6q+OCkuaKseOBiOOCi+OBn+OCgQrjgIAK44CA44CM5Zyo5bqr44Oq44K544Kv44CN
CuOAgOOAjOS+oeagvOWkieWLleODquOCueOCr+OAjQrjgIDjgIzos4fph5HkuI3otrPjg6rjgrnj
gq/jgI0K44CA44Go44GE44Gj44GfM+OBpOOBruODquOCueOCr+OBjOS8tOOBhOOBvuOBmeOAggrj
gIAK44CACuOAgOOBneOCjOOCieOBruODquOCueOCr+OCkuWPluOCiumZpOOBjeOAgemrmOWPjueb
iuOCkueUn+OBv+WHuuOBmeOBruOBjArjgIDigJzosrflj5blsILploDigJ3jgajjgYTjgYbjg5Pj
grjjg43jgrnjg6Ljg4fjg6vjgafjgZnjgIIK44CACuOAgOiyt+OBhOWPluOBo+OBn+KAneeerOmW
k+OBq+WIqeebiuOBjOeiuuWumuKAneOBmeOCi+OCt+OCueODhuODoOOBqOOAgQrjgIDlsJHkurrm
lbDvvI/lsI/jgrnjg5rjg7zjgrnjga7pgYvllrbkvZPliLbjgavjgojjgooK44CACuOAgOiyt+WP
luWkp+WQieOBruW6l+iIl+OBr+alreeVjOWxiOaMh+OBrjE1MDDlupfoiJfjgb7jgafmi6HlpKfj
gZfjgIEK44CARkPmpa3nlYzjga7kuK3jgafjgoLms6jnm67jgpLmtbTjgbPjgabjgYTjgb7jgZnj
gIIK44CACuOAgArjgIDjgZfjgYvjgZfjgIHjgb7jgaDjgb7jgaDkvLjplbfjgZnjgovjg6rjg6bj
g7zjgrnluILloLTjgavlr77jgZfjgablupfoiJfjgYzotrPjgorjgabjgYTjgarjgYTjgZ/jgoEK
44CA5LiA57eS44Gr5Y+W44KK57WE44KT44Gn44GE44Gf44Gg44GR44KL5Yqg55uf5bqX44KS5Yuf
6ZuG44GX44Gm44GE44G+44GZ44CCCuOAgArjgIDmnKzoqqzmmI7kvJrjgavjgablhLLjgZHjga7j
gqvjg6njgq/jg6rjgoQK44CA5Y+O55uK5oCn44O744Oq44K544Kv44O757aZ57aa5oCn44Gq44Gp
44KS44GK5Lyd44GI44GX44G+44GZ44Gu44GnCuOAgArjgIDmlrDopo/kuovmpa3jga7nq4vjgaHk
uIrjgZLjgpLjgYrogIPjgYjjga7mlrnjga/mmK/pnZ7jgajjgoLjgZTlj4LliqDjgY/jgaDjgZXj
gYTjgIIK44CACuOAgOOAgOaXpeeoi+OAgO+8muOAgDEx5pyIMTLml6Uo5rC0KTE0OjAw772eMTQ6
MzAK44CA44CA44CA44CA44CA44CA44CAMTHmnIgyNuaXpSjmsLQpMTQ6MDDvvZ4xNDozMAoKCuOA
gOOAgDzjgqbjgqfjg5Pjg4rjg7zoppbogbTjga/jgZPjgaHjgok+CuOAgOOAgGh0dHBzOi8vZmMt
ZGFpa2ljaGkta2FpdG9yaS5iaXovZGFpLwoK4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSBCuOAgOODleODqeODs+ODgeODo+OCpOOCuuOCu+ODn+ODiuODvOOAgOmBi+WWtuS6i+WL
meWxgArjgIDpm7voqbHvvJowMTIwLTg5MS04OTMK44CA5L2P5omA77ya5p2x5Lqs6YO95Lit5aSu
5Yy66YqA5bqnNy0xMy02CuKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKA
leKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAlQrjgIDm
nKzjg6Hjg7zjg6vjga7jgZTkuI3opoHjgarmlrnjgavjga/lpKflpInjgZTov7fmg5HjgpLjgYrj
gYvjgZHjgYTjgZ/jgZfjgb7jgZfjgZ/jgIIK44CA5LuK5b6M44GU5qGI5YaF44GM5LiN6KaB44Gq
5pa544Gv5LiL6KiYVVJM44Gr44Gm44GK5omL57aa44GN44KS44GK6aGY44GE44GE44Gf44GX44G+
44GZ44CCCuOAgOKUl+OAgGh0dHBzOi8vZmMtZGFpa2ljaGkta2FpdG9yaS5iaXovbWFpbC8K44CA
CuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1k
ZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2I0My1kZXYK
