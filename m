Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83E92C87FCB
	for <b43-dev@archiver.kernel.org>; Mon,  4 Aug 2025 02:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9N66Ij15rfDZbR7Pkr7xaEnNFc95eYAXEC+v1DFmwE8=; b=HRRyOSD+MqSGla
	/j45WKHFRi1QKvixJHw+JN6AJPAzZjUibBLbstZ1IcAKxMN0UxlC4tnn2gZeL6w903Bkb/t5f2p2R
	Mth5Jh0bkuJB6/36UFa6CDt/jUG/lrDN9/wMYOU4HOt7/eshBYFtYlw7oTtGYmHrP0pYIVT1iEX+4
	uG1hYK1oPQ3XNUsbSY413asRIRnEBZ9L6Qdub4ZT7pAFnnEk/3FMHLl95KDbu+c0PjG/kCIXlx6hl
	AxhQhcv/ONig7f1Ree5satEDmTIMqxf6s9NM9PKzjdRv9PMSHOlipTa3lMOUkIVX7VJcNJuHHyIqR
	PBGgq+790OzIJxQee44Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uikW0-00000009TQ5-3HEO;
	Mon, 04 Aug 2025 02:01:28 +0000
Received: from b199.am.arara.com ([182.236.83.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uijJL-00000009MzQ-1C6c
	for b43-dev@lists.infradead.org;
	Mon, 04 Aug 2025 00:44:21 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b199.am.arara.com with SMTP; Mon, 04 Aug 2025 09:04:18 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=am.arara.com;
	s=am202111; t=1754265858;
	bh=Saqt0yhReuL+5BT1RsD/HoCssXj90D8KjeFTbwlVgiI=;
	h=From:To:Subject:Message-Id:Date:MIME-Version:
	 Content-Transfer-Encoding;
	b=bWN8izbf5Aek6sioBPPPTwAli6CmvDaj74yh1wu0azAtNdy9cNeTDx3YknjWl+GWa
	 Rphl6ym8mCIy/T7dtYu5GzE8lIROO79Fi/9ch7eNWyFSROnd5RVVLfa+WKkmWrrsUq
	 zHtmBpWMAH5hdRkDmAJ6gM0K/ALKc8PPrOH1LZs0=
From: =?UTF-8?B?RkPkuovmpa3oqqzmmI7kvJo=?= <info@fc-session.jp>
To: b43-dev@lists.infradead.org
Subject: =?UTF-8?B?44Ov44Oz44Kq44Oa44CB5YW85qWt44Gn5aOy5LiKMeWEhOOAguiyt+WPluW6lyDlhLLjgZHjga7jgqvjg6njgq/jg6o=?=
Message-Id: <012y0v-01q9f@bam001.am.arara.com>
Date: Mon, 04 Aug 2025 09:04:18 +0900
MIME-Version: 1.0
X-SE-GID: 012y0v@bam001.am.arara.com
X-SE-HID: b199.am.arara.com.1754265858557547
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250803_174419_533040_91C29BEB 
X-CRM114-Status: UNSURE (   1.39  )
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
q+OBquOCjCHjgI0KCuOAgDjmnIg35pelKOacqCnjg5Xjg6njg7Pjg4Hjg6PjgqTjgrrkuovmpa3j
gIDjgqrjg7Pjg6njgqTjg7PoqqzmmI7kvJoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQrjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIDl
hajlm70xMzUw5bqX6IiXCuOAgOOAgOOAgOOAgCDjgIAgMTDlubTplpPjga7lupfoiJfntpnntprn
joc5Ni40JQrjgIDjgIDjgIAg44CA44CA44CA44CA44CA44CA6LK35Y+W5bCC6ZaA5bqXCuOAgOOA
gOOAgOOAgOOAgOOAgOOAgOOAgOKAleOAgOiyt+WPluWkp+WQieOAgOKAlQoK44CA44CA44CA44CA
6LK344GE5Y+W44KK44CM5bCC6ZaA44CN44Gg44GL44KJ5a6f54++44Gn44GN44KLCuOAgOOAgOOA
gOOAgOS9juODquOCueOCr++8j+mrmOWPjuebiuOBruODk+OCuOODjeOCueODouODh+ODqwoK44CA
44CA44CA44CA44CA44CA44CA4pa8ICDoqbPntLDjg7vnlLPovrwgIOKWvArjgIAg44CA44CAaHR0
cHM6Ly9mYy1kYWlraWNoaS1rYWl0b3JpLmJpei9kYWkvCgrjgIDjgIDjgIDjgIDjgIDjgIDjgIDi
l4bjgIAg44CA5o+Q5L6b44CA44CAIOKXhgrjgIDjgIDjgIDjgIDjgIDjgIDjgIDmoKrlvI/kvJrn
pL7jgqjjg7Pjg5Hjg6/jg7wK44CA44CA44CA44CA44CA44CA44CA77yI6LK35Y+W5aSn5ZCJRkPm
nKzpg6jvvIkKCuOAgOOAgOaXpeOAgOeoi+OAgO+8muOAgDjmnIg35pel77yI5pyo77yJMTQ6MDDv
vZ4xNDozMArjgIDjgIDjgIDjgIDjgIDjgIDjgIDjgIA45pyIMjjml6XvvIjmnKjvvIkxNDowMO+9
njE0OjMwCgrjgIDjgIDlr77jgIDosaHjgIDvvJrjgIDmlrDopo/kuovmpa3jgpLjgYrogIPjgYjj
ga7ms5XkurpvcuWAi+S6uuS6i+alreS4uwrjgIDjgIDigLvjgIDkuKHml6XnqIvjgajjgoLlhoXl
rrnjga/lkIzjgZjjgafjgZkK44CA44CACuOAgOOAgOOAgOOAgOOAgOOAgOOAgOKXh+OAgOOCs+OD
s+ODhuODs+ODhOOAgOKXhwrjgIDjgIDigJXjgIDosrfjgYTlj5bjgaPjgZ/jgYLjgajjga7lhLLj
gZHjga7jgqvjg6njgq/jg6rjga/vvJ8K44CA44CA4oCV44CA44Oq44K144Kk44Kv44Or44K344On
44OD44OX44Go44Gu6YGV44GE44Gv77yfCuOAgOOAgOKAleOAgOacque1jOmok+OBp+afu+WumuOB
r+OBqeOBhuOBmeOCi+OBruOBi++8nwrjgIDjgIDigJXjgIDjg6Hjg6vjgqvjg6rjgIHjg6Tjg5Xj
gqrjgq/jgavosqDjgZHjgabjgYTjgovjga7jgafjga/vvJ8K44CA44CA4oCV44CA5paw6KaP5LqL
5qWt44Go44GX44Gm44Gu5Y+O55uK5oCn44O744Oq44K544Kv44O757aZ57aa5oCn44Gv77yf44CA
ZXRjLi4uCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KCuOAgOOBlOe0ueS7i+OBmeOCi+OBruOBr+OAjOOAgOiyt+WPluWwgumWgOW6l+OA
gOOAjeOBruODleODqeODs+ODgeODo+OCpOOCuuOBp+OBmeOAggrjgIAK44CA5LiA6Iis55qE44Gr
44Oq44Om44O844K55LqL5qWt44Gv6LK344GE5Y+W44Gj44Gm44GL44KJ6LKp5aOy44GZ44KL44G+
44Gn5Zyo5bqr44KS5oqx44GI44KL44Gf44KBCuOAgOOAjOWcqOW6q+ODquOCueOCr+OAjeOAjOS+
oeagvOWkieWLleODquOCueOCr+OAjeOAjOizh+mHkeS4jei2s+ODquOCueOCr+OAjeOBqOOBhOOB
o+OBnzPjgaTjga7jg6rjgrnjgq/jgYzkvLTjgYTjgb7jgZnjgIIK44CACuOAgArjgIDjgZ3jgozj
gonjga7jg6rjgrnjgq/jgpLlj5bjgorpmaTjgY3jgIHpq5jlj47nm4rjgpLnlJ/jgb/lh7rjgZnj
ga7jgYzigJzosrflj5blsILploDigJ3jgajjgYTjgYbjg5Pjgrjjg43jgrnjg6Ljg4fjg6vjgafj
gZnjgIIK44CACuOAgOiyt+OBhOWPluOBo+OBn+eerOmWk+OBq+WIqeebiuOBjOeiuuWumuOBmeOC
i+OCt+OCueODhuODoOOBqOOAgeWwkeS6uuaVsO+8j+Wwj+OCueODmuODvOOCueOBrumBi+WWtuS9
k+WItuOBq+OCiOOCigrjgIDosrflj5blpKflkInjga7lupfoiJfjga/mpa3nlYzlsYjmjIfjga4x
MzUw5bqX6IiX44G+44Gn5ouh5aSn44GX44CBRkPmpa3nlYzjga7kuK3jgafjgoLms6jnm67jgpLm
tbTjgbPjgabjgYTjgb7jgZnjgIIK44CACuOAgOOBl+OBi+OBl+OAgeOBvuOBoOOBvuOBoOS8uOmV
t+OBmeOCi+ODquODpuODvOOCueW4guWgtOOBq+WvvuOBl+OBpuW6l+iIl+OBjOi2s+OCiuOBpuOB
hOOBquOBhOOBn+OCgQrjgIDkuIDnt5Ljgavlj5bjgorntYTjgpPjgafjgYTjgZ/jgaDjgZHjgovl
iqDnm5/lupfjgpLli5/pm4bjgZfjgabjgYTjgb7jgZnjgIIK44CACuOAgOacrOiqrOaYjuS8muOB
q+OBpuWEsuOBkeOBruOCq+ODqeOCr+ODquOChOWPjuebiuaAp+ODu+ODquOCueOCr+ODu+e2mee2
muaAp+OBquOBqeOCkuOBiuS8neOBiOOBl+OBvuOBmeOBruOBpwrjgIDmlrDopo/kuovmpa3jga7n
q4vjgaHkuIrjgZLjgpLjgYrogIPjgYjjga7mlrnjga/mmK/pnZ7jgajjgoLjgZTlj4LliqDjgY/j
gaDjgZXjgYTjgIIK44CACuOAgOOAgOaXpeeoi+OAgO+8muOAgDjmnIg35pel77yI5pyo77yJMTQ6
MDDvvZ4xNDozMArjgIDjgIDjgIDjgIDjgIDjgIDjgIA45pyIMjjml6XvvIjmnKjvvIkxNDowMO+9
njE0OjMwCuOAgOOAgOKAu+OAgOS4oeaXpeeoi+OBqOOCguWGheWuueOBr+WQjOOBmOOBp+OBmQoK
44CA44CA4pa844CA44GK55Sz6L6844Gv5LiL6KiYVVJM44KI44KK44GK6aGY44GE44GX44G+44GZ
44CA4pa8CuOAgOOAgOOAgCBodHRwczovL2ZjLWRhaWtpY2hpLWthaXRvcmkuYml6L2RhaS8KCuKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgQrjgIDjg5Xjg6njg7Pjg4Hjg6PjgqTj
grrjgrvjg5/jg4rjg7zjgIDpgYvllrbkuovli5nlsYAK44CA6Zu76Kmx77yaMDEyMC04OTEtODkz
CuOAgOS9j+aJgO+8muadseS6rOmDveS4reWkruWMuumKgOW6pzctMTMtNgrigJXigJXigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigJUK44CA5pys44Oh44O844Or44Gu44GU5LiN6KaB44Gq5pa5
44Gr44Gv5aSn5aSJ44GU6L+35oOR44KS44GK44GL44GR44GE44Gf44GX44G+44GX44Gf44CCCuOA
gOS7iuW+jOOBlOahiOWGheOBjOS4jeimgeOBquaWueOBr+S4i+iomFVSTOOBq+OBpuOBiuaJi+e2
muOBjeOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAggrjgIDilJfjgIBodHRwczovL2ZjLWRh
aWtpY2hpLWthaXRvcmkuYml6L21haWwvCuOAgArilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
