Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBF5FCA6017
	for <b43-dev@archiver.kernel.org>; Sat, 10 Oct 2026 14:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EkNORAaijcXb4q17ulFckEaj4u0lA3qQ6GuTGtPPDc=; b=jYcGYok5r0fJQx
	YIm6vHElS8sd5RzfN31aiGNaxhmoj/4Z/YrIAhTeooCS9zEUM+ALSYwFWrwEU7c8GfoyEstjo7xhh
	jK7ys6+eEUZCA1Sl4UwieXMGcgrO2JotefIHD4E6wYl67ZnAdJRjJobEAiYgvj9tm62kOjxdZg/0K
	+kUVGokfSsae0TmC38xtKMd1mwG84C/10KsiRUjXWaJTpKluiCtWIrz6K5XG05u4UABbaGr9kwEVz
	lRX260XSdug31m2qsxxCTCtwGJDVQgT6IPbCXsSpKiCNfoAK+4JA58WKiu8Ax6rHWIM/SxWmmPcXE
	CzqcD2F6/RxKRaEzlOKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXmj-000000089LJ-2twe;
	Sat, 10 Oct 2026 14:10:49 +0000
Received: from smtpdh19-1.aruba.it ([62.149.155.148])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXmg-000000089Kq-2bfl
	for b43-dev@lists.infradead.org;
	Sat, 10 Oct 2026 14:10:48 +0000
Received: from fedora ([94.34.125.0])
	by Aruba SMTP with ESMTPSA
	id FXmdxl0jOQG1DFXmdxp4Wy; Sat, 10 Oct 2026 16:10:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1791641444; bh=Iyl6TGaVibC42zbsZ2aQAgRKXV8UOHZwL3f1fJOabgQ=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=MkP1R+JGcSin1spya7qnNInITaMM+Gjm3FqYldhRnlyZGJ9Rm5kUxgQyIz+fqEGkG
	 nMHfFdJ+wEWF8tV2IR3TbEiqiPILR2u5BmqGwTZDhFpAMr+k+oB5N0sA+Xc2DxS/p0
	 jExeY31BNL8Z8mPOsjlqdttD32Z4lEQ7EbRR7dcznYqV5qBys0rdQWqF0ft7IPMo2K
	 1bJxdUcjvXefgB32yBQ78tkj1hR7x+bzzXQcVDfnVncW8qQGe+upUnOCNqEhD3PTsj
	 SbUYTC3TxlbcsOXpSYW4LaQ7JkjfguhE5SLf3cRxV8pkXcd2+ckkxJ+FaOhCOBcyA3
	 ihYjkNtyaqvOg==
Date: Sat, 10 Oct 2026 16:10:43 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: Re: b43: ac rev1 captured packets with ampdu
Message-ID: <20261010161043.5dd21203@fedora>
In-Reply-To: <1NF3n26c1UQ1YcYwXT-JD8OKl7dIr_22x7bgdLLwLHkWHnKlZAtcYw7504hufNHGIBEo3qr8atDAoKtK6qxtLUfVWhVSazjaIH5QPYGAgs0=@proton.me>
References: <20261009173133.0e534ec2@fedora>
	<j7yDoG5_QzsvHn2hPYg-t1IRCKILne4bSf-E0ix15-48INcyh3HHnBydtcLdyWJCXh61NfsV1HawpRIBKpsGYzVzAfMCJIo3Z4Q-c20M15E=@proton.me>
	<1NF3n26c1UQ1YcYwXT-JD8OKl7dIr_22x7bgdLLwLHkWHnKlZAtcYw7504hufNHGIBEo3qr8atDAoKtK6qxtLUfVWhVSazjaIH5QPYGAgs0=@proton.me>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfKbL/v6FFsbOLu3r63I+xWYyxvPT1UQtO8fj7kKcOjWJEe5keWRHjLoHGftXSX2gAKii3hqjHxBiJ/EOHjOATYF4OHvpMwD4bn6jNe36aLV0JUc2L4Fx
 PjYChlsP+jUN0SICTZmjPg82QOA7niBCJ6I3ejXWXBLlWL8XOJPyQVKQlG/w8w09tIWdqcRS3E1/8QPEKG+Y12yt4oQ0Wl++oA+oE00g6MEX17gYQW3RQAMQ
 ppadGR9GcTYBokUNR00zRag6RCvbHUcZ5LTLc7v5Qf0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_071046_841703_6FBDA428 
X-CRM114-Status: GOOD (  14.18  )
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

SWwgZ2lvcm5vIFNhdCwgMTAgT2N0IDIwMjYgMTI6NTk6MTAgKzAwMDAKImFuZHJlYXMud2VuZGxl
ZGVyIiA8YW5kcmVhcy53ZW5kbGVkZXJAcHJvdG9uLm1lPiBoYSBzY3JpdHRvOgoKPiBIaSBBbGVz
c2lvLAo+IAo+IFRocmVlIGZpbmRpbmdzIG9uIHRoZSBNYWNCb29rQWlyNiwxICgyLjQgR0h6LCB1
Y29kZSA4MzIuMTI3KSwgYWxsCj4gdGhhbmtzIHRvIHlvdXIgY29kZSBhbmQgY2FwdHVyZXM6Cj4g
Cj4gMS4gUlggbGV2ZWwuIFlvdXIgcnhnYWluY3RybCB3cml0ZSAweDE3MjYgPSAweDAwMGMgaXMg
d29ydGggMjYgZEIKPiBoZXJlLiBXaXRoIGl0IG15IHJlbWFpbmluZyBQSFkgdGFibGUgcmVwbGF5
IGlzIGdvbmUuIDIuIFNlY29uZCBUWAo+IGNoYWluLiBUaGUgY2hpcGNvbnRyb2wgfD0gMHg4IGF0
IHRoZSBlbmQgb2YgeW91ciBmZW0yX3N1YjFfc2V0dXAgaXMKPiB3aGF0IHR1cm5zIG9uIFRYIG9u
IGNvcmXCoDEuIEkgaGFkIHBvcnRlZCB0aGUgdHdvIFBIWSB3cml0ZXMgYnV0IG5vdAo+IHRoYXQg
b25lOiBjb3JlIDEgZGlkIG5vdCByYWRpYXRlIGFuZCBNQ1MgOOKAkzE1IGZhaWxlZCBjb21wbGV0
ZWx5LiBUaGUKPiBiaXQgc3Vydml2ZXMgYSBtb2R1bGUgcmVsb2FkLCBzbyBpdCBvbmx5IHNob3dz
IGFmdGVyIGEgY29sZCBib290LiAzLgo+IEEtTVBEVSBUWCB3b3Jrcywgd2l0aCB0aGUgbWljcm9j
b2RlIGJ1aWxkaW5nIHRoZSBhZ2dyZWdhdGVzIGFzIGluCj4geW91ciBub3Rlcy4gV2hhdCBpdCBu
ZWVkZWQgYmV5b25kIDB4NDVjMCBhbmQgdGhlIGNhY2hlIGluZm86Cj4gICAgLSB0aGUgZnJhbWUn
cyBzZXFfY3RybCBpbiB0aGUgaGVhZGVyJ3Mgc2VxdWVuY2UgZmllbGQ7Cj4gICAgLSBjYWNoZSBp
bmZvIGJ5dGVzIDDigJMxIHplcm8gd2hlbiBlbmNyeXB0aW5nIGluIHNvZnR3YXJlLiBUaGUgc3Rv
Y2sKPiA1MCAwNCBtYWtlcyB0aGUgbWljcm9jb2RlIGVuY3J5cHQgYWdhaW46IHRoZSBBUCBhY2tz
IHRoZSBmcmFtZSBhbmQKPiBkcm9wcyBpdDsKPiAgICAtIHNlc3Npb24gZnJhbWVzIHJlcG9ydGVk
IHRvIG1hYzgwMjExIHdpdGgKPiBJRUVFODAyMTFfVFhfU1RBVF9BTVBEVSwgb3IgbWluc3RyZWxf
aHQgaWdub3JlcyB0aGVtOwo+ICAgIC0gdGhlIGF0dGVtcHQgY291bnQgb2YgYSBzdGF0dXMgKHdv
cmQgMiwgYml0cyA3OjApIGRpdmlkZWQgYnkgaXRzCj4gTVBEVSBjb3VudDsKPiAgICAtIGEgcmVx
dWV1ZSBpbiB0aGUgZHJpdmVyIGZvciBNUERVcyB0aGUgbWljcm9jb2RlIHJlcG9ydHMgdW5hY2tl
ZC4KPiBJdCBnaXZlcyB1cCBhZnRlciBhIGZldyBhdHRlbXB0cywgYW5kIHdpdGhvdXQgdGhlIHJl
cXVldWUgVENQCj4gY29sbGFwc2VzLgo+IAo+ICAgIFJlc3VsdDogYWJvdXQgMzAgTWJpdC9zIHVw
IGF0IEhUMjAgb3ZlciAxNSBtaW51dGVzLCBhZ2FpbnN0IDIwIGF0Cj4gbGVnYWN5IHJhdGVzLgo+
IAo+IE9uZSBxdWVzdGlvbjogbXkgVFggZ2FpbiBzaXRzIGF0IGluZGV4IDY0IG9mCj4gYWNwaHlf
dHhnYWluX2VwYV8yZ18yMDY5cmV2NCAodGhlIHJlc2V0IHZhbHVlKSwgYW5kIGdvaW5nIHRvIGlu
ZGV4IDk2Cj4gY29sbGFwc2VzIHRoZSBsaW5rIGF0IDEgbSBmcm9tIHRoZSBBUC4gSGF2ZSB5b3Ug
c2VlbiB3aGF0IGEgaGVhbHRoeQo+IGJvYXJkIHRyYW5zbWl0cyB3aXRoIG9uIDIuNCBHSHosIG9y
IGlzIHRoZXJlIG1vcmUgdG8gdGhlIFBBL0ZFTSBzZXR1cAo+IHRoYW4gZmVtMl9zdWIxX3NldHVw
Pwo+IAo+IFRoYW5rcywgQW5kcmVhcwoKSW5jcmVhc2luZyBiaXRzIGRlbnNpdHkgcGVyIGFpciB0
aW1lIGNhdXNlIHRyYW5zbWlzc2lvbiBwb3dlciB0byBkcm9wLAphcyB0aGUgbW9kdWxhdGlvbiBp
cyBtb3JlIHNlbnNpdGl2ZSB0byBkaXN0b3J0aW9uLiBCeSByYWlzaW5nIHRoZSBpbmRleAp5b3Ug
cmVkdWNlIHBvd2VyLCBzbyBpdCB3b3JrcyBiZXR0ZXIgbmVhciB0aGUgZGV2aWNlIGFuZCBtdWNo
IHdvcnNlCmZyb20gYWZhci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
