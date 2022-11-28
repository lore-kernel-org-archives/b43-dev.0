Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D26FC433FE
	for <b43-dev@archiver.kernel.org>; Mon, 28 Nov 2022 13:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elZU7sbZqA0JwdR/QvuLXD4y0w9YVhJ3/KDXhzVjXpw=; b=mhM5MrQsI3aIom
	pW0h08FS5LS/4GVKk73kYUAWFQFW9kv9CTlf1sJ/31aSY6oeytimJDu7Ob1E6I5gyRXnlYCpDlRbx
	i0DooND7ecE1ixwoLSxqXrKISVJRJQ/S0Y3TbCw+aaWXhdBxqOTPkUT2UbxgBW/RoZiTKD6ySgxdl
	mC6vkQwN3wgH0DJF/lNTQe5mks+JcSrnpCGM5LeKXnkqW6a9MmIVA31KS9rnOzXgS7Lc4BB6RP59b
	gg7EfdnKhmg6z7PWQjng4tXIurLZp+fP9gkE6fk5iUZnoccrUPzLfp88D36uYAvG011juWNSF7vDg
	s5RkcqGTWOnteo8GcT8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozedn-0021R6-9f; Mon, 28 Nov 2022 13:57:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozedh-0021Pp-Mr
	for b43-dev@lists.infradead.org; Mon, 28 Nov 2022 13:57:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5C068610A7;
	Mon, 28 Nov 2022 13:57:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A17CC433D6;
	Mon, 28 Nov 2022 13:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669643859;
	bh=3iAjCz8Po6UxsVaFN66Kyn/1QE3Uxx8DWu4pZB3HbEM=;
	h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
	b=H5FhmdZdWirC9HOnQW/3HbTLnGxregpR1YVsc6aDopEp2rolsPDSrPjxv4dZmBYuF
	 3z2C0shBk8SBfpgATE0mBtzB8GD5Ju0aCEr6NgVGOisvmjGA+q/htKLvSEOnsl/39k
	 ewgsG0FMjTSw+B2tVwHL3gHsB6lTEqNzRQHc5Gffn33nJ7SBIHpMxke9AcR0xBVnCe
	 bJrpvvtYa8+aJkfp/0LGTWj+pLSOQhD6FPGZCH7CtmfcYmWh8Z5jGGuoI/nWh6cVh4
	 dEgeKbvhnHIV0LJ3cUNXqHcLOnfImQNaqCL2WvvtL74TlFItTWCrqW3USArtLM6uwJ
	 QPorcHjt1TiOg==
MIME-Version: 1.0
Subject: Re: [PATCH] wifi: b43: remove reference to removed config B43_PCMCIA
From: Kalle Valo <kvalo@kernel.org>
In-Reply-To: <20221122131248.23738-1-lukas.bulwahn@gmail.com>
References: <20221122131248.23738-1-lukas.bulwahn@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
User-Agent: pwcli/0.1.1-git (https://github.com/kvalo/pwcli/) Python/3.7.3
Message-ID: <166964385630.4701.15876061507595016726.kvalo@kernel.org>
Date: Mon, 28 Nov 2022 13:57:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_055741_831488_F5FA56A4 
X-CRM114-Status: UNSURE (   8.68  )
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
Cc: linux-wireless@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, b43-dev@lists.infradead.org, Lukas Bulwahn <lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:

> Commit 399500da18f7 ("ssb: pick PCMCIA host code support from b43 driver")
> removes the config B43_PCMCIA.
> 
> Clean up the last reference to this removed config B43_PCMCIA in the
> b43_print_driverinfo() function.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Patch applied to wireless-next.git, thanks.

3ca7f0b2523c wifi: b43: remove reference to removed config B43_PCMCIA

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20221122131248.23738-1-lukas.bulwahn@gmail.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
