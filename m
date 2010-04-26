From: John W. Linville <linville@tuxdriver.com>
Date: Mon, 26 Apr 2010 14:32:33 -0400
Subject: [RFC/RFT] ssb: Avoid system hang when SPROM read fails
In-Reply-To: <4BD5D5B1.6020906@lwfinger.net>
References: <4bd4c284.WBohOsmgdwRzw5JC%Larry.Finger@lwfinger.net>
	<20100426171505.GC2387@tuxdriver.com>
	<4BD5D5B1.6020906@lwfinger.net>
Message-ID: <20100426183233.GF2387@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Michael Buesch <mb@bu3sch.de>, b43-dev@lists.infradead.org, linux-wireless@vger.kernel.org

On Mon, Apr 26, 2010 at 01:04:33PM -0500, Larry Finger wrote:
> On 04/26/2010 12:15 PM, John W. Linville wrote:
> > 
> > Well, the "good" news is that I hit the "Unable to read SPROM" case.
> > The bad news is that the box still hangs after the -ENODEV.  I have
> > not yet tracked-down the exact location of the current hang.
> > 
> > John
> > 
> > P.S.  Sorry about the 'radio silence' -- I've been distracted with
> > some other things.  Also, the box in question originally belonged
> > to someone else who had configured it in a way that was less than
> > friendly to kernel development.  I finally reinstalled it...
> 
> That box is certainly resistant!
> 
> I certainly understand your distractions. That has to be a major
> understatement.
> 
> As the patch makes some improvement in both your system and the one in
> Bug #15825, I'll push it as a real patch.
> 
> Would your box be available to me as a loaner? I have considered buying
> a netbook for debugging purposes, but I cannot quite justify the cost.
> In addition, Murphy's law would make whatever one I bought work without
> any problems.

I think that can be arranged...

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
