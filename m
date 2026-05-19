Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9B2ACD4F5B
	for <b43-dev@archiver.kernel.org>; Tue, 19 May 2026 21:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hG3Aiwc5XuiUjRmDDRNsrG3qhtB3VeUdiigIJmJy77w=; b=uAJE3gi81t2uX9
	ChyFFbWjra6jecQN0vJ5LPAurJMO4FpyxRg4wA2ybhNCE6JSEns/UXn0UBDSHguyA9UbK5qWzNNF9
	LwP+9VUBs0PasfWh1vV7FBC41cJWH9iOoAsupGviyVVit55a2kZz6cW74eTCMAqy2eaFj6qf7nTfI
	XZ4NhX9pBuhP7xBGbb0mQY8peml4vtyYu6TcCx5rRROJyyOgMXwAf4wzfQUrSXADXVZDLm7Er2Gm+
	AC0pgIVcfenvIhrjW2YGMwhSPJP8GeeXPs97UJ45D1UPOkVEqoEmQV+mPlWpUdJhVdt6rambEx0xW
	ruH6A7jMsbh0F9kOF4Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPRab-00000002nXQ-2RGk;
	Tue, 19 May 2026 21:02:57 +0000
Received: from smtpdh19-2.aruba.it ([62.149.155.149])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPRaX-00000002nUg-1ngZ
	for b43-dev@lists.infradead.org;
	Tue, 19 May 2026 21:02:56 +0000
Received: from DELL-MOBILE03.ad.smart.it ([79.1.230.118])
	by Aruba SMTP with ESMTPSA
	id PRaMwASX8clBZPRaQwVBEu; Tue, 19 May 2026 23:02:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1779224566; bh=ujZgbuLmLq7XJpjZV4Ih/yi4oCXNZPTLTJydWGuDM5w=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=m7NDfQmGvRbxNVrVY8UTUKLKUptB85R0iOmDyIjuYhVz2Lq9MzRpx7cr8YE8gTZd6
	 D7/F3/egDImxH8/Kix+/s3I/LsDqaMRTrczsS33HsKCfKfBniYFFu3xPa9ACIHb/fk
	 4+OWfCDw0Wmg2FL1qHeiIxm5M2qfgmFHkbOeNs9eziX4MvHlA3+10xKIX8Xj0ZLDZ4
	 18eATkSAeU4LI8G2ecyd9tp8Gm8LW0mKObz7m5wwI8MpYneb6hpsA5PkvYjeqmSQCI
	 yAb9rDl63uUieUeBxJDI+Wt7q1zlGHkiyRGBPGLqISWl1cSDAFPx+NWCOTToVZxqJR
	 ff5Wnf56DWqKg==
Date: Tue, 19 May 2026 23:02:41 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 kvalo@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] b43: complete N-PHY rev 8 + radio 2057 rev 8
 support
Message-ID: <20260519230241.49489a8f@DELL-MOBILE03.ad.smart.it>
In-Reply-To: <20260519175812.7ce97ba1@barney>
References: <8c0a07d2-9ec9-43d6-bdf7-f625bbb4a38a@mythread.it>
	<20260519175812.7ce97ba1@barney>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfFgs5MMznpo/fxx8eqZIOPS7R3UkKsdWw4iyVw0Me6g6caCbCepXEDQTB8AIw/3XQvnN3kUUif//2Dejf9/I6AHJ14zINjx70Rou0Tf6piHZXJvE8/aa
 +IRCRemlvHAPe4XnRnCSUIhe4YN9iDiRrIr4sKR7qTPuVfi8Wy6k2i7tC2vecekZgVfRY7iXG0n3X1ocCIx3qm/mYG6VM8eLhS72qwUtSqzjnCduMmOa2nXe
 4YfLJlAZd+4NPlaIj3Qt0XPF+p6Uln/X4IlPwIVBx7q3Xt1/gP6HAgZoXs6N6vTmDQdXGEO8mRBFU9rtC+ScdgBYC8V2j3VhUUT0zAhqirosAUe8ECZtlYhx
 D7HBRY69
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_140253_926409_7C78B4AB 
X-CRM114-Status: GOOD (  15.76  )
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

T24gVHVlLCAxOSBNYXkgMjAyNiAxNzo1ODoxMiArMDIwMApNaWNoYWVsIELDvHNjaCA8bUBidWVz
LmNoPiB3cm90ZToKCj4gT24gTW9uLCAxOCBNYXkgMjAyNiAwMzo0OTozMyArMDIwMAo+IEFsZXNz
aW8gRmVycmkgPGFsZXNzaW8uZmVycmlAbXl0aHJlYWQuaXQ+IHdyb3RlOgo+IAo+ID4gVGhpcyBz
ZXJpZXMgY29tcGxldGVzIGI0MyBzdXBwb3J0IGZvciB0aGUgQnJvYWRjb20gTi1QSFkgcmV2aXNp
b24gOAo+ID4gcGFpcmVkIHdpdGggcmFkaW8gMjA1NyByZXZpc2lvbiA4LiBiNDMgYWxyZWFkeSBz
dXBwb3J0cyB0aGUKPiA+IHN1cnJvdW5kaW5nIFBIWSBmYW1pbHkgLSBOLVBIWSByZXYgOCB3aXRo
IHJhZGlvIDIwNTcgcmV2IDUgYW5kIHJldgo+ID4gNyBhcmUgaGFuZGxlZCwgYW5kIHJldiAxNiB3
aXRoIHJhZGlvIDIwNTcgcmV2IDkgaXMgaGFuZGxlZCAtIGJ1dAo+ID4gdGhlIHJldiA4ICsgcmV2
IDggY29tYmluYXRpb24gZmFsbHMgdGhyb3VnaCBmb3VyIGRpc3BhdGNoZXIgZ2FwczogIAo+IAo+
ID4gQWxlc3NpbyBGZXJyaSAoNik6Cj4gPiAgIGI0MzogYWRkIGQxMSBjb3JlIHJldmlzaW9uIDB4
MTYgdG8gaWQgdGFibGUKPiA+ICAgYjQzOiByb3V0ZSBkMTEgY29yZXJldiAyMiB0byAyNC1iaXQg
aW5kaXJlY3QgcmFkaW8gYWNjZXNzCj4gPiAgIGI0Mzogc3VwcG9ydCByYWRpbyAyMDU3IHJldiA4
Cj4gPiAgIGI0MzogYWRkIElQQSBUWCBnYWluIHRhYmxlIGZvciBOLVBIWSByOCArIHJhZGlvIDIw
NTcgcjgKPiA+ICAgYjQzOiBhZGQgY2hhbm5lbCBpbmZvIHRhYmxlIGZvciBOLVBIWSByOCArIHJh
ZGlvIDIwNTcgcjgKPiA+ICAgYjQzOiBhZGQgUkYgcG93ZXIgb2Zmc2V0IGZvciBOLVBIWSByOCAr
IHJhZGlvIDIwNTcgcjggIAo+IAo+IAo+IEluIGdlbmVyYWwgdGhpcyBsb29rcyBPay4KPiBGcm9t
IHRoZSBzdHlsZSBJIGFzc3VtZSB0aGF0IHRoaXMgaXMgQUkgZ2VuZXJhdGVkLCByaWdodD8KPiBJ
ZiBzbywgY2FuIHlvdSB0ZWxsIHVzIGEgYml0IG1vcmUgYWJvdXQgdGhlIGlucHV0cyB1c2VkIGZv
ciB0aGUgQUk/Cj4gV2hhdCBpbmZvcm1hdGlvbiBpcyB0aGlzIGltcGxlbWVudGF0aW9uIGJhc2Vk
IG9uPwo+IAoKVGhlIHBhdGNoc2V0IGlzIHRlc3RlZCBvbiBteSBvd24gRExpbmsgRFNMIDM1ODBM
IHJvdXRlciBhbmQgZ2VuZXJhdGVkIGJ5CmNsYXVkZSBmcm9tIG91ciBzaGFyZWQgbm90ZXMsIGkg
dGhlbiByZXZpZXdlZCBpdCBmb3Igc2FuaXR5IGFuZAp2ZXJpZmllZCBpdCBieSBuYXZpZ2F0aW5n
IGZyb20gdGhlIHJvdXRlciB3aXRoIG1vZGlmaWVkIGI0MyBkcml2ZXIgd2l0aApteSBwaG9uZS4K
VGhlIHNoYXJlZCBub3RlcyB3ZXJlOiBsb2dzIGFuZCBkdW1wcyB0YWtlbiBmcm9tIHRoZSBwcm9w
cmlldGFyeSBiaW5hcnkKZHJpdmVyIHdoaWxlIHJ1bm5pbmcgdGhlIHN0b2NrIGZpcm13YXJlIGlu
IHRoZSByb3V0ZXIsIGZpbGVzIGZyb20KYnJjbXNtYWMgdGhhdCBoYWQgc29tZSBkZXRhaWxzIGZv
ciByZXYgMjIsIEdQTCByZWxlYXNlZCBicm9hZGNvbSBjb2RlCmluIHRoZSBHUEwgZHVtcCBvZiB0
aGUgdmVuZG9yLCAucm9kYXRhIHBpZWNlcyBmcm9tIHRoZSBiaW5hcnkgZHJpdmVyIGFuZApmaW5h
bGx5IGxvZ3MgYW5kIGR1bXBzIGZyb20gdGhlIGxpdmUgYjQzIHJ1bm5pbmcgaW4gdGhlIHJvdXRl
ciBmbGFzaGVkCndpdGggb3BlbndydC4gR2F0aGVyaW5nIGFsbCBvZiB0aGlzIHdhcyBhIHdlZWsg
bG9uZyB0YXNrLCBhbmQgd3JpdGluZwpjb2RlIHdhcyBvbmx5IGEgc21hbGwgcGFydCBvZiBpdCwg
bGlrZSBpbiB0aGUgNSUgcmFuZ2UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiNDMtZGV2IG1haWxpbmcgbGlzdApiNDMtZGV2QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iNDMtZGV2
Cg==
