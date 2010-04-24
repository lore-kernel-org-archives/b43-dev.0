From: Chris Vine <chris@cvine.freeserve.co.uk>
Date: Sat, 24 Apr 2010 17:22:36 +0100
Subject: [14e4:4315] Dell Studio 1735, rfkill problem
In-Reply-To: <4BD2FAB6.4060805@lwfinger.net>
References: <q2xb7f967271004231505m3e7de9a5j8f6a005f72541764@mail.gmail.com>
	<20100424110940.2b908933@laptop.homenet>
	<20100424112652.28e5735a@laptop.homenet>
	<x2qb7f967271004240435ga6d41d04n2463282649f7200@mail.gmail.com>
	<4BD2FAB6.4060805@lwfinger.net>
Message-ID: <20100424172236.345a2a61@laptop.homenet>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 24 Apr 2010 09:05:42 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:
> On 04/24/2010 06:35 AM, Grygoriy Fuchedzhy wrote:
> > 2010/4/24 Chris Vine <chris@cvine.freeserve.co.uk>:
> >> On Sat, 24 Apr 2010 11:09:40 +0100
> > 
> > It wasn't built at all. I tried to build acer-wmi and dell-wmi.
> > acer-wmi doesn't load automatically, if I load
> > it manually it fails to load throwing error that I do not have
> > neccesary hardware. dell-wmi loads
> > automatically but it doesn't affect my problem.
> 
> No Acer hardware - no acer-wmi.

Not the case, I am afraid.  Wistron devices will also cause acer-wmi to
be loaded, and does so on my netbook from kernel >= 2.6.33 (but not
before).

Chris
