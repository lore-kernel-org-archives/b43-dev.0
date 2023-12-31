Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE8C5C46CD2
	for <b43-dev@archiver.kernel.org>; Sun, 31 Dec 2023 00:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6X1sHeLqe4iyR7bT2UUadq0g4vGsybuBaJdHY8ZPwE=; b=17CZK3xFfJuc3T
	T1ZjiGKT5IqoQG/pMOePIbqQ5RMfBrjXbddc8wSgd6FKK4U3HCfMyG9Z7i4XiceOL0iutUOjQTR3n
	KRMYbzoRB1eAunex76IQMD3Oi1mPcFsjC43l1kJYadSHCVRvtof1WiJI0MLbd7phcWvz4oDOtskaE
	ORkJsQrs71eTI8VWzx5OMEuSGUHfTfvqad2wt2hdB/GR/6KmDFGMt7yNmrBXv491J8QPwq8FLZ83g
	FMPfcc5s4KZr9uPggawhjngFh2c3/X8TpHsyYY0Ssu/sBy4ypnwUY7DbqCIBV4YR94fIJJzVkyG3D
	9QBOFa9MjqsSZt+oFX6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJjI6-003cUj-0u;
	Sun, 31 Dec 2023 00:02:54 +0000
Received: from mail-40133.protonmail.ch ([185.70.40.133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJjI3-003cTn-1D
	for b43-dev@lists.infradead.org;
	Sun, 31 Dec 2023 00:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1703980964; x=1704240164;
	bh=NzTBAR3J7TqlmV8UyI1UxV71fO1hFB/qVw412kUFJcE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=PIa1/FwtZTQ2ITyhtpzTfs/gpygu8d9/KHHnrAJtDv1Xd5EDlYHD6Y2lK2fBQ9hJ5
	 bYvAyydeznYtidorMjMsDKqDvUJLEsQG7YU3mpBKcgZ856InCtlZbQ46szMFVXkqZ+
	 YkPVnwZuRTRWAWiqUFJIUPbCza8ekXKxENakMYQvAhFXrywiO0+CAOiXYp86Z9pH/t
	 GcDY0PgdweMxYRN8J6TTRSBj9QtmAKvtlSs/0lGoZmawwaLBcA+65b652hn5S/TqeI
	 TH24Ow2ChDV66qWMggBShd0qnJR7A7cUas/eb3bRRWZH433l+cabad9veH4cu75skM
	 DvIjG2PA9s4/Q==
Date: Sun, 31 Dec 2023 00:02:32 +0000
To: Larry Finger <Larry.Finger@lwfinger.net>
From: Rahul Rameshbabu <sergeantsagara@protonmail.com>
Cc: Kalle Valo <kvalo@kernel.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH wireless 3/5] wifi: b43: Stop/wake correct queue in PIO Tx path when QoS is disabled
Message-ID: <874jfzutm5.fsf@protonmail.com>
In-Reply-To: <ca357d13-7da9-490f-9e69-4674c6ede057@lwfinger.net>
References: <20231230045105.91351-1-sergeantsagara@protonmail.com> <20231230045105.91351-4-sergeantsagara@protonmail.com> <cb9dcb49-ad94-40df-9f01-a28df3daf6c3@lwfinger.net> <877ckvwk5v.fsf@protonmail.com> <ca357d13-7da9-490f-9e69-4674c6ede057@lwfinger.net>
Feedback-ID: 26003777:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_160251_572637_6BECECF6 
X-CRM114-Status: GOOD (  11.76  )
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

T24gU2F0LCAzMCBEZWMsIDIwMjMgMTY6MjM6NTggLTA2MDAgIkxhcnJ5IEZpbmdlciIgPExhcnJ5
LkZpbmdlckBsd2Zpbmdlci5uZXQ+IHdyb3RlOgo+IE9uIDEyLzMwLzIzIDEzOjQzLCBSYWh1bCBS
YW1lc2hiYWJ1IHdyb3RlOgo+PiBVbmZvcnR1bmF0ZWx5LCBuZXcgZmlybXdhcmUgd291bGQgbm90
IHByZXZlbnQgdGhlIG5lZWQgdG8gZml4IHVwIHRoZQo+PiBjb2RlIHdpdGggcmVnYXJkcyB0byBR
b1MgYmVpbmcgZGlzYWJsZWQgdmlhIHRoZSBrZXJuZWwgcGFyYW1ldGVyIG9yCj4+IHVzaW5nIE9w
ZW5GVy4gVGhhdCBzYWlkLCBuZXcgZmlybXdhcmUgY291bGQgaGVscCB1cyBkcm9wIHRoZSBmaWZ0
aCBwYXRjaAo+PiBpbiB0aGlzIHNlcmllcy4gSSBhbSB0aGlua2luZyBhYm91dCB1c2luZyBiNDMt
ZndjdXR0ZXIgdG8gZXh0cmFjdAo+PiBwcm9wcmlldGFyeSBmdyBmcm9tIGEgbmV3ZXIgcmVsZWFz
ZSBvZiBicm9hZGNvbS13bCB0byBzZWUgaWYgdGhhdCBtYWtlcwo+PiBhIGRpZmZlcmVuY2UuIFRo
YXQgc2FpZCwgSSBhbSBhIGJpdCBwdXp6bGVkIHNpbmNlIHRoZSBkZXZpY2UgSSBhbQo+PiB0ZXN0
aW5nIG9uIHJlbGVhc2VkIGluIGVhcmx5IDIwMTEsIGFuZCBJIHVzZWQgZmlybXdhcmUgcmVsZWFz
ZWQgaW4gbGF0ZQo+PiAyMDEyLgo+Cj4gVW5mb3J0dW5hdGVseSwgaXQgaXMgdmVyeSBkaWZmaWN1
bHQgdG8gZ2V0IHRoZSBwYXJhbWV0ZXJzIGZvciBmd2N1dHRlciBmcm9tIGFuCj4geDg2IGJpbmFy
eS4gU29tZSBvZiB0aGUgb3RoZXIgYXJjaGl0ZWN0dXJlcyBhcmUgZWFzaWVyLgoKSnVzdCB0cmll
ZCB0aGlzIHdpdGggdGhlIHg4NiBiaW5hcnkganVzdCBiZWNhdXNlIGFuZCByYW4gaW50byBleHRy
YWN0aW9uCmlzc3VlcyBhcyBleHBlY3RlZC4gSSBjb3VsZCBub3QgZmluZCBvdGhlciBhcmNoaXRl
Y3R1cmUgb3B0aW9ucyBmcm9tCkJyb2FkY29tJ3MgZG93bmxvYWQgcGFnZSwgYnV0IEkgbWF5IG5v
dCBoYXZlIGJlZW4gbG9va2luZyB3ZWxsIGVub3VnaC4uLgoKICDina8gYjQzLWZ3Y3V0dGVyIC4v
d2xjX2h5YnJpZC5vX3NoaXBwZWQKICBTb3JyeSwgdGhlIGlucHV0IGZpbGUgaXMgZWl0aGVyIHdy
b25nIG9yIG5vdCBzdXBwb3J0ZWQgYnkgYjQzLWZ3Y3V0dGVyLgogIFRoaXMgZmlsZSBoYXMgYW4g
dW5rbm93biBNRDVzdW0gNjg4OWRiZDI0YWJmODAwNmRlNWNjNmVkZGQxMzg1MTguCgogIGh0dHBz
Oi8vd3d3LmJyb2FkY29tLmNvbS9zdXBwb3J0L2Rvd25sb2FkLXNlYXJjaD9wZz1XaXJlbGVzcytF
bWJlZGRlZCtTb2x1dGlvbnMrYW5kK1JGK0NvbXBvbmVudHMmcGY9TGVnYWN5K1dpcmVsZXNzJnBu
PSZwYT1Ecml2ZXImcG89JmRrPUJDTTQzMzEmcGw9Jmw9dHJ1ZQoKSSBndWVzcywgZm9yIG5vdywg
d2UgY2FuIGtlZXAgdGhlIGV4Y2VwdGlvbiBmb3IgYmNtNDMzMSBhbmQgc2VlIGlmCmZ1dHVyZSBm
aXJtd2FyZSBleHRyYWN0aW9ucyBoZWxwLgoKLS0KVGhhbmtzLAoKUmFodWwgUmFtZXNoYmFidQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYg
bWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2I0My1kZXYK
