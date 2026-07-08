Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 165E1C43458
	for <b43-dev@archiver.kernel.org>; Wed,  8 Jul 2026 09:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=so4JFqcI47WwEp+I4XVGOoGMOAmN5wsTrh1jeqac1V0=; b=d1RFBVNpyPdLJn
	g0b91t4EcWqXsUTtsNJvzUthSuGMft2vRs7nRqFQrcIsALT7mGFhJQM/b7HffVnDuvJqJfRIERMQr
	HMqjuZistD2mQdSTGOJEL/229c+b94J1H2Kjh7w+ARnwPZdAxglTjReYZ0f9HG6vuk/Lx1VMIZz+h
	M185GspeoKTokPDJod9YGPIbNEIcAO9Kk6BCa0WkhtO21lghc1tKYuPHMXE4aJzXweFPoaPzxLStf
	zhk/OL8zxd11oB58oJ2+fn+ys+xIAl9/jTgOlMf1H4kwr+WFpaeio+sO4MRMisUJUaIX3N0j3mNzH
	XpsTaToSM9qmI442xtlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whOHM-0000000GiDs-2v3H;
	Wed, 08 Jul 2026 09:09:16 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whOHJ-0000000GiDE-3pu7;
	Wed, 08 Jul 2026 09:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=fWsg+VRZP+IygMe6ufylZ2Cx4gOG+ZDTVRFd55uzSho=;
	t=1783501753; x=1784711353; b=kYeq6wdT2tfDlQ+WtlDw+fFd6Kk3i0JTEHq6We6hnCSV+Wy
	jSQIqHYqFTTJ1UrRDoHyKzFuCmqb+ZdUxA/OyiquvWrhbW5WGVpPzzBKp1x8gQFliFHCY1UAnqWSJ
	4+RA05p428dmhvty8emr4beAEHcP6nGrUOKZ6FOo3swwvY+iMvSapyeQNdr6fLubTttYDk9nbIyh+
	9C3lSasBwF7ujrPkqtbP0S7ppasJSFd7CyIGPBFWgkLRGxmsZn8z/ssBkrv3ns2IIJhj1/jFAvCel
	KrSLz79z+B9OxVEELW6NvW59u/CcIzY+n81wTWShSkZ4YPwpJGw1dQJpQ3e6QIGg==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__ECDSA_SECP256R1_SHA256__AES_256_GCM:256)
	(Exim 4.98.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1whOHC-00000004WiW-0pqx;
	Wed, 08 Jul 2026 11:09:06 +0200
Message-ID: <867a09c9bc173902bf2deb9094a008c5cd33bc92.camel@sipsolutions.net>
Subject: Re: [PATCH 0/4] drivers/net: replace __get_free_pages() with
 kmalloc()
From: Johannes Berg <johannes@sipsolutions.net>
To: Paolo Abeni <pabeni@redhat.com>
Cc: Brian Norris <briannorris@chromium.org>, Francesco Dolcini	
 <francesco@dolcini.it>, Jakub Kicinski <kuba@kernel.org>, 
	b43-dev@lists.infradead.org, libertas-dev@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-wireless@vger.kernel.org, 	netdev@vger.kernel.org, "Mike Rapoport
 (Microsoft)" <rppt@kernel.org>
Date: Wed, 08 Jul 2026 11:09:05 +0200
In-Reply-To: <3832c190-b5b7-49a2-902d-7f75598b0789@redhat.com>
References: <20260701-b4-drivers-wireless-v1-0-60264cdf2efe@kernel.org>
	 <3832c190-b5b7-49a2-902d-7f75598b0789@redhat.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_020913_955029_6AB0593A 
X-CRM114-Status: UNSURE (   7.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

On Wed, 2026-07-08 at 10:55 +0200, Paolo Abeni wrote:
> 
> @Johannes: just an head-up, I assume this series will go via your tree
> (despite the slightly misleading subj)

I assumed the same and already have it in wireless-next (with fixed up
subjects to add wifi: prefixes).

johannes

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
