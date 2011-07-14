From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 14 Jul 2011 22:46:20 +0200
Subject: [PATCH 3/4] bcma: implement BCM4331 workaround for external PA
	lines
In-Reply-To: <1310672961-5311-3-git-send-email-zajec5@gmail.com>
References: <1310672961-5311-1-git-send-email-zajec5@gmail.com>
	<1310672961-5311-3-git-send-email-zajec5@gmail.com>
Message-ID: <CACna6rwq9MRnXAO_6acZd6MV1X7k4woY7DvtRY7DO=gMXEchHA@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>
Cc: b43-dev@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>

W dniu 14 lipca 2011 21:49 u?ytkownik Rafa? Mi?ecki <zajec5@gmail.com> napisa?:
>
> Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>

John, drop this one patch for now, please.

It contains typo and breaks SPROM reading on BCM4331. We have to
understand BCM4331 workaround better. This probably has to be applied
on some specific stage, but we don't know it yet.

-- 
Rafa?
