Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D0E1E83043
	for <b43-dev@archiver.kernel.org>; Tue,  3 Feb 2026 02:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8edpjiHwn1GNno21gWz8dbXMnP8Yetl/udGVLhOB9CQ=; b=NnSvvCoPC+q1bm
	YON/hkzd+mKFLLPksP/j+YBbTZ09IfhYzL2/tpI2q1YzMutwL+m5Mbci3xMVlMKRgw1shGvuBVP1t
	/xHFg/2Bt2RnLvdqZYaTalhjxV+RZ+wMtEroX/KV8LnRrTEj0KuEQqSJ5l+Pl0kKR+GLPiHSDe0X3
	Y/ntnTp82nwLakQ4/04mc2eUqXHCxqiM0h2zf2m0iFNg5Ceb8/hCAAKN4uNjnQCB+my1PBo+eMhTW
	1BKimCpABsciHHRu2Qzw+/OG+PiWpqnb5h/cniQ0wGEF2nKAP4ZQR8BWFTOBPopckAndKI4QZ7CQU
	tqG6BmYWG1CnYBcIJ5LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn6b1-00000005xk7-3jIf;
	Tue, 03 Feb 2026 02:56:55 +0000
Received: from b32503.am.arara.com ([118.67.107.48])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn6au-00000005xjd-0l7p
	for b43-dev@lists.infradead.org;
	Tue, 03 Feb 2026 02:56:49 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b325.am.arara.com with SMTP; Tue, 03 Feb 2026 11:34:36 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ibj-marriage.jp;
	s=re202407; t=1770086076;
	bh=0K57LHGRlaGD575N/vkEOKvT86EbT8IzZ5JNL7AJQno=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=ccZAmkS1jXrh+P5dI6g3cN42bUCVgTUlrUOUGiTwuAfsXLBNtgjoBInrQYrFYygNw
	 sCTV7wIiktTjgJ4RUiI4bNx3leoBvSSYnAyDEXKe/hHj8rFigrGunri+CafAlTZx3h
	 dgOySkRM2PIIEjk8nuf32GpZLWpuzG28oHxVZLOA=
From: =?UTF-8?B?57WQ5ama55u46KuH5omA44K744Of44OK44O85LqL5YuZ5bGA?= <info@ibj-marriage.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?5Lit5bCP5LyB5qWt5ZCR44GR44CA5paw6KaP5LqL5qWt44K744Of44OK44O8?=
Message-Id: <01esoy-032qn@bam001.am.arara.com>
Date: Tue, 03 Feb 2026 11:34:36 +0900
MIME-Version: 1.0
X-SE-GID: 01esoy@bam001.am.arara.com
X-SE-HID: b325.am.arara.com.1770086076564134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_185648_676979_D4395B1D 
X-CRM114-Status: UNSURE (   1.45  )
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

IAogCuOAjOi1pOWtl+OBq+OBquOCieOBquOBhOOBk+OBqOOAjeOBjOOAgee1jOWWtuOBruebruea
hOOBq+OBquOBo+OBpgrjgZfjgb7jgaPjgabjgYTjgovntYzllrblubnpg6jjga7nmobmp5jjgbgK
IAogCuWklumDqOOBi+OCieOAgei1pOWtl+S8gealreOBruS4reOBq+WFpeOCigrnpL7plbfjgajj
gZfjgabmjIfmj67jgpLln7fjgaPjgZ/mnKzkurrjgaDjgYvjgonjgZPjgZ3oqp7jgozjgosKIArj
gIzntYTnuZTlpInpnanjgI3jgajjgIzlj47nm4rjgqLjg4Pjg5fjgI3jga7lhbfkvZPnrZbjgpIK
5ama5rS75LqL5qWt44KS6YCa44GX44Gm44GK5Lyd44GI44GZ44KL44CBCgrnibnliKXjgrvjg5/j
g4rjg7zjga7jgZTmoYjlhoXjgafjgZnjgIIK4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
CuOAgCAKIO+9nuS7iuOBoOOBi+OCieiqnuOCjOOCi+OAgem7kuWtl+WMluW+qea0u+OCueODiOOD
vOODquODvO+9ngrjgIAK44CA44CA44CA44CAIOe1kOWpmuebuOirh+aJgOODk+OCuOODjeOCuQrj
gIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDjga4K44CA44CA44CA5oiQ5Yqf44Gu44Od44Kk44Oz44OI
44KS54m55Yil5YWs6ZaLCgrjgIDml6XjgIDnqIvvvJrjgIAy5pyINuaXpe+8iOmHke+8iTE0OjAw
772eMTU6MDAK44CA5Lya44CA5aC077ya44CA44Kq44Oz44Op44Kk44Oz6ZaL5YKsCgrjgIDlj4Ll
iqDosrvvvJrjgIDkuI3opoHjgafjgZkK44CA6Kyb44CA5bir77ya44CASUJK5Y+W57eg5b2544CA
5qiq5bedIOazsOS5iwogCuOAgOKWvOOBlOimluiBtOOBr+OBk+OBoeOCiQrjgIBodHRwczovL2li
ai1rb25rYXRzdS5iaXovMjYwMFNQLwogCuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgUlCSsOX54m55Yil44K744Of44OK44O84pSB4pSBCiDjgIAK
IOOAgArjgIAyMDE55bm044CBSUJK44Kw44Or44O844OX44Gr5Y+C55S744GX44Gf44Go44GN44CB
CuOAgOe1kOWpmuebuOirh+aJgOOBruOAjOOCteODs+ODnuODquOCqOOAjeOBr+OAgei1pOWtl+S8
gealreOBp+OBl+OBn+OAggog44CACuOAgOOBneOBk+OBi+OCieOCj+OBmuOBizEy44GL5pyI44Gn
44CB5aOy5LiK6auYMTAuNeWEhOWGhu+8j+e1jOW4uOWIqeebijEuMuWEhOWGhuOBqArjgIDotaTl
rZfkvZPos6rjgYvjgonohLHljbTjgZfjgIHlpKfluYXjgarlopfnm4rjgpLlrp/nj77jgIIKIOOA
gArjgIDjgZXjgonjgavjgIHnt4rmgKXkuovmhYvlrqPoqIDmmI7jgZHku6XpmY3jgIzlhaXkvJrm
lbDjgI3jgYzlopfliqDjgZfjgIEK44CA5YWl5Lya5a6f57i+44KC5YmN5bm05q+UMTkz77yF44Go
5aKX5Yqg44CCCiDjgIAK44CA5Y2Y5pyI5aOy5LiK6auY44O75Yip55uK44Go44KC44Gr6YGO5Y67
5pyA6auY44KS5pu05paw44GX44CBCuOAgOebiuOAhemcgOimgeOBjOmrmOOBvuOBo+OBpuOBhOOC
i+eKtuaFi+OCkuS9nOOCiuWHuuOBmeOBk+OBqOOBq+aIkOWKn+OBl+OBvuOBl+OBn+OAggrjgIAK
44CACuOAgOOBk+OBrlblrZflm57lvqnjgrnjg4jjg7zjg6rjg7zjga/lgbbnhLbjgafjga/jgarj
gY/jgIEK44CA44CM5b+F54S244CN44Gg44Go56eB44Gf44Gh44Gv6ICD44GI44Gm44GE44G+44GZ
44CCCuOAgArjgIDlubjjgYTjgIFJQkrjgafjga/miJDlip/jgZfjgabjgYTjgovlpJrjgY/jga7n
tZDlqZrnm7joq4fmiYDjga7lo7DjgpIK44CA6IGe44GP44GT44Go44GM44Gn44GN44CB44Gd44KM
44KS5omL44GM44GL44KK44Gr44GX44Gm57WE57mU5pS56Z2p44KS6YCy44KB44G+44GX44Gf44CC
CuOAgArjgIDjgZPjga7lvqnmtLvliofjgpIK44CA44CM44G744GL44Gu5qWt55WM44Gu6Kmx44Gg
44GL44KJ6Zai5L+C44Gq44GE44CNCuOAgOOBqOOAgeaxuuOCgeOBpOOBkeOCi+OBruOBp+OBr+OB
quOBjwrjgIAK44CA6LK056S+44Gu57WE57mU44KE5qWt55WM44Gn44KC5b+c55So44Gn44GN44KL
6YOo5YiG44GMCuOAgOWkp+OBhOOBq+OBguOCi+OBqOiAg+OBiOOBpuOBhOOBvuOBmeOAggrjgIAK
44CA44Gc44Gy44CB44K744Of44OK44O844Gr44GU5Y+C5Yqg6aCC44GNCuOAgOi1pOWtl+S9k+iz
quOBi+OCieiEseWNtOOBl+OAgeS6i+alreOCkuaLoeWkp+OBmeOCi+ODkuODs+ODiOOCkgrjgIDm
jIHjgaHluLDjgaPjgabpoILjgZHjgovjgajlrInjgZfjgYTjgafjgZnjgIIK44CACuOAgArjgIDj
gZPjgpPjgarmlrnjgavjgYrjgZnjgZnjgoEK44CA44O7IOi1pOWtl+S9k+izquOBrue1jOWWtuOB
i+OCieiEseOBmeOCi+ODkuODs+ODiOOCkuefpeOCiuOBn+OBhArjgIDjg7sg5LiN5rOB44Gr5by3
44GE5ama5rS744Oe44O844Kx44OD44OI44Gr44Gk44GE44Gm55+l44KK44Gf44GECuOAgOODuyDm
nKzmpa3jgajnm7jkuZflirnmnpzjgYzjgYLjgovmlrDopo/kuovmpa3jgpLmjqLjgZfjgabjgYTj
gosK44CA44O7IOeLrOeri+OAgeWJr+alreW/l+acm+OBruaWueOChOaWsOimj+S6i+alreOBruOB
lOaLheW9k+iAheanmOOAgArjgIAK44CACuOAgOKWvOOCu+ODn+ODiuODvOips+e0sOOBr+OBk+OB
oeOCiQrjgIBodHRwczovL2liai1rb25rYXRzdS5iaXovMjYwMFNQLwoK4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSBCgrjgIDm
oKrlvI/kvJrnpL5JQkrjgIDjgrvjg5/jg4rjg7zkuovli5nlsYAK44CA5p2x5Lqs6YO95paw5a6/
5Yy66KW/5paw5a6/MS0yMy03CuOAgOaWsOWuv+ODleOCoeODvOOCueODiOOCpuOCqOOCueODiCAx
MkYKCuKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKA
peKApeKApeKApeKApQrjgIDmnKzjg6Hjg7zjg6vjga7jgZTkuI3opoHjgarmlrnjgavjga/lpKfl
pIkK44CA44GU6L+35oOR44KS44GK44GL44GR44GE44Gf44GX44G+44GX44Gf44CCCuOAgOS7iuW+
jOOAgeOBlOahiOWGheOBjOS4jeimgeOBquaWueOBr+OAgeOBiuaJi+aVsOOBp+OBmeOBjArjgIDk
uIvoqJhVUkzjgojjgorphY3kv6HlgZzmraLnmbvpjLLjgpLjgYrpoZjjgYTjgYTjgZ/jgZfjgb7j
gZnjgIIK44CA44CAaHR0cHM6Ly9pYmotb25saW5lLmJpei9tYWlsLwrjgIAK4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSBCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYg
bWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
