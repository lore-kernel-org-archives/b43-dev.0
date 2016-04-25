From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Mon, 25 Apr 2016 20:32:05 +0200
Subject: [PATCH RFC] b43: stop hardcoding LED behavior
In-Reply-To: <1461608496.2364.36.camel@lynxeye.de>
References: <1461570051-3950-1-git-send-email-dev@lynxeye.de>
 <20160425175326.407eba27@wiggum>
 <1461608496.2364.36.camel@lynxeye.de>
Message-ID: <20160425203205.46f6774b@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lucas Stach <dev@lynxeye.de>
Cc: Kalle Valo <kvalo@codeaurora.org>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Mon, 25 Apr 2016 20:21:36 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> > Numbers please. Did you measure that is actually causes more
> > _wakeups_?
> > How many?
> > The led work is placed in the mac80211 workqueue and LED updates only
> > happen on behalf of mac80211 activities (by default). It only causes
> > additional wakeups, if there's nothing else scheduled on the
> > workqueue
> > anyways (which might well be the case. So we need numbers. :)
> >   
> The blinking LEDs use a timer to enforce a constant blink rate at a
> 50ms on/off interval. While they are only triggered if there is some
> RX/TX activity in the system, they cause up to 20 wakeups/second/led.
> As the timers used for LED activity aren't deferrable, this hardcode is
> causing 40 unnecessary CPU wakeups/s in my system.


Ok this is 40 to 40k for the interrupt requests?
We need real measured numbers and a percentage on how much the b43 LEDs
increase the system wakeups in relation to all other wakeups.


> There are some people that find those kinds of blinking LEDs
> distracting,


Those can already disable them via the standard LED framework.


> so a module parameter to disable them altogether might be
> a good thing to have.


No. We have a standard API for this.


> Causing CPU wakeups in a system where those LEDs
> aren't even physically populated is clearly undesired behavior.


Yes, but this is not going to be fixed via regressions.


> If checking that the SPROM doesn't define any LED behavior is enough to
> not regress your use case, I would be glad to rework the patch
> accordingly.


As it turns out I don't have that card here and I don't have a dump of
its SPROM as I expected. So I cannot really verify this. But I'm pretty
sure that this card did not define any LEDs in its SPROM at all.
I'm not aware of any card that only partially defines LEDs in the
SPROM. So that fix would be OK.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20160425/041edf84/attachment.sig>
