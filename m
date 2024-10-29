Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C285DD5B865
	for <b43-dev@archiver.kernel.org>; Tue, 29 Oct 2024 03:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zWSK2e5OhwAChqq/FRTzv0MNZ9O2sX2z9kF+712FPLA=; b=hc53sb/FiNEfWG
	cSYLzVvhCBGQBuGqrIpYyyC7F2ugrUUoW/kQkRTe43rwCNBAO/PJJHJjeD5wuf6nZvJTw3OS93kFQ
	Zv6AXMXhdqtwCB7J9AdH99RWXlI1+0asozQv1pg6GpzT2ByuUcwPN3JZydSx011RsRuVpGIAtj9sk
	YdS7qZIfSc2KtJ2skylOu4jds47QpwXI6HmRdEJttx2kNjeScHdE2hJesJ5a7p2FO1nWCffj1y1/L
	NwJ9zqWkUvgTMbPuDueMtwC2VSGT11q6QWeJB0lo5XMXDhYHf/qLb2yOQ2ny5zBK2UVngyofySPEA
	UuIxU4jLVjntCE8bpczA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5cgJ-0000000D3pB-0pb0;
	Tue, 29 Oct 2024 03:14:07 +0000
Received: from b19902.am.arara.com ([182.236.83.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5cgD-0000000D3nY-3DQN
	for b43-dev@lists.infradead.org;
	Tue, 29 Oct 2024 03:14:03 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b199.am.arara.com with SMTP; Tue, 29 Oct 2024 11:31:10 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ibj-marriage.jp;
	s=re202407; t=1730169070;
	bh=ZlbNdsfiRddkrBat8xP9cqAMibVPtJH+vOT0mysoHVM=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=LxGLMPv0MTeIUmnO9KZuj4dqIDk6d44evITZanncsh9Ew4n7UQ3pCo2yiJAsxQ10U
	 mT7OPX06x9BIpVlijENOwUXe4Wb4mAP6I/s9fSZjzYTNlvipWIPw1KOE8IqlQ8cYKc
	 oMg8SMrLYtXajnzxgx0qWMK4sSzhPyk4XtWRUMFs=
From: =?UTF-8?B?5Zyw5pa55Ym155Sf5LqL5qWtIOiqrOaYjuS8mg==?= <info@ibj-marriage.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?5paw6KaP5LqL5qWt44Gn5Zyw5pa55Ym155Sf?=
Message-Id: <00faaw-00pem@bam001.am.arara.com>
Date: Tue, 29 Oct 2024 11:31:10 +0900
MIME-Version: 1.0
X-SE-GID: 00faaw@bam001.am.arara.com
X-SE-HID: b199.am.arara.com.1730169070062777
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_201401_925981_C9A2A08D 
X-CRM114-Status: UNSURE (   0.86  )
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

44GK5LiW6Kmx44Gr44Gq44KK44G+44GZ44CCCgoK5Zyw5pa55Ym155Sf44O75Zyw5Z+f5rS75oCn
5YyW44Gr6LKi54yu44Gn44GN44KLCgrigJzjgIDntZDlqZrnm7joq4fmiYDkuovmpa3jgIDigJ0K
CuOBruOCquODs+ODqeOCpOODs+iqrOaYjuS8muOCkuOBlOahiOWGheOBhOOBn+OBl+OBvuOBmeOA
ggoKCuOAgOKWvOOAgOOCu+ODn+ODiuODvOips+e0sOaDheWgse+8hueUs+i+vOOBr+OBk+OBoeOC
ieOAgOKWvArjgIDjgIDjgIAgIGh0dHBzOi8vaWJqLW9ubGluZS5iaXovbHAvCgoK44CA44Kq44Oz
44Op44Kk44Oz6ZaL5YKsCuOAgOKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKA
leKAleKAleKAleKAleKAleKAleKAleKAlQoKCuOAgOKXh+OAgOWcsOaWueWJteeUn+ODu+a0u+aA
p+WMluOBq+iyoueMruOBp+OBjeOCi+aWsOimj+S6i+alrQrjgIDjgIDjgIDigJwg57WQ5ama55u4
6KuH5omA44OT44K444ON44K5IOKAneOCquODs+ODqeOCpOODs+iqrOaYjuS8mgoKCuOAgOKXh+OA
gOS4u+WCrArjgIDmoKrlvI/kvJrnpL5JQkoK44CAKOWKoOebn+ebuOirh+aJgOaVsDo0LDEyNeek
vu+8j+eZu+mMsuS8muWToeaVsDo4NSw4NTTlkI0pCgoK44CA4peH44CA6ZaL5YKs5pa55byP44CA
4oC7CuOAgOOCquODs+ODqeOCpOODs+OBq+OBpuWun+aWvQrjgIDigLvjgIDjgYrnlLPovrzjgb/l
vozjgIHplovlgqzml6Xjgb7jgafjgasK44CA44CA44CA6KaW6IG05pa55rOV44KS44GU5qGI5YaF
44GX44G+44GZCgoK44CA4peH44CA5pel56iL4oC7CuOAgOOAgOOAgDEx5pyIIDXml6XvvIjngavv
vIkxNDowMO+9njE1OjAwCuOAgOOAgOOAgDEx5pyIMTLml6XvvIjngavvvIkxNDowMO+9njE1OjAw
CuOAgOOAgOOAgDEx5pyIMTnml6XvvIjngavvvIkxNDowMO+9njE1OjAwCuOAgOOAgOOAgDEx5pyI
Mjbml6XvvIjngavvvIkxNDowMO+9njE1OjAwCuOAgOOAgOOAgOKAu+WFqOaXpeeoi+WGheWuueOB
r+WQjOOBmOOBp+OBmQoKCuOAgOKWvOOAgOOCu+ODn+ODiuODvOips+e0sOaDheWgse+8hueUs+i+
vOOBr+OBk+OBoeOCieOAgOKWvArjgIDjgIDjgIAgIGh0dHBzOi8vaWJqLW9ubGluZS5iaXovbHAv
CgoK44CA4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCVCuOAgCDlj4LliqDosrvvvJrjgIDnhKHmlpkK44CAIOWvvuOAgOixoe+8muOA
gOazleS6uu+8j+WAi+S6uuOAgOOBqeOBoeOCieOBp+OCguWPr+iDveOBp+OBmQrjgIDigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJUK
Cgrkurrlj6PmtYHlh7rjgoTlh7rnlJ/njofkvY7kuIvjgavjgojjgosK5Zyw5pa544Gu5Lq65Y+j
5rib5bCR5ZWP6aGM44CCCgoK5q2v5q2i44KB44KS44GL44GR44KL44Gf44KB44Gr6YeN6KaB44Gq
44Gu44GMCuOAjOWcsOWfn+WGheOBp+OBrue1kOWpmuOAjeOCkuWil+OChOOBmeOBk+OBqOOBp+OB
meOAggoKCuihjOaUv+S4u+WwjuOBp+Wpmua0u+aUr+aPtOOCkuihjOOBo+OBpuOBhOOCi+iHquay
u+S9k+OCggrjgYLjgorjgb7jgZnjgYzjgIHoqrLpoYzop6Pmsbrjgavjga/jgb7jgaDjgb7jgaDp
gaDjgY8K5Zyw5Z+f44Gr5qC544GW44GX44Gf5LyB5qWt44Gu5Yqb44GM5rGC44KB44KJ44KM44Gm
44GE44G+44GZ44CCCgoK57WQ5ama55u46KuH5omA5LqL5qWt44Gu44K544K/44O844OI44Gr44Gv
6Kit5YKZ5oqV6LOH44KC44GE44KJ44Ga44CBCuacrOalreOBruOCueOCv+ODg+ODleOBjOWFvOWL
meOCguOBmeOCi+OBk+OBqOOCguOBp+OBjeOBvuOBmeOAggoKCuOBneOBruOBn+OCgeaYqOS7iuOB
p+OBr+OAgeWAi+S6uuOBrueLrOeri+mWi+alreOBoOOBkeOBp+OBquOBjwrmlrDopo/kuovmpa3j
gajjgZfjgablj5bjgorntYTjgoDkvIHmpa3jgoLlopfjgYjjgabjgYTjgb7jgZnjgIIKCgrjg5Pj
grjjg43jgrnjg6Ljg4fjg6vjgoTlj47nm4rmgKfjgarjganjgpLoqqzmmI7kvJrjgafoqbPjgZfj
gY8K44GK5Lyd44GI44GX44G+44GZ44Gu44Gn44CB5paw6KaP5LqL5qWt44KS44GK6ICD44GI44Gu
5pa544GvCuOBk+OBruapn+S8muOBq+aYr+mdnuOBlOWPguWKoOOBj+OBoOOBleOBhOOAggoKCgrj
gIDilrzjgIDjgrvjg5/jg4rjg7zoqbPntLDmg4XloLHvvIbnlLPovrzjga/jgZPjgaHjgonjgIDi
lrwK44CA44CA44CAICBodHRwczovL2liai1vbmxpbmUuYml6L2xwLwoKCgrilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIEKCuOA
gOagquW8j+S8muekvklCSuOAgOOCu+ODn+ODiuODvOS6i+WLmeWxgArjgIDmnbHkuqzpg73mlrDl
rr/ljLropb/mlrDlrr8xLTIzLTcK44CA5paw5a6/44OV44Kh44O844K544OI44Km44Ko44K544OI
IDEyRgoK4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl
4oCl4oCl4oCl4oCl4oClCuOAgOacrOODoeODvOODq+OBruOBlOS4jeimgeOBquaWueOBq+OBr+Wk
p+WkiQrjgIDjgZTov7fmg5HjgpLjgYrjgYvjgZHjgYTjgZ/jgZfjgb7jgZfjgZ/jgIIK44CA5LuK
5b6M44CB44GU5qGI5YaF44GM5LiN6KaB44Gq5pa544Gv44CB44GK5omL5pWw44Gn44GZ44GMCuOA
gOS4i+iomFVSTOOCiOOCiumFjeS/oeWBnOatoueZu+mMsuOCkuOBiumhmOOBhOOBhOOBn+OBl+OB
vuOBmeOAggrjgIDjgIBodHRwczovL2liai1vbmxpbmUuYml6L21haWwvCuOAgOOBvuOBn+OBr+S7
tuWQjeOCkuOAjOmFjeS/oeS4jeimgeOAjeOBqOWkieabtOOBl+OBpgrjgIDmnKzjg6Hjg7zjg6vj
gavjgZTov5Tkv6HjgYTjgZ/jgaDjgY/jgZPjgajjgafjgoIK44CA5om/44Gj44Gm44GK44KK44G+
44GZ44CCCgrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
