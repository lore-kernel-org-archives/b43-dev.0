Return-Path: <SRS0=pb/9=JI=lists.infradead.org=b43-dev-bounces+b43-dev=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02959C433B4
	for <b43-dev@archiver.kernel.org>; Sun, 11 Apr 2021 18:56:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 785DD6105A
	for <b43-dev@archiver.kernel.org>; Sun, 11 Apr 2021 18:56:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 785DD6105A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=molgen.mpg.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i6g2rGaHjsIkjBm0HGfy0Nfp0nYswXKOlt6F9oyLlpU=; b=jNAaCokMme7n6V
	QAmTBeld8vKdQyh9NjqeUUguyxBtVk4FVh5oUxRVw0psldoB9UPMjKBSNLsA75l5I1akkfs1WN6pR
	ZgbhuJr2OQbdJNqOctYogjYuuwdOf0/8LSN29gmC5Oy4vy53uE7la8KtfqS7GsCxQk+jLvD89Ac5F
	XzScaJhyZlPUlXAQhXzoweyO4nKww8NFpcUir+JNEN3mxAtVkA4+3p0JFNINgRwexQrU01Baeo3vJ
	/O+gnp/YltxuXe+VJ7VKRedcTWUmDJNt9UnwlyhGjw1fnOPtF2w4lZMI0xYyhoRrx+ysC7Ona4+oC
	uWVgdItBQaqc1q42dxjQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVfFW-004wdn-2t; Sun, 11 Apr 2021 18:55:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVfFL-004wdV-35
 for b43-dev@desiato.infradead.org; Sun, 11 Apr 2021 18:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=+6c2k/RUrVZKOWRhFRj2RErcqlp4co/XIfweNxUpvkQ=; b=FsZy6ujsToszv9aKGBRvtT6iaF
 +wOU9YwzkTpmY9ed0s8yoRqFAfw2YfYjwgRmYWvFn6Ys4GodOc1seHl0L+Zc5JPFHFThzPOh6OVBu
 E0Z7rsSivggXiNGqBxs8Obxzsh/1coCsHKmhACi7omSR5fEzsP4UzvFo6aH9kvzNtzuiE99v0TcCX
 KNy9HlePHlj9hApV9PYAcj5NZzqdvne7Gt4rRWN/oL2XR+VXFVZzmXjEmzRxv+hX1KpmmLrVSte/k
 omJtoLOas5rlw+RlGtIhUNCDQ6GEZtT7OHEdU8+ayQ0YobguH1FZxjiftNvvBrHrDGoSL1eC7ncKC
 v9wNuTLw==;
Received: from mx3.molgen.mpg.de ([141.14.17.11] helo=mx1.molgen.mpg.de)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVfFG-005em9-LP
 for b43-dev@lists.infradead.org; Sun, 11 Apr 2021 18:55:45 +0000
Received: from [192.168.0.2] (ip5f5aef24.dynamic.kabel-deutschland.de
 [95.90.239.36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 894FB206473C4;
 Sun, 11 Apr 2021 20:55:28 +0200 (CEST)
To: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
Subject: b43: probe of bcma0:1 failed with error -524
Message-ID: <e97229b0-27e5-83a2-aa89-550dfddbeb23@molgen.mpg.de>
Date: Sun, 11 Apr 2021 20:55:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_115542_874403_14A13445 
X-CRM114-Status: GOOD (  10.80  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

RGVhciBMaW51eCBmb2xrcywKCgpPbiBhbiBBY2VyIFRyYXZlbE1hdGUgNTczNVosIExpbnV44oCZ
IGI0MyBkcml2ZXIgbG9ncyBhIHByb2JlIGVycm9yLgoKYGBgClsgICAgMC4wMDAwMDBdIExpbnV4
IHZlcnNpb24gNS4xMC4wLTUtYW1kNjQgCihkZWJpYW4ta2VybmVsQGxpc3RzLmRlYmlhbi5vcmcp
IChnY2MtMTAgKERlYmlhbiAxMC4yLjEtNikgMTAuMi4xIAoyMDIxMDExMCwgR05VIGxkIChHTlUg
QmludXRpbHMgZm9yIERlYmlhbikgMi4zNS4yKSAjMSBTTVAgRGViaWFuIAo1LjEwLjI2LTEgKDIw
MjEtMDMtMjcpClvigKZdClsgICAgMC4wMDAwMDBdIERNSTogQWNlciBUcmF2ZWxNYXRlIDU3MzVa
L0JBNTFfTVYsIEJJT1MgVjEuMTQgMDcvMjYvMjAxMQpb4oCmXQpbICAgIDUuMzAxNjY0XSBTdXBw
b3J0IGZvciBjb3JlcyByZXZpc2lvbnMgMHgxNyBhbmQgMHgxOCBkaXNhYmxlZCBieSAKbW9kdWxl
IHBhcmFtIGFsbGh3c3VwcG9ydD0wLiBUcnkgYjQzLmFsbGh3c3VwcG9ydD0xClsgICAgNS4zMDE2
ODJdIGI0MzogcHJvYmUgb2YgYmNtYTA6MSBmYWlsZWQgd2l0aCBlcnJvciAtNTI0ClsgICAgNS4z
MDM1MTBdIEJyb2FkY29tIDQzeHggZHJpdmVyIGxvYWRlZCBbIEZlYXR1cmVzOiBQTkxTIF0KWyAg
ICA1LjMxNjI2Nl0gZmJjb246IGk5MTVkcm1mYiAoZmIwKSBpcyBwcmltYXJ5IGRldmljZQpbICAg
IDUuMzE4NDIyXSB2aWRlb2RldjogTGludXggdmlkZW8gY2FwdHVyZSBpbnRlcmZhY2U6IHYyLjAw
ClsgICAgNS4zMjMyNDBdIHVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIg
dWFzClsgICAgNS4zMjU3MDBdIHVtcy1yZWFsdGVrIDMtNToxLjA6IFVTQiBNYXNzIFN0b3JhZ2Ug
ZGV2aWNlIGRldGVjdGVkClsgICAgNS4zNzgxMzNdIHNjc2kgaG9zdDQ6IHVzYi1zdG9yYWdlIDMt
NToxLjAKWyAgICA1LjM3ODMyOF0gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRy
aXZlciB1bXMtcmVhbHRlawpbICAgIDUuMzg3NTgyXSBicmNtc21hYyBiY21hMDoxOiBtZmcgNGJm
IGNvcmUgODEyIHJldiAyMyBjbGFzcyAwIGlycSAxNwpbICAgIDUuMzg4NDg5XSBpZWVlODAyMTEg
cGh5MDogU2VsZWN0ZWQgcmF0ZSBjb250cm9sIGFsZ29yaXRobSAnbWluc3RyZWxfaHQnClsgICAg
NS40MjU4MTNdIGJhdHRlcnk6IEFDUEk6IEJhdHRlcnkgU2xvdCBbQkFUMF0gKGJhdHRlcnkgcHJl
c2VudCkKWyAgICA1LjQ2Nzg3OV0gdGczIDAwMDA6MDU6MDAuMCBlbnA1czA6IExpbmsgaXMgZG93
bgpbICAgIDUuNDkxNzU4XSB1dmN2aWRlbzogRm91bmQgVVZDIDEuMDAgZGV2aWNlIDEuM00gV2Vi
Q2FtICgwNGYyOmIxZDgpClsgICAgNS41MjcwMjVdIGlucHV0OiAxLjNNIFdlYkNhbTogMS4zTSBX
ZWJDYW0gYXMgCi9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDoxZC43L3VzYjMvMy00LzMtNDox
LjAvaW5wdXQvaW5wdXQxNApbICAgIDUuNTI3NDc4XSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBp
bnRlcmZhY2UgZHJpdmVyIHV2Y3ZpZGVvClsgICAgNS41Mjc0NzldIFVTQiBWaWRlbyBDbGFzcyBk
cml2ZXIgKDEuMS4xKQpbICAgIDUuNTMyMzU2XSBicmNtc21hYyBiY21hMDoxOiBmaXJtd2FyZTog
ZGlyZWN0LWxvYWRpbmcgZmlybXdhcmUgCmJyY20vYmNtNDN4eC0wLmZ3ClsgICAgNS41MzI3MDld
IGJyY21zbWFjIGJjbWEwOjE6IGZpcm13YXJlOiBkaXJlY3QtbG9hZGluZyBmaXJtd2FyZSAKYnJj
bS9iY200M3h4X2hkci0wLmZ3ClsgICAgNS41ODY1NTFdIGJyY21zbWFjIGJjbWEwOjE6IGJyY21z
X29wc19ic3NfaW5mb19jaGFuZ2VkOiBxb3MgCmVuYWJsZWQ6IGZhbHNlIChpbXBsZW1lbnQpClsg
ICAgNS41ODY1NjFdIGJyY21zbWFjIGJjbWEwOjE6IGJyY21zX29wc19jb25maWc6IGNoYW5nZSBw
b3dlci1zYXZlIAptb2RlOiBmYWxzZSAoaW1wbGVtZW50KQpbICAgIDUuOTIwNTc1XSBicmNtc21h
YyBiY21hMDoxOiBicmNtc19vcHNfYnNzX2luZm9fY2hhbmdlZDogcW9zIAplbmFibGVkOiBmYWxz
ZSAoaW1wbGVtZW50KQpbICAgIDUuOTIwNTgzXSBicmNtc21hYyBiY21hMDoxOiBicmNtc19vcHNf
Y29uZmlnOiBjaGFuZ2UgcG93ZXItc2F2ZSAKbW9kZTogZmFsc2UgKGltcGxlbWVudCkKW+KApl0K
YGBgCgpUaGUgd2lyZWxlc3MgZGV2aWNlIHdvcmtzLCBhbmQgaXQgbG9va3MgbGlrZSBpdOKAmXMg
dXNpbmcgdGhlIGRyaXZlciAKYnJjbXNtYWMuIFNob3VsZCB0aGUgYjQzIGRyaXZlciBiZSBpbnZv
bHZlZCBmb3IgdGhlIGRldmljZSBoZXJlPyBUaG91Z2ggCkkgZG8gbm90IGtub3cgd2hhdCBlcnJv
ciAtNTI0IGlzIGV4YWN0bHkuCgoKS2luZCByZWdhcmRzLAoKUGF1bAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYjQzLWRldiBtYWlsaW5nIGxpc3QKYjQz
LWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYjQzLWRldgo=
