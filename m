Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 935F8C54E58
	for <b43-dev@archiver.kernel.org>; Wed, 20 Mar 2024 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=41Yu7jsxmgihNWovhGb+l+LdRtb95+p3SaQwHeuMpTU=; b=SK2IPWBFVuL3dh
	kd8qyw+w2reZ3uJq8kezA5mOUm5/7YT2yvlWd8+rqIMQnkAGASX5uzQFGdS6FNYCsAZH0XHx6nMuP
	6fm7/ksYeLRh2bYi7xG9uOpxSs+Cq9cAm3PXwhV4qdPfykCBR5TTMOQ6NiY+3mw/pBVStkW4C/Fzl
	bjnR0c0a+nWIizr2Sngf7wrKQwLTUncAm4RH4NYlsXNZp9OyWnDcoSz6cFKiCGUxkBlkvee9Sn6ap
	BPEffPx4hLPXtkSmWfefIipnI4ZusJW1kop0cmaJHayuRSrk/vwVA4T8u+3TlLqJm1a/csWJS30sP
	+c290+T2D7QZ8x9FQUDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmrWj-0000000GEun-2FHN;
	Wed, 20 Mar 2024 08:42:25 +0000
Received: from mail.bizexpand.pl ([51.195.45.234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmrWd-0000000GEt0-3o4v
	for b43-dev@lists.infradead.org;
	Wed, 20 Mar 2024 08:42:22 +0000
Received: by mail.bizexpand.pl (Postfix, from userid 1002)
	id 9717CA4510; Wed, 20 Mar 2024 08:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bizexpand.pl; s=mail;
	t=1710924087; bh=hy7OL951zzMc4+HXkALzt9LRZiawYsmWYUx9WMj5lrk=;
	h=Date:From:To:Subject:From;
	b=GlswyJADMzmUT2Y/7h/kCSsMiTH7FNd+caI7WzgZkddNLV6GGFv7m+GqdwhItvnQ0
	 zqXAr+WHDt2+KChKPM4RfejXDBJeu0w7NoMJf4qPl7aNIAhFI2xFY7dtqid7rRJcX+
	 fN6HJ7LRV0heN7S2Wp366pYloayfxps6zawabbC05KT8Gz4+9dVUxgKUoxL3oStnbp
	 XHvBvdcT7+88fhxMveF3AJHXkv/pO4Is2AOU2ax1/UKk2TBosjoLSolMW39p563u0f
	 EVCFLjgo/OAodyCNVXhRq+W8ia3it/4BOysbauFh7YlKkI4rlVFx1SC1Jqjh//+bEZ
	 FTqAP4YPFz1Qg==
Received: by mail.bizexpand.pl for <b43-dev@lists.infradead.org>; Wed, 20 Mar 2024 08:40:44 GMT
Message-ID: <20240320074500-0.1.gl.1jjxe.0.69xfyouu2e@bizexpand.pl>
Date: Wed, 20 Mar 2024 08:40:44 GMT
From: "Agata Lorenc" <agata.lorenc@bizexpand.pl>
To: <b43-dev@lists.infradead.org>
Subject: Nowa karta
X-Mailer: mail.bizexpand.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_014220_658764_6E3C9378 
X-CRM114-Status: UNSURE (   2.12  )
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

RHppZcWEIGRvYnJ5LAoKY3p5IGtvcnp5c3RhbGkgUGHFhHN0d28ga2llZHnFmyB6IHByemVkcMWC
YWNvbmVqIGthcnR5IGx1bmNob3dlaj8KCkN6eSB3aWVkesSFIFBhxYRzdHdvLCDFvGUgYWt0dWFs
bmllIGlzdG5pZWplIG1vxbxsaXdvxZvEhyB6d29sbmllbmlhIHogb3DFgmF0IFpVUyBhxbwgZG8g
NDUwIHrFgiBuYSBrYcW8ZGVnbyBwcmFjb3duaWthPwoKRG9maW5hbnNvd2FuaWUgcG9zacWCa8Oz
dyBqZXN0IGtvcnp5c3RuZSBkbGEgb2J1IHN0cm9uLiBQcmFjb3duaWN5IG1vZ8SFIHRha8SFIGth
cnTEhSB6YXDFgmFjacSHIHphIHBvc2nFgmtpIHcgcmVzdGF1cmFjamFjaCwgeiBkb3N0YXfEhSBv
bmxpbmUsIGNhdGVyaW5nIHB1ZGXFgmtvd3ksIGN6eSBwb2RjemFzIHpha3Vww7N3IHcgbWFya2Vj
aWUuIEplZG5vY3plxZtuaWUga2FydHkgbHVuY2hvd2Ugc8SFIGRvc2tvbmHFgnltIG5hcnrEmWR6
aWVtIG1vdHl3YWN5am55bSBkbGEgemVzcG/FgsOzdyBwcmFjb3duaWN6eWNoLgoKVyB0ZW4gc3Bv
c8OzYiB6YWRiYWrEhSBQYcWEc3R3byBvIHpkcm93aWUgaSBkb2JyZSBzYW1vcG9jenVjaWUgc3dv
amVqIGthZHJ5LCB3ZHJhxbxhasSFYyByb3p3acSFemFuaWUsIGt0w7NyZSBwb3p5dHl3bmllIHdw
xYJ5bmllIG5hIGVmZWt0eXdub8WbxIcgYml6bmVzdS4KCkN6eSBtb2fEmSB6YXByZXplbnRvd2HE
hyBzcG9zw7NiLCB3IGpha2kgbW/FvG5hIHd5a29yenlzdGHEhyB0ZWdvIHR5cHUgYmVuZWZpdCB3
IGZpcm1pZT8KCgpQb3pkcmF3aWFtLApBZ2F0YSBMb3JlbmMKU2VuaW9yIEhSIE1hbmFnZXIKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBt
YWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
