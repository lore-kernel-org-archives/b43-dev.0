Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79FB0C77B75
	for <b43-dev@archiver.kernel.org>; Tue, 16 May 2023 18:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kF3EkjJvRZsoQM9DRSGcEnk43NIabnsf568vcwm4MVs=; b=05OL+ka5aotJb/
	o18IFp5sdjYUfl6NdtnvJbnTZW5eg3DfMb6zEEoAcvXDcLJ7GLo1UI8oJJlv6pcBJC+VJTvQM8sCr
	HOa+kZX8HCC+EnfP+f95t70z4UmmE9RSJcaH+YqmwoSNthavUwPBmz7beoujsQbOQI+oYwfR2rs1A
	N7KfWKhtsHQaHhv2wdT/QHB0/IjbzDg7L4YOZ7amRc7qnt7rDhiE7MRGM4t8V03etubheou7i90R8
	JJLDRkW4tNYbrjd9w018kkfxCiHK3rcqOhy6kWWPpg0ETg2P6OFYKRehUso/Xt/5puWL8By2l41pj
	R8Bd05vTUlmivIxx13Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyzVf-006mFk-05;
	Tue, 16 May 2023 18:34:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyzVb-006mF1-0Y
	for b43-dev@lists.infradead.org;
	Tue, 16 May 2023 18:34:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 81A5763DCB;
	Tue, 16 May 2023 18:34:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37D2EC433D2;
	Tue, 16 May 2023 18:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684262089;
	bh=K6IQlUMImZg44Vucetu9FZCJAuzhuhjWxNkQDOJK0to=;
	h=From:To:Cc:Subject:Date:From;
	b=DmnzFKITx7dwwUOrkaysVY+hDSGmnbuB3TmQGburvGwYclHTT876/ZCt1aua9Oi48
	 6Xr3SIZ+cW3xDlKF/Kq3bOwvFB96P2BnY9a6kotCZ1NvN+tv39bihVANTo62fgajRZ
	 xjg1448a4N308AcmYJD0oLYl/1m19kvMvZ2nBQ3CorjM69ZOXQyjZ4qtFLjqjt0xb8
	 FAunmcs5MnCMabia5gDB1dDlpXnuX6NMEULdgWKQ3xd9+NEI7c8AGpzgMWxOGDFYUp
	 gOF/dhUTg3ANFOv+MI9cmQn4WM66mB55ZYMwL2HoQ+RcqDQdPrKjDXwDL+5XXbm5Sg
	 Kiujjm/1eW/7A==
From: Arnd Bergmann <arnd@kernel.org>
To: Kalle Valo <kvalo@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	=?UTF-8?q?Michael=20B=C3=BCsch?= <m@bues.ch>,
	kernel test robot <lkp@intel.com>,
	Simon Horman <simon.horman@corigine.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>,
	linux-wireless@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev
Subject: [PATCH] [v2] wifi: b43: fix incorrect __packed annotation
Date: Tue, 16 May 2023 20:34:22 +0200
Message-Id: <20230516183442.536589-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_113451_292379_999F637A 
X-CRM114-Status: GOOD (  16.45  )
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

RnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KCmNsYW5nIHdhcm5zIGFib3V0IGFu
IHVucGFja2VkIHN0cnVjdHVyZSBpbnNpZGUgb2YgYSBwYWNrZWQgb25lOgoKZHJpdmVycy9uZXQv
d2lyZWxlc3MvYnJvYWRjb20vYjQzL2I0My5oOjY1NDo0OiBlcnJvcjogZmllbGQgZGF0YSB3aXRo
aW4gJ3N0cnVjdCBiNDNfaXYnIGlzIGxlc3MgYWxpZ25lZCB0aGFuICd1bmlvbiAodW5uYW1lZCB1
bmlvbiBhdCAvaG9tZS9hcm5kL2FybS1zb2MvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20v
YjQzL2I0My5oOjY1MToyKScgYW5kIGlzIHVzdWFsbHkgZHVlIHRvICdzdHJ1Y3QgYjQzX2l2JyBi
ZWluZyBwYWNrZWQsIHdoaWNoIGNhbiBsZWFkIHRvIHVuYWxpZ25lZCBhY2Nlc3NlcyBbLVdlcnJv
ciwtV3VuYWxpZ25lZC1hY2Nlc3NdCgpUaGUgcHJvYmxlbSBoZXJlIGlzIHRoYXQgdGhlIGFub255
bW91cyB1bmlvbiBoYXMgdGhlIGRlZmF1bHQgYWxpZ25tZW50CmZyb20gaXRzIG1lbWJlcnMsIGFw
cGFyZW50bHkgYmVjYXVzZSB0aGUgb3JpZ2luYWwgYXV0aG9yIG1peGVkIHVwIHRoZQpwbGFjZW1l
bnQgb2YgdGhlIF9fcGFja2VkIGF0dHJpYnV0ZSBieSBwbGFjaW5nIGl0IG5leHQgdG8gdGhlIHN0
cnVjdAptZW1iZXIgcmF0aGVyIHRoYW4gdGhlIHVuaW9uIGRlZmluaXRpb24uIEFzIHRoZSBzdHJ1
Y3QgaXRzZWxmIGlzCmFsc28gbWFya2VkIGFzIF9fcGFja2VkLCB0aGVyZSBpcyBubyBuZWVkIHRv
IG1hcmsgaXRzIG1lbWJlcnMsIHNvIGp1c3QKbW92ZSB0aGUgYW5ub3RhdGlvbiB0byB0aGUgaW5u
ZXIgdHlwZSBpbnN0ZWFkLgoKQXMgTWljaGFlbCBub3RlZCwgdGhlIHNhbWUgcHJvYmxlbSBpcyBw
cmVzZW50IGluIGI0M2xlZ2FjeSwgc28KY2hhbmdlIGJvdGggYXQgdGhlIHNhbWUgdGltZS4KCkFj
a2VkLWJ5OiBNaWNoYWVsIELDvHNjaCA8bUBidWVzLmNoPgpSZXBvcnRlZC1ieToga2VybmVsIHRl
c3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4gPHNpbW9u
Lmhvcm1hbkBjb3JpZ2luZS5jb20+ClRlc3RlZC1ieTogTGFycnkgRmluZ2VyIDxMYXJyeS5GaW5n
ZXJAbHdmaW5nZXIubmV0PgpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQt
YWxsLzIwMjMwNTE2MDc0OS5heTFIQW95UC1sa3BAaW50ZWwuY29tLwpTaWduZWQtb2ZmLWJ5OiBB
cm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2Jy
b2FkY29tL2I0My9iNDMuaCAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvbmV0L3dpcmVsZXNz
L2Jyb2FkY29tL2I0M2xlZ2FjeS9iNDNsZWdhY3kuaCB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9iNDMuaCBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2Fk
Y29tL2I0My9iNDMuaAppbmRleCA5ZmM3YzA4OGE1MzkuLjY3YjRiYWMwNDhlNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL2I0My5oCisrKyBiL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL2Jyb2FkY29tL2I0My9iNDMuaApAQCAtNjUxLDcgKzY1MSw3IEBAIHN0cnVj
dCBiNDNfaXYgewogCXVuaW9uIHsKIAkJX19iZTE2IGQxNjsKIAkJX19iZTMyIGQzMjsKLQl9IGRh
dGEgX19wYWNrZWQ7CisJfSBfX3BhY2tlZCBkYXRhOwogfSBfX3BhY2tlZDsKIAogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDNsZWdhY3kvYjQzbGVnYWN5Lmgg
Yi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9iNDNsZWdhY3kvYjQzbGVnYWN5LmgKaW5k
ZXggNmIwY2VjNDY3OTM4Li5mNDkzNjVkMTQ2MTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL2Jyb2FkY29tL2I0M2xlZ2FjeS9iNDNsZWdhY3kuaAorKysgYi9kcml2ZXJzL25ldC93
aXJlbGVzcy9icm9hZGNvbS9iNDNsZWdhY3kvYjQzbGVnYWN5LmgKQEAgLTM3OSw3ICszNzksNyBA
QCBzdHJ1Y3QgYjQzbGVnYWN5X2l2IHsKIAl1bmlvbiB7CiAJCV9fYmUxNiBkMTY7CiAJCV9fYmUz
MiBkMzI7Ci0JfSBkYXRhIF9fcGFja2VkOworCX0gX19wYWNrZWQgZGF0YTsKIH0gX19wYWNrZWQ7
CiAKICNkZWZpbmUgQjQzbGVnYWN5X1BIWU1PREUocGh5dHlwZSkJKDEgPDwgKHBoeXR5cGUpKQot
LSAKMi4zOS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYjQzLWRldgo=
