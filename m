Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47BE2CDB474
	for <b43-dev@archiver.kernel.org>; Fri, 20 Oct 2023 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OhqUN5uDMOHjGYe9AyLi5OGdP9vh90MCLed+4SMe+m8=; b=zpVvdNKzljqxF6NDUhuuGZbPLJ
	W84v14iS8vkt9TExMBu+W8deVJvcURn9nuoRgkt6Yu8dj41pbfNLC1/63rys/sOIv4e5huT8nrKCW
	75v62YlEWK6LlGrgyY8SMbHTOY+xlwjTwBmfw/G+XOarpERRsstjfYjk6oqmNN/dL2TIHHtwM4zaq
	AEFAfpgq6OwnoJHAE3Yvk+F1qOUM9p73hk6PCBT4y3rVW8x2tEEUs8xiVTGS3Y0PtEpxlnmgDaU7/
	eDeU3xEEIIN6aNo+65YFi+sxnCEWUHpMIoSnNYmilbzqELwSzSTqb1/GzTQ/ChlAnPiDj4FW+/3JB
	UWLWyrAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtlvE-001h7O-0z;
	Fri, 20 Oct 2023 09:36:00 +0000
Received: from bues.ch ([2a01:138:9005::1:4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtlvB-001h6L-2h
	for b43-dev@lists.infradead.org;
	Fri, 20 Oct 2023 09:35:59 +0000
Received: by bues.ch with esmtpsa (Exim 4.96)
	(envelope-from <m@bues.ch>)
	id 1qtlv2-0001rL-2F;
	Fri, 20 Oct 2023 11:35:47 +0200
Date: Fri, 20 Oct 2023 11:35:14 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
Cc: Larry.Finger@lwfinger.net, kvalo@kernel.org,
 linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] b43legacy: Removed unneeded variable in debugfs
Message-ID: <20231020113514.122bfb6e@barney>
In-Reply-To: <20231020092735.2565-1-bragathemanick0908@gmail.com>
References: <20231020092735.2565-1-bragathemanick0908@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_023557_871290_31AACA43 
X-CRM114-Status: UNSURE (   7.28  )
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
Content-Type: multipart/mixed; boundary="===============7049444989787838716=="
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

--===============7049444989787838716==
Content-Type: multipart/signed; boundary="Sig_/kfDnOujsaQJS.7yl4+DvrH0";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/kfDnOujsaQJS.7yl4+DvrH0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 20 Oct 2023 14:57:35 +0530
Bragatheswaran Manickavel <bragathemanick0908@gmail.com> wrote:

> Removed unneeded variable. Issue identified using Coccinelle semantic.
> No functional impact

This patch is completely wrong. It would not even compile.
Please compile your patches before submitting them!

And it is the second time we see this nonsense.
The code is correct as-is. There is no unused variable.

NACK.

--=20
Michael B=C3=BCsch
https://bues.ch/

--Sig_/kfDnOujsaQJS.7yl4+DvrH0
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmUySdIACgkQ9TK+HZCN
iw7mtxAAiVUycpeZTGhcQXIsXI5dmrqAsTA2Nsxr01vvreRpLZDZUFLOg7ou4rXz
JD5nD+4ZdIbQnlSyF4CVgpZbstsYSa0FGeC4yHnASIAX0Ou6x3bqhX28K+Gdb/RH
isjualTrLUR94jQJqjnFrTKjVD2ezTjG5i0NJSwP3roTohMXUfUApyJE7CV/URIA
SosRMc6aKnrfdd4pHidRLW1BVNKpY5NiK++rjwaPzxqy2riEzVyHKkZoQaJB2lHm
DBTDeRHj3D5ZUSlB0U/nlR0eyg3jixvtCONvXls2CDWOtLApSUh86Zm2BIE39HX7
3uxqnAsf+RmtuKxb4IhyqBAkHj6In8VQ4HL7yOflRdAZkKo3JkJBaoE9idYvP20Y
gWWi3NoIeLybwVRID/iAb/5SDGKHmjX4gBsxonOhH9066++kPWvdVHWDzdN5ibfQ
EEiX3r+l1rCuQfAlNrqgHR0UNgMxzCxAnWCmlR5RJbSCxmNU87qwafLmZBN9rYaN
+XDOFrLm1fSNfOtFTdN2ee85mzOEJoGpIoHqytnYPO2RY98q6HotCMRIO+o76BTG
ULhxVYvSEQIvQIGwUycT60eehKD7T4wb5xvzB61m/aP60SG4fQq/uH7K2dvxPU5D
mI79wh855Geu4H1NJr3rgOlyUDYnVFkUSdbWTspvif9VYsNQ2wQ=
=wS4g
-----END PGP SIGNATURE-----

--Sig_/kfDnOujsaQJS.7yl4+DvrH0--


--===============7049444989787838716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev

--===============7049444989787838716==--

