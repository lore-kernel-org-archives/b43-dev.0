From: Felix Janda <felix.janda@posteo.de>
Date: Sun, 9 Dec 2012 08:44:50 +0100
Subject: [RFC/RFT] b43: Load initial firmware file asynchronously
In-Reply-To: <50C3C940.3060704@lwfinger.net>
References: <20121208143032.GA1903@gauss> <50C375BE.9050907@lwfinger.net>
 <20121208175615.GA10664@gauss> <50C399A9.2060304@lwfinger.net>
 <20121208202435.GA14973@gauss> <50C3AF0C.8000607@lwfinger.net>
 <20121208214157.GA21034@gauss> <50C3BD0F.1050603@lwfinger.net>
 <20121208223509.GA21258@gauss> <50C3C940.3060704@lwfinger.net>
Message-ID: <20121209074450.GA1073@gauss>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: John W Linville <linville@tuxdriver.com>, b43-dev <b43-dev@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>

On 12/08/12 at 05:12pm, Larry Finger wrote:
> > The delay of 60 seconds will stay?
> 
> As this happens while user-space is getting started, there is little we can do. 
> On my dual-core x86_64 system with each CPU running at 2 GHz, it takes 24 sec 
> before the fw is loaded. At least other things happen in parallel.
> 
> Larry

Ok. (The behavior is now the same as if the firmware was built into the kernel.)

So thanks again for the fix.

Felix
