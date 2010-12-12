From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Sun, 12 Dec 2010 09:45:51 +0100
Subject: [PATCH 2/2] ssb: Save sprom image for dump of device at
	alternate location
In-Reply-To: <4d044307.Ipm73VWEgifFrF0m%Larry.Finger@lwfinger.net>
	(sfid-20101212_043513_712988_FFFFFFFF9320429C)
References: <4d044307.Ipm73VWEgifFrF0m%Larry.Finger@lwfinger.net>
	(sfid-20101212_043513_712988_FFFFFFFF9320429C)
Message-ID: <1292143551.20015.24.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On Sat, 2010-12-11 at 21:35 -0600, Larry Finger wrote: 
> Some recent Broadcom devices in netbooks have an SPROM that is located
> at 0x0800, not the normal location of 0x1000. Initial reading of the
> SPROM has been solved in a previous commit; however, dumping to a console
> no longer works. This difficulty is fixed by saving the SPROM image
> from the initial read, and only freeing that memory at module unload.

Ah wait. Now I get what you were talking about.
Yes, those devices map the SPROM into the wireless core window.
So, yes, the wireless core has to be mapped for the readout to work,
of course. I don't know what other prerequisites have to be met to
read the data. Maybe IHR region has to be disabled.
I don't know how writing works on these devices.

-- 
Greetings Michael.
