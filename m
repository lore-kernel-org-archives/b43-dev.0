From: Michael =?ISO-8859-1?Q?B=FCsch?= <mb@bu3sch.de>
Date: Thu, 03 Feb 2011 12:59:32 +0100
Subject: unable to write flashrom, functionality broken?
In-Reply-To: <16F75F7A-922A-4472-96C8-2938F62EDBB8@daleenterprise.com>
	(sfid-20110203_065003_117141_E1A4725F)
References: <26E2E0F1-1CD4-4A96-B96F-D1F7B6EE5B17@daleenterprise.com>
	<4D4834C0.5060701@lwfinger.net>
	<463A54B6-A0A4-4197-A19A-067FBDC63F66@daleenterprise.com>
	<4D4A208F.50408@lwfinger.net>
	<16F75F7A-922A-4472-96C8-2938F62EDBB8@daleenterprise.com>
	(sfid-20110203_065003_117141_E1A4725F)
Message-ID: <1296734372.26739.21.camel@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Thu, 2011-02-03 at 06:49 -0500, Dale Walsh wrote: 
> >>>> always reports "write error: Operation Not Supported" and this  

I don't see a codepath that could trigger -EOPNOTSUPP in the
latest version of SSB.

-- 
Greetings Michael.
