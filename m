From: Chris Vine <chris@cvine.freeserve.co.uk>
Date: Sat, 23 Mar 2013 15:53:55 +0000
Subject: [PATCH] b43: A fix for DMA transmission sequence errors
In-Reply-To: <20130323113517.01906b0b@milhouse>
References: <514a07c7.ZQz6MhmMaq58WJlA%Larry.Finger@lwfinger.net>
 <CACna6rz75ecyy5CdaJfi=dRjrTh_Rg793Ub+-0QdVnCZNyV+Lg@mail.gmail.com>
 <20130323113517.01906b0b@milhouse>
Message-ID: <20130323155355.0a1752f5@laptop.homenet>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael =?ISO-8859-1?B?QvxzY2g=?= <m@bues.ch>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, isedev@gmail.com, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org, Larry Finger <Larry.Finger@lwfinger.net>

On Sat, 23 Mar 2013 11:35:17 +0100
Michael B?sch <m@bues.ch> wrote:
> On Sat, 23 Mar 2013 00:27:30 +0100
> Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> 
> > Today I've plugged my 14e4:4315 and (unfortunately?) it's working
> > pretty well. I hoped to reproduce some problems but failed to do
> > so. I was transmitting for an hour with average speed 11MiB/s and
> > didn't notice any DMA issues.
> > 
> > I was using iperf with interval of 60 seconds and only 3 results
> > showed some problems (8.5MiB/s, 2.5MiB/s, 4.5MiB/s). No
> > disconnections however and no DMA errors. I just got "Group
> > rekeying completed..." in wpa_supplicant.
> > 
> > So as I can't reproduce this, I can't find any other fix for this
> > issue, and there's no reason to stop this workaround. I'll just
> > apply it and test over weekend to check for any regressions, but
> > they are highly unlikely.
> 
> I don't really believe in this being a firmware bug.
> 
> Some b43 DMA engines (all?) have some alignment and
> page-boundary-crossing constraints. I would rather guess that on some
> kernels with some options turned on, alignment and/or boundary
> constraints are violated every now and then. (and thus the packet
> never reaches the firmware).
> 
> I don't remember the details, though. Too long since I worked on that.
> But a few sanity checks could probably be added to the code to check
> this hypothesis.
> 
> Does the failing kernel/machine have any special things w.r.t. memory?
> Like iommu, hugepages, whetever...

For what it is worth, this happens to me on both home compiled and
distributor kernels (ubuntu and slackware): in fact, any 32-bit kernel
that I have tried it on.

And it does not happen with the wl driver on the same kernels.  So if
this is right, the wl driver must be doing something that the b43 driver
does not with respect to alignment: and you might well be right about
that.

Chris
