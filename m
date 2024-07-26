Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 542E8C3DA63
	for <b43-dev@archiver.kernel.org>; Fri, 26 Jul 2024 05:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jflsyss8FktHclBk/4K14+5LfiIoBPHTzgOvrVlz6cM=; b=OpdQLprxqcbsk4
	RgiHU0oJLA0mBOZZmDlK0LK4K9k8L3i39DQFEwcTBl8fLW8KuIVv43/61Lp3RnjVBFtuEeuguSkRp
	tY4QUcA5GK3PsxAwVLFPyPHCwB49CvsFzNzafEiCW46EIfXzvtaJtIZF65wtThbJ5i0EkPgGP87G8
	pQMLIh6Wl1zQQpgN3IUV/5MC6mi13OnmYi/l7nHlRnB6gKQatxISjX8hJoe6onM+Nyv+D2qiujCgG
	tmlBV8xU85fpK//ttuZqaiV8xUEPZpDK23TRLr33FgTVgj27alGqaOsrt/jRjav4kTcPn2H2ekv6F
	WXiaHhs1XpOKypahmULQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXDTr-00000002wru-0w8k;
	Fri, 26 Jul 2024 05:27:03 +0000
Received: from b32503.am.arara.com ([118.67.107.48])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXDTk-00000002wpj-0jcw
	for b43-dev@lists.infradead.org;
	Fri, 26 Jul 2024 05:26:58 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b325.am.arara.com with SMTP; Fri, 26 Jul 2024 14:03:48 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=am.arara.com;
	s=am202111; t=1721970228;
	bh=8yGAqLO51P/y3+U3LJ6xGpHi7yW7pWOsCjcgRjKvaiY=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=EEb6D05rrsBV9X+GoE3O4pUkTGj7e6jq+zoMExLGpf4vipRueLKSEdcgOv0Ajg8Yp
	 F5gLRML8ic0Wjm/nsO2VSjBlHvKziPil36XkjcwPn4K47Keu2Utd9HyhVhzOXj1N09
	 cADVFC8sHykFl9XEdeJQa1HVBmbY53j80H6idhEw=
From: =?UTF-8?B?5qCq5byP5Lya56S+SUJK?= <info@ibj-bridal.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?5Ymv5qWt77yP54us56uL6ZaL5qWt44Gg44GR44Gn44Gv44Gq44GEIOe1kOWpmuebuOirh+aJgOS6i+alrQ==?=
Message-Id: <00a0o4-0197f@bam001.am.arara.com>
Date: Fri, 26 Jul 2024 14:03:48 +0900
MIME-Version: 1.0
X-SE-GID: 00a0o4@bam001.am.arara.com
X-SE-HID: b325.am.arara.com.1721970228575629
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_222656_439914_21BC54B4 
X-CRM114-Status: UNSURE (   1.48  )
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

44GK5LiW6Kmx44Gr44Gq44KK44G+44GZ44CCCgoK5rOV5Lq644Gu5paw6KaP5LqL5qWt44Go44GX
44Gm5Y+W44KK57WE44KB44KLCgoK4oCc44CA57WQ5ama55u46KuH5omA44OT44K444ON44K544CA
4oCdCgoK44Gu44Kq44Oz44Op44Kk44Oz6Kqs5piO5Lya44KS44GU5qGI5YaF55Sz44GX5LiK44GS
44G+44GZ44CCCgoK57WQ5ama55u46KuH5omA44Gu6ZaL5qWt44Go44GE44GG44Go44CB5YCL5Lq6
44Gu5Ymv5qWt44KECueLrOeri+OCkuOCpOODoeODvOOCuOOBmeOCi+OBi+OCguOBl+OCjOOBvuOB
m+OCk+OAggoKCuOBl+OBi+OBl+OBk+OBk+aVsOW5tOOBr+OAgeS8gealreOBjOaWsOimj+S6i+al
reOBqOOBl+OBpgrlj5bjgorntYTjgoDjgrHjg7zjgrnjgoLlopfjgYjjgabjgY3jgabjgYTjgb7j
gZnjgIIKCgoK44CA44CA5Yid5pyf5oqV6LOH44Gu5L2O44GVCuOAgOOAgOOCueOCv+ODg+ODleOB
jOacrOalreOBqOWFvOS7u09LCuOAgOOAgOW6l+iIl+OCkuani+OBiOOCi+W/heimgeOBjOOBquOB
j+OAgeaXouWtmOS6i+WLmeaJgOOCkua0u+eUqOOBp+OBjeOCi+eCuQrjgIDjgIDku5XlhaXjgozj
g7vlnKjluqvjgYzjgarjgY/nspfliKnnjofjgYzpq5jjgYTjgZPjgagK44CA44CA5pei5a2Y44Gu
6aGn5a6i5Z+655uk44KS5rS744GL44GX44Gf5Lya5ZOh44Gu6ZuG5a6iCuOAgOOAgOacrOalreOB
qOOBruebuOS5l+WKueaenAoKCgrjgZPjga7jgojjgYbjgavjgIHmlrDopo/kuovmpa3jgpLjgrnj
gr/jg7zjg4jjgZnjgovjgavjgYLjgZ/jgaPjgabjga4K44OP44O844OJ44Or44GM5L2O44GP44CB
44Oh44Oq44OD44OI44GM5aSn44GN44GE44Gf44KB44CB5aSa44GP44GuCuS8gealreOBjOe1kOWp
muebuOirh+aJgOS6i+alreOBq+WPguWFpeOBl+OAgeaIkOWKn+OBl+OBpuOBhOOBvuOBmeOAggoK
CuiqrOaYjuS8muOBp+OBr+ips+OBl+OBhOODk+OCuOODjeOCueODouODh+ODq+OChOWPjuebiuaA
p+OAgQrmiJDlip/kuovkvovjgarjganjgpLjgYrkvJ3jgYjjgZfjgb7jgZnjgIIKCgrmlrDopo/k
uovmpa3jgpLjgYrogIPjgYjjgafjgZfjgZ/jgonjgIHjgZPjga7mqZ/kvJrjgavmmK/pnZ7jgZTl
j4LliqDjgY/jgaDjgZXjgYTjgIIKCgrjgIDilrzjgIDjgrvjg5/jg4rjg7zoqbPntLDmg4XloLHv
vIbnlLPovrzjga/jgZPjgaHjgonjgIDilrwK44CAIOOAgCBodHRwczovL2liai1rb25rYXRzdS5i
aXovMjMwMC8KCgrjgIDlhajlm73jgIDlkITkvJrloLTplovlgqwK44CA4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCVCgoK44CA4peH
44CA5ama5rS744OT44K444ON44K544CA6Kqs5piO5LyaCuOAgOioreWCmeaKleizh+OCvOODre+8
j+acrOalreOCueOCv+ODg+ODleWFvOWLmQrjgIDjg5/jg4vjg57jg6Djgrnjgr/jg7zjg4jjgafj
gY3jgovjgIwg57WQ5ama55u46KuH5omAIOOAjQoKCuOAgOKXh+OAgOS4u+WCrArjgIDmoKrlvI/k
vJrnpL5JQkoK44CAKOWKoOebn+ebuOirh+aJgOaVsDo0LDEyNeekvu+8j+eZu+mMsuS8muWToeaV
sDo4NSw4NTTlkI0pCgoK44CA4peH44CA6ZaL5YKs5Lya5aC0CuOAgOOAgOOAgOadseS6rO+8j+Wf
vOeOie+8j+elnuWliOW3nQrjgIDjgIDjgIDmhJvnn6XvvI/lspDpmJzvvI/kuInph40K44CA44CA
44CA5aSn6Ziq77yP55+z5bedCuOAgOOAgOOAgOemj+Wyoe+8j+eGiuacrO+8j+m5v+WFkOWztgrj
gIDjgIDjgIDluoPls7bvvI/lsqHlsbEKCuOAgOOAgOOAgOKAuyDlhajml6XnqIvjg7vkvJrloLTj
gajjgoLlhoXlrrnjga/lkIzjgZjjgafjgZnjgIIK44CA44CA44CA4oC7IOaXpeeoi+ODu+S8muWg
tOOBruips+e0sOaDheWgseOBrwrjgIDjgIDjgIDjgIAg44K744Of44OK44O844Oa44O844K444Gr
44Gm44GU56K66KqN44GP44Gg44GV44GE44CCCgoK44CA4pa844CA44K744Of44OK44O86Kmz57Sw
5oOF5aCx77yG55Sz6L6844Gv44GT44Gh44KJ44CA4pa8CuOAgCDjgIAgaHR0cHM6Ly9pYmota29u
a2F0c3UuYml6LzIzMDAvCgoK44CA4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCVCuOAgCDlj4LliqDosrvvvJrjgIDnhKHmlpkK44CA
IOWvvuOAgOixoe+8muOAgOazleS6uu+8j+WAi+S6uuOAgOOBqeOBoeOCieOBp+OCguWPr+iDveOB
p+OBmQrjgIDigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXi
gJXigJXigJXigJXigJUKCgrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
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
