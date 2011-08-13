From: David Woodhouse <dwmw2@infradead.org>
Date: Sat, 13 Aug 2011 21:36:33 +0100
Subject: [PATCH] Fix alignment issues with DMA TX on BCM4331
In-Reply-To: <CACna6ryv1yo41Pjy2mTt+pFHYWnh0WM8ZdBC1v77cTenx9=jbw@mail.gmail.com>
References: <CACna6rxEJ1TuoGsZF=4dy0ezNZjjZFkaASbbyrgurwa_mYzEVw@mail.gmail.com>
	<1311114796.3062.9.camel@shinybook.infradead.org>
	<1313113295.27274.53.camel@i7.infradead.org>
	<1313144864.27274.81.camel@i7.infradead.org>
	<CACna6ryM+QZ=x5sN8WjoZcZLFo6DiodWgq4Y8Dbm9Pm+Z64nsA@mail.gmail.com>
	<1313266735.25907.4.camel@i7.infradead.org>
	<CACna6ryv1yo41Pjy2mTt+pFHYWnh0WM8ZdBC1v77cTenx9=jbw@mail.gmail.com>
Message-ID: <1313267794.25907.5.camel@i7.infradead.org>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: b43-dev@lists.infradead.org

On Sat, 2011-08-13 at 22:22 +0200, Rafa? Mi?ecki wrote:
> > Does John normally pick up patches from the b43 list before they're sent
> > directly to him? If so, I'll be more careful in future...
> 
> Ah, no, I missed that. We should be _safe_ here, on our ML ;)

Even if he was watching, I'd hope he wouldn't pick up a patch which
said:

> I've made that change to the initialisation order of TXCTL vs.
> TXADDR{HI,LO} unconditional; is there a reason not to? 

-- 
dwmw2
