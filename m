From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
Date: Sun, 26 Jun 2011 23:04:25 +0200
Subject: Improvement in b43 on BCM4312 (14e4:4315)
In-Reply-To: <BANLkTi=6yY6i=EoivVkNUq6RGD6W6hWftg@mail.gmail.com>
References: <4E03A25F.7080103@lwfinger.net>
	<BANLkTi=6yY6i=EoivVkNUq6RGD6W6hWftg@mail.gmail.com>
Message-ID: <20110626230425.744da739@maggie>
List-Id: <b43-dev.lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>, wireless <linux-wireless@vger.kernel.org>, b43-dev <b43-dev@lists.infradead.org>

On Sun, 26 Jun 2011 22:48:59 +0200
Rafa? Mi?ecki <zajec5@gmail.com> wrote:
> > Only one of the patches to ssb seems to be the "fix", namely commit eb40e3e8
> > entitled "drivers/ssb/driver_chipcommon_pmu.c: uninitilized warning" by
> > Connor Hansen. I need to do more tests on this patch, but the kernel from
> > Linus's tree could reinstall itself when I added this patch. I see no
> > indication in the commit message regarding pushing this one to stable, but I
> > think it should go upstream to mainline and the stable trees.
> 
> It does not look like possible fix to me. Plus it sounds like false
> warning from compiler.
> 
> Take a look at relation between:
> 1) updown_tab and updown_tab_size
> 2) depend_tab and depend_tab_size

The patch in question does nothing but silence a bogus compiler warning.
No logical change to the code.
