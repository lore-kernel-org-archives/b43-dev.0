From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 15 Oct 2010 09:53:09 -0500
Subject: [PATCH 1/3] b43: N-PHY: define channel table struct for rev3+
	devices
In-Reply-To: <AANLkTimvMCRVLzNjM+vsVEyHHAV0fLF4ABeV_20CdOCa@mail.gmail.com>
References: <1287090064-14607-1-git-send-email-zajec5@gmail.com>	<AANLkTimnzeRa53g0i2ZkB4Qy_x_P3h4Z+ZwC2HdJPxFC@mail.gmail.com>	<AANLkTinnOm5rg8FKxFct1zKHZZi7k9nxEKtBYkLFktSS@mail.gmail.com>	<AANLkTim==y20jOa6SpvZogZ+0inFGvmpnN-nTKFZp2Xz@mail.gmail.com>
	<AANLkTimvMCRVLzNjM+vsVEyHHAV0fLF4ABeV_20CdOCa@mail.gmail.com>
Message-ID: <4CB86AD5.90205@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: =?UTF-8?B?R8OhYm9yIFN0ZWZhbmlr?= <netrolller.3d@gmail.com>, linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On 10/15/2010 09:27 AM, Rafa? Mi?ecki wrote:
> 
> There is "Chapter 12: Macros, Enums and RTL" in:
> http://www.kernel.org/doc/Documentation/CodingStyle
> 
> Some quotes:
> 1) "Macros with multiple statements should be enclosed in a do - while block:"
> 2) "macros defining constants using expressions must enclose the
> expression in parentheses"
> 
> Second one may sound like sth close, but it's just about expressions like:
> #define CONSTEXP (CONSTANT | 3)
> 
> So there doesn't seem to be any "rule" in CodingStyle wanting us to
> add parentheses when you suggested.

I think that scripts/checkpatch would report any definitions that need parentheses.

As you have probably figured out, I'm back home. If you have spec questions ;),
I'm ready.

Larry
