Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C639BCD5BD5
	for <b43-dev@archiver.kernel.org>; Thu, 28 May 2026 07:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PgDFQpGtNZMhTyegf70oid38JZ+7fpKJQPeyyXqaGo=; b=rSZ9nDiiq+ynFY
	bZsdiMibmXvazz2fqq/uM1IhbHbEZdJ4SgW1tO+Or2BxSEUaJIJxPDzzlFyqN1AsOgR6VkZgfLAoG
	lGBmKfjdK1mnLPbTDZ9jd045OBa2yRGF8B3mWdkbgZrxkvIjxR5ybCz/0ptOsa/Sjv1jmNAGpraPI
	lK9vQ/VSi321i6AiiylMRy/fbfbFSG0KukEsAWmfl3SNwROVfw/8na5j2uA5dcLfDz/FeWtLQl+JI
	fNNPGd+JuihNyet5HzAmN1LRDEnP1byP8OU6HME9Ti1KldD84/BnEo8OMfQVp3XwF3xnogB5I/Ohm
	l2LRKqVYOy6ZsetCv87g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSVPV-00000005IQg-1RPh;
	Thu, 28 May 2026 07:44:09 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSVPP-00000005IPp-1frk
	for b43-dev@lists.infradead.org;
	Thu, 28 May 2026 07:44:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=0dhHkqSUbvS9K2fqU3QNUZPcDa8TCpMKVQgymRMms3A=;
	t=1779954243; x=1781163843; b=gzxGz7vGEiA53nDlsaesZrI84sMGJJTIQf5F9AigGc1+9k/
	27X80BYwZX+KwaHVkP4pm72AbLWrtEVX76oIQxu6Ekrx0iTuy9IpT765mhA06P25DplF/Z7umuwLK
	dqtHwJXUc2uCdb1RFtGVHNrV/noM5b3m0XiXuEn+JXBAMufMgvjHsO9mJWjw9nyxy7qym/3JbS2EP
	10dKDmaEekdKpdOQUNHgjHybrWbfsVkpCC0PvvGgLhHGSL7R4jVrb+EampcG/FkFjSYxDaCfVFebO
	CwFH+u0PRc1lHjNVX4o/XyOkNHO+AdFsymmT3ZYVtqR5iFbnXdrZqX7d88cH09pg==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.98.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1wSVPL-00000007Adx-1VSb;
	Thu, 28 May 2026 09:43:59 +0200
Message-ID: <5e8cdb04c12490dca37777975e921eb1842b6b4c.camel@sipsolutions.net>
Subject: Re: [PATCH v3 1/7] b43: add firmware mappings and remove comments
 wondering about rev22 initvals
From: Johannes Berg <johannes@sipsolutions.net>
To: Alessio Ferri <alessio.ferri@mythread.it>,
 linux-wireless@vger.kernel.org, 	b43-dev@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Thu, 28 May 2026 09:43:58 +0200
In-Reply-To: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-1-cdad2c8526c6@gmail.com>
References: <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-0-cdad2c8526c6@gmail.com>
	 <20260524-b43_complete_n_phy_rev_8_radio_2057_rev_8_support-v1-1-cdad2c8526c6@gmail.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_004403_437965_30D169C0 
X-CRM114-Status: UNSURE (   5.40  )
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

On Sun, 2026-05-24 at 23:56 +0200, Alessio Ferri wrote:
> Assisted-by: Claude:claude-4.7-opus
> Signed-off-by: Alessio Ferri <alessio.ferri@mythread.it>

Please don't squeeze the entire commit message into the subject and then
omit the real one.

johannes

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
