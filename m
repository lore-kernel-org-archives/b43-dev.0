From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Thu, 12 Jun 2014 08:21:55 +0200
Subject: Linux 3.15: WLAN regression on WRL54GL/B43?
In-Reply-To: <CACna6rwaxzyY+vqQa+vJETA_g+8zLmwWQb9uYhFOvTy57A15rw@mail.gmail.com>
References: <20140611230513.GC913@drone.musicnaut.iki.fi>
 <CACna6rwaxzyY+vqQa+vJETA_g+8zLmwWQb9uYhFOvTy57A15rw@mail.gmail.com>
Message-ID: <CACna6rwjyiz0c791G4sJRGZoDLPTijfQeCeuD0PVgL0fvLtYBQ@mail.gmail.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Johannes Berg <johannes.berg@intel.com>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 12 June 2014 07:44, Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> On 12 June 2014 01:05, Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
>> While testing the final 3.15, I noticed that "iwlist wlan0 scanning"
>> cannot find anything on my WRT54GL router anymore:
>
> I believe it's BCM5352E SoC wth G-PHY rev 7 and radio 0x2050 rev 2. Is
> that correct? Provide us a boot log.

I've reproduced this on my G-PHY rev 8. This is a bug caused by the:
status.freq = chanid + 2400;

It results in the:
[ 1500.651877] Got chanid:3 set freq:2403
[ 1500.719688] Got chanid:4 set freq:2404
[ 1500.788645] Got chanid:5 set freq:2405
[ 1500.857630] Got chanid:6 set freq:2406
[ 1500.936061] Got chanid:7 set freq:2407
[ 1500.973772] Got chanid:8 set freq:2408
[ 1501.084351] Got chanid:9 set freq:2409

I'll submit a fix.

-- 
Rafa?
