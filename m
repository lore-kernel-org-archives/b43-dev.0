Return-Path: <b43-dev-bounces+b43-dev=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54043C54798
	for <b43-dev@archiver.kernel.org>; Mon, 26 Feb 2024 02:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:CC:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VOEAXOQt4COtpYNWMq485qOtbc4wmE9EIVxILtjAE94=; b=dKoN40z2tmPRfd
	KW8qNOnfFaRm0RRNwLMiOqQU6Xi0ZzsYMzbVMMbsblo/PD7CdXZwH+xP3sUqfMGqb3Q0S95+1C996
	S/bFDjtDc7Rq6uT5+wwbf21Jp5lBPZAnTPYKY/jsHfVwB+RswoXFDQxSXVMHi4vkmhSSByrfVyi+p
	pc6pld6gQknDtLkJSvdzMMqhdoWgVEtjrHdKD9s1m0honbkyG/YuwCHpEbTW0KiirQfVg298dfLMk
	xFYw5b99mLQV45eHFLptPQLteQkh3EAdhsKyPgWJckDZzxVYvM/Y7GdRG55E5MGTEVvMcLYGgRZm7
	XB4oblBtjSv6FNmKJCHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reR5a-0000000GDK8-0rbl;
	Mon, 26 Feb 2024 02:51:34 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reR5S-0000000GDG5-0v6A;
	Mon, 26 Feb 2024 02:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1708915886; x=1740451886;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=Pgj01wMzoj/WBuC6kUjE5jPGW0oMlvlp9SVVJfxr7Ak=;
  b=QfZHWEXKeFMGbePdh4XcHNtFNyP8kZtZKOsoeagnD6TTml7Q5pwF2SU7
   pWnh+qTpY2x830ixZXhsjwO/IeBTQ3AYV3k1XWaOhwQSXeYsxlFwyqpsY
   68Ade9NRPcfp+KW9I3PJAarBgAlP7DpiqeCGRZPDP0HJ8UdA9ePPN45Cp
   9W7rG4Y8WthPBGXBFpKJQ1x+4n0pF8ksh9F2EtmZa2J/WWkcdCtTNa+kb
   ehq8V9ujmT7IQRWXpsUB7aTARqp7X6Fr2lx3nvXYSK4nGGn2PL3Na+oyW
   PZUdygdV5btJHvHnT7WOYWC/hM6+0gp54T7BR3w2SIr8Y7uWsDSc9AlOb
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="14616140"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="14616140"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2024 18:51:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="43994714"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 25 Feb 2024 18:51:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 25 Feb 2024 18:51:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 25 Feb 2024 18:51:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 25 Feb 2024 18:51:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IGXcKQhpV1niSSdYYHRNPzKaC/vjslQY8b8RIjcDlyD0BJiWWxlYxC4gPMsOIdIyyrIP87ECRJjDEfeZr8VLmm/R3zoOwDodMPFRwki8egOSuK8RImJKieOfmdiFuu3SURq3rsg278m2L7gKbVaG9CWXcNi9vsfmoIiri+zPjPgK39GJ7p9eMDL7nCOC+Hh/wTnUf64/qmni/kelzeCKUm74ZJW9L851UwyWDoKjF9wbTpXs7Dd8UBeCuWuYQr3mydySQEiLg7M66w7tdvo88VjnPI1tMsZ7KZ8+X20JJsDa12m4F+Jc3bVBZXtfGq7YX26rIscZTV/7i+/hEIewnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9amZbVITHRl5wloetJ3plw6bmYLYM10MOz5QS9FbiEQ=;
 b=jt8V5rr4r6TNSdtG+th5QusxuwAt+lG+SwdM0Zj451VaIAZUjjRBiWxr/v7wxmHFV+tjlKz+gyI6HBt6N41pHEsyzN+vYUAOFkgQRUPsm0i8JAobPbHjPhiaJ2j5bxAEWTAphRazyI1SP88Yv90Y7Q+ng1U+GuCECBUFX+l2L66kfcKqxlafZmD4gveg2RVZO1rn6DaC8WdqAQDzaaKwgtSDhrd6xzswjhUMKfTgnGaqHjmjB5iqsOve7xSLeHKV2GzpypiLChmmf+ulYwz8ylBzwSwRQmj7f0DSeF+TQ3Oqj+LTiWIEF6DjpV5j0XXZAK2Dj77xiT5tLF3c3YOHJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 by SA2PR11MB4777.namprd11.prod.outlook.com (2603:10b6:806:115::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.21; Mon, 26 Feb
 2024 02:51:17 +0000
Received: from LV3PR11MB8603.namprd11.prod.outlook.com
 ([fe80::58dd:99ca:74a6:2e3e]) by LV3PR11MB8603.namprd11.prod.outlook.com
 ([fe80::58dd:99ca:74a6:2e3e%3]) with mapi id 15.20.7339.009; Mon, 26 Feb 2024
 02:51:17 +0000
Date: Mon, 26 Feb 2024 10:51:07 +0800
From: kernel test robot <oliver.sang@intel.com>
To: Johannes Berg <johannes.berg@intel.com>
CC: <oe-lkp@lists.linux.dev>, <lkp@intel.com>, Linux Memory Management List
	<linux-mm@kvack.org>, <linux-wireless@vger.kernel.org>,
	<wcn36xx@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<b43-dev@lists.infradead.org>, <brcm80211@lists.linux.dev>,
	<brcm80211-dev-list.pdl@broadcom.com>, <linux-staging@lists.linux.dev>,
	<oliver.sang@intel.com>
Subject: [linux-next:master] [wifi]  0a44dfc070: hwsim.ap_vht80_csa.fail
Message-ID: <202402261039.708d78d3-oliver.sang@intel.com>
Content-Disposition: inline
X-ClientProxiedBy: SG2P153CA0037.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::6)
 To LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8603:EE_|SA2PR11MB4777:EE_
X-MS-Office365-Filtering-Correlation-Id: b209446a-03ad-4f9f-27fc-08dc3675cdd2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LOxnyw6EoYTC2BQYceKsBG6BLZMlKeplk+7DcMJq6plYnVlYt+JNs8CoPmFmAxImXaiB7B3+TlZvVyrkx4tYzobumPDrghgWzzMfiFJ446tKNqT+Gch8Mtj+IzdCxjcomfRwCaKNCwCG0bqTYPVL2yITJSjRvUlNMN+qYN2LeFvgtbtuFB9Tt3rGixLHMgWq18RwUnMFmjozfx4OjqNwKzO3p68ZZqAX6OM94YsDW6gwNoV5FTix8TBiUQOSmsVevTUnvD7ha1zOT0Nrl9KUvSDH05PVTKbr6pottUCK/ct8xLMB2eTPdo7A+bLa89u4DjLowfWQxf1aA5Lf8bEFTA5q+4R8MzCXiClFt6lU2pXk5Rcw71VtE3eDG2cnVDidWidsfADafh0keNDVDiyq9tXOvMiRYPN1BGDbkFmZ4wILrIgHfPQQLputVXfyb/O5glDpxU5ue2cegaOyQ767DwTst3nQfd3hNxr4Z49ebFa1VWoXb2RpwbjBvEUR9sPR46JgPcXeWoe7XmlwES3KyerNkn4plsRCurAc+blJhoJZjp3BWH3w5CvD0G9qSBFnCQOCooGOjvk+ZQDUAmpfrHSLV6IrBKyTzYL8rBwiuUyJzxr8TYnYcDR2zZIbzlq7
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV3PR11MB8603.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UvMa0XNZBNuQy1yB6pch++W3KAxJSOAk7ZhFot1THawt4ygoErNnqSdFgfcC?=
 =?us-ascii?Q?FZTNUAQtHsowx14XeFIzCV5zRQzCvsbrpownqd+HuDKrVpDovjcdCSJNmBAh?=
 =?us-ascii?Q?1pM20DrZq6CwEixPiETYNeptU0T5szm0+US0np59UOqloNdvux/xNyEUvmnV?=
 =?us-ascii?Q?/MoH1frsQQ7owa8cEKJAjc1kRABp/b1piE93prGE4fQpFU6LV24MKp9S0yMo?=
 =?us-ascii?Q?hzFxMcCousLW5PLPz1fEq71lOXoA8hoSgeRZYFDTdD6IPSR2bpTIftxY+5qm?=
 =?us-ascii?Q?1bHNtaAazJ0W5ePbNoHQ/BMZ3eK5XjCDEDVhhdTZHajmbl6mZymINo2ZyfU8?=
 =?us-ascii?Q?tbfHBMUPt2k6oZ+PLeq00OVirmciN45lH0rr/8BuuQcNnf+SI4frWSi8GY/2?=
 =?us-ascii?Q?rNGKkv7oxAoaT6qXOGKUnsDgVQclIGA8VxCjiGMO7p34HexgYwcG3utjGYVb?=
 =?us-ascii?Q?547jD834QErFX99knSUToygiKKyisApORN78/vRL5ZJZyz6e5hPLbaYOUIPG?=
 =?us-ascii?Q?7aYv9wgOwYt5vxt8THxILVryDymjUX6HWYYWinLHXHsqfeG/PzjFGofuI1N+?=
 =?us-ascii?Q?Um0/2PHnRT+OEv3zc6tzkvFdPJGrVFr4llDCYJoRnmCVHiq+jPHizs00uKbN?=
 =?us-ascii?Q?l/00OS9CBzcJVW4Njc+eXKcvzpEA6RcrOBfqdS67Dxi0KpOqCC/nipJ2eO5M?=
 =?us-ascii?Q?e7QcfVJuGk4f+CJ6+X+qNQW8XtlUeUuSTRpKeoR1Em2i0bErEXqdmhsxDmCK?=
 =?us-ascii?Q?mQWnbU8p2UExpLsQ+WlB4IRLBSD9xNei5LF+xwT9ecRrVYwwIG8agVQtRWAe?=
 =?us-ascii?Q?LcTGV3ShPzjXXt/Nj0OCo4LqUJjXkcN3h49cMmmP2mSFogW07pduMsFYXlry?=
 =?us-ascii?Q?IO/Bvv9klGI1971eQDBZw6ydnVqB/raN9wiu8IkqKQIY/L6LDpNt9BXQAvEo?=
 =?us-ascii?Q?kRGCDJuTdoPHQZe+OnrSHgMWzKoizG+IjQQmfqSyAqvgRKUpaQNd/ubpnoCW?=
 =?us-ascii?Q?7ROisFy2xJ7BLukkaj5xxkhtzupYoe8z1WY9LBnHUELM0aHjVToPcsGgCnVd?=
 =?us-ascii?Q?PNWYopjihgmJBNpS+pIaXFgOa7yVxKyGnY32UruYzg3lBajulm/A1dux5mqH?=
 =?us-ascii?Q?7nzGDHG22QSckmIKXCRWsXZbr7P0FYynI0LKWd5FkD3vzHOwbZVf4UrEFW0b?=
 =?us-ascii?Q?HIa0b0CGAsObjelWn9wviMzVAKOYFvlaLitHpaavFdTrJ4E13zUjwhG3AGaI?=
 =?us-ascii?Q?9z/wRQV/o20MlXfawG4F8WlR7iaGsUBSr3YINoHbwCt+gBn0rRcqTYG8jyVV?=
 =?us-ascii?Q?U0buOXL/2oTvree1fd35Q+dA+ynwsW1UBXT41e7EjdSHTZNzMOF9UzoeJH+p?=
 =?us-ascii?Q?L+qz8MS5awWN5Vf8Z20byOWYZCXgU5EokKD6f+7dp28WDtXoYGa93LnDPWRH?=
 =?us-ascii?Q?NZOjzgXAGlWkIlPjPY6NsqP+Cvc1lYAA2P03UpwTUpJPA/UPjcx6bKK0ceIR?=
 =?us-ascii?Q?EVFaCseCBJzgBjkr5QcHjkLgTQTbbO1NXobC9geYJv+NxyBIEGBsHAqqzBoY?=
 =?us-ascii?Q?PWQdPYv3GC7khAnbCqSLb88ACA6torMRMH3S3AJa?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b209446a-03ad-4f9f-27fc-08dc3675cdd2
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 02:51:17.2722
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pdzb594IbpXgwYfduuTCMxH65QnK5ek6+dcBZohNn/2WvB/247BgTP91Xe4ATPNZg94cAji1Bh72lmeeOFpA8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4777
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240225_185126_329519_B6FCBA96 
X-CRM114-Status: UNSURE (   6.69  )
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



Hello,

kernel test robot noticed "hwsim.ap_vht80_csa.fail" on:

commit: 0a44dfc070749514b804ccac0b1fd38718f7daa1 ("wifi: mac80211: simplify non-chanctx drivers")
https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git master

[test failed on linux-next/master d37e1e4c52bc60578969f391fb81f947c3e83118]

in testcase: hwsim
version: hwsim-x86_64-717e5d7-1_20231228
with following parameters:

	test: ap_vht80_csa



compiler: gcc-12
test machine: 8 threads 1 sockets Intel(R) Core(TM) i7-4790 v3 @ 3.60GHz (Haswell) with 6G memory

(please refer to attached dmesg/kmsg for entire log/backtrace)




If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <oliver.sang@intel.com>
| Closes: https://lore.kernel.org/oe-lkp/202402261039.708d78d3-oliver.sang@intel.com

group: group-33, test: ap_vht80_csa
2024-02-18 10:47:21 export USER=root
2024-02-18 10:47:21 ./build.sh
Building TNC testing tools
Building wlantest
Building hs20-osu-client
Building hostapd
Building wpa_supplicant
2024-02-18 10:48:15 ./start.sh
2024-02-18 10:48:17 ./run-tests.py ap_vht80_csa
DEV: wlan0: 02:00:00:00:00:00
DEV: wlan1: 02:00:00:00:01:00
DEV: wlan2: 02:00:00:00:02:00
APDEV: wlan3
APDEV: wlan4
START ap_vht80_csa 1/1
Test: VHT with 80 MHz channel width and CSA
Starting AP wlan3
Connect STA wlan0 to AP
Country code at the end: 00
sending data without carrier won't work
Traceback (most recent call last):
  File "/lkp/benchmarks/hwsim/tests/hwsim/./run-tests.py", line 537, in main
    t(dev, apdev)
  File "/lkp/benchmarks/hwsim/tests/hwsim/test_ap_vht.py", line 805, in test_ap_vht80_csa
    hwsim_utils.test_connectivity(dev[0], hapd)
  File "/lkp/benchmarks/hwsim/tests/hwsim/hwsim_utils.py", line 217, in test_connectivity
    raise Exception(last_err)
Exception: sending data without carrier won't work
FAIL ap_vht80_csa 4.501333 2024-02-18 10:48:23.019458
passed 0 test case(s)
skipped 0 test case(s)
failed tests: ap_vht80_csa
2024-02-18 10:48:23 ./stop.sh



The kernel config and materials to reproduce are available at:
https://download.01.org/0day-ci/archive/20240226/202402261039.708d78d3-oliver.sang@intel.com



-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
b43-dev mailing list
b43-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/b43-dev
