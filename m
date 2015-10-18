From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sun, 18 Oct 2015 11:32:50 +0200
Subject: [PATCH 3/3] net: wireless: b43: statics Don't init to 0
In-Reply-To: <1445122898-5810-3-git-send-email-paulmcquad@gmail.com>
References: <1445122898-5810-1-git-send-email-paulmcquad@gmail.com>
 <1445122898-5810-3-git-send-email-paulmcquad@gmail.com>
Message-ID: <CACna6rxotaUpArMtcBhQ6r5-=VpsoNDLTRZd4PyVB0Epc3atwg@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul McQuade <paulmcquad@gmail.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, Johannes Berg <johannes.berg@intel.com>, David Miller <davem@davemloft.net>, Joe Perches <joe@perches.com>, =?UTF-8?Q?Michael_B=C3=BCsch?= <m@bues.ch>, mike.looijmans@topic.nl, cengelma@gmx.at, khoroshilov@ispras.ru, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>, Network Development <netdev@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>

On 18 October 2015 at 01:01, Paul McQuade <paulmcquad@gmail.com> wrote:
> Don't turn statics to 0 or NULL

Same request as Michael's in 2/3. Your "statics Don't init to 0"
message sounds strange, statics *are* initialized to 0 by default (as
you probably know but described it in a unclear way).
