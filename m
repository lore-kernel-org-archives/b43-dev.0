Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78F2BECAAD8
	for <b43-dev@archiver.kernel.org>; Wed, 31 Aug 2022 05:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gp77h4xhgD9zSE/nulUvhLNZZtur8O/H06/znR+ZIOM=; b=gbcfqErcEXmNvt
	+cB7uY1PAhmz4gjF7omrim9G8Ok7DYxJOhuoDxrg5/7C/ieXeIa6LTpyCOuyzNnpWzs8Q1AZSCb8B
	vzzn+PA51MyyDRqJJEHmdfGO4SCI/C3jbJvNDNIQfYexdmGlNsDYtnyxLhRcAXgzp5y69JviDtV34
	HsQhZ+cB1/kDGSgYEyJpSNYErHxMTt5ND7XXDH/4NdwPDBhicxDn6taJDkquw7CBAJm003V0HbCEW
	sLWEq/22CoiRM7Ht/dpRsvW0bIIbZ/DtEIp+4eMP0LPBmv72QMGVFOBPw/TluSoFxzQJcFla+Gmwy
	alUfhOH4lIeFB7AB88uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTGKo-0041UL-6L; Wed, 31 Aug 2022 05:32:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTGKk-0041RG-Ee; Wed, 31 Aug 2022 05:32:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E00456149E;
	Wed, 31 Aug 2022 05:32:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E23E3C433C1;
	Wed, 31 Aug 2022 05:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661923932;
	bh=8QPIebz3VNfwqkf+lieP7NIgbMX2A7q2FQXHX4f2P6g=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=M+sFZROvqWXmtfg+z3yqjjyr/gRL0V45utw1UrSV8xnrmBsaFulC45YN0iYeBpKrY
	 SQuKcLeHxPnbtfs2GrrBX0SwrXobGmZuE7XPMgjw2MqKQqGXjVggTSBdJbkbfrQeR/
	 T9jAKPEDhN4ULA5dmVP0+w+UIo8xxG3vHLQJfpAB5id1vG0sx5HBS4tNjlxsvXhuQF
	 hZ8kTyjmmrrQjOg0sySpHnEz6VD9qdBYa56Im/x7i5hO2Vc1r9PEcaMzf8zyGM60VL
	 eOaoOZS4/l/d8DG0E364vmLaemcqPImfWJbwuY0/OhXrbanhNV7x2ofajqpZIt3kV0
	 sCE0IQynjrghg==
From: Kalle Valo <kvalo@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-kernel@vger.kernel.org,  "David S. Miller" <davem@davemloft.net>,
  Eric Dumazet <edumazet@google.com>,  Jakub Kicinski <kuba@kernel.org>,
  Paolo Abeni <pabeni@redhat.com>,  Christian Lamparter
 <chunkeey@googlemail.com>,  Simon Kelley <simon@thekelleys.org.uk>,  Larry
 Finger <Larry.Finger@lwfinger.net>,  Arend van Spriel <aspriel@gmail.com>,
  Franky Lin <franky.lin@broadcom.com>,  Hante Meuleman
 <hante.meuleman@broadcom.com>,  Stanislav Yakovlev
 <stas.yakovlev@gmail.com>,  Stanislaw Gruszka <stf_xl@wp.pl>,  Jouni
 Malinen <j@w1.fi>,  Ajay Singh <ajay.kathat@microchip.com>,  Claudiu
 Beznea <claudiu.beznea@microchip.com>,  Igor Mitsyanko
 <imitsyanko@quantenna.com>,  Sergey Matyukevich <geomatsi@gmail.com>,
  Herton Ronaldo Krzesinski <herton@canonical.com>,  Hin-Tak Leung
 <htl10@users.sourceforge.net>,  linux-wireless@vger.kernel.org,
  netdev@vger.kernel.org,  b43-dev@lists.infradead.org,
  brcm80211-dev-list.pdl@broadcom.com,  SHA-cyfmac-dev-list@infineon.com,
  libertas-dev@lists.infradead.org
Subject: Re: [PATCH v2 2/3] net: wireless: move from strlcpy with unused retval to strscpy
In-Reply-To: <20220830201457.7984-2-wsa+renesas@sang-engineering.com> (Wolfram
	Sang's message of "Tue, 30 Aug 2022 22:14:53 +0200")
References: <20220830201457.7984-1-wsa+renesas@sang-engineering.com>
	<20220830201457.7984-2-wsa+renesas@sang-engineering.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Date: Wed, 31 Aug 2022 08:32:02 +0300
Message-ID: <87bks1c71p.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_223214_546414_327800D2 
X-CRM114-Status: GOOD (  12.17  )
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

Wolfram Sang <wsa+renesas@sang-engineering.com> writes:

> Follow the advice of the below link and prefer 'strscpy' in this
> subsystem. Conversion is 1:1 because the return value is not used.
> Generated by a coccinelle script.
>
> Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks, I see this in patchwork now:

https://patchwork.kernel.org/project/linux-wireless/patch/20220830201457.7984-2-wsa+renesas@sang-engineering.com/

Net folks, I assume I'll take this patch 2 to wireless-next. But if you
want to take it instead just let me know.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
