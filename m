Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C35BC02194
	for <b43-dev@archiver.kernel.org>; Wed,  5 Feb 2025 11:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84Wr+FtatoxQ0j1b4zFTfUmuLagcuP7H6CYvfTegWpM=; b=lrCoFP9iB7X1QG
	1s5KPRIZLkeDBO7Wi4TeAGOBfosVDL8WPiNFegSgUnNSl/pejEfefab4EHxRuAy6ku1THpXjN3qX4
	Ha5u7/oGZ3LHBIrGgykMjSSl4HajzDvdqrS13YhKfgCQC/es5yHYkkl848KsKU4Slt/2UsNEAx6rK
	/aVkVMSmZm6ICDbqe4ew1PEkZAmz84LpjDefOGh4zxs4sk4GgiMdM1EJFkLPBLP+mrvl3p43y0Yct
	sU3tz7YZuYXRsZA+2ghycgKfVnYpi1POoJvPB2CCvayy5rU6tnjrUUuSTRMK7b643XV0zNIfCZVGL
	p8S0RIFcsod648myZpyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfdIR-000000031Gd-2PLQ;
	Wed, 05 Feb 2025 11:10:19 +0000
Received: from stravinsky.debian.org ([2001:41b8:202:deb::311:108])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfdIO-000000031Fi-3eqI
	for b43-dev@lists.infradead.org;
	Wed, 05 Feb 2025 11:10:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=lSa38rUrscbTFzyMkucxLavPbKPbT/c+ByJbj4TeKKo=; b=bYLsH0PeEzYqIve54qUrIJKU9A
	v5ns7mkJkI/kUpfqU6oc3A5REOG8Rnrg80JMzEmKa6uXjE6uRUoaOUhHhI9vAfdJThd2RB9Z3y5Ag
	3TE7dxfnY7BqGnKK6/2752HlvwgmMu6gg00ao0d/+fq3U437AgQZ7QX2vmKn5gaFtrJ8g1I1joCQC
	WM/EIJDx9VcPSzudbv9Rjn0mDG2F9yV2H2UqXeCP4U8Tg5iTO7wcJYF+K9qHQ3QoCT84m8HO6uDjO
	WA0SunR1W5LHL06dp82ciLqEjMN5zgqaHNEuxpmsgaoAvv+9ghGWDxf5uiNq1L3IXZbcJ7gHVjIDY
	sVlLrGRg==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <carnil@debian.org>)
	id 1tfdIJ-001rDS-PV; Wed, 05 Feb 2025 11:10:12 +0000
Received: by eldamar.lan (Postfix, from userid 1000)
	id 21C64BE2EE7; Wed, 05 Feb 2025 12:10:11 +0100 (CET)
Date: Wed, 5 Feb 2025 12:10:11 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: Johannes Berg <johannes.berg@intel.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drivers: wireless: broadcom: b43: Replace outdated
 firmware URL
Message-ID: <Z6NHE0cL2SaIiJbi@eldamar.lan>
References: <20250205110614.216958-1-carnil@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250205110614.216958-1-carnil@debian.org>
X-Debian-User: carnil
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_031016_921792_06C58029 
X-CRM114-Status: GOOD (  19.16  )
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

On Wed, Feb 05, 2025 at 12:06:14PM +0100, Salvatore Bonaccorso wrote:
> https://wireless.wiki.kernel.org site now redirects to
> https://wireless.docs.kernel.org/en/latest/ making the reference
> information for the b43 firmware inaccessible. Update the URL to the
> current location.
> 
> Link: https://bugs.debian.org/1095062
> Signed-off-by: Salvatore Bonaccorso <carnil@debian.org>
> ---
>  drivers/net/wireless/broadcom/b43/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/b43/main.c b/drivers/net/wireless/broadcom/b43/main.c
> index 25b4ef9d3c9a..7529afd24aed 100644
> --- a/drivers/net/wireless/broadcom/b43/main.c
> +++ b/drivers/net/wireless/broadcom/b43/main.c
> @@ -2166,7 +2166,7 @@ static void b43_print_fw_helptext(struct b43_wl *wl, bool error)
>  {
>  	const char text[] =
>  		"You must go to " \
> -		"https://wireless.wiki.kernel.org/en/users/Drivers/b43#devicefirmware " \
> +		"https://wireless.docs.kernel.org/en/latest/en/users/drivers/b43/developers.html#list-of-firmware " \
>  		"and download the correct firmware for this driver version. " \
>  		"Please carefully read all instructions on this website.\n";
>  
> -- 
> 2.47.2

FWIW, I think there are more such outdated references and should be
updated to the current docs location.  So feel free to reject this one
in favour of a better ovehaul.

Or maybe the old locations could be redirected to the new place?

Regards,
Salvatore

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
