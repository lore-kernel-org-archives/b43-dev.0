Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62341D41C35
	for <b43-dev@archiver.kernel.org>; Thu, 14 Nov 2024 05:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZDWN8u5ZRNWYS8FEAtcNr7trn3emwnMh6slMha0DHdA=; b=tqQ8RFGgiqO4dh
	p3ZAjUKkAAKYiiaaL5mJ0yJUD8WQfuMaslYoJ3sYB+nBC+fzjo5pkqE159pnwrkF6nsIwzb8X9tnj
	u5xnVQsR7P7pfEihPtxPv9YRLNw1dQoOYXiujSb4QswjILJCuxHhtd6taqWhxAnZrGdkxyF0hPpoq
	cqh7nabfB7RIG3KU1uOfa8DP8LlY0uboT3OUH9CqT9dy/yKIei0YewU2X2EzMF+97l9Y5Ff0O6CBH
	3HEkDBEGyxnxGe1qByNchh0vt/+U+TiSpqnrW0koJnDc6dRWxNItJe6W7eXdF68UcJ8G6MnfmsALs
	c759uU6xiXkEaxexb70A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBRzH-00000008oVl-3RKb;
	Thu, 14 Nov 2024 05:01:47 +0000
Received: from b20002.am.arara.com ([182.236.75.71])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBRzE-00000008oV6-2Wi1
	for b43-dev@lists.infradead.org;
	Thu, 14 Nov 2024 05:01:46 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b200.am.arara.com with SMTP; Thu, 14 Nov 2024 14:00:50 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fc-seminar-online.jp;
	s=re202409; t=1731560450;
	bh=SjT0ppRCVeQfmTSiFw6WtfsMEEuJiP6Qk+/pqN0RQeE=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=s87kMh4imAk3omqQmYc9qH6lWrp2YUM0xkmhbGqVvyR6XiOBJHZ3qX1w5gvKA/iRh
	 R6HEZNnuHYsoW6pIu31dTowqgxBmqiXphBZDzTXT46fswRiY9++2ic6M8aVauog7po
	 X7KmDI3G4wpjBe/DEokIZmwp0RmmUE1nOA2aboQ0=
From: info@fc-seminar-online.jp
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?6LK35Y+W5bCC6ZaA5bqXIOODleODqeODs+ODgeODo+OCpOOCuuOCt+OCueODhuODoOiqrOaYjuS8mg==?=
Message-Id: <00g2f3-00bp0@bam001.am.arara.com>
Date: Thu, 14 Nov 2024 14:00:50 +0900
MIME-Version: 1.0
X-SE-GID: 00g2f3@bam001.am.arara.com
X-SE-HID: b200.am.arara.com.1731560450871537
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_210145_040902_193B63B4 
X-CRM114-Status: UNSURE (   0.69  )
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

CuaWsOimj+S6i+alreOCkuOBiuaOouOBl+OBrue1jOWWtuiAheanmOODu+S6i+alreOCquODvOOD
iuODvOanmOOBuAoKCuOBhOOBpOOCguOBiuS4luipseOBq+OBquOCiuOBvuOBmeOAggoKCuazleS6
uuOBruaWsOimj+S6i+alreOBqOOBl+OBpuOAgeODquOCueOCr+OCkuaKkeOBiOOBpuOCueOCv+OD
vOODiOOBp+OBjeOCi+OAgQrjg5Xjg6njg7Pjg4Hjg6PjgqTjgrrkuovmpa3jga7jgqrjg7Pjg6nj
gqTjg7PoqqzmmI7kvJrjgpLjgZTmoYjlhoXjgYTjgZ/jgZfjgb7jgZnjgIIKCgrmpa3nlYzmnKrn
tYzpqJPvvI/npL7lk6Ex5ZCN44Gn44K544K/44O844OI44Gn44GN44KL44Gu44GnCuOBlOiIiOWR
s+OBjOOBguOCjOOBsOaYr+mdnuOBiueUs+i+vOOBv+OBj+OBoOOBleOBhOOAggoKCuOAgOOAgOKA
u+OAgFpvb23jga7jgqbjgqfjg5Pjg4rjg7zmqZ/og73jgavjgojjgovnmbrkv6HlvaLlvI/jga7j
gZ/jgoEK44CA44CA44CA44CA6KaW6IG06ICF44Gu44GK6aGU44KE44GK5aOw44GM6KGo44Gr5Ye6
44KL44GT44Go44Gv44GU44GW44GE44G+44Gb44KT44CCCgoK44CA44CA4pag44CA44K744Of44OK
44O86KaW6IG05b6M44Gu44Ki44Oz44Kx44O844OI44Gn5YCL5Yil6Kqs5piO44G4CuOAgOOAgOOA
gOOAgOOBiueUs+i+vOOBv+OBleOCjOOBn+aWueOBq+OBr+abuOexjeOCkuODl+ODrOOCvOODs+OD
iOOAggrjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIAg4pa844CA5pu457GN57S55LuL44CA4pa8
CuOAgOOAgOOAgOOAgGh0dHBzOi8vd3d3LmFtYXpvbi5jby5qcC9kcC80NDc4MTE0NzA2CuOAgOOA
gOOAgOOAgOKAleOAgDIwMjLlubQz5pyI44CA44OA44Kk44Ok44Oi44Oz44OJ56S+5Ye654mI44CA
4oCVCuOAgOOAgOOAgOOAgOOAgOOAgOagquW8j+S8muekvuOCqOODs+ODkeODr+ODvO+8iOiyt+WP
luWkp+WQiSDpgYvllrbmnKzpg6jvvIkK44CA44CA44CA44CA44CA44CA5Luj6KGoIOWil+S6leS/
iuS7iyDokZcK44CA44CA44CA44CA44CA44CA44CM5a2m5q2044Gq44GX44CB5Lq66ISI44Gq44GX
44Gq44KJ44CB56S+6ZW344Gr44Gq44KMIeOAjQoKCuOAgDEx5pyIMjjml6XvvIjmnKjvvInjgIDj
g5Xjg6njg7Pjg4Hjg6PjgqTjgrrkuovmpa3jgIDjgqrjg7Pjg6njgqTjg7PoqqzmmI7kvJoKLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoK
44CA44CA44CA44CA44CA44CA44CA44CA44CA5YWo5Zu9MTAwMOW6l+iIlwrjgIDjgIDjgIDjgIAg
44CAIDEw5bm06ZaT44Gu5bqX6IiX57aZ57aa546HOTcuNCUK44CA44CA44CAIOOAgOOAgOOAgOOA
gOOAgOOAgOiyt+WPluWwgumWgOW6lwrjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDigJXjgIDosrfl
j5blpKflkInjgIDigJUKCuOAgOOAgOOAgOOAgOiyt+OBhOWPluOCiuOAjOWwgumWgOOAjeOBoOOB
i+OCieWun+ePvuOBp+OBjeOCiwrjgIDjgIDjgIDjgIDkvY7jg6rjgrnjgq/vvI/pq5jlj47nm4rj
ga7jg5Pjgrjjg43jgrnjg6Ljg4fjg6sKCgrjgIDjgIDjgIDjgIDjgIDjgIDjgIDilrwgIOips+e0
sOODu+eUs+i+vCAg4pa8CuOAgCDjgIBodHRwczovL2ZjLWRhaWtpY2hpLWthaXRvcmkuYml6L2Rh
aTMvCgrjgIDjgIDjgIDjgIDjgIDjgIDjgIDil4bjgIAg44CA5o+Q5L6b44CA44CAIOKXhgrjgIDj
gIDjgIDjgIDjgIDjgIDjgIDmoKrlvI/kvJrnpL7jgqjjg7Pjg5Hjg6/jg7wK44CA44CA44CA44CA
44CA44CA44CA77yI6LK35Y+W5aSn5ZCJRkPmnKzpg6jvvIkKCuOAgOOAgOaXpeeoi++8keOAgO+8
muOAgDEx5pyIMjjml6XvvIjmnKjvvIkxNDowMO+9njE0OjMwCuOAgOOAgOaXpeeoi++8kuOAgO+8
muOAgDEy5pyIMTLml6XvvIjmnKjvvIkxNDowMO+9njE0OjMwCuOAgOOAgOWvvuOAgOixoeOAgO+8
muOAgOaWsOimj+S6i+alreOCkuOBiuiAg+OBiOOBruazleS6um9y5YCL5Lq65LqL5qWt5Li7CuOA
gOOAgOKAu+OAgOS4oeaXpeeoi+OBqOOCguWGheWuueOBr+WQjOOBmOOBp+OBmQrjgIDjgIAK44CA
44CA44CA44CA44CA44CA44CA4peH44CA44Kz44Oz44OG44Oz44OE44CA4peHCuOAgOOAgOKAleOA
gOiyt+OBhOWPluOBo+OBn+OBguOBqOOBruWEsuOBkeOBruOCq+ODqeOCr+ODquOBr++8nwrjgIDj
gIDigJXjgIDjg6rjgrXjgqTjgq/jg6vjgrfjg6fjg4Pjg5fjgajjga7pgZXjgYTjga/vvJ8K44CA
44CA4oCV44CA5pyq57WM6aiT44Gn5p+75a6a44Gv44Gp44GG44GZ44KL44Gu44GL77yfCuOAgOOA
gOKAleOAgOODoeODq+OCq+ODquOAgeODpOODleOCquOCr+OBq+iyoOOBkeOBpuOBhOOCi+OBruOB
p+OBr++8nwrjgIDjgIDigJXjgIDmlrDopo/kuovmpa3jgajjgZfjgabjga7lj47nm4rmgKfjg7vj
g6rjgrnjgq/jg7vntpnntprmgKfjga/vvJ/jgIBldGMuLi4KCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCgrjgZTntLnku4vjgZnjgovj
ga7jga/jgIzjgIDosrflj5blsILploDlupfjgIDjgI3jga7jg5Xjg6njg7Pjg4Hjg6PjgqTjgrrj
gafjgZnjgIIKCgrkuIDoiKznmoTjgavjg6rjg6bjg7zjgrnkuovmpa3jga/osrfjgYTlj5bjgaPj
gabjgYvjgonosqnlo7LjgZnjgovjgb7jgaflnKjluqvjgpLmirHjgYjjgovjgZ/jgoEK44CM5Zyo
5bqr44Oq44K544Kv44CN44CM5L6h5qC85aSJ5YuV44Oq44K544Kv44CN44CM6LOH6YeR5LiN6Laz
44Oq44K544Kv44CN44Go44GE44Gj44GfM+OBpOOBruODquOCueOCr+OBjOS8tOOBhOOBvuOBmeOA
ggoKCuOBk+OBhuOBl+OBn+ODquOCueOCr+OCkuWPluOCiumZpOOBj+OBruOBjOOAgeiyt+OBhOWP
luOBo+OBn+eerOmWk+OBq+WIqeebiuOBjOeiuuWumuOBmeOCi+OAjOiyt+WPluWwgumWgOW6l+OA
jeOBp+OBmeOAggoKCuOBk+OBruODk+OCuOODjeOCueODouODh+ODq+OBjOWPl+OBkeWFpeOCjOOC
ieOCjOOAgeiyt+WPluWkp+WQieOBr+alreeVjDLkvY3jga45MDDlupfoiJfjgb7jgafmi6HlpKfj
gZfjgb7jgZfjgZ/jgIIKCgrjgZfjgYvjgZfjgIHjgb7jgaDjgb7jgaDkvLjplbfjgZnjgovjg6rj
g6bjg7zjgrnluILloLTjgavlr77jgZfjgablupfoiJfjgYzotrPjgorjgabjgYTjgarjgYTjgZ/j
goEK5LiA57eS44Gr5Y+W44KK57WE44KT44Gn44GE44Gf44Gg44GR44KL5Yqg55uf5bqX44KS5Yuf
6ZuG44GX44Gm44GE44G+44GZ44CCCgoK5pys6Kqs5piO5Lya44Gr44Gm5YSy44GR44Gu44Kr44Op
44Kv44Oq44KE5Y+O55uK5oCn44O744Oq44K544Kv44O757aZ57aa5oCn44Gq44Gp44KS44GK5Lyd
44GI44GX44G+44GZ44Gu44GnCuaWsOimj+S6i+alreOBrueri+OBoeS4iuOBkuOCkuOBiuiAg+OB
iOOBruaWueOBr+aYr+mdnuOBqOOCguOBlOWPguWKoOOBj+OBoOOBleOBhOOAggoKCuOAgOOAgOaX
peeoi++8keOAgO+8muOAgDEx5pyIMjjml6XvvIjmnKjvvIkxNDowMO+9njE0OjMwCuOAgOOAgOaX
peeoi++8kuOAgO+8muOAgDEy5pyIMTLml6XvvIjmnKjvvIkxNDowMO+9njE0OjMwCuOAgOOAgOKA
u+OAgOS4oeaXpeeoi+OBqOOCguWGheWuueOBr+WQjOOBmOOBp+OBmQoKCuOAgOOAgOKWvOOAgOOB
iueUs+i+vOOBr+S4i+iomFVSTOOCiOOCiuOBiumhmOOBhOOBl+OBvuOBmeOAgOKWvAoK44CA44CA
IGh0dHBzOi8vZmMtZGFpa2ljaGkta2FpdG9yaS5iaXovZGFpMy8KCgrilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIEK44CA44OV44Op44Oz44OB44Oj44Kk44K644K744Of44OK44O8
44CA6YGL5Za25LqL5YuZ5bGACuOAgOmbu+ipse+8mjAxMjAtODkxLTg5MwrjgIDkvY/miYDvvJrm
nbHkuqzpg73kuK3lpK7ljLrpioDluqc3LTEzLTYK4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCVCuOAgOacrOODoeODvOODq+OBruOBlOS4jeimgeOBquaWueOBq+OBr+Wkp+WkieOB
lOi/t+aDkeOCkuOBiuOBi+OBkeOBhOOBn+OBl+OBvuOBl+OBn+OAggrjgIDku4rlvozjgZTmoYjl
hoXjgYzkuI3opoHjgarmlrnjga/kuIvoqJhVUkzjgavjgabjgYrmiYvntprjgY3jgpLjgYrpoZjj
gYTjgYTjgZ/jgZfjgb7jgZnjgIIK44CA4pSX44CAaHR0cHM6Ly9mYy1kYWlraWNoaS1rYWl0b3Jp
LmJpei9tYWlsLwrjgIDjgb7jgZ/jga/ku7blkI3jgavjgIzphY3kv6HkuI3opoHjgI3jgajoqJjo
vInjgZfjgabmnKzjg6Hjg7zjg6vjgavjgZ3jga7jgb7jgb4K44CA6L+U5L+h44GX44Gm44GE44Gf
44Gg44GP44GT44Go44Gn44KC5om/44Gj44Gm44GK44KK44G+44GZ44CCCuKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1k
ZXYK
