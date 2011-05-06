From: Michael =?ISO-8859-1?Q?B=FCsch?= <m@bues.ch>
Date: Fri, 06 May 2011 11:01:37 +0200
Subject: [PATCH] ssb: move ssb_commit_settings and export it
In-Reply-To: <1304635505-9824-1-git-send-email-zajec5@gmail.com>
References: <1304635505-9824-1-git-send-email-zajec5@gmail.com>
Message-ID: <1304672497.22936.4.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>, b43-dev@lists.infradead.org

On Fri, 2011-05-06 at 00:45 +0200, Rafa? Mi?ecki wrote: 
> +EXPORT_SYMBOL(ssb_commit_settings);

Don't add EXPORT_SYMBOLs, unless you also add an actual
user within the same patch series.

-- 
Greetings Michael.
