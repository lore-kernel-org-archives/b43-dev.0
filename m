From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Fri, 06 Aug 2010 12:37:36 -0500
Subject: Interesting development regarding b43 DMA ERROR
In-Reply-To: <AANLkTi=-Jc9XjD-gqwtUyUnM768wvv3GzzwhJNtkwYKK@mail.gmail.com>
References: <4C5B27BE.8010708@lwfinger.net>
	<AANLkTi=-Jc9XjD-gqwtUyUnM768wvv3GzzwhJNtkwYKK@mail.gmail.com>
Message-ID: <4C5C4860.2030507@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>

On 08/06/2010 11:31 AM, Rafa? Mi?ecki wrote:
> 
> Interesting. It means some patch that gone mainline fixed it and it
> was submitted using other tree than w-t, right?
> 
> Would you care to bisect this?

It won't be fun as this is a 1.6 GHz Atom and a kernel build is quite slow. In
addition, this one has the relocated SPROM that requires patching to be able to
boot. In the interests of the community, I will do it.

Larry
