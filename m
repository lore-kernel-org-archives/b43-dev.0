From: =?ISO-8859-1?Q?G=E1bor_Stefanik?= <netrolller.3d@gmail.com>
Date: Sat, 9 Apr 2011 00:11:35 +0200
Subject: [PATCH][2.6.39?] b43: trivial: update module info about firmware
In-Reply-To: <1302299890.28673.1.camel@maggie>
References: <1302267632-2326-1-git-send-email-zajec5@gmail.com>
	<1302299890.28673.1.camel@maggie>
Message-ID: <BANLkTik_QTuAG+c7LnHt87_kKRy4HM6zvQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?ISO-8859-1?Q?Michael_B=FCsch?= <mb@bu3sch.de>
Cc: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

2011/4/8 Michael B?sch <mb@bu3sch.de>:
> On Fri, 2011-04-08 at 15:00 +0200, Rafa? Mi?ecki wrote:
>> We do not use ucode9,
>
> Well, but we should.
> There are only minor differences between r5 and r9 firmware.
> r9 basically is a r5 firmware with workarounds added that are
> needed for r9 devices.
>
> So I think we should start using r9 instead of removing it here.
>

With a fallback to r5 if no r9 firmware can be found... just to keep
OpenFWWF working.

> --
> Greetings Michael.
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
> the body of a message to majordomo at vger.kernel.org
> More majordomo info at ?http://vger.kernel.org/majordomo-info.html
>



-- 
Vista: [V]iruses, [I]ntruders, [S]pyware, [T]rojans and [A]dware. :-)
