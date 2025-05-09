Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACC53C3ABC5
	for <b43-dev@archiver.kernel.org>; Fri,  9 May 2025 00:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v0bwatOTBZ4hmxpZWnQ0vAH+2WpKO3uPugTLXp7ogz4=; b=rSN74QAoM68o3m
	MMW1/K/b3u0nPSnQoR7T+PXPEDuxKGbz2HUID1GJso/DP7ZQ8ylYsI2xjJPjadBCDU8uM7lg56mai
	P0aHbXpA6VDnAwcZK+u93gRZ0WVNu7Asn0uN+ATVAtuBNUQOngieIpWKsZQi7BveQm3+NDzLfOTaj
	FGk3qtxhMUO7jJxqb/q/9T7kzJFOZZS0lGvAoUFYj+mLdhojEf1LyhL/2aLnvLTVIVNfOKpDDT0Xy
	V/hJIlfekp38rZXbfn0+sjADq2BUiDXO8BTHTuqUoRDRPGnHOtbdCbS74RUJkmb09lN9/IO3X5s/a
	vjJLywrbesyMYEP1n6lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDBhV-000000026Mx-2kWh;
	Fri, 09 May 2025 00:34:53 +0000
Received: from b32503.am.arara.com ([118.67.107.48])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDBhP-000000026MX-3gc2
	for b43-dev@lists.infradead.org;
	Fri, 09 May 2025 00:34:49 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b325.am.arara.com with SMTP; Fri, 09 May 2025 09:19:56 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ibj-marriage.jp;
	s=re202407; t=1746749996;
	bh=Az66nxUceJu7kyA7sNhQYhtoPzkggc4NzkoUmpR7VSM=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=Pbb0j6bjX8175RgkuQMTRxUsppEgP1Iw6/JwGOWGBWXxL6AaQaYXMDDOAIuozblZj
	 3kQifl5goYrNFHkEaMmrRPux6jEitgsuYsM7DHZGU1Y4qDb601FeCxm782SSf8CuQg
	 pV79Qt3vcDxp5Towui+OObNcq/UP/8ajwB0KHn/U=
From: =?UTF-8?B?aW5mb0BpYmotbWFycmlhZ2UuanA=?= <info@ibj-marriage.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?5paw6KaP5LqL5qWt44Go44GX44Gm44Gu57WQ5ama55u46KuH5omA?=
Message-Id: <00t1kj-030u5@bam001.am.arara.com>
Date: Fri, 09 May 2025 09:19:56 +0900
MIME-Version: 1.0
X-SE-GID: 00t1kj@bam001.am.arara.com
X-SE-HID: b325.am.arara.com.1746749996765585
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_173448_346245_25020EB2 
X-CRM114-Status: UNSURE (   1.36  )
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

44CA4oCV44CA5ama5rS744OT44K444ON44K5IOOCquODs+ODqeOCpOODs+iqrOaYjuS8muOAgOKA
lQoKCuOBhOOBpOOCguOBiuS4luipseOBq+OBquOCiuOBvuOBmeOAggoKCuaWsOimj+S6i+alreOB
qOOBl+OBpuS9juODquOCueOCr+OBp+OCueOCv+ODvOODiOOBp+OBjeOCiwoK4oCc44CA57WQ5ama
55u46KuH5omA44OT44K444ON44K544CA4oCdCgrjga7oqqzmmI7kvJrjgZTmoYjlhoXjgavjgaTj
gY3jgZTpgKPntaHlt67jgZfkuIrjgZLjgb7jgZfjgZ/jgIIKCgroqK3lgpnmipXos4fjgoLjgYTj
gonjgZrjgIHmnKzmpa3jga7jgrnjgr/jg4Pjg5XjgYzlhbzli5njgoIK44Gn44GN44KL44Gu44Gn
44CB5YCL5Lq644Gu54us56uL6ZaL5qWt44Gg44GR44Gn44Gq44GPCuaWsOimj+S6i+alreOBqOOB
l+OBpuWPluOCiue1hOOCgOS8gealreOCguWil+OBiOOBpuOBhOOBvuOBmeOAggoKCuiqrOaYjuS8
muOBp+OBr+ips+OBl+OBhOODk+OCuOODjeOCueODouODh+ODq+OChArlj47nm4rmgKfjgarjganj
gpLjgYrkvJ3jgYjjgZfjgb7jgZnjgIIKCgrmlrDjgZ/jgarkuovmpa3jgpLjgYrogIPjgYjjga7m
lrnjga8K44GT44Gu5qmf5Lya44Gr5piv6Z2e44GU5Y+C5Yqg44GP44Gg44GV44GE44CCCgoK44CA
4pa844CA44K744Of44OK44O86Kmz57Sw5oOF5aCx77yG55Sz6L6844Gv44GT44Gh44KJ44CA4pa8
CuOAgOOAgCBodHRwczovL2liai1vbmxpbmUuYml6LzI1b25saW5lLwoKCuOAgOOCquODs+ODqeOC
pOODs+mWi+WCrArjgIDigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXi
gJXigJXigJXigJXigJXigJXigJUKCgrjgIDil4fjgIDlqZrmtLvjg5Pjgrjjg43jgrnjgIDoqqzm
mI7kvJoK44CA6Kit5YKZ5oqV6LOH44K844Ot77yP5pys5qWt44K544K/44OD44OV5YW85YuZCuOA
gOODn+ODi+ODnuODoOOCueOCv+ODvOODiOOBp+OBjeOCi+OAjCDntZDlqZrnm7joq4fmiYAg44CN
CgoK44CA4peH44CA5Li75YKsCuOAgOagquW8j+S8muekvklCSgrjgIAo5Yqg55uf55u46KuH5omA
5pWwOjQsNDg056S+77yP55m76Yyy5Lya5ZOh5pWwOjk1LDczNuWQjSkKCgrjgIDil4fjgIDplovl
gqzmlrnlvI/jgIDigLsK44CA44Kq44Oz44Op44Kk44Oz44Gr44Gm5a6f5pa9CuOAgOKAu+OAgOOB
iueUs+i+vOOBv+W+jOOAgemWi+WCrOaXpeOBvuOBp+OBqwrjgIDjgIDjgIDoppbogbTmlrnms5Xj
gpLjgZTmoYjlhoXjgZfjgb7jgZkKCgrjgIDil4fjgIDml6XnqIvigLsK44CA44CA44CANeaciDEw
5pel77yI5Zyf77yJMTQ6MDDvvZ4xNTowMArjgIDjgIDjgIA15pyIMTLml6XvvIjmnIjvvIkxNDow
MO+9njE1OjAwCuOAgOOAgOOAgDXmnIgxNeaXpe+8iOacqO+8iTE0OjAw772eMTU6MDAK44CA44CA
44CA4oC75YWo5pel56iL5YaF5a6544Gv5ZCM44GY44Gn44GZCgoK44CA4pa844CA44K744Of44OK
44O86Kmz57Sw5oOF5aCx77yG55Sz6L6844Gv44GT44Gh44KJ44CA4pa8CuOAgOOAgCBodHRwczov
L2liai1vbmxpbmUuYml6LzI1b25saW5lLwoKCuOAgOKAleKAleKAleKAleKAleKAleKAleKAleKA
leKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAlQrjgIAg5Y+C5Yqg6LK777ya44CA
54Sh5paZCuOAgCDlr77jgIDosaHvvJrjgIDms5XkurrvvI/lgIvkurrjgIDjganjgaHjgonjgafj
goLlj6/og73jgafjgZkK44CA4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCVCgoK4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSBCgrjgIDmoKrlvI/kvJrnpL5JQkrj
gIDjgrvjg5/jg4rjg7zkuovli5nlsYAK44CA5p2x5Lqs6YO95paw5a6/5Yy66KW/5paw5a6/MS0y
My03CuOAgOaWsOWuv+ODleOCoeODvOOCueODiOOCpuOCqOOCueODiCAxMkYKCuKApeKApeKApeKA
peKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApeKApQrj
gIDjg6Hjg7zjg6vnhKHnlKjjgarmlrnjgavjga/lpKflpInjgZTov7fmg5HjgpLjgYrjgYvjgZHj
gYTjgZ/jgZfjgb7jgZfjgZ/jgIIK44CA5LuK5b6M44CB5LiN5b+F6KaB44Gq5pa544Gv44CB44GK
5omL5pWw44Gn44GZ44GMCuOAgOS4i+iomFVSTOOCiOOCiuOBq+aJi+e2muOBjeOCkuOBiumhmOOB
hOOBhOOBn+OBl+OBvuOBmeOAggrjgIDjgIBodHRwczovL2liai1vbmxpbmUuYml6L21haWwvCgri
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2Cg==
