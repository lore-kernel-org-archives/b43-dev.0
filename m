From: Ben Greear <greearb@candelatech.com>
Date: Mon, 09 May 2011 15:58:04 -0700
Subject: Regression affecting b43 LP-PHY card
In-Reply-To: <BANLkTin=cU_kCSFfznna69pkgTsSNVjJgw@mail.gmail.com>
References: <BANLkTin=cU_kCSFfznna69pkgTsSNVjJgw@mail.gmail.com>
Message-ID: <4DC8717C.70405@candelatech.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: b43-dev <b43-dev@lists.infradead.org>, linux-wireless@vger.kernel.org, Juan Carlos Romero <juancarlos.romero@gmail.com>

On 05/09/2011 03:52 PM, Rafa? Mi?ecki wrote:

> Did anyone else experience any similar problems with latest wireless-testing?

With the ath5k patch I posted, and the ath9k patches that Felix
posted recently in response to my bug reports, I've had good
luck with ath9k and ath5k.

I also pulled in the slub cmpxcg fix that fixes fatal bugs
for compiles for something earlier than Pentium-II processors.

Hopefully -rc7 will be out shortly (which will contain the slub
fix, and if we're lucky..the ath9k and ath5k fixes too).

I don't test with any other wifi nics..just ath5k and ath9k.

I've mostly been testing virtual stations...will crank up some
ath9k APs shortly...

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
