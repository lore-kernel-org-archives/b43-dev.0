From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 12 Dec 2010 09:34:21 -0600
Subject: [PATCH 2/2] ssb: Save sprom image for dump of device at alternate
	location
In-Reply-To: <1292143551.20015.24.camel@maggie>
References: <4d044307.Ipm73VWEgifFrF0m%Larry.Finger@lwfinger.net>	
	(sfid-20101212_043513_712988_FFFFFFFF9320429C)
	<1292143551.20015.24.camel@maggie>
Message-ID: <4D04EB7D.1090009@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <mb@bu3sch.de>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On 12/12/2010 02:45 AM, Michael B?sch wrote:
> On Sat, 2010-12-11 at 21:35 -0600, Larry Finger wrote: 
>> Some recent Broadcom devices in netbooks have an SPROM that is located
>> at 0x0800, not the normal location of 0x1000. Initial reading of the
>> SPROM has been solved in a previous commit; however, dumping to a console
>> no longer works. This difficulty is fixed by saving the SPROM image
>> from the initial read, and only freeing that memory at module unload.
> 
> Ah wait. Now I get what you were talking about.
> Yes, those devices map the SPROM into the wireless core window.
> So, yes, the wireless core has to be mapped for the readout to work,
> of course. I don't know what other prerequisites have to be met to
> read the data. Maybe IHR region has to be disabled.
> I don't know how writing works on these devices.

I do not think it is worthwhile to bother to find out how to rewrite the SPROM.
As long as we can read it in case of questions regarding content, that should be
enough. In V2, I will return -ENOTSUP rather than -EINVAL as that is more
appropriate.

Larry
