Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DACCA5FA1
	for <b43-dev@archiver.kernel.org>; Tue, 29 Sep 2026 08:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFzJjtclt9XnDXiTEsmgtXkzIe30dR6oBxpRNmeutOU=; b=x/jPuMmRXk7ohV
	Qb3DH6U0USFFlAfrA6eBxydFmtUbeuw4y61FFvlpoUx1Hx+sO9aTROlOdc5A5lMXZrmnefpH2RdW7
	zzO0lxniHWpwc7dJbdIKHI6xAIdWmO8KoltP669F5LtAThbCydFpPhmPrXUVmITcv+cCzTM2WsxVX
	6MKZm0Hy0LtC6T6ElxaJiFttrv4QjEd3rTqxHQxykr5cJ0Bs8fDw/Jvk76C8Plf3Ru7mYsjwt6Omn
	xMxgN9nyHylGaajc9NYtxZTrtev8eC1TC0qzaktbGTeEuwIBTnnp1TF+dMdnM9AyIHPwMw+uxvKEL
	hgtT/+wsFbZh5TnqZQMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSqX-00000002gqw-2jpU;
	Tue, 29 Sep 2026 08:05:53 +0000
Received: from smtpcmd03117.aruba.it ([62.149.158.117])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSqT-00000002gpu-3wtS
	for b43-dev@lists.infradead.org;
	Tue, 29 Sep 2026 08:05:52 +0000
Received: from DELL-MOBILE03.ad.smart.it ([77.89.54.34])
	by Aruba SMTP with ESMTPSA
	id BSqPxUZ0gdVTCBSqPxzae1; Tue, 29 Sep 2026 10:05:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mythread.it; s=a1;
	t=1790669146; bh=WBwLXXMWAqto5FiNVxRkG8uGQgX93DlHOiZDhOkJpX4=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=PoDrs8I+PjWveRXWS63dmFrP7kxo2UzcmCxf/R2Udj/I9CzWnTu9DcdLTBi33ln0e
	 XH2x/YsvShgnHoxncpB9AkXoSV4cLkFiy5oGDha/ekZR98qFas6jXov+N9EkxApSGS
	 iLN+IGBE0NNNRqMwTscTeVJWNsKjmJ+J7JnPnoJKIYpboK2QdUd+2IUpSzvj+w48gL
	 DuSBKNEDgf3mpY7hDW5CW43UqUarzJVr8s255VnF957UkJkd7uPhg3jpFSKpjRxVLr
	 geaI8ZiQqDE0RlITW2HkDmi8ZVywS0IeLU5NyBuQmnEPzkFO/Vc3Ol/lRYNNRgcbCM
	 OOEi+zG01+Zpg==
Date: Tue, 29 Sep 2026 10:05:44 +0200
From: Alessio Ferri <alessio.ferri@mythread.it>
To: "andreas.wendleder" <andreas.wendleder@proton.me>
Cc: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>, "b43-dev@lists.infradead.org"
 <b43-dev@lists.infradead.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>
Subject: Re: BCM4360 AC-PHY support for b43 =?UTF-8?B?4oCU?=
 reverse-engineered, seeking guidance on a clean path upstream
Message-ID: <20260929100544.343ce6d2@DELL-MOBILE03.ad.smart.it>
In-Reply-To: <hCBGuqVmDlV3Y7f2t6L8DtnoyBNbC8KghHXm0fZCHLDLrtfaoYw9e0UcCCsQHHK1X4TBz0DuvSL4zmAx_dVS3q54BZ0JZXtjXXNnuSAFtyo=@proton.me>
References: <rOzY3WnW4q5L1osv7iagU81dLGldzZEsu3EqHxmH4d7Z4vxubBYvRNT0vsrbr8n-CUSEYyXxGFE3h9PHLHgePjm3_rMK_B_0m5loTpyxX-M=@proton.me>
	<ih-lXs5OlHxMhydtcZFtKNhGg3cGlR137CEMZ07_zFQcfCYAImW6MRWPDjkdwy-xK9bIwpDK9ImgerqHmQMsAxX3ckEjsiN8QoCSlpvIsSM=@proton.me>
	<20260928200309.01a36f5e@barney>
	<DL5AS1oidqGRAmMHt0Jcp3X4T3ob_Fa-lfhTmMMak3ATUnfcyETDn65CQf3iLvVeg4ExYoc_0GW7QMoaB1jEW4nzKAKFDv8bD0hqBEtkUKg=@proton.me>
	<20260929081403.6076a6da@barney>
	<20260929093405.79d9f4ec@DELL-MOBILE03.ad.smart.it>
	<hCBGuqVmDlV3Y7f2t6L8DtnoyBNbC8KghHXm0fZCHLDLrtfaoYw9e0UcCCsQHHK1X4TBz0DuvSL4zmAx_dVS3q54BZ0JZXtjXXNnuSAFtyo=@proton.me>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CMAE-Envelope: MS4xfOiC0NiK3rNAf/cRxmU9pacGEzOtuHhVmgKEtaCvet96LBC7MOf14DhSlqDB6mwZh9LYJ11pELuIARQYYPzSHOu34Kbh4mV3Dh5HILViTD88yIvWTlDX
 Lu+lEbNoC79BCMnXQfdcYH7QhZLT0IVeTCWE7vrNRUhhMnRkW9fFTGvnPz9ZJColWohKMTyvp8zM3VZJpSTKCxITXJ64UVNVr5pOI698Q267J0knn2voZT6J
 IOFsSzIoreTreqFVvE+Ot1U3kyQ7GF/VG0CRpMDq858HTyarCIczgTn3/P7f/vJ9n9IharROmj3wly0x+CVLLQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_010550_146211_2B071D4E 
X-CRM114-Status: GOOD (  15.12  )
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

On Tue, 29 Sep 2026 07:49:35 +0000
"andreas.wendleder" <andreas.wendleder@proton.me> wrote:

> > > Maybe we can find somebody doing an AI implementation from specs.
> > > But then, why not publish yours instead?
> > >  
> > 
> > I'm still working on my driver for 4352/4360, so two of us
> > actually.  
> 
> Cool. Does it work? What does work?
> 
> So how do we proceed from here? I'm in the dirty room. :)
>  

At the moment i have to retry it on hardware, last time it crashed
because mac writes were incomplete, it is 5Ghz only because i have only
routers with no 2.4GHz antennas for the 4352/4360. It is based on the
7.14.89 broadcom driver and ucode rev42 ver 928. Also, all my routers
have femctrl = 6 from the srom, so i don't know what to do when the
value is different. Least, but not last, the wl order of macro operation
and b43 order are different in multiple places, how did you reconcile
the two?

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
