From: Johannes Berg <johannes@sipsolutions.net>
Date: Thu, 12 Jun 2014 14:43:45 +0200
Subject: [RFC: which stable kernels?] b43: fix frequency reported on
 G-PHY with /new/ firmware
In-Reply-To: <53995A1F.6000405@broadcom.com>
 (sfid-20140612_094333_618630_0312AC3F)
References: <1402558118-25777-1-git-send-email-zajec5@gmail.com>
 <CANUX_P1RA6PUDiFrT0wta57BNW9oRVAkNstT5ieiBjA9sHWnfw@mail.gmail.com>
 <53995A1F.6000405@broadcom.com> (sfid-20140612_094333_618630_0312AC3F)
Message-ID: <1402577025.8095.16.camel@jlt4.sipsolutions.net>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arend van Spriel <arend@broadcom.com>
Cc: Emmanuel Grumbach <egrumbach@gmail.com>, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, linux-wireless <linux-wireless@vger.kernel.org>, b43-dev@lists.infradead.org, Aaro Koskinen <aaro.koskinen@iki.fi>

On Thu, 2014-06-12 at 09:43 +0200, Arend van Spriel wrote:
> On 12-06-14 09:35, Emmanuel Grumbach wrote:
> >> ---
> >> This bug was there for years, however didn't cause any problems. It was
> >> exposed recently by the 3.15 release by the:
> >>
> >> commit 3afc2167f60a327a2c1e1e2600ef209a3c2b75b7
> >> Author: Emmanuel Grumbach <emmanuel.grumbach@intel.com>
> >> Date:   Tue Mar 4 16:50:13 2014 +0200
> >>
> >>      cfg80211/mac80211: ignore signal if the frame was heard on wrong channel
> >>
> >> Should we mark it for stable for 3.15 only? Or all olders kernels as well?
> >
> > Up to you - my patch is in 3.15 only I think.
> 
> Is there any scenario that would expose the worng info. Maybe when using 
> monitor mode?

Yeah that'd probably be messed up as well.

johannes
