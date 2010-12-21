From: Larry Finger <Larry.Finger@lwfinger.net>
Date: Tue, 21 Dec 2010 08:30:48 -0600
Subject: b43 N PHY status report
In-Reply-To: <1292923526.2577.53.camel@macbook.infradead.org>
References: <1291755360-21570-1-git-send-email-zajec5@gmail.com>	
	<AANLkTikp9ErFopLZVmXMjN3tXF2L62SwEEcujKeOBLYC@mail.gmail.com>	
	<4CFFA112.7030800@lwfinger.net>	
	<885729A3-72D4-4EFC-AAFE-D2B573E00ED9@ing.unibs.it>	
	<1292006874.3531.4.camel@jlt3.sipsolutions.net>	
	<4D02793E.2050004@lwfinger.net>	
	<AANLkTik2MdDg4g4dFuB6ozZ3Pp3pPORmSAxRAbtznTLP@mail.gmail.com>	
	<1292008120.3531.5.camel@jlt3.sipsolutions.net>
	<1292923526.2577.53.camel@macbook.infradead.org>
Message-ID: <4D10BA18.40606@lwfinger.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Woodhouse <dwmw2@infradead.org>
Cc: Johannes Berg <johannes@sipsolutions.net>, =?UTF-8?B?R8OhYm9yIFN0ZWZh?= =?UTF-8?B?bmlr?= <netrolller.3d@gmail.com>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On 12/21/2010 03:25 AM, David Woodhouse wrote:
> 
> On-topic:
> 
> Anyone working on or testing network device drivers should be using
> IPv6. IPv6 will exercise code paths and network behaviour that Legacy IP
> rarely does, in particular using multicast to do neighbour discovery.
> And on wireless networks when multicast will be handled differently by
> the AP, that makes more difference than on wired where it's mostly the
> MAC filters that get neglected.
> 
> I've seen a number of broken drivers because their authors were only
> testing with Legacy IP and not IPv6.
> 
> It's not hard to set up IPv6. Larry, if you need any pointers I'd be
> more than happy to help.

I have no problem setting it up. I disabled it mostly to reduce the number of
modules in a kernel recompile. It doesn't make much difference on either of my
multi-core boxes, but some of the lower-powered units already take hours to build.

I take your point, and will be reenabling IPv6.

Larry
