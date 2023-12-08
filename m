Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CE5EC4167B
	for <b43-dev@archiver.kernel.org>; Fri,  8 Dec 2023 08:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qg6pDp8trbOT19bkn0CtZ2ChJUwZShladCL+vGynysI=; b=48NTJUNPLLPrJL
	KdELF4t6m9eYSvfOTt2utXizv/iCGsHav4XfVTI29QeTQZd9z6cw6cTLs0uETHklQL20fRF5AmPNh
	DP16mOiy8ZKAWVquN7LTZKSI8gg5iPoORmdK95V++D9HZUu5XwFRzVgGQfCUScAwN9Y4vfE+fOgjW
	YNf2NjyiGVvt0JD+jjTcjjuRJFs1I8uhUu3j3wv3HPMWz7QlvJUTByYnVzLHgrHw7qkUNdIhDhuKf
	xUNNn+dOkGNMhqAOkbanHWXUKHhF/gUTef3VOuOwgcz22IFRnpCusxALww1jHf5fBhMhdu8Nn4CEj
	szYLeyN/9oxCQerk9dJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBWQh-00F4Ei-1z;
	Fri, 08 Dec 2023 08:41:51 +0000
Received: from mail.synergyflux.pl ([51.38.99.212])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBWQb-00F4Di-0G
	for b43-dev@lists.infradead.org;
	Fri, 08 Dec 2023 08:41:47 +0000
Received: by mail.synergyflux.pl (Postfix, from userid 1002)
	id 0DF3524A11; Fri,  8 Dec 2023 08:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synergyflux.pl;
	s=mail; t=1702024896;
	bh=n9RRp8MlabRDJBtJNro49Rmci90RtotaZYZ8+xo6WI4=;
	h=Date:From:To:Subject:From;
	b=GIMvb4nQHBQeOApZA6p+9FSxzuZO1+Cb0euK5vTW9udNubYd8XO6cQj7cRR23/W/o
	 cSWjlcFEYVk7f5bGlKyUShap8ITHShAFcEyBVPzGWzsqJDV9Mv3TakVxPXj8Cj91aE
	 zzkVZ7K/dk8GIWYnkYXeLKComexdcdSRNIxkMj+D8IrWUYpR7x9g6tHMuJoOoJ1RXI
	 LopFwe0DJJ/fW0tCp4f1Qt7I0CfQFlbbn1EJzSfXtri5rlH/07op8uvJ9Lu2OHSARC
	 AEMjBmoLQso9/6gvyIEkL/Gkx7URzZOsIlnRgoQ1Zg26vXC7glK6m2U5aCH002OUuI
	 GCRVLeQevDe+Q==
Received: by mail.synergyflux.pl for <b43-dev@lists.infradead.org>; Fri,  8 Dec 2023 08:40:47 GMT
Message-ID: <20231208074500-0.1.8l.1h7z5.0.tdjhhd9lu1@synergyflux.pl>
Date: Fri,  8 Dec 2023 08:40:47 GMT
From: =?UTF-8?Q?"Konrad_Zieli=C5=84ski_"?= <konrad.zielinski@synergyflux.pl>
To: <b43-dev@lists.infradead.org>
Subject: Instalacja pv
X-Mailer: mail.synergyflux.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_004145_876799_F729B8E6 
X-CRM114-Status: UNSURE (   1.01  )
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

RHppZcWEIGRvYnJ5LAoKY3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIG5pZXpvYm93acSFenVq
xIVjxIUgcm96bW93xJkgbmEgdGVtYXQgZm90b3dvbHRhaWtpPwoKSmFrbyBmaXJtYSBzcGVjamFs
aXp1asSFY2Egc2nEmSB3IGluc3RhbGFjamkgaSBzZXJ3aXNpZSBuYWpsZXBzenljaCBqYWtvxZtj
aW93byBwYW5lbGkgc8WCb25lY3pueWNoIG5hIHJ5bmt1IGNoY2lhxYJieW0gcHJ6ZWRzdGF3acSH
IHByb3BvenljasSZLCBqYWvEhSB3c3DDs2xuaWUgeiB6ZXNwb8WCZW0gcHJ6eWdvdG93YWxpxZtt
eSBkbGEgUGHFhHN0d2Egb2JpZWt0dS4KCkLEmWTEmSB3ZHppxJljem55IHphIHdpYWRvbW/Fm8SH
IG9kIFBhxYRzdHdhIGN6eSBtb8W8ZW15IHBvcm96bWF3aWHEhy4KCgpQb3pkcmF3aWFtCktvbnJh
ZCBaaWVsacWEc2tpIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
