From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 18 Mar 2011 17:04:36 +0100
Subject: [RFC][PATCH] ssb: separate common scanning functions
In-Reply-To: <1300463925.13499.118.camel@dev.znau.edu.ua>
References: <1300449773-11255-1-git-send-email-zajec5@gmail.com>
	<1300453433.13499.18.camel@dev.znau.edu.ua>
	<AANLkTimG8G_BsqoAUYWfRETfU1ndu_i87WjkXx+v_sNE@mail.gmail.com>
	<1300460342.13499.60.camel@dev.znau.edu.ua>
	<AANLkTi=2qBhKfJZ8a2GEgx_4aJL_85FKODUX31BddmN1@mail.gmail.com>
	<1300463925.13499.118.camel@dev.znau.edu.ua>
Message-ID: <AANLkTikGpQG1PS+VoX-8pZwePci08NO4RHjjLn+Lshg5@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: George Kashperko <george@znau.edu.ua>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, b43-dev@lists.infradead.org

2011/3/18 George Kashperko <george@znau.edu.ua>:
> My english is awful therefore seems we missunderstood each other. I'm
> sure I got your point right - you plan to start up the new (bcmb)
> project for both sb and ai support.

No, no, no. My bcmb is not expected to be project for both buses. It
is expected to provide helper functions for *two separated* drivers:
ai and ssb.

I don't want to duplicate ssb_core_name (already implemented in ssb)
in my ai. That way I put it in bcmb_scan.c. I can now use
ssb_core_name in both: ssb and ai without double, duplicated
implementation.

I'm still reading your earlier e-mail...

-- 
Rafa?
