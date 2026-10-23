Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B51606A333
	for <b43-dev@archiver.kernel.org>; Fri, 23 Oct 2026 20:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=u/ZhAN9H;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=V3jhfHBv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YVi6uHYVwz7ppe3i1gDCIlPqxyJE24RlaXx+gNPIjKo=; b=u/ZhAN9Hq0dAGpVpViPCN0wCVW
	XuBeDn3Ecu0HX8CWgxLWXeY+YOjxWWK7YXnUx3V5EM2GJGKXUzfiswALhyOdIdUQl2uYu5rrLYQPL
	YTmK/gAbxj+zLC39N/XDGnq89AlbtOY7iZthKLqy68AEoaKo+O45FCyHCsU2W9c7xsh+EEmaJSdar
	UNMDjkjrTlToMieFdh6ZA1YFG4k8NY+JD6l5l2FjD0Sfrngie+hqjsvw2HNNFVzNtIIco2d+q2krb
	k6XBRbJpsFoni+pDKeyHn5Zj/VdQvFcEGh0OXT/WKWFuUg5Yb5DMQQKp3TuOEbVQZ23vaDINIgjN9
	Wuo5T8jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKM8M-0000000GwRn-04md;
	Fri, 23 Oct 2026 20:45:02 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKM8I-0000000GwQf-2Qoq
	for b43-dev@lists.infradead.org;
	Fri, 23 Oct 2026 20:45:01 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-6b4213059d4so1306297a12.2
        for <b43-dev@lists.infradead.org>; Fri, 23 Oct 2026 13:44:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792788296; cv=none;
        d=google.com; s=arc-20260327;
        b=L0XQhYOp7R4xLnCzhvKzzLfXnEGylGohVNiHwE4DDbZsnMy2oiTvr/p39geogFF1Ha
         hqNziECYbMXgRSco5zgvloIDfW0KAWPgviiPaEnjq8ksTqP4A40D56czyiAoiPBh9sTq
         exuUkKSqXfxhKiPbJ6xMDywuMs6QhoGNUcDFXJU7B3KZOuC+2sz59JltYcanxeffQAiH
         Hm/QzvUFq6xN9CDImMvUYvm+FGAmoQtaNGQ7sfVELagEvKiC1GRRRaiXMCfJe8+SkaIY
         KJm8xmci7nVfkdd5wqN2aHMa64RGAWKimQZaDEO4/7M+pTY1Ns0YiFwJzB9LzMdfqsQT
         t8KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=v7+u3dOadIrUbFkNlr6wXd/ZKqCuBSYy4INtLRXYGUA=;
        fh=TTxB+hDD3N93yxtbVByHaMojSi+QfokMkDotALgKhKw=;
        b=pi0GdMFI5fsAS1Ba5LCHDLKD2c9j9i3nU5FfLlMawK5OOP5phDzyI0c/fHWPKHf+BY
         AFa4hHGE1s9WUUtK5t8fKCh0kUrD5uAjaUSgjCmoS+himcbrUxXlIazM/K41FClIN6v/
         QSoHr/2NTZuUwQ9r/GUWg6Byy2MvUwRi4wye5/MfZRDPchAdtubCLXYBjEnFWAmOiGIO
         fOA9fpBaAluuA26zF18wUsjgjurzurIDQmXfpqkH8xAwgoI8AjuxRnDaRk6A675KEiLk
         zNDvNszx/mWnfx8oshMcfVrv5V5s1n2CocYHhyX8hX7o4C+aym2qLb8qO307LfxDTWWG
         mP9A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792788296; x=1793393096; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=v7+u3dOadIrUbFkNlr6wXd/ZKqCuBSYy4INtLRXYGUA=;
        b=V3jhfHBvaIaHPv/uMn61dTQs/MhdiR09kfc75mxQxiaERCB+nLEW4H89wWJKT/ZWra
         vl6lbrdh2U+JqKYPDF+Pu0jgZZuUwGqE4dYqOJvfZUIiU0kLyz5q5ArZvRNEO2QQcvRI
         aHPkWRoaceJdbd/qqD9xTYCiIzzGy3Kmo0uQeZso75775VtlHISaLF5mIyZgOIKAnuqA
         rCM60IfujDT/9TKLjYkF3VxKVUXdrVLS+t+ItYB2w4kYPcjV//LiryA/TurshNQf9avE
         yF931JbYtlnJLsEG+1V0LiGVAOD6upNcrvu2OpHksyt7JYWarAMODubbcnCnNxxHb1WR
         026Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792788296; x=1793393096;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v7+u3dOadIrUbFkNlr6wXd/ZKqCuBSYy4INtLRXYGUA=;
        b=X8CmW6F/54q/U+CGy2466yt4MBhQDwQjDlW76bIF+LCCN7ZlEPFTT3FuSlh9wr+ExN
         8Dd6uoqG2x0XzLhnCjSCEvPcEXtubfvjiBncvXT8Mw8G9z5MVGMrbqlqRNAljZKtgZum
         JD1irzD/mIO2PF8I3RJvDsc/XxE6mLfsl4o1dO3Unm1D3AT8klPKASz1CphMTWtcOHzI
         mqI/YsUsBPFkkT8NtWR7JgqThEVsysib7LDNn/wTH/hs9a0xlsu7i7L9z+sYBnHxkVHO
         4Tuy8WOl+q72aFQ4XNq0/usIBRWUgQOsBdVckJpGBTGALef6kzIre3dfvzoYvEegPVOH
         k2Xw==
X-Forwarded-Encrypted: i=1; AKwUvBwHbyE9IpdJAQ5nwWjPvFjqbqEsyPpQdquE0GAUWqXVr2jxEQiyJLu0tI5y5bex8fnY4RSxalIR@lists.infradead.org
X-Gm-Message-State: AFq9FYJEu8+McPbaCZLyTt8zwUTHrKTqgLnDQi79KmHsbuZyKJXQKIeT
	D9dTWT2hFJhwByFlg8Cmo6EHUBgqRkbppqEL2tIFWM2gzhPpz7FPkUQLn7J1BNdSHsb6KTzwjUN
	2t7JS6s66CafHOdY9i7auGvoQxTK0CLleo/lj
X-Gm-Gg: AYBFou0UoKLnL86k+EaX4EG+sg7C0aFoRQqxyi5ivZSPg5+mJfribL/doxMgndHL80B
	VsMAby7JW9I3CSW+svburhNsJl9cUvMiFtwcgI5XogGJkRJk9Yj9YfvSy1tav/GXxihfFN5dzBa
	BAi/Fb4h2HmFu8Q2Z8Tt+SFOEjk+LrtfO2B3jxwwINo35tFiHwgbFiPz27dkA5vOvFgALCpoZ3E
	JISbxSE8q3hexbX1Vbd4+i2plS4MuE2zd3sMtdyqFBncfzXhV7vGShUpa0iOysNre1sSf6R3fcS
	LYRU4SE2Ea9YII4t+lMca3TJgBavakW5bV4AIELyUU4m5IlbVpxzmwEBX09SQQSYTGbEPkhaLht
	y6TMezYgEe0Y7NSZZDV2wKfJhsiUQOV6M5h4czXfBqU1VOCQYdaRY7ujB5UNulY0IpOxQC9av1k
	Eggyv9Sxk4neDbtMusNaLBUoh2LzfY0vb/HweX7lmorRZpqk9wMwlCXp5kIJOsLLvBkGNUnnhbA
	bh2kC0AY0TH72lRg1McRKak+/TVYf+N0QiTyzBAXk+fVIK95w==
X-Received: by 2002:a05:6402:238d:b0:6ac:8761:17a1 with SMTP id
 4fb4d7f45d1cf-6b44300f683mr269474a12.36.1792788295986; Fri, 23 Oct 2026
 13:44:55 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261023190653.70741-1-rosenp@gmail.com> <20261023221424.2722795e@barney>
 <20261023224140.465903eb@barney>
In-Reply-To: <20261023224140.465903eb@barney>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 23 Oct 2026 13:44:44 -0700
X-Gm-Features: AclHuK_iEVqXQQc71AZ8oDUrqZy15oWTBltW_n805CdkIBNoTMIbMWBdIoDHNgo
Message-ID: <CAKxU2N_1XgjVPdSrCMYzZx4Rb6yjgEe7kBZYyG4RASyBv5BtMw@mail.gmail.com>
Subject: Re: [PATCH wireless] wifi: b43: map the RX buffers DMA_BIDIRECTIONAL
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, 
	"open list:B43 WIRELESS DRIVER" <b43-dev@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_134459_663301_69BE3E6B 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -2.1 (--)
X-BeenThere: b43-dev@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: b43/b43legacy Linux driver discussions <b43-dev.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/b43-dev/>
List-Post: <mailto:b43-dev@lists.infradead.org>
List-Help: <mailto:b43-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/b43-dev>,
 <mailto:b43-dev-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gRnJpLCBPY3QgMjMsIDIwMjYgYXQgMTo0MuKAr1BNIE1pY2hhZWwgQsO8c2NoIDxtQGJ1ZXMu
Y2g+IHdyb3RlOgo+Cj4gVG8gZXhwbGFpbiB0aGlzIGZ1cnRoZXI6Cj4KPiAtIEkgbWlnaHQgYmUg
d3JvbmcsIGJ1dCB0aGlzIHBhdGNoIGxvb2tzIGNvbXBsZXRlbHkgYm9ndXMgdG8gbWUuCj4gICBX
aHkgd291bGQgdGhpcyBiZSBiaS1kaXJlY3Rpb25hbD8KPiAgIElmIHRoaXMgaXMgYWNjZXNzZWQg
YmktZGlyZWN0aW9uYWxseSwgdGhlcmUgbXVzdCBiZSBhIGJ1ZyBzb21ld2hlcmUgZWxzZS4KPiAt
IFBsZWFzZSBwcm92aWRlIGEgSFVNQU4gV1JJVFRFTiBwYXRjaCBkZXNjcmlwdGlvbi4KPiAgIFRo
aXMgaXMgcmVhbGx5IGltcG9ydGFudC4KPgo+IEkgYW0gYWxsIGZvciB1c2luZyBBSSBmb3IgZGV2
ZWxvcG1lbnQuCj4gRXNwZWNpYWxseSBmb3Igc3VjaCBvbGQgYW5kIGxlZ2FjeSBjb2RlLgo+IEhP
V0VWRVIsIHRoZXJlIG11c3QgYmUgYSBodW1hbiBwcmVzZW50IGFuZCB1bmRlcnN0YW5kaW5nIHdo
YXQgaXMgYmVpbmcgZG9uZS4KPgo+IFBsZWFzZSBzbG93IGRvd24geW91ciBzdWJtaXNzaW9ucy4K
PiBUaGluayBhYm91dCB5b3VyIHBhdGNoZXMgYmVmb3JlIHN1Ym1pc3Npb24uCj4gVEVTVCB5b3Vy
IGNvZGUgYmVmb3JlIHN1Ym1pc3Npb24gYW5kIHNlbmQgZXZpZGVuY2Ugb2YgeW91ciB0ZXN0cy4K
QWxsIGNvZGUgaXMgdGVzdGVkIG9uIGFuIEFzdXMgUlQtTjE2LiBJdCBydW5zIG9uIG5vbi1jb2hl
cmVudCBNSVBTLgo+IFVudGVzdGVkIGNvZGUgaXMgdG8gYmUgcmVqZWN0ZWQuCj4KPiAtLQo+IE1p
Y2hhZWwgQsO8c2NoCj4gaHR0cHM6Ly9idWVzLmNoLwo+Cj4KPiBPbiBGcmksIDIzIE9jdCAyMDI2
IDIyOjE0OjI0ICswMjAwCj4gTWljaGFlbCBCw7xzY2ggPG1AYnVlcy5jaD4gd3JvdGU6Cj4KPiA+
IFF1aXRlIGhvbmVzdGx5LCB0byBtZSB0aGlzIGxvb2tzIGxpa2UgYSBsb3Qgb2YgQUkgc2xvcCBp
cyBzZW50IHRvIGI0MyB0aGVzZSBkYXlzLgo+ID4gQ2FuIHlvdSBwbGVhc2Ugc2xvdyBkb3duIHlv
dXIgc3VibWlzc2lvbnMgc28gdGhhdCBhY3R1YWwgcGVvcGxlIGdldCBhIGNoYW5jZSB0byByZXZp
ZXcgdGhlIHN0dWZmPwo+ID4gVGhhbmtzIQo+ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmI0My1kZXYgbWFpbGluZyBsaXN0CmI0My1kZXZAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2I0My1kZXYK
