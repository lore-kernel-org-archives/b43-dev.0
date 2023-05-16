Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B449C7EE24
	for <b43-dev@archiver.kernel.org>; Tue, 16 May 2023 17:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v03SbAnoJZzx5WJp7W4t+piokBS1OQqAL1ZXiv1oG9Q=; b=N0qT/p3HJqN5z1
	cUndLYlj3/N2fSFrHjOqA0vKdB1CoACffCuglwaD1RV41z7/r9sS/AWyyiXxTCTjyf761MFE/FH6Y
	/5zKr5xycQ/+eG7ulCNoTMxx/47SuYjrT1F7erdDc7720pb1saMuS5siws42esESqkj0Fe0sE3asW
	jU5QBKyc5kgNgiUx0g1SMwZ4RiIPcmmVlGHx11CEvv/hRsxbE3f5UiTF7cWH/yEKV1KeDFFmurgbC
	wPs9/u+Wem83tSPvv9KTR/VkFf4L+lXOVXea7siOOYyzaDp17BpUl621nZhfS72uAU2uxLwqOOhBA
	2G5gSUE/TWv07L1K/I5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyyk3-006fLO-33;
	Tue, 16 May 2023 17:45:43 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyyk0-006fK1-2V
	for b43-dev@lists.infradead.org;
	Tue, 16 May 2023 17:45:42 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id CD2DB5C01A6;
	Tue, 16 May 2023 13:45:36 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Tue, 16 May 2023 13:45:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1684259136; x=1684345536; bh=wBYZT0OYkMw2TLM13VW/L10+YF3tRMc4JyR
	//pK6kKY=; b=tf1fA1FFYUbqAZixRp8n3F6FYjwLml0yhRx02Mc+jQx1fXN3meF
	BOchr8HHmmt8N3tVVX5/REOIq4MqC96in9Gssin1m/pgpMma1vHzyKmNyNd046ud
	/kaCW9N485Z8n2jm4ABp2v64TEyTtgvADgwkzPXss96AcVTE03BU8TD3ViZqsMiZ
	b9n9NeMCzKQPGl/XFG0WkVa3PH8SOa7iM3+0FJUYMMkWBVm6BAKovQdF/STR5ZtM
	viCu6pc+oMJk94JleK6TW54nvY+99ZZu0lJfRBKdvBIVjzd9QWPN2/tYjFMONVbR
	6hZU0k5Q57S5ftGCGR5fDDmPMTMdU9JHttA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1684259136; x=1684345536; bh=wBYZT0OYkMw2TLM13VW/L10+YF3tRMc4JyR
	//pK6kKY=; b=HJT5rvzrsM8s9tPzR6nci6ldrk5LDTxA9hdX+pqi9vE41/Fu2AD
	Gx2d0ih/RJPuU4BVqp7Y8z3uLn+yebQ5yujB+lPaZj7S27YX81E7Bshh/mevR0RF
	7CtBx8O2ZT8GKs1Js6s+mBJ5Eqa0SLNYd0WguZJ55efojjjbntGhDfAIH5e8GuE5
	Ss7egnenBo1YK34RNxNUGUPcxBw9zL08P0b6KSbKFBaqGSBEU70vK8qjW6TFiizQ
	dQlmK0DbScTWTQaT9CpZAfJGgshN6KfiR7BeJthEPuRuRTeFdAXaERbAvpi2QVXp
	ektRqGCslWB7Cw72p3wU5O/zLSmd5b3AwMQ==
X-ME-Sender: <xms:QMFjZMoAK2OPNcQm_1u0VC3EvO7oghx7gHlmPm8Cewapqx6EmNMnVw>
    <xme:QMFjZCruMgoq74UzUanNSr42TBdBQkRsqec395hH2h93kSSKHr-Wg2Pqk74VIT3LR
    ujrqb2DiAAmNf9CMCY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeehledgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvvefutgfgsehtqhertderreejnecuhfhrohhmpedf
    tehrnhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrf
    grthhtvghrnhepgfekueelgeeigefhudduledtkeefffejueelheelfedutedttdfgveeu
    feefieegnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiii
    gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:QMFjZBN8wQu2db93aF2AsslCg4m3O6XSlktv_KnD_80zcmxh4JNAsA>
    <xmx:QMFjZD5SQvdlsWY4df01KrZ4kUD-ZjCgKnloS6dgqGYXPP0K_KVe3Q>
    <xmx:QMFjZL58jK6CwjPRQ3srZpxvMjPKm9mY98DHfQjssPpD-YYDN5voxQ>
    <xmx:QMFjZDy2N_zTcpTAXLo6ta_tuOQ82FHVnQWlKuMnaHU1boX7gVR-BA>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 848A2B60089; Tue, 16 May 2023 13:45:36 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-431-g1d6a3ebb56-fm-20230511.001-g1d6a3ebb
Mime-Version: 1.0
Message-Id: <b53f3673-f6b1-4071-9bcf-9ae5815593eb@app.fastmail.com>
In-Reply-To: <20230516191245.4149c51a@barney>
References: <20230516074554.1674536-1-arnd@kernel.org>
 <20230516191245.4149c51a@barney>
Date: Tue, 16 May 2023 19:45:16 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>,
 "Arnd Bergmann" <arnd@kernel.org>
Cc: "Kalle Valo" <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>, "Nathan Chancellor" <nathan@kernel.org>,
 "Nick Desaulniers" <ndesaulniers@google.com>, "Tom Rix" <trix@redhat.com>,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 Netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev
Subject: Re: [PATCH] wifi: b43: fix incorrect __packed annotation
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_104541_329129_D5DB1ACA 
X-CRM114-Status: GOOD (  12.57  )
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

T24gVHVlLCBNYXkgMTYsIDIwMjMsIGF0IDE5OjEyLCBNaWNoYWVsIELDvHNjaCB3cm90ZToKPiBP
biBUdWUsIDE2IE1heSAyMDIzIDA5OjQ1OjQyICswMjAwCj4gQXJuZCBCZXJnbWFubiA8YXJuZEBr
ZXJuZWwub3JnPiB3cm90ZToKPgo+PiBiNDNfaXYgeyB1bmlvbiB7Cj4+ICAJCV9fYmUxNiBkMTY7
Cj4+ICAJCV9fYmUzMiBkMzI7Cj4+IC0JfSBkYXRhIF9fcGFja2VkOwo+PiArCX0gX19wYWNrZWQg
ZGF0YTsKPj4gIH0gX19wYWNrZWQ7Cj4+ICAKPj4gIAo+Cj4gT2gsIGludGVyZXN0aW5nLiBUaGlz
IGhhcyBwcm9iYWJseSBiZWVuIHRoZXJlIGZvcmV2ZXIuCj4gRGlkIHlvdSBjaGVjayBpZiB0aGUg
YjQzbGVnYWN5IGRyaXZlciBoYXMgdGhlIHNhbWUgaXNzdWU/CgpJIGhhZCBub3QgY2hlY2tlZCwg
YnV0IEkgc2VlIHRoYXQgaXQgZG9lcyBoYXZlIHRoZSBzYW1lIGJ1Zy4KCkkgb25seSBzZW50IHRo
aXMgb25lIGJlY2F1c2UgdGhlIGJ1aWxkIGJvdCAoaW5jb3JyZWN0bHkpCmJsYW1lZCBvbmUgb2Yg
bXkgcmVjZW50IHBhdGNoZXMgZm9yIGEgcmVncmVzc2lvbiBoZXJlLgpXaGljaCByZW1pbmRzIG1l
IHRoYXQgSSB3YXMgbWlzc2luZzoKClJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtw
QGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvb2Uta2J1aWxkLWFsbC8y
MDIzMDUxNjA3NDkuYXkxSEFveVAtbGtwQGludGVsLmNvbS8KClNob3VsZCBJIHJlc2VuZCB0aGlz
IGFzIGEgY29tYmluZWQgcGF0Y2ggZm9yIGJvdGggZHJpdmVycz8KCiAgIEFybmQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBs
aXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
