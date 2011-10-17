From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 17 Oct 2011 16:24:47 +0200
Subject: [PATCH 3.2] b43: fill ctl1 word on all new PHYs, fix PHY errors
In-Reply-To: <1318800236-5329-1-git-send-email-zajec5@gmail.com>
References: <1318800236-5329-1-git-send-email-zajec5@gmail.com>
Message-ID: <20111017162447.5a758fda@milhouse>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, "John W. Linville" <linville@tuxdriver.com>, b43-dev@lists.infradead.org

On Sun, 16 Oct 2011 23:23:56 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> +	if (phy->type >= B43_PHYTYPE_N) {

I must say that I really dislike this. It's error prone (previous patch got it wrong)
and it's hard to read. Just spell out all types or use a switch statement, as appropriate.
It also makes grepping the sources a lot harder.
I don't see any real advantage.

-- 
Greetings, Michael.
