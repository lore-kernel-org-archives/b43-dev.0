From: John W. Linville <linville@tuxdriver.com>
Date: Tue, 23 Aug 2011 09:53:11 -0400
Subject: [RFC][PATCH] b43: HT-PHY: allow writing longer tables with a
	single call
In-Reply-To: <CACna6rwbzX241MVCwPd1qRbU1uWRcwjyVguBhcLs8xPcDzV0GQ@mail.gmail.com>
References: <1313100627-26186-1-git-send-email-zajec5@gmail.com>
	<CACna6rwbzX241MVCwPd1qRbU1uWRcwjyVguBhcLs8xPcDzV0GQ@mail.gmail.com>
Message-ID: <20110823135311.GC9770@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: linux-wireless@vger.kernel.org, b43-dev@lists.infradead.org

On Tue, Aug 23, 2011 at 03:44:51PM +0200, Rafa? Mi?ecki wrote:
> W dniu 12 sierpnia 2011 00:10 u?ytkownik Rafa? Mi?ecki
> <zajec5@gmail.com> napisa?:
> > Sometime we need to write table which is 2-10 elements long. It's easier
> > to create such a function instead of defining array every time.
> 
> John, take this one please.

Repost it, without "RFC" in the title.

-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
