From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 9 Apr 2011 01:16:06 +0200
Subject: [PATCH][2.6.39?] b43: trivial: update module info about firmware
In-Reply-To: <1302299890.28673.1.camel@maggie>
References: <1302267632-2326-1-git-send-email-zajec5@gmail.com>
	<1302299890.28673.1.camel@maggie>
Message-ID: <BANLkTi=7OZ40Tn-=8KCX_ReNsUQ3euwTfQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

W dniu 8 kwietnia 2011 23:58 u?ytkownik Michael B?sch <mb@bu3sch.de> napisa?:
> On Fri, 2011-04-08 at 15:00 +0200, Rafa? Mi?ecki wrote:
>> We do not use ucode9,
>
> Well, but we should.
> There are only minor differences between r5 and r9 firmware.
> r9 basically is a r5 firmware with workarounds added that are
> needed for r9 devices.
>
> So I think we should start using r9 instead of removing it here.

I meant to add support for loading ucode 9 later and the re-add info
about this. But OK, I'll make V2 which only adds 16_mimo. For normal
development cycle (wireless-testing) I'll add ucode9 loading support.

-- 
Rafa?
