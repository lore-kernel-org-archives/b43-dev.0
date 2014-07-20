From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 20 Jul 2014 14:03:34 +0200
Subject: [PATCH 2/2] b43: N-PHY: support setting custom TX power
In-Reply-To: <CACna6rx-LFvQZrLmuQTm7B9wME9OmFBAf_qJPRio1D_hVzA1BQ@mail.gmail.com>
References: <1405854022-11833-1-git-send-email-zajec5@gmail.com>
 <1405854022-11833-2-git-send-email-zajec5@gmail.com>
 <20140720132634.2cb9e916@wiggum>
 <CACna6rx-LFvQZrLmuQTm7B9wME9OmFBAf_qJPRio1D_hVzA1BQ@mail.gmail.com>
Message-ID: <20140720140334.5eda3110@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, "John W. Linville" <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>

On Sun, 20 Jul 2014 13:50:39 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:

> On 20 July 2014 13:26, Michael B?sch <m@bues.ch> wrote:
> > On Sun, 20 Jul 2014 13:00:22 +0200
> > Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> >> @@ -6656,5 +6721,4 @@ const struct b43_phy_operations b43_phyops_n = {
> >>       .switch_channel         = b43_nphy_op_switch_channel,
> >>       .get_default_chan       = b43_nphy_op_get_default_chan,
> >>       .recalc_txpower         = b43_nphy_op_recalc_txpower,
> >> -     .adjust_txpower         = b43_nphy_op_adjust_txpower,
> >
> > recalc_txpower once was designed to just recalculate the txpower and not write it
> > to hardware. adjust_txpower was supposed to write it to hardware afterwards.
> > That had to do with some locking foo and stuff I forgot (AFAIR these callbacks are called
> > in different contexts, but I may be wrong).
> > But I don't think it really matters. Just as a general hint here.
> 
> Yeah, I noticed that and was starring at it for a long time.
> 
> First of all I verified if @config is allowed to sleep. It is, so our
> "recalc_txpower" can sleep as well if it needs to.
> 
> I think that using adjust_txpower on G-PHY could have something to do
> with the way TX power is controlled on these devices. They don't have

adjustment of txpower may be very expensive there. So I think this was
the reason I split it in half and let the heavier part run in workqueue context or
something. Also recalc used to be called from interrupt tasklet. Not sure if
that's still the case anymore, though.

> In N-PHY world there are two registers for setting TX power: 0x1E7 and
> 0x222 (one per core) and two for reading current state: 0x1ED and
> 0x1EE. However you don't really touch them unless you're doing some
> initialization/calibration. For most of the time hardware is supposed
> to adjust TX power, you simply tell the firmware what should it be
> (this is what 0x1EA register is for).

Yeah looks fine.

-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: signature.asc
Type: application/pgp-signature
Size: 819 bytes
Desc: not available
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20140720/af004587/attachment.sig>
