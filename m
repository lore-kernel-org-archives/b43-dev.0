From: David Woodhouse <dwmw2@infradead.org>
Date: Tue, 14 Jun 2011 11:23:45 +0100
Subject: b43 and late 2008 model Apple MacBook =?UTF-8?Q?=E2=80=94?=
	Look ma, no wires! :-)
In-Reply-To: <4DEC0889.8040909@gentoo.org>
References: <4DEAC8FE.5010502@gentoo.org>	<4DEACA37.4080905@gentoo.org>
	<4DEACFD9.6020004@lwfinger.net>	<4DEAD567.2050608@gentoo.org>
	<4DEADFBC.3000100@gentoo.org>
	<BANLkTikMNfWf+yATN8hutX_RySseO2CgHw@mail.gmail.com>
	<4DEC0889.8040909@gentoo.org>
Message-ID: <1308047026.3450.8.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Mon, 2011-06-06 at 08:51 +1000, Stuart Longland wrote:
> So far it seems to be more stable on wireless than MacOS X.  Under the
> latter I do get the bizzare problem where an ARP packet will get dropped
> due to some radio conditions here, then the MacBook disappears from the
> IPv4-visible network (despite being accessible via IPv6).  So evidently
> the b43 driver is working better than the Broadcom one. 

I see the same issue with the BCM4331 and ndiswrapper. Legacy IP
sometimes stops working, but IPv6 is fine.

-- 
dwmw2
