From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Tue, 30 Jun 2015 17:15:57 +0200
Subject: [PATCH] b43: Fix typo in function name
In-Reply-To: <5591F0F4.3010008@lwfinger.net>
References: <1435625147-23535-1-git-send-email-nikolas@gnu.org>
 <5591F0F4.3010008@lwfinger.net>
Message-ID: <20150630171557.17782835@wiggum>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nik Nyby <nikolas@gnu.org>, linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Mon, 29 Jun 2015 20:29:24 -0500
Larry Finger <Larry.Finger@lwfinger.net> wrote:

> On 06/29/2015 07:45 PM, Nik Nyby wrote:
> > This fixes a typo in the "b43_lo_g_maintenance_work" function
> > name.
> >
> > Signed-off-by: Nik Nyby <nikolas@gnu.org>
> > ---
> >   drivers/net/wireless/b43/lo.c    | 4 ++--
> >   drivers/net/wireless/b43/lo.h    | 2 +-
> >   drivers/net/wireless/b43/phy_g.c | 2 +-
> >   3 files changed, 4 insertions(+), 4 deletions(-)
> 
> This patch is OK; however, can there really be a typo in a function name? How do 
> you ever know that the author did not mean to use a name that looks like a typo?
> 
> Please be careful with these.
> 
> Acked-by: Larry Finger <Larry.Finger@lwfinger.net>


Nice finding.
Me as the original author of that mess gets a brown paper bag and acks
this.

Acked-by: Michael Buesch <m@bues.ch>


-- 
Michael
-------------- next part --------------
A non-text attachment was scrubbed...
Name: not available
Type: application/pgp-signature
Size: 819 bytes
Desc: OpenPGP digital signature
URL: <http://lists.infradead.org/pipermail/b43-dev/attachments/20150630/4994c090/attachment.sig>
