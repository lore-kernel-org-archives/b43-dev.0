From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 6 May 2011 11:05:48 +0200
Subject: [PATCH] ssb: move ssb_commit_settings and export it
In-Reply-To: <1304672497.22936.4.camel@maggie>
References: <1304635505-9824-1-git-send-email-zajec5@gmail.com>
	<1304672497.22936.4.camel@maggie>
Message-ID: <BANLkTi=4SGkWvFCMxMiqBzAsfSXexDO-cQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, b43-dev@lists.infradead.org

2011/5/6 Michael B?sch <m@bues.ch>:
> On Fri, 2011-05-06 at 00:45 +0200, Rafa? Mi?ecki wrote:
>> +EXPORT_SYMBOL(ssb_commit_settings);
>
> Don't add EXPORT_SYMBOLs, unless you also add an actual
> user within the same patch series.

OK, John please drop this. I'll resubmit this in series with b43 patch
when it's ready.

-- 
Rafa?
