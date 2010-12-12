From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Sun, 12 Dec 2010 10:05:03 -0600
Subject: [PATCH 2/2] ssb: Save sprom image for dump of device at alternate
	location
In-Reply-To: <1292168319.3572.6.camel@maggie>
References: <4d044307.Ipm73VWEgifFrF0m%Larry.Finger@lwfinger.net>	
	(sfid-20101212_043513_712988_FFFFFFFF9320429C)
	<1292143551.20015.24.camel@maggie>	 <4D04EB7D.1090009@lwfinger.net>
	(sfid-20101212_103356_973639_7B7006EC)
	<1292168319.3572.6.camel@maggie>
Message-ID: <4D04F2AF.5080706@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?TWljaGFlbCBCw7xzY2g=?= <mb@bu3sch.de>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On 12/12/2010 09:38 AM, Michael B?sch wrote:
> 
> So, do we actually make sure the wireless core is mapped while reading
> SPROM from offset 0x800? I guess not and it just works by accident,
> because the core is still mapped from a previous operation.

I have core switching debug enabled on that box. When the SPROM is read, the
ChipCommon core is mapped, and no other core has yet been selected.

Larry
