From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 12 Jun 2014 07:44:42 +0200
Subject: Linux 3.15: WLAN regression on WRL54GL/B43?
In-Reply-To: <20140611230513.GC913@drone.musicnaut.iki.fi>
References: <20140611230513.GC913@drone.musicnaut.iki.fi>
Message-ID: <CACna6rwaxzyY+vqQa+vJETA_g+8zLmwWQb9uYhFOvTy57A15rw@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Johannes Berg <johannes.berg@intel.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 12 June 2014 01:05, Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> While testing the final 3.15, I noticed that "iwlist wlan0 scanning"
> cannot find anything on my WRT54GL router anymore:

I believe it's BCM5352E SoC wth G-PHY rev 7 and radio 0x2050 rev 2. Is
that correct? Provide us a boot log.
