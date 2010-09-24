From: John W. Linville <linville@tuxdriver.com>
Date: Fri, 24 Sep 2010 13:21:32 -0400
Subject: problem with b43
In-Reply-To: <AANLkTik5QPw6K_CFQW-5qH3PhyDAguqe51AcNaDMOUqt@mail.gmail.com>
References: <20100924185551.e3c3b41c.cyrille@cbiot.fr>
	<AANLkTik5QPw6K_CFQW-5qH3PhyDAguqe51AcNaDMOUqt@mail.gmail.com>
Message-ID: <20100924172132.GC8077@tuxdriver.com>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?iso-8859-1?Q?G=E1bor?= Stefanik <netrolller.3d@gmail.com>
Cc: Cyrille <cyrille@cbiot.fr>, b43-dev@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>

On Fri, Sep 24, 2010 at 07:06:17PM +0200, G?bor Stefanik wrote:
> On Fri, Sep 24, 2010 at 6:55 PM, Cyrille <cyrille@cbiot.fr> wrote:
> > Hi
> > I've got a problem with a broadcom 4312 [12e4:4315].
> > The environment :
> > ===========================
> > uname -a
> > 2.6.35.5-libre.29.fc14.x86_64

> > Broadcom 43xx driver loaded [ Features: PMLS, Firmware-ID: FW13 ]
> > ssb0:0: Missing Free firmware
> > b43-phy4 ERROR: Rejected non-Free firmware
> > ssb0:0: Missing Free firmware
> > b43-phy4 ERROR: Rejected non-Free firmware
> 
> Compile compat-wireless to bypass the "free-only" patch in Fedora.
> 
> (John, are you still maintaining the Fedora kernel's wireless part? If
> so, please kill this "freedom enforcement"!)

This isn't a Fedora kernel.  I'm guessing it is from "Free-dora"
by way of BLAG, and I have no control over it -- sorry.

Cyrille, did you try b43-openfwwf?  If that doesn't work, then you
will need to use extracted proprietary firmware with some other kernel
(e.g. stock Fedora) or you will have to live without b43.

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville at tuxdriver.com			might be all we have.  Be ready.
