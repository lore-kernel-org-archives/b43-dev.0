From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Fri, 08 Apr 2011 23:58:10 +0200
Subject: [PATCH][2.6.39?] b43: trivial: update module info about firmware
In-Reply-To: <1302267632-2326-1-git-send-email-zajec5@gmail.com>
	(sfid-20110408_082321_349809_A49377CD)
References: <1302267632-2326-1-git-send-email-zajec5@gmail.com>
	(sfid-20110408_082321_349809_A49377CD)
Message-ID: <1302299890.28673.1.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Fri, 2011-04-08 at 15:00 +0200, Rafa? Mi?ecki wrote: 
> We do not use ucode9,

Well, but we should.
There are only minor differences between r5 and r9 firmware.
r9 basically is a r5 firmware with workarounds added that are
needed for r9 devices.

So I think we should start using r9 instead of removing it here.

-- 
Greetings Michael.
