From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Fri, 18 Mar 2011 15:10:39 +0100
Subject: [RFC][PATCH] ssb: separate common scanning functions
In-Reply-To: <1300453433.13499.18.camel@dev.znau.edu.ua>
References: <1300449773-11255-1-git-send-email-zajec5@gmail.com>
	<1300453433.13499.18.camel@dev.znau.edu.ua>
Message-ID: <AANLkTimG8G_BsqoAUYWfRETfU1ndu_i87WjkXx+v_sNE@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: George Kashperko <george@znau.edu.ua>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <mb@bu3sch.de>, b43-dev@lists.infradead.org

2011/3/18 George Kashperko <george@znau.edu.ua>:
> Current ssb code ideology isn't really good place to start with support
> for ai backplanes. Its really great to see you willing to get ai
> supported in mainline but I'm sure this should be done apart from the
> ssb code and not even with one as the design decisions origin. Several
> concepts the ssb is based on are not designed to support anything else
> than ocp/sb and will require workarounds to suport ai.
> Thanks to Michael I had a time to think over the possibly code
> abstraction for shared sb and ai support. And while I'm still sure the
> patchwork for ai over ssb support is of good use as some intermediate
> decision to support ai-based hardware in sertain distributions but now I
> support Michael in that such (hopefully) a temporary buildups should not
> be in mainline.

Please, give some concrete arguments, which part of design does not match AI.

My patch has shown we need to duplicate 40% of SSB's scanning code.
What for example about pci.c? Which functions from that file won't be
duplicated in totally separated?

-- 
Rafa?
