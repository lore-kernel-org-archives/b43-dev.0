From: Aaro Koskinen <aaro.koskinen@iki.fi>
Date: Thu, 12 Jun 2014 11:24:08 +0300
Subject: Linux 3.15: WLAN regression on WRL54GL/B43?
In-Reply-To: <CACna6rwaxzyY+vqQa+vJETA_g+8zLmwWQb9uYhFOvTy57A15rw@mail.gmail.com>
References: <20140611230513.GC913@drone.musicnaut.iki.fi>
 <CACna6rwaxzyY+vqQa+vJETA_g+8zLmwWQb9uYhFOvTy57A15rw@mail.gmail.com>
Message-ID: <20140612082408.GD913@drone.musicnaut.iki.fi>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Johannes Berg <johannes.berg@intel.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

Hi,

On Thu, Jun 12, 2014 at 07:44:42AM +0200, Rafa? Mi?ecki wrote:
> On 12 June 2014 01:05, Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> > While testing the final 3.15, I noticed that "iwlist wlan0 scanning"
> > cannot find anything on my WRT54GL router anymore:
> 
> I believe it's BCM5352E SoC wth G-PHY rev 7 and radio 0x2050 rev 2. Is
> that correct? Provide us a boot log.

Yes, it's:

[    9.460000] b43-phy0: Broadcom 5352 WLAN found (core revision 9)
[    9.520000] b43-phy0: Found PHY: Analog 2, Type 2 (G), Revision 7

I confirm your patch fixes the issue, thanks.

A.
