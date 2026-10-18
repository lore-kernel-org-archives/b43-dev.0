Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C83D4CCF2C9
	for <b43-dev@archiver.kernel.org>; Sun, 18 Oct 2026 07:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUHlnfIqdjP2Xv6s/TE/YIDZF0l595tmSsIrZDk8O+0=; b=Dl5ORym5olRiv5
	69DAmdocmfr+c1Dh/ocl6pNIkHMx/tZlp00RUguk1TUumMN2RqeFu8DHDIBCybrN4pNpWDED7efI9
	DAajEfdhotY3SFaZ0zD2Kssp0V0/ZgH8RpIWc77zTJdSyAagn/kMMHJTXGNjHgExXtPJdadf7TEpm
	pkgIdNTd+j6G7Ndvqrn5UPsm1ASRHNUi7dFNwpKFQWSl6ysvogUbx1fiYBfzOB8xBgUyRLOfszxhK
	VIxgwvdODFC2XA7wsDd0IYJAZKrS/NIqKDJf2BAKXHPO9/34mM/CZTK3Ymus4ZinPhJlVbhoHyG7p
	rbvp8XcARz75s82act8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKwb-00000005fKN-06QW;
	Sun, 18 Oct 2026 07:04:33 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKwU-00000005fK3-2mIk
	for b43-dev@lists.infradead.org;
	Sun, 18 Oct 2026 07:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1792307067; x=1823843067;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=aMaS2RzqBspWDoLnSOlIzZikUYyiN7HpCUnFYTqtx/0=;
  b=JLtN83ZcoSOWfz8CBYEgvM5XSyephMWT1EDDKkrJwMUoNR/LPV+J1rrh
   3m40FbQxl3kw7/VAssJ3En6TFRSNgL3dI7pfyf5KbW+Qho3FOH8OLhw6Y
   qXKuX45eS3Nn5S3QmzuI3S1oyIQP09ZWut+3voW5QRtCbqv0tsnAcg2FJ
   VUgxBCaWrnpN1JY8unBbxqXW5XJ70TWcxviLyc2nju5csVP0BkNodNYlL
   w5P1TRu4/X7qX4ACZJVcR12mp/S9KE4ztjfuLAJbknJVJCF4NlNR+mC2m
   VpK+D+HmmtlHeJdjCi/pFWCl04l/cnUxjUi4wFrAgvvmOoQt0Vz+YkdGC
   g==;
X-CSE-ConnectionGUID: uq2+4e9zSnigwh+CcHDYIg==
X-CSE-MsgGUID: Ys342TKEQs6tCn2vHEmaaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11938"; a="1057731"
X-IronPort-AV: E=Sophos;i="6.27,165,1787036400"; 
   d="scan'208";a="1057731"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2026 00:04:25 -0700
X-CSE-ConnectionGUID: yv+wtpsrRBaO/3RzXFSFnw==
X-CSE-MsgGUID: faXAPn5gQfGkQ0LwieHvzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,165,1787036400"; 
   d="scan'208";a="2266683"
Received: from lkp-server01.sh.intel.com (HELO 0caa9d2d175c) ([10.239.97.150])
  by orviesa004.jf.intel.com with ESMTP; 18 Oct 2026 00:04:23 -0700
Received: from kbuild by 0caa9d2d175c with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1xIKwO-00000000KDW-2Dsd;
	Sun, 18 Oct 2026 07:04:20 +0000
Date: Sun, 18 Oct 2026 15:04:04 +0800
From: kernel test robot <lkp@intel.com>
To: Rosen Penev <rosenp@gmail.com>, linux-wireless@vger.kernel.org
Subject: Re: [PATCH wireless] wifi: b43: keep the N-PHY TX power control from
 drifting while idle
Message-ID: <202610181522.20QDqray-lkp@intel.com>
References: <20261017005156.1260496-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261017005156.1260496-1-rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261018_000426_766362_89616E72 
X-CRM114-Status: UNSURE (   9.74  )
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
Cc: linux-kernel@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "b43-dev" <b43-dev-bounces@lists.infradead.org>
Errors-To: b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org

Hi Rosen,

kernel test robot noticed the following build errors:

[auto build test ERROR on wireless/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Rosen-Penev/wifi-b43-keep-the-N-PHY-TX-power-control-from-drifting-while-idle/20261016-175156
base:   https://git.kernel.org/pub/scm/linux/kernel/git/wireless/wireless.git main
patch link:    https://lore.kernel.org/r/20261017005156.1260496-1-rosenp%40gmail.com
patch subject: [PATCH wireless] wifi: b43: keep the N-PHY TX power control from drifting while idle
config: x86_64-randconfig-1010-20261018 (https://download.01.org/0day-ci/archive/20261018/202610181522.20QDqray-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20261018/202610181522.20QDqray-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202610181522.20QDqray-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: drivers/net/wireless/broadcom/b43/b43.ko: symbol 'b43_nphy_txpctl_ofdm_tx' undefined!

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
