Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EE11FA372B
	for <b43-dev@archiver.kernel.org>; Fri, 13 Sep 2024 08:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YgP93TSxD1BnP3wQ1YLuzISAzMLkh4NkHV9pFX0JTio=; b=hgncF5Ksn/OgZ4
	CN4Y45A92CGl2GVPe2GKA9hD8W4dxwIbOnkKsMldLVoKKjlWjbu3fCsxrL6z7RiYHxPMB5zlpllZT
	DfquKBJlumTiypVJybFiyEsvo1hHcDBtqbyEM6diNE54K68BpHCP68VWItdoH9D5Lmn6oy38UjzAl
	mUuhj07/I1iHys+QokK3EyMrCGX41z+/AsQNygWMkcPgz61Mmhhsg/1dlTWuOZHOeSm9BOdsTZH+S
	LMZHRFSm5IJVWe7BAoJVjqZ8TkVrOWmz1tgO3fW7C3kK6aKIsdIRR5N71vLFsRfFOB423wbfjPMz3
	rOK2SYxULtk4W1Rsro1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1TO-0000000FJNA-19vO;
	Fri, 13 Sep 2024 08:16:10 +0000
Received: from b200.am.arara.com ([182.236.75.69])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1TF-0000000FJM2-3iSD
	for b43-dev@lists.infradead.org;
	Fri, 13 Sep 2024 08:16:06 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b200.am.arara.com with SMTP; Fri, 13 Sep 2024 17:08:06 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ibj-marriage.jp;
	s=re202407; t=1726214886;
	bh=VPyVoWqTgMV63qq/LvaaEBzMxnVIpXYoy2legELWwbY=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=Va3igZLV5V1ud7Wf7u9/dd3xE3J65Rm4BlcIUGS2c4JWqYozKWPwaWmYPTo0iyJ71
	 uA++dM+kKWKtnydC79KwTFHx+dhbLVE3w8y2seo7DB7Vti1qW+KrxBrU3kMec4sz9z
	 mvtUA2BNOibcYMUhpNZY+9hrc3t2LUK3n+KYuMKg=
From: =?UTF-8?B?aW5mb0BpYmotbWFycmlhZ2UuanA=?= <info@ibj-marriage.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?5paw6KaP5LqL5qWt44Go44GX44Gm44Gu57WQ5ama55u46KuH5omA?=
Message-Id: <00css7-00wf9@bam001.am.arara.com>
Date: Fri, 13 Sep 2024 17:08:06 +0900
MIME-Version: 1.0
X-SE-GID: 00css7@bam001.am.arara.com
X-SE-HID: b200.am.arara.com.1726214886258616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_011602_273561_B7421C1A 
X-CRM114-Status: UNSURE (   1.11  )
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

4oCV44CA5ama5rS744OT44K444ON44K56Kqs5piO5Lya44CA4oCVCgoK44GE44Gk44KC44GK5LiW
6Kmx44Gr44Gq44KK44G+44GZ44CCCgoK5paw6KaP5LqL5qWt44Go44GX44Gm5L2O44Oq44K544Kv
44Gn44K544K/44O844OI44Gn44GN44KLCgrigJzjgIDntZDlqZrnm7joq4fmiYDjg5Pjgrjjg43j
grnjgIDigJ0KCuOBruiqrOaYjuS8muOBlOahiOWGheOBq+OBpOOBjeOBlOmAo+e1oeW3ruOBl+S4
iuOBkuOBvuOBl+OBn+OAggoKCuioreWCmeaKleizh+OCguOBhOOCieOBmuOAgeacrOalreOBruOC
ueOCv+ODg+ODleOBjOWFvOWLmeOCggrjgafjgY3jgovjga7jgafjgIHlgIvkurrjga7ni6znq4vp
lovmpa3jgaDjgZHjgafjgarjgY8K5paw6KaP5LqL5qWt44Go44GX44Gm5Y+W44KK57WE44KA5LyB
5qWt44KC5aKX44GI44Gm44GE44G+44GZ44CCCgoK6Kqs5piO5Lya44Gn44Gv6Kmz44GX44GE44OT
44K444ON44K544Oi44OH44Or44KECuWPjuebiuaAp+OBquOBqeOCkuOBiuS8neOBiOOBl+OBvuOB
meOAggoKCuaWsOOBn+OBquS6i+alreOCkuOBiuiAg+OBiOOBruaWueOBrwrjgZPjga7mqZ/kvJrj
gavmmK/pnZ7jgZTlj4LliqDjgY/jgaDjgZXjgYTjgIIKCgrjgIDilrzjgIDjgrvjg5/jg4rjg7zo
qbPntLDmg4XloLHvvIbnlLPovrzjga/jgZPjgaHjgonjgIDilrwK44CAIOOAgCBodHRwczovL2li
ai1rb25rYXRzdS5iaXovMjMwMC8KCgrjgIDlhajlm73jgIDlkITkvJrloLTplovlgqwK44CA4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCVCgoK44CA4peH44CA5ama5rS744OT44K444ON44K544CA6Kqs5piO5LyaCuOAgOioreWCmeaK
leizh+OCvOODre+8j+acrOalreOCueOCv+ODg+ODleWFvOWLmQrjgIDjg5/jg4vjg57jg6Djgrnj
gr/jg7zjg4jjgafjgY3jgovjgIwg57WQ5ama55u46KuH5omAIOOAjQoKCuOAgOKXh+OAgOS4u+WC
rArjgIDmoKrlvI/kvJrnpL5JQkoK44CAKOWKoOebn+ebuOirh+aJgOaVsDo0LDEyNeekvu+8j+eZ
u+mMsuS8muWToeaVsDo4NSw4NTTlkI0pCgoK44CA4peH44CA6ZaL5YKs5Lya5aC0CuOAgOOAgOOA
gOadseS6rArjgIDjgIDjgIDmhJvnn6XvvI/pnZnlsqEK44CA44CA44CA5aSn6ZiqCuOAgOOAgOOA
gOW6g+Wztu+8j+WyoeWxsQrjgIDjgIDjgIDnpo/lsqHvvI/pub/lhZDls7YKCuOAgOOAgOOAgOKA
uyDlhajml6XnqIvjg7vkvJrloLTjgajjgoLlhoXlrrnjga/lkIzjgZjjgafjgZnjgIIK44CA44CA
44CA4oC7IOaXpeeoi+ODu+S8muWgtOOBruips+e0sOaDheWgseOBrwrjgIDjgIDjgIDjgIAg44K7
44Of44OK44O844Oa44O844K444Gr44Gm44GU56K66KqN44GP44Gg44GV44GE44CCCgoK44CA4pa8
44CA44K744Of44OK44O86Kmz57Sw5oOF5aCx77yG55Sz6L6844Gv44GT44Gh44KJ44CA4pa8CuOA
gCDjgIAgaHR0cHM6Ly9pYmota29ua2F0c3UuYml6LzIzMDAvCgoK44CA4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCVCuOAgCDlj4Ll
iqDosrvvvJrjgIDnhKHmlpkK44CAIOWvvuOAgOixoe+8muOAgOazleS6uu+8j+WAi+S6uuOAgOOB
qeOBoeOCieOBp+OCguWPr+iDveOBp+OBmQrjgIDigJXigJXigJXigJXigJXigJXigJXigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJUKCgrilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIEKCuOAgOagquW8
j+S8muekvklCSuOAgOOCu+ODn+ODiuODvOS6i+WLmeWxgArjgIDmnbHkuqzpg73mlrDlrr/ljLro
pb/mlrDlrr8xLTIzLTcK44CA5paw5a6/44OV44Kh44O844K544OI44Km44Ko44K544OIIDEyRgoK
4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl
4oCl4oCl4oClCuOAgOacrOODoeODvOODq+OBruOBlOS4jeimgeOBquaWueOBq+OBr+Wkp+WkiQrj
gIDjgZTov7fmg5HjgpLjgYrjgYvjgZHjgYTjgZ/jgZfjgb7jgZfjgZ/jgIIK44CA5LuK5b6M44CB
44GU5qGI5YaF44GM5LiN6KaB44Gq5pa544Gv44CB44GK5omL5pWw44Gn44GZ44GMCuOAgOS4i+io
mFVSTOOCiOOCiumFjeS/oeWBnOatoueZu+mMsuOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOA
ggrjgIDjgIBodHRwczovL2liai1rb25rYXRzdS5iaXovbWFpbC8K44CA44G+44Gf44Gv5Lu25ZCN
44KS44CM6YWN5L+h5LiN6KaB44CN44Go5aSJ5pu044GX44GmCuOAgOacrOODoeODvOODq+OBq+OB
lOi/lOS/oeOBhOOBn+OBoOOBj+OBk+OBqOOBp+OCggrjgIDmib/jgaPjgabjgYrjgorjgb7jgZnj
gIIKCuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
