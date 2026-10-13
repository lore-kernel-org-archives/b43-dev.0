Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FF2FCA9ED0
	for <b43-dev@archiver.kernel.org>; Tue, 13 Oct 2026 00:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b880Ah1NrMeTpvE0GS4SuIEKPe0eSBockTOkyIDMuLU=; b=PxmA0IjwsLFdw2
	vgIvqhHJvAVWsO2l3EFukXc/bROcawrOPZOxkTvA1vpXCCJQpwINFMnbXbtQV0fj6WoCBkoGIE5g3
	z5QNDQx3JEuAnWSknYdEq/lKR75lvhjb9DKyqA8P1aUU9lGZDY2QUZXFsT/bDbnCwo7hUou1QSUM0
	Xrk/n4arHAdHMVZ9E/mPt9zrdvHLFCu6UySg1iP/Qu1DdNS5DeKmXSzPe/ppMRYVxqw8s5jaQs1Ed
	LxVsJtrjCo2g3i21lU/ZEap+QvK6XjT8UeoXBCqkbeDeQ/tg/Ww/TzK5EdekFtmlXs5EjoFicRQAc
	wmXQAM72YhZ+7Hw/3OWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGQBm-0000000Bhi2-1lnj;
	Tue, 13 Oct 2026 00:16:18 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGQBk-0000000Bhhi-08O1
	for b43-dev@lists.infradead.org;
	Tue, 13 Oct 2026 00:16:17 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-c247f6687dcso360635366b.2
        for <b43-dev@lists.infradead.org>; Mon, 12 Oct 2026 17:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791850574; x=1792455374; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=M2U1p76YKupUoiiBvk5LkAZTxxeUuvSM+Po2PF1GMfk=;
        b=jGb0BH0B+efRrqKBfA8crY73Fg/zUd5jmw8Tbli22OsTqjYmM1aJ0khPdI46m7fnkO
         OcosyAiINlDVueD2B1ewRVEVn6v8AsNurtqaYdgeKk2zkNLm/Qt1frGzLDegbZuurXpy
         XUco/s3qdS+qF/sJfXyfbno2Ohl6h7A+XRkL9hI13nCAI2EnZojPWMSoSNmQJbPAJv+W
         x44H76QGr21apuO5ucdQ2AO+55rj94mot5cEyUrD5sav+5AUSuQyYRYwfB7P7b3rhEpT
         Qo2cf1zwCwx2Kjgy/TxoxpvJrU9HBsVMFasKlqGsRbZpeOEmGGfikMhS7Gb7t/qcmhNP
         12Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791850574; x=1792455374;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=M2U1p76YKupUoiiBvk5LkAZTxxeUuvSM+Po2PF1GMfk=;
        b=YQgB1vcVOhVrftoHveOdjD+LpwrnLkmBa888vbagcaUDG8Lxhp/0zr0Aze0VvAvLT+
         vWSnFWWe1KQ8uLeblG0nBmsKOZKLbjOjC4UzdGOPp4xkbTbDnVVcyA5BK72dJAIcuPnW
         oXf4HaOxJGHrnTbCEeWaLvpdM4a3QBgsc4Bqckh1wUA1+wz9MhszoJxEgVqgLiPiU84/
         1WLfkcDOZOMiwK8TkqjMkLKEBxg7HaLZJElikRyLyzsJb/3TPqO+GWV3JJ97RidwW8sL
         TU18oJj+mIuARV2Umd37Fv9sBLt3lNk0e65rz9hvW2FSkZfVV8UAAMiTa0ad2ezlZCNz
         oEWA==
X-Forwarded-Encrypted: i=1; AKwUvBweVR6yph4aRBNZMNK1r6bNgi2IvpC7FLhUSQ53XWsSalz4TtYHlRBS2mey1dkYMy7KTWsmMNXF@lists.infradead.org
X-Gm-Message-State: AFq9FYJTvROEIF8oIHDGEELHHo8+hcqr67X40vT1Rw9QiDIsm/R+tcF6
	11xMZcjU8he9LSFbjCeMvh/aV0FTR/wDPWaQu9mqOYm6zW1NLUDOAhAL
X-Gm-Gg: AYBFou3M8rXzIhV/3NPdHY3T9/HlDWiQkgAVFvbfBzrY3aeGMSHBjoq8KAuk5HXZmSc
	pNw0Per2qK9tvElAlO5cpSmlbuLZYsb3y43wslchYrXiUF3hfIhu8JjWuENn+7zmKbqFPqebh5Q
	+z7ebBc9S/KnBTOHmjJwtd2L5Pe8eqODJuC1jtIe2dKRkT5GLxEXg0YjLQfC5uWzcFylGxX1OjV
	YN8nuUD8HUqt5CkG5acxXcfm6NPx8o/JWt++Z7R3noKB56DC+4K7y9SndJd8lJNrU6k59zai5Qp
	8YngqbI2FAD4CVptknYM9pAYf91tFVa0c8KDY070x22MsxX2TB70DNekluMMR7a4Zrj175bnwWs
	+1ZL5iuVJjrR6gRYAlkIbOEHuRLEzjwFTDEGVsF96hVPt22UFXGmDemrtDr3l2V37XraK02f+WJ
	Li3gIwqE4h3jFToHGEYTr8ujZB8ygf6b+de13Xnq5Fmv8N9Nn8lxE5ISlDsZntrt2uGCYRfwrl9
	co4MlPBBFDVXEjN4GqseRYAazZCQ5DILP21vbCTu1iNXQLZxcQJqCB4WS0T2aXI3Al8Pp7Owmt5
	Lnid2fP33iR5cbQeXQ8ng1sSJbOaVaid6j6Q/h4C2AziwDIvDJQg7uWhxNhrVCxvTQDs8uM/DoM
	F58HXhD3zt6WzPpA=
X-Received: by 2002:a17:907:7b9c:b0:c26:1648:a06b with SMTP id a640c23a62f3a-c31aa0ae725mr1023575266b.38.1791850573809;
        Mon, 12 Oct 2026 17:16:13 -0700 (PDT)
Received: from zwetschge.tail45b538.ts.net ([2a02:810d:a1:6000:a55c:f7b9:d145:2469])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-c3547d63420sm142459266b.13.2026.10.12.17.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 17:16:12 -0700 (PDT)
From: Andreas Wendleder <gonsolo@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: Re: [PATCH] wifi: b43: fix use-after-free in b43_bcma_remove()
Date: Tue, 13 Oct 2026 02:16:04 +0200
Message-ID: <20261013001604.49954-1-gonsolo@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261013000124.48605-1-gonsolo@gmail.com>
References: <20261013000124.48605-1-gonsolo@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_171616_107399_63E53F64 
X-CRM114-Status: UNSURE (   7.37  )
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
Cc: johannes@sipsolutions.net, b43-dev@lists.infradead.org, m@bues.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Adding the people the CI bot listed as not CCed (b43 author and others
working on b43), for information. No changes to the patch.

The bug is in mainline: b43_bcma_remove() reads wldev->dev after
b43_one_core_detach() has freed wldev. b43_ssb_remove() already takes a
copy, so the patch does the same.

Andreas

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
