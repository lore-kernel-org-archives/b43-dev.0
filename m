Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D1C8CA0EFF
	for <b43-dev@archiver.kernel.org>; Fri, 22 Aug 2025 12:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TTSrVUGViKj5NNaDPk6Pb3Lo2Z3hqfuT/ybd9KXVe7Q=; b=QzqFPMbNZlKQcN
	ZpvA0Z5uzAfewOvyCw0MK5MFMSyWywAtHI875yk7AEdUCDBJa2zsUWszT9cKqkIpD/j9Jf/oVBmYo
	ePCZrg1rB7jKIO+3Se/OQFBXW26YEUts5mWVRkm1giRLuKHDHs2/oQI4Ds7XM5HbwNYOb2dH9sbPw
	lgNREpwGGZA/TWsoYZWP53jhduWhLvril8PGdOXTsGqjuisLQd3MGvVBcv3CpI+Q8bJlXLahwDzH8
	sMxm/YnsskpGicLxTRbNoQZnK1XW+l8x7AV9fTr0OSEWb8TguEGZG+8pMBOsw4UvEx45/x3n3MoSk
	ENHJjK+RsCVjIfqnchSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQyE-00000002Ues-1HDy;
	Fri, 22 Aug 2025 12:34:14 +0000
Received: from b32502.am.arara.com ([118.67.107.47])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upIY7-00000001PMG-38Yn
	for b43-dev@lists.infradead.org;
	Fri, 22 Aug 2025 03:34:45 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b325.am.arara.com with SMTP; Fri, 22 Aug 2025 12:21:58 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ibj-marriage.jp;
	s=re202407; t=1755832918;
	bh=63Wusa2aqI7NFUIliy9SeFuUrf59Q8SrRc0IvGmZnIM=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=uGHhDeY4wrPrfMVY8+ae746+FhClYhiBlL246r7YG2z+C2ZQzo+8YsQhI4dCTK2zL
	 lygyNUQ6WqEkC+F3yOiEkIoFfkHD92uUm8kvHBzdSoe0JLVEZXCjufdA3cjZ9Xhx+H
	 +BiadaCCJU5C346xfhPiqwZCBmDs5CPPVkbl6xqM=
From: =?UTF-8?B?57WQ5ama55u46KuH5omA44OV44Op44Oz44OB44Oj44Kk44K65pys6YOo?= <info@ibj-marriage.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?5YW85qWt44CB5Ymv5qWt44Gr5pyA6YGp44Gq44OT44K444ON44K544Oi44OH44Or?=
Message-Id: <014tfa-026to@bam001.am.arara.com>
Date: Fri, 22 Aug 2025 12:21:58 +0900
MIME-Version: 1.0
X-SE-GID: 014tfa@bam001.am.arara.com
X-SE-HID: b325.am.arara.com.1755832918566634
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_203444_259620_0954818C 
X-CRM114-Status: UNSURE (   1.26  )
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

44CACuOAgOacrOalreOBq+W9semfv+OBjOWHuuOBquOBhOevhOWbsuOBp+OAgeWJr+alreOChOmA
seacq+i1t+alreOBp+eovOOBjuOBn+OBhArjgIDmnKzmpa3jgajkuKbooYzjgZfjgarjgYzjgonj
gIHmrKHjga7kuovmpa3jgpLogrLjgabjgZ/jgYQK44CACuOAgOOBneOCk+OBquWAi+S6uuOBruaW
ueOAgee1jOWWtuiAheanmOOBuArjgIAK44CACuOAgOihjOaUv+OCguW+jOaKvOOBl+OBmeOCi+OA
gQrjgIAyLDQ2NuS4h+S6uuOBruW3qOWkp+OBquWpmua0u+W4guWgtOOBpwrjgIDjgIAK44CA6Kit
5YKZ5oqV6LOH44K844Ot44CB5aW944GN44Gq5aC05omA44Go5pmC6ZaT44Gn44CBMeS6uuOBp+Wn
i+OCgeOCieOCjOOCiwrjgIAK44CA44CM57WQ5ama55u46KuH5omA44OT44K444ON44K544CN44Gu
CuOAgOaWsOimj+OCquODvOODiuODvOOCkuWLn+mbhuOBl+OBpuOBhOOBvuOBmeOAggoKCuKUgeKU
geKUgeKUgeKUgeKUgeKUgSDlqZrmtLvjg5Pjgrjjg43jgrnDl0ZD6Kqs5piO5LyaIOKUgeKUgeKU
geKUgeKUgeKUgeKUgQrjgIAK44CACuOAgOOAgOOAgCDnibnliKXjgarjgrnjgq3jg6vjgoToqK3l
gpnmipXos4fjga/kuI3opoEK44CA44CA44CA5Lya5ZOhMeWQjeOBp+OCguWPjuebiuOBruODgeOD
o+ODs+OCueOBjOOBguOCiwrjgIAK44CA44CM57WQ5ama55u46KuH5omA44CN44Gu44OT44K444ON
44K544Oi44OH44Or44Gr44Gk44GE44GmCuOAgArjgIAK44CA4peH5Li75YKs77ya5qCq5byP5Lya
56S+SUJKCuOAgOOAgCjliqDnm5/mlbDntIQ0LDUwMOekvi/nmbvpjLLkvJrlk6HntIQxMDAsMDAw
5ZCNKQrjgIAK44CACuOAgOKXh+S8muWgtO+8muWFqOWbveOBruWQhOS8muWgtOOBq+OBpueEoeaW
memWi+WCrArjgIAK44CACuOAgOiqrOaYjuS8muOBruips+e0sOOBr+OBk+OBoeOCiQrjgIDiiavj
gIBodHRwczovL2liai1rb25rYXRzdS5iaXovMjVjLwrjgIAK4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
CuOAgArjgIAK44CA44CM57WQ5ama44CN44Gu6ZyA6KaB44Gv44CB5rib44KJ44Gq44GE44CCCuOA
gDIw772eNTnmrbPjga7ni6zouqvogIXmlbDjga/ntIQyLDQ2NuS4h+S6uuOAggrjgIAK44CA5pyq
5ama5YyW44O75bCR5a2Q5YyW44Gv5pel5pys44Gu5aSn44GN44Gq6Kqy6aGM44Go44Gq44Gj44Gm
44GE44G+44GZ44CCCuOAgArjgIDjgZ3jga7kuIDmlrnjgafjgIHntIQyLDQ2NuS4h+S6uuOBqOOB
hOOBhuW3qOWkp+OBquacqumWi+aLk+ODnuODvOOCseODg+ODiOOBruWtmOWcqOOBqArjgIDooYzm
lL/jga7lvozmirzjgZfjgoTnpL7kvJrnmoTjgarjg4vjg7zjgrrjga7pq5jjgb7jgorjgpLlj5fj
gZHjgabjgIEK44CA57WQ5ama44OT44K444ON44K544Gv5bqV5aCF44GE5oiQ6ZW344GM6KaL6L68
44G+44KM44Gm44GE44G+44GZ44CCCuOAgArjgIAK44CA44GT44Gu44OT44K444ON44K544Gn5oiQ
5Yqf44GZ44KL44Gr44Gv44CBCuOAgOS8muWToeS6uuaVsOOBqOODjeODg+ODiOODr+ODvOOCr+OB
ruW6g+OBleOBjOmHjeimgeOBqOOBleOCjOOBpuOBhOOBvuOBmeOBjOOAgQrjgIAK44CA56eB44Gf
44GhSUJK44GM6YGL5Za244GZ44KL57WQ5ama55u46KuH5omA44Gv44CBCuOAgOOAjOS8muWToee0
hDEwMCwwMDDkurrjgI3jgajjgIzliqDnm5/nm7joq4fmiYDntIQ0LDUwMOekvuOAjeOBrgrjgIDj
g43jg4Pjg4jjg6/jg7zjgq/jgpLml6Ljgavmp4vnr4njgZfjgabjgYTjgb7jgZnjgIIK44CACuOA
gOKAu+S8muWToee0hDEwMCwwMDDkurrjgpLlhbHmnInjgZfjgabjg57jg4Pjg4Hjg7PjgrDjgZnj
govjgZ/jgoHjgIEK44CA44CA6Ieq44KJ6ZuG44KB44Gf5Lya5ZOhMeWQjeOBi+OCieOBp+OCguWP
juebiuOBruODgeODo+ODs+OCueOBjOeUn+OBvuOCjOOBvuOBmeOAggrjgIAK44CACuOAgOOBquOB
ruOBp+OAgUlCSuOBp+e1kOWpmuebuOirh+aJgOOCkuWni+OCgeOCi+OBq+OBr+OAgQrjgIDnibnl
iKXjgarjgrnjgq3jg6vjgoToqK3lgpnmipXos4fjga/kuIDliIflv4XopoHjgYLjgorjgb7jgZvj
gpPjgIIK44CACuOAgArjgIDjgIcgMuaZgumWky/ml6XjgaDjgZHjgIHpgLHmnKvjgaDjgZHjgarj
ganoh6rliIbjgonjgZfjgYTplovmpa3jga7jgqvjgr/jg4Hjgafjg7vjg7vjg7sK44CA44CHIOaz
leS6uuOBruaWsOimj+S6i+alreOBqOOBl+OBpuaknOiojuOBl+OBn+OBhOODu+ODu+ODuwrjgIAK
44CA5YCL5Lq644O75rOV5Lq644Gp44Gh44KJ44Gn44KC6ZaL5qWt44Gn44GN44KL44CB5p+U6Luf
5oCn44Gu6auY44GECuOAgOODleODqeODs+ODgeODo+OCpOOCuuODouODh+ODq+OBqOOBquOBo+OB
puOBhOOBvuOBmeOAggrjgIAK44CACuOAgOOBnOOBsuOBk+OBruapn+S8muOBq+OAgee1kOWpmueb
uOirh+aJgOODk+OCuOODjeOCueOCkuefpeOCi+OBk+OBqOOBjOOBp+OBjeOCiwrjgIDoqqzmmI7k
vJrjgbjjgZTlj4LliqDjgY/jgaDjgZXjgYTjgIIKCuOAgOOBlOS6iOe0hOOBr+OBk+OBoeOCiQrj
gIDiiavjgIBodHRwczovL2liai1rb25rYXRzdS5iaXovMjVjLwoKCuOAgOS8muWgtOOBp+eahuOB
leOBvuOBq+OBiuS8muOBhOOBp+OBjeOCi+OBk+OBqOOCkualveOBl+OBv+OBq+OBl+OBpuOBiuOC
iuOBvuOBmeOAggoK4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSBCgrjgIDmoKrlvI/kvJrnpL5JQkrjgIDjgrvjg5/jg4rjg7zk
uovli5nlsYAK44CA5p2x5Lqs6YO95paw5a6/5Yy66KW/5paw5a6/MS0yMy03CuOAgOaWsOWuv+OD
leOCoeODvOOCueODiOOCpuOCqOOCueODiCAxMkYKCuKApeKApeKApeKApeKApeKApeKApeKApeKA
peKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApQrjgIDmnKzjg6Hjg7zjg6vj
ga7jgZTkuI3opoHjgarmlrnjgavjga/lpKflpInjgZTov7fmg5HjgpLjgYrjgYvjgZHjgYTjgZ/j
gZfjgb7jgZfjgZ/jgIIK44CA44GK5omL5pWw44Gn44GZ44GM5LiL6KiY44KI44KK5YWl5Yqb44GE
44Gf44Gg44GN44CB44Ov44Oz44Kv44Oq44OD44Kv6Kej6Zmk44Gr44GmCuOAgOOBiuaJi+e2muOB
jeOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAggrjgIBodHRwczovL2liai1rb25rYXRzdS5i
aXovbWFpbC8KCuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgeKUgeKUgQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
