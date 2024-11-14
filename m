Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 989B8D637DC
	for <b43-dev@archiver.kernel.org>; Thu, 14 Nov 2024 03:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WEJYurkzddEoGFoOY6CyK2kclaaXRt16uQgqkaZi9r8=; b=vMICWGyIEyVaNs
	Sw9KkjHjUrLi0EuvidomDaw3HSs4vNsjns+JmgzdO1U83tgl3P1cVIIfoKBI8jgzFsjKWkFeep45f
	6AKWoTKxlkwxGk1enakvCSr051Dgp+e/RXG/PB/NUTdjUUWNq8yInrx1RUQUm6xv6FlZLNSy+rc4m
	3+ckEdDaSI+7mTDOW5yWmavLG1KAzN1WFN7cj/clj20BRPrSoQPaxKh4odPX9ypIsVvlWeuPgfL9N
	wl3VOTb8gxe2B8NI0UkryUVxmtq/Tw9U2eaUj+9HslO6QWYRPluZHdNIO+seszfW8Di2OIo39YAky
	GmeZV6Anw90MJnbCfyAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBQe5-00000008glI-0HXk;
	Thu, 14 Nov 2024 03:35:49 +0000
Received: from b19901.am.arara.com ([182.236.83.129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBQdy-00000008gkn-3OoU
	for b43-dev@lists.infradead.org;
	Thu, 14 Nov 2024 03:35:44 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b199.am.arara.com with SMTP; Thu, 14 Nov 2024 12:08:26 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ibj-marriage.jp;
	s=re202407; t=1731553706;
	bh=n7qxP2DRRlkThF3ip0mowaF1jYd2raTnOmz2vv4Knps=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=Gxp3fV2PpkeVHoWzBMWndVgSKM3jpGIfwmhRS+uhHmPmpW5/vifIavb3PtH0LeRSK
	 OGb9eFdpVFHC/+a5Zs6sJ9TDzKA4UMs6Ub3+cEruSiv/yWkxyGXZvn1wKUywHmowUD
	 p0HEi5HIDHFFLviZYowIfwskWoD5rxS1YjFqytkk=
From: =?UTF-8?B?5Zyw5pa55Ym155Sf5LqL5qWtIOiqrOaYjuS8mg==?= <info@ibj-marriage.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?5paw6KaP5LqL5qWt44Gn5Zyw5pa55Ym155Sf?=
Message-Id: <00g2au-00p09@bam001.am.arara.com>
Date: Thu, 14 Nov 2024 12:08:26 +0900
MIME-Version: 1.0
X-SE-GID: 00g2au@bam001.am.arara.com
X-SE-HID: b199.am.arara.com.1731553706228111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_193543_070545_4F74763F 
X-CRM114-Status: UNSURE (   0.49  )
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
44GX44G+44GZCgoK44CA4peH44CA5pel56iL4oC7CuOAgOOAgOOAgDEx5pyIMTnml6XvvIjngavv
vIkxNDowMO+9njE1OjAwCuOAgOOAgOOAgDEx5pyIMjbml6XvvIjngavvvIkxNDowMO+9njE1OjAw
CuOAgOOAgOOAgOKAu+WFqOaXpeeoi+WGheWuueOBr+WQjOOBmOOBp+OBmQoKCuOAgOKWvOOAgOOC
u+ODn+ODiuODvOips+e0sOaDheWgse+8hueUs+i+vOOBr+OBk+OBoeOCieOAgOKWvArjgIDjgIDj
gIAgIGh0dHBzOi8vaWJqLW9ubGluZS5iaXovbHAvCgoK44CA4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCVCuOAgCDlj4LliqDosrvv
vJrjgIDnhKHmlpkK44CAIOWvvuOAgOixoe+8muOAgOazleS6uu+8j+WAi+S6uuOAgOOBqeOBoeOC
ieOBp+OCguWPr+iDveOBp+OBmQrjgIDigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigJXigJXigJUKCgrkurrlj6PmtYHlh7rjgoTlh7rnlJ/njofk
vY7kuIvjgavjgojjgosK5Zyw5pa544Gu5Lq65Y+j5rib5bCR5ZWP6aGM44CCCgoK5q2v5q2i44KB
44KS44GL44GR44KL44Gf44KB44Gr6YeN6KaB44Gq44Gu44GMCuOAjOWcsOWfn+WGheOBp+OBrue1
kOWpmuOAjeOCkuWil+OChOOBmeOBk+OBqOOBp+OBmeOAggoKCuihjOaUv+S4u+WwjuOBp+Wpmua0
u+aUr+aPtOOCkuihjOOBo+OBpuOBhOOCi+iHquayu+S9k+OCggrjgYLjgorjgb7jgZnjgYzjgIHo
qrLpoYzop6Pmsbrjgavjga/jgb7jgaDjgb7jgaDpgaDjgY8K5Zyw5Z+f44Gr5qC544GW44GX44Gf
5LyB5qWt44Gu5Yqb44GM5rGC44KB44KJ44KM44Gm44GE44G+44GZ44CCCgoK57WQ5ama55u46KuH
5omA5LqL5qWt44Gu44K544K/44O844OI44Gr44Gv6Kit5YKZ5oqV6LOH44KC44GE44KJ44Ga44CB
CuacrOalreOBruOCueOCv+ODg+ODleOBjOWFvOWLmeOCguOBmeOCi+OBk+OBqOOCguOBp+OBjeOB
vuOBmeOAggoKCuOBneOBruOBn+OCgeaYqOS7iuOBp+OBr+OAgeWAi+S6uuOBrueLrOeri+mWi+al
reOBoOOBkeOBp+OBquOBjwrmlrDopo/kuovmpa3jgajjgZfjgablj5bjgorntYTjgoDkvIHmpa3j
goLlopfjgYjjgabjgYTjgb7jgZnjgIIKCgrjg5Pjgrjjg43jgrnjg6Ljg4fjg6vjgoTlj47nm4rm
gKfjgarjganjgpLoqqzmmI7kvJrjgafoqbPjgZfjgY8K44GK5Lyd44GI44GX44G+44GZ44Gu44Gn
44CB5paw6KaP5LqL5qWt44KS44GK6ICD44GI44Gu5pa544GvCuOBk+OBruapn+S8muOBq+aYr+md
nuOBlOWPguWKoOOBj+OBoOOBleOBhOOAggoKCgrjgIDilrzjgIDjgrvjg5/jg4rjg7zoqbPntLDm
g4XloLHvvIbnlLPovrzjga/jgZPjgaHjgonjgIDilrwK44CA44CA44CAICBodHRwczovL2liai1v
bmxpbmUuYml6L2xwLwoKCgrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIEKCuOAgOagquW8j+S8muekvklCSuOAgOOCu+ODn+OD
iuODvOS6i+WLmeWxgArjgIDmnbHkuqzpg73mlrDlrr/ljLropb/mlrDlrr8xLTIzLTcK44CA5paw
5a6/44OV44Kh44O844K544OI44Km44Ko44K544OIIDEyRgoK4oCl4oCl4oCl4oCl4oCl4oCl4oCl
4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oClCuOAgOacrOODoeOD
vOODq+OBruOBlOS4jeimgeOBquaWueOBq+OBr+Wkp+WkiQrjgIDjgZTov7fmg5HjgpLjgYrjgYvj
gZHjgYTjgZ/jgZfjgb7jgZfjgZ/jgIIK44CA5LuK5b6M44CB44GU5qGI5YaF44GM5LiN6KaB44Gq
5pa544Gv44CB44GK5omL5pWw44Gn44GZ44GMCuOAgOS4i+iomFVSTOOCiOOCiumFjeS/oeWBnOat
oueZu+mMsuOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAggrjgIDjgIBodHRwczovL2liai1v
bmxpbmUuYml6L21haWwvCuOAgOOBvuOBn+OBr+S7tuWQjeOCkuOAjOmFjeS/oeS4jeimgeOAjeOB
qOWkieabtOOBl+OBpgrjgIDmnKzjg6Hjg7zjg6vjgavjgZTov5Tkv6HjgYTjgZ/jgaDjgY/jgZPj
gajjgafjgoIK44CA5om/44Gj44Gm44GK44KK44G+44GZ44CCCgrilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcg
bGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
