From: John W. Linville <linville@tuxdriver.com>
Date: Tue, 23 Aug 2011 09:49:32 -0400
Subject: [PATCH] b43: HT-PHY: init: add missing small-tables writes
In-Reply-To: <CACna6rwoyPuwnzcw4BR5dmOiX9ogsTbquaG6qwRMZtLZytNnoA@mail.gmail.com>
References: <1313250844-4526-1-git-send-email-zajec5@gmail.com>
	<CACna6rwoyPuwnzcw4BR5dmOiX9ogsTbquaG6qwRMZtLZytNnoA@mail.gmail.com>
Message-ID: <20110823134932.GB9770@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Tue, Aug 23, 2011 at 02:45:51PM +0200, Rafa? Mi?ecki wrote:
> W dniu 13 sierpnia 2011 17:54 u?ytkownik Rafa? Mi?ecki
> <zajec5@gmail.com> napisa?:
> >
> > Signed-off-by: Rafa? Mi?ecki <zajec5@gmail.com>
> > ---
> > John: this one depends on
> > [RFC][PATCH] b43: HT-PHY: allow writing longer tables with a single call
> > , please apply the one above.
> 
> John, I've asked you to apply the mentioned patch before this one. By
> applying *just* this one you've broken build for ppl trying *BROKEN*
> HT support.

Please, _please_, _PLEASE_ stop doing this.  I process a lot of
patches, and sometimes I will miss these directives.

If your patch is not RFC, then don't post it as RFC.  If you post
a patch as "Request For Comment" and I don't have any comments,
I'm going to delete it.  If you later decide it is no longer RFC,
then I've probably already deleted it.  So you need to re-post the
patch as just "PATCH".

I no longer have "b43: HT-PHY: allow writing longer tables with a
single call".  If it is needed, then you need to repost it.

John

P.S.  In general, it is best to post patches with dependencies as a series.
-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
