From: Chris Vine <chris@cvine.freeserve.co.uk>
Date: Wed, 1 Jun 2011 19:09:29 +0100
Subject: b43 error under heavy load
In-Reply-To: <BANLkTi=Cm1o8HVqugC6JNooP8h+HpJ=aRQ@mail.gmail.com>
References: <4CEAB969.20702@lwfinger.net> <1290451982.20888.2.camel@maggie>
	<4CEAC095.7020706@lwfinger.net>
	<BANLkTimjRA5CsSDp_+LrGq8PNgaR4JFD=w@mail.gmail.com>
	<4DC9853A.1090508@lwfinger.net>
	<BANLkTimBpGRxfidpE4hYCVscmX-Hy5q5jw@mail.gmail.com>
	<BANLkTi=TohOdjurvgqZT8=GXKbWfNe4v+w@mail.gmail.com>
	<20110601114839.433ae42d@boulder.homenet>
	<BANLkTin_RnMV3KnGS4qYPtMVxCuW=Vj7mg@mail.gmail.com>
	<20110601130842.077da1c3@boulder.homenet>
	<BANLkTi=2xYrrjEdHuYCKFKy4H2EXoUGQuQ@mail.gmail.com>
	<20110601160101.75e30b3d@boulder.homenet>
	<BANLkTim9pQc+yxdQLSL1-6VNiyM6_tvJ6g@mail.gmail.com>
	<20110601184931.499557c6@boulder.homenet>
	<BANLkTi=Cm1o8HVqugC6JNooP8h+HpJ=aRQ@mail.gmail.com>
Message-ID: <20110601190929.244c57ed@boulder.homenet>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, wireless <linux-wireless@vger.kernel.org>, Michael =?ISO-8859-1?B?QvxzY2g=?= <mb@bu3sch.de>, b43-dev <b43-dev@lists.infradead.org>

On Wed, 1 Jun 2011 20:03:56 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> 2011/6/1 Chris Vine <chris@cvine.freeserve.co.uk>:
> > The one which failed caused the cessation of
> > wireless traffic, and was accompanied by the debug log reports of
> > out of order TX status earlier referred to, and with only one
> > single report
> 
> As I said, I don't really suspect any relation between full TX ring
> and out of order problems anymore.
> 
> But it won't hurt to ask just in case:
> Did you see relation between this single "Stopped TX ring 1" and
> massive out of order messages? Did out of order messages starter right
> after "Stopped TX ring 1" one?

The "Stopped TX ring 1" message was near the end (but not at the end)
of the out of order messages. It was definitely not at the beginning of
the out of order messages.

Chris
