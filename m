From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Sun, 12 Dec 2010 16:38:39 +0100
Subject: [PATCH 2/2] ssb: Save sprom image for dump of device at
	alternate location
In-Reply-To: <4D04EB7D.1090009@lwfinger.net>
	(sfid-20101212_103356_973639_7B7006EC)
References: <4d044307.Ipm73VWEgifFrF0m%Larry.Finger@lwfinger.net>
	(sfid-20101212_043513_712988_FFFFFFFF9320429C)
	<1292143551.20015.24.camel@maggie>
	<4D04EB7D.1090009@lwfinger.net> (sfid-20101212_103356_973639_7B7006EC)
Message-ID: <1292168319.3572.6.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Sun, 2010-12-12 at 09:34 -0600, Larry Finger wrote: 
> On 12/12/2010 02:45 AM, Michael B?sch wrote:
> > On Sat, 2010-12-11 at 21:35 -0600, Larry Finger wrote: 
> >> Some recent Broadcom devices in netbooks have an SPROM that is located
> >> at 0x0800, not the normal location of 0x1000. Initial reading of the
> >> SPROM has been solved in a previous commit; however, dumping to a console
> >> no longer works. This difficulty is fixed by saving the SPROM image
> >> from the initial read, and only freeing that memory at module unload.
> > 
> > Ah wait. Now I get what you were talking about.
> > Yes, those devices map the SPROM into the wireless core window.
> > So, yes, the wireless core has to be mapped for the readout to work,
> > of course. I don't know what other prerequisites have to be met to
> > read the data. Maybe IHR region has to be disabled.
> > I don't know how writing works on these devices.
> 
> I do not think it is worthwhile to bother to find out how to rewrite the SPROM.
> As long as we can read it in case of questions regarding content, that should be
> enough. In V2, I will return -ENOTSUP rather than -EINVAL as that is more
> appropriate.

So, do we actually make sure the wireless core is mapped while reading
SPROM from offset 0x800? I guess not and it just works by accident,
because the core is still mapped from a previous operation.

-- 
Greetings Michael.
