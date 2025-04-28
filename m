Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F975C369D3
	for <b43-dev@archiver.kernel.org>; Mon, 28 Apr 2025 06:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bwxa1Xt4eC4C1DbcYPOW7KFhfx32LUzC9QcpeTj9ycg=; b=XcIuIHipEi8h+u
	0djS5pZCVOu+7MjydfeBdT0LgVCQ/PXVzf+lyIdoRQnxYCH2RPaaXkTmMqyfWS63HLMs9ZhE19oj5
	wejzjeHcfv/ko8/dq1Y4AtzWxMNP80D8pzJhSIo34TlI5i0sOS2zgzPxOqM2gn0q6YSP0rEULLvuO
	2erwe79SAxKfREQX5zg3EeN5rnPHpak+IDaLBpdgirBvgA0HzUBVmXapU0aLxryZePYQZ3R12cvIE
	7IQZvlKBBxLMWMc+6Lxe7dt083L3vz3cLdGBjCUqbrjscTRHtTN/WMcg5gH5N0DPvvOAuC4gW0SoV
	IHemfumt7cDaNZ6hW4Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9HXV-00000004wG6-3Pwo;
	Mon, 28 Apr 2025 06:00:25 +0000
Received: from b32501.am.arara.com ([118.67.107.46])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9HXP-00000004wEW-2zOP
	for b43-dev@lists.infradead.org;
	Mon, 28 Apr 2025 06:00:21 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b325.am.arara.com with SMTP; Mon, 28 Apr 2025 14:23:38 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fc-seminar-online.jp;
	s=re202409; t=1745817818;
	bh=wvC5F69BFYYhqlhe6v/59qh2mO/VnbAcL9frPUj3PMg=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=Tsww0UeZk5QBr1WH3mzd7/6xZpRUSCnfJSURNNs/sl4AhZLO2pYJ7AptBSRaoqtu1
	 QdG+r7alwpy0WLtlBdJ+LjqngQv2dpMtBnjvs1A4RdzgROms4D5+4UztUCHc6n3/rR
	 E3ba36XSyy9IwKyD1Szn8Kba0ye9ShDv7DFoS8Mk=
From: =?UTF-8?B?RkPkuovmpa3oqqzmmI7kvJo=?= <info@fc-seminar-online.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?6LK35Y+W5bqXIOWEsuOBkeOBruOCq+ODqeOCr+ODqg==?=
Message-Id: <00qywg-02g98@bam001.am.arara.com>
Date: Mon, 28 Apr 2025 14:23:38 +0900
MIME-Version: 1.0
X-SE-GID: 00qywg@bam001.am.arara.com
X-SE-HID: b325.am.arara.com.1745817818621656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_230020_030698_8951A2CD 
X-CRM114-Status: UNSURE (   0.72  )
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
jCHjgI0KCgrjgIA15pyIMTXml6Uo5pyoKeODleODqeODs+ODgeODo+OCpOOCuuS6i+alreOAgOOC
quODs+ODqeOCpOODs+iqrOaYjuS8mgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgrjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDlhajl
m70xMTAw5bqX6IiXCuOAgOOAgOOAgOOAgCDjgIAgMTDlubTplpPjga7lupfoiJfntpnntprnjoc5
Ny40JQrjgIDjgIDjgIAg44CA44CA44CA44CA44CA44CA6LK35Y+W5bCC6ZaA5bqXCuOAgOOAgOOA
gOOAgOOAgOOAgOOAgOOAgOKAleOAgOiyt+WPluWkp+WQieOAgOKAlQoK44CA44CA44CA44CA6LK3
44GE5Y+W44KK44CM5bCC6ZaA44CN44Gg44GL44KJ5a6f54++44Gn44GN44KLCuOAgOOAgOOAgOOA
gOS9juODquOCueOCr++8j+mrmOWPjuebiuOBruODk+OCuOODjeOCueODouODh+ODqwoKCuOAgOOA
gOOAgOOAgOOAgOOAgOOAgOKWvCAg6Kmz57Sw44O755Sz6L68ICDilrwK44CAIOOAgGh0dHBzOi8v
ZmMtZGFpa2ljaGkta2FpdG9yaS5iaXovZGFpMy8KCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOKXhuOA
gCDjgIDmj5DkvpvjgIDjgIAg4peGCuOAgOOAgOOAgOOAgOOAgOOAgOOAgOagquW8j+S8muekvuOC
qOODs+ODkeODr+ODvArjgIDjgIDjgIDjgIDjgIDjgIDjgIDvvIjosrflj5blpKflkIlGQ+acrOmD
qO+8iQoK44CA44CA5pel44CA56iL44CA77ya44CANeaciDE15pel77yI5pyo77yJMTQ6MDDvvZ4x
NDozMAoKCuOAgOOAgOWvvuOAgOixoeOAgO+8muOAgOaWsOimj+S6i+alreOCkuOBiuiAg+OBiOOB
ruazleS6um9y5YCL5Lq65LqL5qWt5Li7CuOAgOOAgOKAu+OAgOS4oeaXpeeoi+OBqOOCguWGheWu
ueOBr+WQjOOBmOOBp+OBmQrjgIDjgIAK44CA44CA44CA44CA44CA44CA44CA4peH44CA44Kz44Oz
44OG44Oz44OE44CA4peHCuOAgOOAgOKAleOAgOiyt+OBhOWPluOBo+OBn+OBguOBqOOBruWEsuOB
keOBruOCq+ODqeOCr+ODquOBr++8nwrjgIDjgIDigJXjgIDjg6rjgrXjgqTjgq/jg6vjgrfjg6fj
g4Pjg5fjgajjga7pgZXjgYTjga/vvJ8K44CA44CA4oCV44CA5pyq57WM6aiT44Gn5p+75a6a44Gv
44Gp44GG44GZ44KL44Gu44GL77yfCuOAgOOAgOKAleOAgOODoeODq+OCq+ODquOAgeODpOODleOC
quOCr+OBq+iyoOOBkeOBpuOBhOOCi+OBruOBp+OBr++8nwrjgIDjgIDigJXjgIDmlrDopo/kuovm
pa3jgajjgZfjgabjga7lj47nm4rmgKfjg7vjg6rjgrnjgq/jg7vntpnntprmgKfjga/vvJ/jgIBl
dGMuLi4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KCgrjgZTntLnku4vjgZnjgovjga7jga/jgIzjgIDosrflj5blsILploDlupfjgIDj
gI3jga7jg5Xjg6njg7Pjg4Hjg6PjgqTjgrrjgafjgZnjgIIKCgrkuIDoiKznmoTjgavjg6rjg6bj
g7zjgrnkuovmpa3jga/osrfjgYTlj5bjgaPjgabjgYvjgonosqnlo7LjgZnjgovjgb7jgaflnKjl
uqvjgpLmirHjgYjjgovjgZ/jgoEK44CM5Zyo5bqr44Oq44K544Kv44CN44CM5L6h5qC85aSJ5YuV
44Oq44K544Kv44CN44CM6LOH6YeR5LiN6Laz44Oq44K544Kv44CN44Go44GE44Gj44GfM+OBpOOB
ruODquOCueOCr+OBjOS8tOOBhOOBvuOBmeOAggoKCuOBneOCjOOCieOBruODquOCueOCr+OCkuWP
luOCiumZpOOBjeOAgemrmOWPjuebiuOCkueUn+OBv+WHuuOBmeOBruOBjOKAnOiyt+WPluWwgumW
gOKAneOBqOOBhOOBhuODk+OCuOODjeOCueODouODh+ODq+OBp+OBmeOAggoKCuiyt+OBhOWPluOB
o+OBn+eerOmWk+OBq+WIqeebiuOBjOeiuuWumuOBmeOCi+OCt+OCueODhuODoOOBqOOAgeWwkeS6
uuaVsO+8j+Wwj+OCueODmuODvOOCueOBrumBi+WWtuS9k+WItuOBq+OCiOOCigrosrflj5blpKfl
kInjga7lupfoiJfjga/mpa3nlYzlsYjmjIfjga4xMTAw5bqX6IiX44G+44Gn5ouh5aSn44GX44CB
RkPmpa3nlYzjga7kuK3jgafjgoLms6jnm67jgpLmtbTjgbPjgabjgYTjgb7jgZnjgIIKCgrjgZfj
gYvjgZfjgIHjgb7jgaDjgb7jgaDkvLjplbfjgZnjgovjg6rjg6bjg7zjgrnluILloLTjgavlr77j
gZfjgablupfoiJfjgYzotrPjgorjgabjgYTjgarjgYTjgZ/jgoEK5LiA57eS44Gr5Y+W44KK57WE
44KT44Gn44GE44Gf44Gg44GR44KL5Yqg55uf5bqX44KS5Yuf6ZuG44GX44Gm44GE44G+44GZ44CC
CgoK5pys6Kqs5piO5Lya44Gr44Gm5YSy44GR44Gu44Kr44Op44Kv44Oq44KE5Y+O55uK5oCn44O7
44Oq44K544Kv44O757aZ57aa5oCn44Gq44Gp44KS44GK5Lyd44GI44GX44G+44GZ44Gu44GnCuaW
sOimj+S6i+alreOBrueri+OBoeS4iuOBkuOCkuOBiuiAg+OBiOOBruaWueOBr+aYr+mdnuOBqOOC
guOBlOWPguWKoOOBj+OBoOOBleOBhOOAggoKCuOAgOOAgOaXpeeoi+OAgO+8muOAgDXmnIgxNeaX
pe+8iOacqO+8iTE0OjAw772eMTQ6MzAK44CA44CA4oC744CA5Lih5pel56iL44Go44KC5YaF5a65
44Gv5ZCM44GY44Gn44GZCgoK44CA44CA4pa844CA44GK55Sz6L6844Gv5LiL6KiYVVJM44KI44KK
44GK6aGY44GE44GX44G+44GZ44CA4pa8CgrjgIDjgIAgaHR0cHM6Ly9mYy1kYWlraWNoaS1rYWl0
b3JpLmJpei9kYWkzLwoKCuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgQrjgIDj
g5Xjg6njg7Pjg4Hjg6PjgqTjgrrjgrvjg5/jg4rjg7zjgIDpgYvllrbkuovli5nlsYAK44CA6Zu7
6Kmx77yaMDEyMC04OTEtODkzCuOAgOS9j+aJgO+8muadseS6rOmDveS4reWkruWMuumKgOW6pzct
MTMtNgrigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJUK44CA5pys44Oh44O844Or
44Gu44GU5LiN6KaB44Gq5pa544Gr44Gv5aSn5aSJ44GU6L+35oOR44KS44GK44GL44GR44GE44Gf
44GX44G+44GX44Gf44CCCuOAgOS7iuW+jOOBlOahiOWGheOBjOS4jeimgeOBquaWueOBr+S4i+io
mFVSTOOBq+OBpuOBiuaJi+e2muOBjeOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAggrjgIDi
lJfjgIBodHRwczovL2ZjLWRhaWtpY2hpLWthaXRvcmkuYml6L21haWwvCuOAgArilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9i
NDMtZGV2Cg==
