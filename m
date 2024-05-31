Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4415C25B75
	for <b43-dev@archiver.kernel.org>; Fri, 31 May 2024 03:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZabRMWQC8o+l8IeoGPppt2pHAvXpRA9Azxzt1c3+ENI=; b=DtQSRDPE3KIc4U
	3aNf+QFWAEXDUvGu83PebW85JirbFmkyuBhC9bm7Aq55ZUQ4Hxr/FraO8s2PZ9Lei3GMgM8QgzOHu
	xsrsDvLA7uZ4VLEOAX01x78eE/mTwwnhj5wsLwiFrFShIUyI/bsa2MUdSsuR81Ki3/VrePAEvA2/O
	5fiSwesJm2HmSb+M+KR3+I9n1cGl919rLGIZJhJFketFdqnJmGVMt6z5l9FEW3XF4qarH6j2O2u5Z
	PmxjgMMfwq/bapDA3+WVCDBlpVrHvQxnfEKdQUrueWKdhOHh8w9lWgL6wYALnhUtPXIEehQWzRhB3
	WGdzEMnKOfQRaQKRY0+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCtOt-0000000992J-15mj;
	Fri, 31 May 2024 03:57:55 +0000
Received: from b20003.am.arara.com ([182.236.75.72])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCtOi-0000000991j-3iDz
	for b43-dev@lists.infradead.org;
	Fri, 31 May 2024 03:57:51 +0000
Received: from unknown (HELO) (172.18.130.110)
  by b200.am.arara.com with SMTP; Fri, 31 May 2024 12:08:47 +0900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=am.arara.com;
	s=am202111; t=1717124927;
	bh=PbzjlWRc7MD6aaW+JBGaOvvHi1558ELvHvff9sywcZ4=;
	h=From:To:List-Unsubscribe:List-Unsubscribe-Post:Subject:Message-Id:
	 Date:MIME-Version:Content-Transfer-Encoding;
	b=HDUSdqmxkn7cKRjDqdV7FD6nE8kbmJd6FXD1UGNmW2LgRLM9q/WUiZ5UBD/uhC1HY
	 zRTyFLT2l2HEz/rNLmrdyS1YRFjkcawCHk95oydO5+RiNiL1Jd7unLUAiW5CR12h3S
	 09yuOI4ocugg9h+85EuFWJexsTdvIWxwHtSqyC04=
From: =?UTF-8?B?5qCq5byP5Lya56S+SUJK?= <info@ibj-bridal.jp>
To: b43-dev@lists.infradead.org
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?UTF-8?B?5paw6KaP5LqL5qWt44Go44GX44Gm44Gu57WQ5ama55u46KuH5omA?=
Message-Id: <007q83-02qzw@bam001.am.arara.com>
Date: Fri, 31 May 2024 12:08:47 +0900
MIME-Version: 1.0
X-SE-GID: 007q83@bam001.am.arara.com
X-SE-HID: b200.am.arara.com.1717124927083349
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_205745_092123_F3E3B71B 
X-CRM114-Status: UNSURE (   0.81  )
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
ai1rb25rYXRzdS5iaXovMjMwMC8KCgrjgIA25pyI5bqm44CA5YWo5Zu944CA5ZCE5Lya5aC06ZaL
5YKsCuOAgOKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKA
leKAleKAleKAleKAlQoKCuOAgOKXh+OAgOWpmua0u+ODk+OCuOODjeOCueOAgOiqrOaYjuS8mgrj
gIDoqK3lgpnmipXos4fjgrzjg63vvI/mnKzmpa3jgrnjgr/jg4Pjg5Xlhbzli5kK44CA44Of44OL
44Oe44Og44K544K/44O844OI44Gn44GN44KL44CMIOe1kOWpmuebuOirh+aJgCDjgI0KCgrjgIDi
l4fjgIDkuLvlgqwK44CA5qCq5byP5Lya56S+SUJKCuOAgCjliqDnm5/nm7joq4fmiYDmlbA6NCwx
MjXnpL7vvI/nmbvpjLLkvJrlk6HmlbA6ODUsODU05ZCNKQoKCuOAgOKXh+OAgDbmnIjluqbjgIDk
vJrloLQK44CA44CA44CA5YyX5rW36YGTCuOAgOOAgOOAgOmdkuajruecjO+8j+eni+eUsOecjO+8
j+emj+WztuecjArjgIDjgIDjgIDmnbHkuqzpg73vvI/npZ7lpYjlt53nnIzvvI/ojKjln47nnIzv
vI/moIPmnKjnnIzvvI/plbfph47nnIwK44CA44CA44CA55+z5bed55yM77yP56aP5LqV55yMCuOA
gOOAgOOAgOaEm+efpeecjO+8j+WykOmYnOecjArjgIDjgIDjgIDlpKfpmKrlupwK44CA44CA44CA
5bKh5bGx55yM77yP5bqD5bO255yM77yP6bOl5Y+W55yM77yP5bO25qC555yMCuOAgOOAgOOAgOW+
s+WztuecjO+8j+mmmeW3neecjArjgIDjgIDjgIDnpo/lsqHnnIzvvI/nhormnKznnIzvvI/lpKfl
iIbnnIzvvI/lrq7ltI7nnIzvvI/pub/lhZDls7bnnIwKCuOAgOOAgOOAgOKAuyDlhajml6XnqIvj
g7vkvJrloLTjgajjgoLlhoXlrrnjga/lkIzjgZjjgafjgZnjgIIK44CA44CA44CA4oC7IOaXpeeo
i+ODu+S8muWgtOOBruips+e0sOaDheWgseOBrwrjgIDjgIDjgIDjgIAg44K744Of44OK44O844Oa
44O844K444Gr44Gm44GU56K66KqN44GP44Gg44GV44GE44CCCgoK44CA4pa844CA44K744Of44OK
44O86Kmz57Sw5oOF5aCx77yG55Sz6L6844Gv44GT44Gh44KJ44CA4pa8CuOAgCDjgIAgaHR0cHM6
Ly9pYmota29ua2F0c3UuYml6LzIzMDAvCgoK44CA4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCVCuOAgCDlj4LliqDosrvvvJrjgIDn
hKHmlpkK44CAIOWvvuOAgOixoe+8muOAgOazleS6uu+8j+WAi+S6uuOAgOOBqeOBoeOCieOBp+OC
guWPr+iDveOBp+OBmQrjgIDigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXi
gJXigJXigJXigJXigJXigJXigJXigJUKCgrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIEKCuOAgOagquW8j+S8muekvklCSuOA
gOOCu+ODn+ODiuODvOS6i+WLmeWxgArjgIDmnbHkuqzpg73mlrDlrr/ljLropb/mlrDlrr8xLTIz
LTcK44CA5paw5a6/44OV44Kh44O844K544OI44Km44Ko44K544OIIDEyRgoK4oCl4oCl4oCl4oCl
4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oCl4oClCuOA
gOacrOODoeODvOODq+OBruOBlOS4jeimgeOBquaWueOBq+OBr+Wkp+WkiQrjgIDjgZTov7fmg5Hj
gpLjgYrjgYvjgZHjgYTjgZ/jgZfjgb7jgZfjgZ/jgIIK44CA5LuK5b6M44CB44GU5qGI5YaF44GM
5LiN6KaB44Gq5pa544Gv44CB44GK5omL5pWw44Gn44GZ44GMCuOAgOOAjOmFjeS/oeS4jeimgeOA
jeOBqOOBlOi/lOS/oeOBhOOBn+OBoOOBj+OBi+OAgQrjgIDkuIvoqJhVUkzjgojjgorphY3kv6Hl
gZzmraLnmbvpjLLjgpLmib/jgaPjgabjgYrjgorjgb7jgZnjga7jgacK44CA44GK5omL57aa44GN
44KS44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCCuOAgOOAgGh0dHBzOi8vaWJqLWtvbmthdHN1
LmJpei9tYWlsLwoK4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSB4pSBCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRl
dgo=
